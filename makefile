
unyum:
	rpm -aq|grep yum|xargs rpm -e --nodeps

getnewyum:
	wget http://mirrors.163.com/centos/6/os/x86_64/Packages/yum-3.2.29-73.el6.centos.noarch.rpm
	wget http://mirrors.163.com/centos/6/os/x86_64/Packages/yum-metadata-parser-1.1.2-16.el6.x86_64.rpm
	wget http://mirrors.163.com/centos/6/os/x86_64/Packages/yum-plugin-fastestmirror-1.1.30-37.el6.noarch.rpm
	wget http://mirrors.163.com/centos/6/os/x86_64/Packages/python-iniparse-0.3.1-2.1.el6.noarch.rpm
	wget http://mirrors.163.com/centos/6/os/x86_64/Packages/python-urlgrabber-3.9.1-11.el6.noarch.rpm

insyum:
	rpm -aq|grep python-urlgrabber | xargs rpm -e --nodeps
	-rpm -ivh python-iniparse-0.3.1-2.1.el6.noarch.rpm
	rpm -ivh yum-metadata-parser-1.1.2-16.el6.x86_64.rpm
	rpm -ivh python-urlgrabber-3.9.1-11.el6.noarch.rpm
	rpm -ivh yum-3.2.29-73.el6.centos.noarch.rpm yum-plugin-fastestmirror-1.1.30-37.el6.noarch.rpm

