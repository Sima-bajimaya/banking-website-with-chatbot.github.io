#!C:\Users\user\anaconda3\envs\chats\python.exe
import cgi, cgitb 
import pymysql
def connect_to_database():
	conn=pymysql.connect("localhost",'root','','major_project',3306)
	cursor = conn.cursor()
	return conn,cursor