Make the internet suck less
===========================

Block unwanted websites. The provided files [http://someonewhocares.org/hosts/](from http://someonewhocares.org/hosts/)) prevent your computer from connecting to selected internet hosts. This is an easy and effective way to protect you from many types of spyware, reduces bandwidth use, blocks certain pop-up traps, prevents user tracking by way of "web bugs" embedded in spam, provides partial protection to IE from certain web-based exploits and blocks most advertising you would otherwise be subjected to on the internet.

Add unwanted sites
------------------

If there is a domain name you would rather never see, simply add a line that reads "127.0.0.1 machine.domain.tld". This will have the effect of redirecting any requests to that host to your own computer. For example this will prevent your browser from downloading banner ads, or sending your information back to a company.

Versions
--------

There are two versions, one that uses 0.0.0.0 and the other 127.0.0.1. On some machines the *zero* version may run minutely faster, however the zero version may not be compatible with all systems. 

This file must be saved as a text file with no extension.

Correct: hosts
Wrong: hosts.txt

If you use the zero or any mac version of the hosts file, just remove the file extension! On newer macs with OS X use hosts or hosts.zero instead of hosts.mac or hosts.zero.mac. And don't forget to remove any file extension.

Where to place the hosts file?
------------------------------

<table>
  <tr>
    <th>Operating System</th>
    <th>Version</th>
    <th>Path</th>
  </tr>
  <tr>
    <td>Windows</td>
    <td>9x, ME</td>
    <td>C:\Windows\hosts</td>
  </tr>
  <tr>
    <td>Windows</td>
    <td>NT, Win2K and XP</td>
    <td>C:\windows\system32\drivers\etc\hosts <strong>or</strong> C:\winnt\system32\drivers\etc\hosts</td>
  </tr>
  <tr>
    <td>Windows</td>
    <td>7, Vista</td>
    <td>C:\windows\system32\drivers\etc\hosts <strong>or</strong> %systemroot%\system32\drivers\etc\hosts</td>
  </tr>
  <tr>
    <td>Linux, Unix, OS X</td>
    <td></td>
    <td>/etc/hosts</td>
  </tr>
  <tr>
    <td>OS/2</td>
    <td></td>
    <td>%ETC%\HOSTS</td>
  </tr>
  <tr>
    <td>BeOS</td>
    <td></td>
    <td>/boot/beos/etc/hosts</td>
  </tr>
  <tr>
    <td>Netware</td>
    <td></td>
    <td>System\etc\hosts</td>
  </tr>
</table>

Notes
-----

* In Windows you may have to use Notepad and "Run as Administrator".
* In Linux, Unix and Mac OS X you will require root access. Saving the file to "~/hosts" will allow you to run something like "sudo cp ~/hosts /etc/hosts".
* Ubuntu users who experience trouble with apt-get should consult the [Ubuntu Forums](http://ubuntuforums.org/archive/index.php/t-613521.html).
* In OS/2 ensure that in the CONFIG.SYS file this line is included: "SET USE_HOSTS_FIRST=1"
* For Macintosh (pre OS X) place it in the Mac System Folder or Preferences folder something like "HD:System Folder:Preferences:Hosts" and reboot. Alternatively you can save it elsewhere on your machine, then go to the TCP/IP control panel and click on "Select hosts file" to read it in.
* To convert the hosts file to a set of Cisco IOS commands for Cisco routers use [Jesse Baird's script](http://jebaird.com/blog/hosts-ip-host-generating-blocked-hosts-host-file-cisco-router)

