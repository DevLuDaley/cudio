
-------------------------------------------------------------------------------------------------

should I just recreate all the same CRUD pages for each model?
what about methods?
Should I repeat the same methods in each model or is that what a helper does?

[] NEXT
-------------------------------------------------------------------------------

    []controllers
        [] best way to rails g controllers?

    [] routes and html/erb views

    [] nested resources
        -https://learn.co/tracks/online-software-engineering-structured/rails/routes-and-resources/routing-and-nested-resources

# config/routes.rb
            get 'authors/:id/posts', to: 'authors#posts_index'
            get 'authors/:id/posts/:post_id', to: 'authors#post'

And to handle our new filtering routes, we'll need to make some changes in our authors_controller to actually do the work.


[x] DONE
-------------------------------------------------------------------------------

[x] branch "master"
    [x] create "Oath" branch to test and implement
[x] view omniauth in separate window to "code along".
[x] complete omniauth setup
[x]bug
    [x]3000 & /signup page leads to errors
        [x] unless in :engineer model I delete 'omniauthable'
        &&
        [x]
[x] create branches for each step



-------------------------------------------------------------------------------




[] 1. Use the Ruby on Rails framework.

[] 2. Your models must:

 [x] at least one has_many()
 [x] at least one belongs_to 
 [x] at least two has_many :through relationships

 [x] Include a many-to-many relationship implemented with has_many :through associations. 
    [] The join table must include a user-submittable attribute 
          — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

[] Your models must include reasonable validations for the simple attributes. 

    [] You don't need to add every possible validation or duplicates, 
       such as presence and a minimum length, 
        [] but the models should defend against invalid data.
        
[]You must include at least one class level ActiveRecord scope method.

    [] Your scope method must be chainable, 
        [] use ActiveRecord Query methods within it (such as .where and .order) 
            rather than native ruby methods (such as #find_all or #sort).

    [] Your application must provide 
    [] standard user authentication
[x]      [x] signup => http://127.0.0.1:3000/engineers/sign_up
         [x] login => http://127.0.0.1:3000/engineers/sign_in
         [] logout => tbd
         [x] passwords => http://127.0.0.1:3000/engineers/password/new

[x]      [x] Your authentication system must also allow login from some other service. 
        Facebook, Twitter, Foursquare, Github, etc...
             [x] Github


    []You must include and make use of a nested resource with the appropriate RESTful URLs.

      [] You must include a nested new route with form that relates to the parent resource
      [] You must include a nested index or show route


    [] Your forms should correctly display validation errors. 

    [] a. Your fields should be enclosed within a fields_with_errors class 
    [] b. Error messages describing the validation failures must be present within the view.

[]Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

    [] Logic present in your controllers should be encapsulated as methods in your models.

    [] Your views should use helper methods and partials when appropriate.

    []• Follow patterns in the Rails Style Guide (https://github.com/bbatsov/rails-style-guide). 
    []• Follow patterns in the Ruby Style Guide (https://www.evernote.com/client/web). 



