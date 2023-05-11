
# Meet Democracy public Consul fork using the Digital Scotland Design System 


**NOTE** This is a **fork** of [Meet Democracy Consul](https://github.com/netoum/meetdemocracy-consul).

Our sincere thanks and appreciation go out to Consul Project for the incredible work and support they have provided.

![Meet Democracy logo](https://meetdemocracy.com/images/LogoMeetDemocracy.png)


# Hi, we are Meet Democracy! 👋
[https://meetdemocracy.com](https://meetdemocracy.com)

Meet democracy platform allows the participants of your community to debate and vote on legislation, budget and more. Our goal is to make community development easy. We intend to democratize community participation by making it accessible to all. We recognize the importance of having access to a democratic and trustworthy platform. Give your community citizens the freedom to express themselves.

## What's new ?

- Add JS and CSS for Digital Scotland Design System 
Design and build accessible digital services for Scotland
The Digital Scotland Design System provides static web assets for websites and web applications for the Scottish Government and other Scottish public sector bodies.
The Design System is open source and free to use.
[Digital Scotland Design System](https://designsystem.gov.scot/)

- Add Button component

## Run Locally

Clone the project

```bash
git clone https://github.com/netoum/meetdemocracy-consul-scotland-design.git
```

Go to the project directory

```bash
cd meetdemocracy-consul
```

Install dependencies

```bash
bundle install

```
Configure the database and secrets

```bash
cp config/database.yml.example config/database.yml
cp config/secrets.yml.example config/secrets.yml
```

Setup the database

```bash
bin/rake db:create
bin/rake db:migrate
bin/rake db:dev_seed
```

Start the server

```bash
bin/rake s
```

## Demonstration Admin and User

You can use the default admin user from the seeds file:

 **user:** admin
 **pass:** meetdemocracy

But for some actions like voting, you will need a verified user, the seeds file also includes one:

 **user:** verified
 **pass:** meetdemocracy
