Feature: Add student subject
  In order to keep track of subject qualification
  As a user
  I want to be able add stdunt subject information

  Background: Ensure existence of a studnet
    Given the following Student exists:
    | id | name | surname   | gender | student_number    | id_number|
    | 2 | Marc | angola    | male   | 03421342          | 90085    |
    And I visit the '90085' show page


  Scenario: validate student subject
    Given  I am on add student subject page
    When I fill in 'subject[name]' with ''
    And I fill in 'subject[code]' with ''
    And I fill in 'subject[final_Mark]' with ''
    #And I fill in 'subject[exame_date(li)]' with ''
    And I fill in 'subject[exam_value]' with ''
    And I fill in 'subject[student_id]' with ''
    Then I press on 'Create Suject'
    Then  show me the page
    Then  I should see "Name can't be blank"


  # Scenario:  register a student
  #   Given  I am on register student page
  #   When I fill in 'student[name]' with 'Tito Domingos'
  #   And I fill in 'student[surname]' with 'Muanda'
  #   And I fill in 'student[gender]' with 'Muanda'
  #   And I fill in 'student[student_number]' with '215025160'
  #   And I fill in 'student[id_number]' with 'N11919490'
  #   Then I press on 'Create Student'
  #   Then  show me the page
  #   Then  I should see "Student was successfully created."
  #   Then  the number of "student" on the database should be 1

