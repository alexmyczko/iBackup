![iBackup](ibackup.png?raw=true "iBackup")

<body text="#000000" link="#000000" vlink="#000000" alink="#000000" bgcolor="#ffffff">
Version 2.27 <b><a href="ibackup-2.27.tar.gz">download .tar.gz</a></b> | <b><a href="changelog">changelog</a></b> |
<b><a href="http://packages.debian.org/ibackup">Debian</a></b> |
<b><a href="ibackup-sol-all.pkg">Solaris</a></b> |
<b><a href="ibackup-2.27-1.noarch.rpm">RPM</a></b> |
<b><a href="http://freshmeat.net/projects/ibackup/">freshmeat</a></b><p>

<b>What is it?</b><br>
iBackup simplifies backing up the system configuration files (/etc) for UNIX systems (Solaris, *BSD, Linux). You can run the program from any directory, it will by default save
the (maybe compressed) tarball to /root. It is possible to encrypt the tarball, to upload the tarball to some other host and run this backup
automated in a cronjob. You could also send the backup by mail, using <b><a href="http://omnibus.ruf.uni-freiburg.de/~gritter/">nail</a></b>.<br>
You might want to check the man pages of <a href="http://www.linuks.mine.nu/manstep/index.cgi?man=1+tar"><b>tar(1)</b></a>, <a href="http://www.linuks.mine.nu/manstep/index.cgi?man=1+scp"><b>scp(1)</b></a>, <a href="http://www.linuks.mine.nu/manstep/index.cgi?man=1+gzip"><b>gzip(1)</b></a>, <a href="http://www.linuks.mine.nu/manstep/index.cgi?man=1+compress"><b>compress(1)</b></a>, <a href="http://www.linuks.mine.nu/manstep/index.cgi?man=1+ncftp"><b>ncftp(1)</b></a>, <a href="http://www.linuks.mine.nu/manstep/index.cgi?man=1+openssl"><b>openssl(1)</b></a> and <a href="http://kimmo.suominen.com/ssh/"><b>kimmo.suominen.com/ssh/</b></a> for an introduction to ssh/scp with public/private keys.
You can also generate reports about the running system, which look like <a href="alpha.html"><b>this</b></a>.<p>

<b>Installation and configuration</b><br>
gzip -dc ibackup-2.27.tar.gz | tar -xvf -<br>
make install install-config<br>
$EDITOR <b><a href="ibackup.conf">/etc/ibackup.conf</a></b><p>

<b>Dependencies</b><br>
<b><a href="ftp://ftp.gnu.org/gnu/bash/">GNU Bash</a></b> (recommended)<br>
<b><a href="http://www.openssh.org/">OpenSSH</a></b> (recommended)<p>

<b>Usage</b><br>
Run ibackup with one or more of the following parameters:
<table border=0 width="100%">
<tr><td>linux</td><td>save system configuration of <b><a href="http://www.kernel.org/">Linux</a></b> (<b><a href="http://www.debian.org/">Debian</a></b>, <b><a href="http://www.slackware.org/">Slackware</a></b>)</td></tr>
<tr><td>solaris</td><td>save system configuration of <b><a href="http://www.sun.com/solaris/">Solaris</a></b></td></tr>
<tr><td>bsd</td><td>save system configuration of <b><a href="http://www.freebsd.org/">FreeBSD</a></b>, <b><a href="http://www.netbsd.org/">NetBSD</a></b> and <b><a href="http://www.openbsd.org/">OpenBSD</a></b></td></tr>
<tr><td>sysconf</td><td>generate and save a HTML system configuration report, <b><a href="alpha.html">example</a></b></td></tr>
<tr><td>mysql-fs</td><td>save <b><a href="http://www.mysql.org/">MySQL</a></b> configuration and db (filesystem)</td></tr>
<tr><td>mysql-dump</td><td>save <b><a href="http://www.mysql.org/">MySQL</a></b> configuration and db (dump)</td></tr>
<tr><td>postgresql-fs</td><td>save <b><a href="http://www.postgresql.org/">PostgreSQL</a></b> configuration and db (filesystem)</td></tr>
<tr><td>postgresql-dump</td><td>save <b><a href="http://www.postgresql.org/">PostgreSQL</a></b> configuration and db (dump)</td></tr>
<tr><td>apache</td><td>save <b><a href="http://www.apache.org/">Apache</a></b> configuration</td></tr>
<tr><td>squid</td><td>save <b><a href="http://www.squid-cache.org/">Squid</a></b> configuration</td></tr>
<tr><td>bind</td><td>save <b><a href="http://www.isc.org/products/BIND/">Bind</a></b> configuration</td></tr>
<tr><td>pks</td><td>save <b><a href="http://pks.sourceforge.net/">OpenPGP Public Key Server</a></b> configuration and data</td></tr>
<tr><td>mailman</td><td>save <b><a href="http://www.list.org/">Mailman</a></b> configuration and data</td></tr>
<tr><td>aide</td><td>save <b><a href="http://www.cs.tut.fi/~rammer/aide.html">AIDE</a></b> configuration</td></tr>
<!-- <tr><td>proc</td><td>save most of /proc</td></tr> -->
<tr><td>raptor</td><td>save <b><a href="http://www.symantec.com/product/">Raptor/Symantec Firewall</a></b> configuration</td></tr>
<tr><td>viruswall</td><td>save <b><a href="http://www.trendmicro.com/US/Products/Internet+Gateway/InterScan+VirusWall/default.htm">Trend Micro Interscan Viruswall</a></b> configuration</td></tr>
<tr><td>checkpoint</td><td>save <b><a href="http://www.checkpoint.com/products/protect/firewall-1.html">Checkpoint Firewall</a></b> configuration</td></tr>
<tr><td>ipso</td><td>save Checkpoint and system configuration of Nokia IPSO</td></tr>
<tr><td>citrix</td><td>save <b><a href="http://www.citrix.com/">Citrix ICA Client</a></b> configuration</td></tr>
<tr><td>sb_fullcluster</td><td>save <b><a href="http://www.stonebeat.com/">Stonebeat</a></b> Fullcluster configuration</td></tr>
<tr><td>sb_servercluster</td><td>save <b><a href="http://www.stonebeat.com/">Stonebeat</a></b> Servercluster configuration</td></tr>
<tr><td>finjan</td><td>save <b><a href="http://www.finjan.com/">Finjan Surfingate</a></b> configuration</td></tr>
<tr><td>rainfinity</td><td>save <b><a href="http://www.rainfinity.com/">Rainfinity</a></b> configuration</td></tr>
<tr><td>--compress</td><td>compress the tarball</td></tr>
<tr><td>--dont-compress</td><td>don't compress the tarball</td></tr>
<tr><td>--encrypt | -e</td><td>encrypt the tarball</td></tr>
<tr><td>--upload | -u</td><td>upload the tarball (scp/ftp)</td></tr>
<tr><td>--dont-upload</td><td>don't upload the tarball</td></tr>
</table>

<p>Running iBackup without parameter gives you a list of available configurations.
You should check the source to add your own parameters (things to backup or exclude).
When restoring make sure you are in /, unpacking in /pub would restore your backups in there.<p>

<b>Output</b><br>
iBackup will produce a tarball named like this <b>hostname_date_time.tar[.gz|.Z]</b> including all the configuration files you specify as parameters.<p>

<b>Example</b><br>
root@silverhorse:~# ibackup linux sysconf<br>
root@silverhorse:~# ls -la<br>
-rw-------     1 root     root    158269 Jan 15 14:59 silverhorse_15011963_1459.tar.gz<br>
root@silverhorse:~# <blink>_</blink><p>

<b>Setting up a cronjob</b><br>
This will set up a cronjob for a quarter past 6 am daily.<br>
root@silverhorse:~# export EDITOR=mcedit<br>
root@silverhorse:~# crontab -e<br>
15 6 * * * /usr/bin/ibackup linux apache postgresql-dump &gt; /dev/null 2&gt;&1<br>
15 6 * * * (/usr/bin/sysconf 2>/dev/null | mail -a "Content-type: text/html" -s "System Report" jolly@jumper.net)<br>
root@silverhorse:~# crontab -l<br>
15 6 * * * /usr/bin/ibackup linux apache postgresql-dump &gt; /dev/null 2&gt;&1<br>
15 6 * * * (/usr/bin/sysconf 2>/dev/null | mail -a "Content-type: text/html" -s "System Report" jolly@jumper.net)<br>
root@silverhorse:~# <blink>_</blink><p>

<b>Can I add support for other configurations?</b><br>
Of course you can, just edit /usr/bin/ibackup to fit your needs, if you think your changes
might be useful for others, don't hesitate to send them to me.
Let us have a look at the mysql-fs example<br>
case $@ in *mysql-fs*)<br>
&nbsp;&nbsp;&nbsp;pre="/etc/init.d/mysql stop"<br>
&nbsp;&nbsp;&nbsp;post="/etc/init.d/mysql start"<br>
&nbsp;&nbsp;&nbsp;dir="$dir var/lib/mysql etc/mysql";;<br>
esac<br>
We define the variable <i>pre</i> which is executed before we create the tarball (here we stop the database).
The <i>post</i> variable says what to do after we have created our backup (in this example start the database). In the <i>dir</i> variable
we define what paths or files we want to backup, it is important to not have a / at the beginning (for example etc, not /etc).
You can exclude files by writing them to /tmp/excludes (for example "echo etc/shadow &gt;&gt; /tmp/excludes").
<p>

<b>Restore from a backup</b><br>
Following command restores the complete etc directory to /<br>
cd /<br>
gzip -dc silverhorse_15011963_1459.tar.gz | tar -xvf - etc
<p>

<b>I Thank</b><br>
<a href="mailto:mcduke@mac.com"><b>mcduke</b></a> on <a href="http://www.freenode.net/"><b>fn</b></a> (#macdev) for making the logo (even when he was dead tired)<br>
<a href="http://Xtrmntr.org/ORBman"><b>ORBman</b></a> from #windowmaker for giving me security related tips and telling me about <a href="http://www.openssl.org/"><b>openssl</b></a><br>
<a href="mailto:matthew@bells.mcb.net"><b>mentor</b></a> (my hero) from #debian for fixing the upload bug<br>
<p>

<b>Name issue (tm)</b><br>
Please note the content and services related to ibackup are not related to online storage and online backup services offered at IBackup (http://www.ibackup.com).
The use of ibackup name here refers to a set of tools and utilities for backups on unix alike platforms.
The trademark rights to the IBackup word and stylized logo are international.<p>

27/05/2003-03/02/2021 alex@aiei.ch
