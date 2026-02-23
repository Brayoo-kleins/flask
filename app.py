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

         # sql command
         sql = 'INSERT INTO `product_details`(product_name, `product_description`,`product_cost`,`product_photo`)VALUES(%s,%s,%s,%s)'
         data = (product_name,product_description,product_cost,product_photo)

         # executing sql 
         cursor.execute(sql,data)

         # saving changes to the database
         connection.commit()
         return jsonify({"success":"product added successfully"})
         


         


   return jsonify({"message":"product added successfully"})
   

  


if __name__== '__main__':
  app.run(debug=True)