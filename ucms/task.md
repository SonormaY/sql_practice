## University Course Management System

Design a relational database for a university that needs to manage courses, students, professors, departments, and grades. The system should track:

1. **Students** (student ID, name, email, phone, enrollment date, graduation date, major)
2. **Professors** (professor ID, name, email, phone, hire date, department, rank, specialization)
3. **Departments** (department ID, name, building, budget, chair person)
4. **Courses** (course ID, title, description, credit hours, department)
5. **Course Offerings** (specific instances of courses in a given semester with specific professors)
6. **Enrollments** (which students are enrolled in which course offerings)
7. **Grades** (midterm, final, assignments, participation for each student in each course offering)
8. **Prerequisites** (which courses are prerequisites for other courses)
9. **Textbooks** (associated with specific courses)

Your challenge is to:

1. Identify all entities and their attributes
2. Determine the relationships between entities (one-to-one, one-to-many, many-to-many)
3. Design a database schema that's in 3NF
4. Write SQL code to create all necessary tables with appropriate constraints
5. Include sample INSERT statements to populate your database with test data
6. Write 5 complex queries that demonstrate the relationships in your database