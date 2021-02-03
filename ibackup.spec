Summary: 	Automated backups (even remote) of machine configurations
Name: 		ibackup
Version: 	2.27
Release: 	1
License: 	GPL
Group:		System/Utilities
Source:		%{name}-%{version}.tar.gz
URL:		http://www.linuks.mine.nu/ibackup/
BuildRoot:	%{_tmppath}/%{name}-%{version}-build
BuildArch:	noarch

%description
This software simplifies the task of backing up the system
configuration files (those under /etc) for UNIX systems
(Solaris, *BSD, Linux). You can run the program from any directory
and it will by default save the (maybe compressed) tarball to /root.
.
It is possible to encrypt the tarball, to upload the tarball to some
other host and run the backup automated in a cronjob.
       
%prep
%setup

%build

%install
[ -d %{buildroot} -a "%{buildroot}" != "" ] && rm -rf  %{buildroot}

make DESTDIR=%{buildroot} MANDIR=%{buildroot}%{_mandir} install
make DESTDIR=%{buildroot} install-config

%clean
[ -d %{buildroot} -a "%{buildroot}" != "" ] && rm -rf  %{buildroot}

%files
%defattr(-, root, root)
%doc COPYING changelog *.html *.png *.jpg
%{_bindir}/ibackup
%{_bindir}/sysconf
%config /etc/ibackup.conf
%{_mandir}/man1/*

%changelog
* Thu May 22 2003 Henne Vogelsang
- Initial RPM release.
