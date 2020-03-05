<h1 align="center">Pet Rescue! </h1>
<p align="center"> A website to reunite lost or found pets with their owners. Moreover, it's a way for homeless pets to have a home.</p>

</br>

<h5> Project Date:  2019. </h5> 
<h5> Client: Pets Rescuer, pets owners, and pets lover.</h5> 
<h5> Website:</h5> 
<p><a href="https://pets-rescue.herokuapp.com/" target="_blank">https://pets-rescue.herokuapp.com/</a></p>

 <h4>Pet Rescue Website Overview: </h4>
 <p>The website built for pet owners, rescuers, and pet lovers. They can post a report of lost and found pets with the ability to write a description, information and upload an image of the pet. Also, they can introduce a pet for adoption. </p>
 
---

### Getting Started
To get a local copy up and running follow these simple steps.

#### Installation
 
1. Fork and Clone the repo
```sh
git clone https://github.com/github_username/repo.git
```
2. Boundle install

```sh
boundle install
```
3. Initialize the database

```shell
rails db:create db:migrate db:seed
```

4. Start Server

```sh
rails s
```
----

<h5> ScreenShots :</h5>
  <img src="images/pet/home.png" alt="Image" >
  <img src="images/pet/details1.png" alt="Image" >
  <img src="images/pet/report.png" alt="Image">

---
<h5> Wireframe :</h5>
<img src="images/pet/Wirefram1.png" alt="Image">

---

<img src="images/pet/Wirefram2.png" alt="Image" >

---

<img src="images/pet/Wirefram3.png" alt="Image">

----

<h5>Technologies :</h5>
<p>The web application built from scratch by useing Ruby on Rails and PostgreSQL for the database without used Scaffolding. </p>
<ul>
  <li><strong>Ruby on Rails:</strong> The framework Was used to build the website.</li>
  <li><strong>Ruby:</strong> The programming language used for the project.</li>
  <li><strong> Postgresql: </strong> Was used for database.</li>
  <li><strong> Javascript: </strong> Was used for the functionality of the game, using DOM manipulation.</li>
  <li><strong> JQuery: </strong> Was used for the functionality of the game, using DOM manipulation. </li>
  <li><strong> Devise:</strong >Was used for authentication. </li>
  <li><strong>Source Control: </strong> was used for interaction, management and upload changes on code to Git repository</li>
  <li><strong>Command Line:  </strong> used for interacting with the computer, navigating the filesystem.</li>
  <li><strong>Visual Studio: </strong> Was used for coding.</li>
  <li><strong>Google Chrome Web Browser:</strong> Was used to view the website.</li>
  <li><strong>Bootstrap:</strong> The library used for styling.</li>
  <li><strong>Mini Magick:</strong> The library used for image Uploader.  </li>
  <li><strong>Google Chrome Developer Tools: </strong> Was used to debug and solve problems in the code.</li>
  <li><strong>Adobe XD </strong> Was used for Wireframe.</li>
  <li><strong>Heroku:  </strong> Was used for deployment.</li>
</ul>

----

<h5>Models :</h5>
  <ul> 
    <li> Report. </li>
    <li> Comment. </li>
    <li> User. </li>
  </ul>

----

<h5>Relationship :  </h5>
<ul> 
      <li>Report belongs to User. </li>
      <li>Report has many comments. </li>
 </ul>
      
<ul> 
      <li>Comment belongs to Report. </li>
      <li>Comment belongs to User.  </li>
</ul>
        
<ul> 
      <li>User has many Reports. </li>
      <li>User has many Comments. </li>
</ul>

----

<h5>Features : </h5>
<p>The website built in English. The Admin authorized to Create, Read, Update and Delete (CRUD) Reports and Comments. Users authorized to Creat, Read, Update and Delete (CRUD) their Reports, Comments and Profile.
   The website has authentication for Signup, Sign in and sign out.</p>
  <ul>
    <li> There are two types of users, Admin and Regular User.</li>
    <li> User authorized to Signup, Sign in and sign out.</li>
    <li> Regular Users authorized to CRUD their reports and comments. </li>
    <li> Admin authorized to CRUD their reports and comments and Regular Users reports and comments. </li>
    <li> Name is authenticated to be in the Englis language. </li>
    <li> The comment form is authenticated to be filled.</li>
    <li> Applity to Search for specific Report Type, Pet Species and/or City  </li>
    <li> Applity to Upload image</li>
    <li>The Reports and Comments are sorted by the last created will be first.</li>
    <li> The website deployet into Heroku</li>
  </ul>

----

  <h5>Future Plan : </h5>
    <ul>
      <li> Admin Dashboard. </li>
      <li> Dashboard for calculating how many pets were adopted or rescued. </li>
      <li> Improve the responsive design.</li>
      <li> Add GPS Features. </li>
      <li> Ability to download Flayers for Lost or Found Pets. </li>
      <li> User Alarts</li>
    </ul>

----

<h6><strong> Developer: </strong></h6>
 <p>Sara Daghustani</p>
 
