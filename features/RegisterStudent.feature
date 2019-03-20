Feature: Register a Student

   In order to have the student in our
   system
   As a user
   I want to be able register a student

   Scenario:  register a student
    Given  I am on register student page
    When I fill in 'student[name]' with 'Tito Domingos'
    And I fill in 'student[surname]' with 'Muanda'
    And I fill in 'student[gender]' with 'Muanda'
    And I fill in 'student[student_number]' with '215025160'
    And I fill in 'student[id_number]' with 'N11919490'
    Then I press on 'Create Student'
   #  Then  show me the page
    Then  I should see "Student was successfully created."
    Then  the number of "student" on the database should be 1