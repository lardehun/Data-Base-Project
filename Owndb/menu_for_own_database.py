__author__ = 'Szabo Mate'
import run_scripts
import mysql
from mysql.connector import errorcode

Answer_dictionary = {
                    "1":mysql_py_file.create_database,
                    "2":mysql_py_file.insert,
                    "3":mysql_py_file.query
}

class MainMenu(object):

    @staticmethod
    def menu_database():
            answer = ""
            print("""What do you want to do?
                    1. Run Create Script
                    2. Run Insert Script
                    3. Run Query Script""")
            while answer == "":
                answer = input("Answer: ")
            MainMenu.investigate_answer(answer)

    @staticmethod
    def investigate_answer(answer):
        for key in Answer_dictionary:
            if key == answer:
                try:
                    database_connector = mysql.connector.connect(user='root', password = "jarjar",host = "127.0.0.1")
                    cursor = database_connector.cursor()
                except mysql.connector.Error as err:
                    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
                        print("Something is wrong with your user name or password.")
                    else:
                        print(err)
                else:
                    Answer_dictionary[key](cursor,database_connector)
                    cursor.close()
                    database_connector.close()
                    input("Done")
                    MainMenu.menu_database()
            elif answer == "7":
                quit()
        else:
                input("Answer Invalid")
                MainMenu.menu_database()

if __name__ == '__main__':
    MainMenu.menu_database()