# Rails Validations

## Part 1: Conceptual questions
1. Why do we use validation?
    - data being sent to db is what we want
2. What are the [two] general types of "bad user data"?
    - nil/blank records, anything that could break logic, hackers, bots
3. When do validations get triggered?
    - runs right before record is saved to db (save, create, update)
4. How can we see if and why a record failed validation?
    - valid?, errors method 

## Part 2: Expand your boat rental app to include model validations
* You were contracted to build a rental platform used by internal employees of a boat rental store. Last week's task was to build as much of the CRUD functionality as possible. This week, you will be adding validations to your main model.
* IF YOU HAVEN'T ALREADY:
1. Create a new Rails app skeleton.
2. Create necessary DB table, model, controller for a `Rental` model. Rentals should have a date & time, customer name, and boat name.
3. Build out the routes, actions, and views to create full CRUD functionality for the `Rental` model, in whatever order you want. You have creative freedom for how each view will look. Fulfilling CRUD functionality is the only requirement.
4. Seed the database with a few rentals and test out your app so far.
* BUILD SOME VALIDATIONS (these will either be default ActiveRecord or custom validations) to fulfill these requirements on the `Rental` model:
1. The customer name, date/time, and boat name can not be blank or nil.
2. The date/time needs to be an actual date/time
3. The date/time can not be in the past.
4. The customer name must be capitalized.
5. The customer name can not be Jeff (Jeff is banned from the rental shop for prior boat damage)
* BONUS
1. After proving your validations work in the Rails console, display your validation errors in the views