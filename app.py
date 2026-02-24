from flask import * 
import pymysql
import os

app = Flask(__name__)
app.config['UPLOAD_FOLDER']= 'static/images'

@app.route('/api/signup', methods=['POST'])
def signup():
    if request.method=='POST':
        username = request.form['username']
        email = request.form['email']
        password = request.form['password']
        phone = request.form['phone']

       
   


    # connecting flask(python) with database
    connection = pymysql.connect(host='localhost',user='root',password='',database='Brian Rotich_oryx')

    # initialize connections
    cursor = connection.cursor()


    # sql comand inserting new users
    sql = 'INSERT INTO `users`(`username`,`email`,`password`,`phone`)VALUES(%s,%s,%s,%s)'
    data = (username,email,password,phone)

    # execution of commands
    cursor.execute(sql,data)


    # save the changes by commiting
    connection.commit()

    return jsonify({"success":"thanks for joining"})

@app.route('/api/signin', methods=['POST'])
def signin():
   if request.method == 'POST':
      email = request.form['email']
      password = request.form['password']

    #connection to the database
      connection = pymysql.connect(host='localhost',user='root',password='',database='Brian Rotich_oryx')

      # initialize the connections
      cursor = connection.cursor(pymysql.cursors.DictCursor)

    # sql command that validates email and passwords
      sql = 'SELECT * FROM `users` WHERE `email` = %s AND `password` =%s'
      data = (email,password)

    # execution of commands
      cursor.execute(sql,data)

      count = cursor.rowcount

      if count == 0:
         return jsonify({"message":"login failed,try again"})
      else:
         user = cursor.fetchone()

        #  removing password before sending user data
         user.pop('password',None)
         return jsonify({"message":"login success","user":user})

@app.route('/api/add_product', methods=['POST'])    
def addProduct():
   if request.method == 'POST':
         product_name = request.form['product_name']
         product_description = request.form['product_description']
         product_cost = request.form['product_cost']
      
         # extract image data
         product_photo = request.files['product_photo']

         # file name
         filename = product_photo.filename
         
         # image path
         photo_path =  os.path.join(app.config['UPLOAD_FOLDER'],filename)

         # changing locations
         product_photo.save(photo_path)

         # connection to database
         connection = pymysql.connect(host='localhost',
                                      user='root',password='',database='Brian Rotich_oryx')
         
         # initialize database
         cursor = connection.cursor()

         # initialize database
         cursor = connection.cursor()

         # sql command
         sql = 'INSERT INTO `product_details`(product_name, `product_description`,`product_cost`,`product_photo`)VALUES(%s,%s,%s,%s)'
         data = (product_name,product_description,product_cost,product_photo)

         # executing sql 
         cursor.execute(sql,data)

         # saving changes to the database
         connection.commit()
         return jsonify({"success":"product added successfully"})
         


         


   return jsonify({"message":"product added successfully"})


@app.route('/api/get_product_details', methods=['GET'])    
def getProduct():

    # connection to database
  connection = pymysql.connect(host='localhost',user='root',password='',database='Brian Rotich_oryx')

  # initialize database
  cursor = connection.cursor(pymysql.cursors.DictCursor)

  #  sql command
  sql = 'SELECT * FROM `product_details`'

  # execution of command
  cursor.execute(sql)

  # retrieving products
  products = cursor.fetchall()

  # closing connection to database
  connection.close()

         
  return jsonify(products)
  

# Mpesa Payment Route/Endpoint
import requests
import datetime
import base64
from requests.auth import HTTPBasicAuth
 

@app.route('/api/mpesa_payment', methods=['POST'])
def mpesa_payment():
  if request.method == 'POST':
   amount = request.form['amount']
  phone = request.form['phone']
  # GENERATING THE ACCESS TOKEN
  # create an account on safaricom daraja
  consumer_key = "GTWADFxIpUfDoNikNGqq1C3023evM6UH"
  consumer_secret = "amFbAoUByPV2rM5A"
  

  api_URL = "https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials" # AUTH URL
  r = requests.get(api_URL, auth=HTTPBasicAuth(consumer_key, consumer_secret))
  

  data = r.json()
  access_token = "Bearer" + ' ' + data['access_token']
  

  # GETTING THE PASSWORD
  timestamp = datetime.datetime.today().strftime('%Y%m%d%H%M%S')
  passkey = 'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919'
  business_short_code = "174379"
  data = business_short_code + passkey + timestamp
  encoded = base64.b64encode(data.encode())
  password = encoded.decode('utf-8')
  

  # BODY OR PAYLOAD
  payload = {
  "BusinessShortCode": "174379",
  "Password": "{}".format(password),
  "Timestamp": "{}".format(timestamp),
  "TransactionType": "CustomerPayBillOnline",
  "Amount": amount, # use 1 when testing
  "PartyA": phone, # change to your number
  "PartyB": "174379",
  "PhoneNumber": phone,
  "CallBackURL": "https://modcom.co.ke/api/confirmation.php",
  "AccountReference": "account",
  "TransactionDesc": "account"
  }
  

  # POPULAING THE HTTP HEADER
  headers = {
  "Authorization": access_token,
  "Content-Type": "application/json"
  }
  

  url = "https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest" # C2B URL
  

  response = requests.post(url, json=payload, headers=headers)
  print(response.text)
  return jsonify({"message": "Please Complete Payment in Your Phone and we will deliver in minutes"})

   

  


if __name__== '__main__':
  app.run(debug=True)