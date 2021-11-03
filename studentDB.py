import pymysql
con=pymysql.connect(host="localhost",user="root",password="",db="studentdb")
mycursor=con.cursor()

print("=========================")
print("STUDENT MANAGEMENT SYSTEM")
print("=========================")

print("1. Add New Student")
print("2. View Student Record")
print("3. Update Student Record")
print("4. Delete Student Record")
print("5. View All Records")
print("6. View District wise record")

    

choice=input("Enter your command:")

if choice=="1":
    studentName=input("Name:")
    studentClass=input("Class:")
    studentAddress=input("Address:")
    insertList=[studentName,studentClass,studentAddress]
    insertQuery="insert into record(Name,Class,Address) values(%s,%s,%s)"
    
    if mycursor.execute(insertQuery,insertList):
        print("Data Recorded Successfully.")
    else:
        print("Error..")

elif choice=="2":
    getName=input("Student's Name:")
    selectQuery="select * from record where Name=%s"
    
    mycursor.execute(selectQuery,getName)
    d=mycursor.fetchall()
    for data in d:
        print("\n********************")
        print("Id :" +str(data[0]))
        print("Name :" +data[1])
        print("Class :"+data[2])
        print("Address :"+data[3])
elif choice=="3":

    getId = input("Enter student ID:")
    convertId=int(getId)
    newName=input("Enter New Name:")
    newClass=input("Enter New Class:")
    newAddress=input("Enter New Address:")

    updateList=[newName,newClass,newAddress,convertId]
    updateQuery="update record set Name=%s, Class=%s, Address=%s where Id=%s"

    if mycursor.execute(updateQuery,updateList):
        print("Record Updated Successfully..")

    else:
        print("Error")

elif choice=="4":
    deleteId=input("Enter the student ID:")
    convertDeleteId=int(deleteId)
    deleteQuery="delete from record where Id=%s"
    if mycursor.execute(deleteQuery,convertDeleteId):
        print("Record Deleted Successfully..")

    else:
        print("Please check student Id!")

elif choice=="5":
    showAll="select * from record"
    mycursor.execute(showAll)
    all=mycursor.fetchall()
    print("ID      NAME      CLASS       ADDRESS")
    for x in all:
        print("----------------------------------------------------")
        print(str(x[0])+ "        "+x[1]+"      "+x[2]+"      "+x[3])
        print("----------------------------------------------------")

elif choice=="6":
    addr=input("Enter the district:")
    showaddr="select * from record where Address=%s"
    mycursor.execute(showaddr,addr)
    getaddr=mycursor.fetchall()
    print("ID      NAME      CLASS       ADDRESS")
    for y in getaddr:

        print("----------------------------------------------------")
        print(str(y[0]) + "        " + y[1] + "      " + y[2] + "      " + y[3])
        print("----------------------------------------------------")


    
con.commit()
con.close()
