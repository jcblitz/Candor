Feature: Manage dashboards
  In order to see interviews that affect me
  As a user of the system
  I want a landing page where I can see personalized information
  
  Scenario: View dashboard page
  #Given a user exists with email: "test@test.com", password: "123456", id: 1
  And an employee exists with employee_name: "Jared Blitzstein", id: 1, user_id: 1
  When I am on the dashboard page
  #And I fill in "user_email" with "test@test.com" 
  #And I fill in "user_password" with "123456"
  #And I press "user_submit"
  Then I should see "Hello Jared Blitzstein"

  # Rails generates Delete links that use Javascript to pop up a confirmation
  # dialog and then do a HTTP POST request (emulated DELETE request).
  #
  # Capybara must use Culerity/Celerity or Selenium2 (webdriver) when pages rely
  # on Javascript events. Only Culerity/Celerity supports clicking on confirmation
  # dialogs.
  #
  # Since Culerity/Celerity and Selenium2 has some overhead, Cucumber-Rails will
  # detect the presence of Javascript behind Delete links and issue a DELETE request 
  # instead of a GET request.
  #
  # You can turn this emulation off by tagging your scenario with @no-js-emulation.
  # Turning on browser testing with @selenium, @culerity, @celerity or @javascript
  # will also turn off the emulation. (See the Capybara documentation for 
  # details about those tags). If any of the browser tags are present, Cucumber-Rails
  # will also turn off transactions and clean the database with DatabaseCleaner 
  # after the scenario has finished. This is to prevent data from leaking into 
  # the next scenario.
  #
  # Another way to avoid Cucumber-Rails' javascript emulation without using any
  # of the tags above is to modify your views to use <button> instead. You can
  # see how in http://github.com/jnicklas/capybara/issues#issue/12
  #