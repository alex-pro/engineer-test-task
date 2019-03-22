# Installation

**Clone the repository**
```sh
$ git clone git@github.com:alex-pro/engineer-test-task.git
```

**Move to the directory**
```sh
$ cd engineer-test-task
```

**Set up the project**
```sh
bundle
rake db:create db:migrate
```

# Using

**Run application**
```sh
$ rails s
```

**Test it out**
```sh
$ curl -d '{"phone": {"number":1112223333}}' -H 'Accept: application/json' -H 'Content-Type: application/json' -X POST 'http://localhost:3000/phones'
```
