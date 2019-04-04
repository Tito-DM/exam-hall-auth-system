Feature: view a list of student

   In order to check the number of student
   as a user
   I would like to view a list of student

  Background: Ensure existence of a studnet
    Given the following Student exists:
      | id | name | surname | gender | student_number | id_number |
      | 2  | Marc | angola  | male   | 03421342       | 90085     |
      | 3  | jon  | dou     | male   | 03421342       | 90085     |
      | 4  | mario| dou     | male   | 03421342       | 90085     |
      | 5  | lina | owq     | female | 03421342       | 90085     |


   Scenario: list of student
    Given I am on "student index page"
    Then I should see list of registred sudent:
      | name  | surname | gender | student_number | id_number |
      | Marc  | angola  | male   | 03421342       | 90085     |
      | jon   | dou     | male   | 03421342       | 90085     |
      | mario | dou     | male   | 03421342       | 90085     |
      | lina  | owq     | female | 03421342       | 90085     |