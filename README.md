# Student-Result-Management-System

This is a simple database project I made using MySQL and Flask. The goal is to help schools or colleges manage student marks, subjects, and generate result summaries easily.

What This Project Does
-> Stores student details like name, roll number, class, section, and DOB.
-> Keeps a list of subjects.
-> Allows adding marks for each student in every subject.
-> Calculates total marks, percentage, and grade automatically.
-> Shows results in a nice table format.

 How to Run
-> Install Flask and MySQL connector:
    pip install flask mysql-connector-python
-> Create a MySQL database named SRMS.
-> Create tables for students, subjects, and marks. Also, create the result_summary view.
-> Run the Flask app:
    python app.py
-> Open your browser and go to http://127.0.0.1:5000
