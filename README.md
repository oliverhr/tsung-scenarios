# XMPP Load test with Tsung

## Test Objectives

1. Connect with the server
2. Login using plain authorization
3. Send presence
5. Join an specific MUC
6. Each user must send 10 messages to an specific MUC
7. Close session

## Status

Load succefully connect each iteration to the server, but seems that users it can't login it can't continue.

**Notes**

- I had a problem with option file_server if fileId differ from filename Tsung trows and error seems solved
- I think the problem is that tsung is ommiting the CSV file to get Username and Password or at least it gets Troubles parsing then file contents.

I tried using as filed separator on CSV file `comma` and `semicolon`, `single` and `double` quotes and without them for strings but I get the same results.

### References
- Tsung Documentation: http://tsung.erlang-projects.org/user_manual
	- Sessions - [chapter 6.6](http://tsung.erlang-projects.org/user_manual/conf-sessions.html)
	- Advanced Features - [chapter 6.7](http://tsung.erlang-projects.org/user_manual/conf-advanced-features.html)
- GitHub: [https://github.com/processone/tsung](https://github.com/processone/tsung)

### Software

- Docker - https://www.docker.com/
- Tsung 1.6.0 - via https://github.com/ddragosd/tsung-docker
- Ejabberd 15.09 - https://www.process-one.net/en/ejabberd/archive/
- Postgres 9.4.9 as ODBC storage for ejabberd - https://hub.docker.com/_/postgres/
