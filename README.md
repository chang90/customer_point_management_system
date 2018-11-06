# Customer Point Management System API
## A rails & postgresql based API for customer management system

### Demo API url: 
https://arcane-refuge-70058.herokuapp.com

### Front end project:
https://github.com/hiby90hou/customer_point_management_system_FE

### How to use

* Install ruby 2.4.2 rails 5.2.1 postgresql

* Clone project
```git clone https://github.com/hiby90hou/customer_point_management_system.git```

* Get into this folder
```cd customer_point_management_system```
* Install gems
```bundle install```

* Set up database
```rails db:migrate```

* Run rails project
```bin/rails server```

* It work!!!!

### Database

#### User Table

| id  | name | email | password | create_at | updated_at |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| number  | string  | string | string | Date | Date |

#### Customer Table
| id  | custCode | first_name| last_name | email | DOB | references | user_id | create_at | updated_at |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| number | string | string  | string | string | Date | string | number | Date | Date |

### What's next
* Add customer royalty points system (base on the reference column in customer table)
* Add QR code scan system (just like Coles flybuy point)
