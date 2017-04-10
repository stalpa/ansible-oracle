ansible-oracle

role name : ansible-suitecrm

playbook steps:
* Install/Configure dependencies
suitecrm.yml
* Install/Configure Apache
httpd.yml
* Install/Configure MySQL
mysql.yml
* Remove zipfile
cleanup.yml

Actions:
* Install unzip,php,php-gd,php-mysql,php-mbstring,php-xml,php-imap
* Configure PHP timezone,upload_max_filesize,max_execution_time,memory_limit,post_max_size
* Create suitecrm installation directory
* Unzip/Move SuiteCRM to the 'www' directory
* Ensure Apache is installed
* Change SuiteCRM ownership
* Ensure Apache is always running
* Ensure MySQL packages are installed.
* Ensure MySQL Python libraries are installed.
* Ensure MySQL is started and enabled on boot.
* MySQL | Ensure MySQL is running
