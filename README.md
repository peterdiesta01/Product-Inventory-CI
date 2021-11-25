Simple Shop API with JWT Authenticaion:

Clone this repo
* run <b>bundle install</b>
* run <b>rails db:create db:migrate db:seed </b>
* run <b>rails s </b>

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 orderedList:0 -->

- Information
	- To Get JWT of customer
	- To Get JWT of admin
	- Display all Region
	- Show Region
	- Create Region
	
<!-- /TOC -->


## Information
Run this to in postman or any application of API Testing.
Create a JSON file for the parameters for getting the JWT<br>
## To get JWT
Sample customer email and password generated from seeds
```
POST http://localhost:3000/api/v1/authentications
{
    "email": "customer@gmail.com",
    "password": "customershop"
}
```
Sample admin email and password generated from seeds
```
POST http://localhost:3000/api/v1/authentications
{
    "email": "adminshop@gmail.com",
    "password": "adminshop"
}
```
Display all region if the user role is admin<br>
Add your Authorization Bearer <JWT> in your header<br>
<b>Sample Output</b>
```
GET http://localhost:3000/api/v1/regions
  
{
    "regions": [
        {
            "id": 1,
            "title": "NCR",
            "country": "Philippines",
            "currency": "PHP",
            "tax": "0.12",
            "created_at": "2021-11-25T06:52:38.805Z",
            "updated_at": "2021-11-25T06:52:38.805Z"
        },
        {
            "id": 2,
            "title": "Southern Thailand",
            "country": "Thailand",
            "currency": "THB",
            "tax": "0.1",
            "created_at": "2021-11-25T06:52:38.810Z",
            "updated_at": "2021-11-25T06:52:38.810Z"
        }
    ]
}
  
```
  
Show region if the user role is admin<br>
Add your Authorization Bearer <JWT> in your header<br>
<b>Sample Output</b>
```
GET http://localhost:3000/api/v1/regions/1
  
{
    "region": {
        "id": 1,
        "title": "NCR",
        "country": "Philippines",
        "currency": "PHP",
        "tax": "0.12",
        "created_at": "2021-11-25T06:52:38.805Z",
        "updated_at": "2021-11-25T06:52:38.805Z"
    }
}
  
```
Create region if the user role is admin<br>
Add your Authorization Bearer <JWT> in your header<br>
<b>Sample Output</b>
```
POST http://localhost:3000/api/v1/regions
  
{
    "region": {
        "title": "Central Region",
        "country": "Singapore",
        "currency": "SGD",
        "tax": "0.12"
    }
}
  
``` 
Update region if the user role is admin<br>
Add your Authorization Bearer <JWT> in your header<br>
<b>Sample Output</b>
```
PUT http://localhost:3000/api/v1/regions
  
{
    "region": {
        "title": "Central Region",
        "country": "Singapore",
        "currency": "SGD",
        "tax": "0.12"
    }
}
  
```    



