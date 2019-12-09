#!/bin/bash

echo "###############################################################"
echo "# This script is meant to automate the check compliance level #"
echo "# with regards to the MTN security baseline compliance as well#"
echo "# as set security configurations where necessary. This script #"
echo "# display a timestamp at the beginning of every operation to  #"
echo "# give an idea as to where backups and logs as and when there #"
echo "# is the need for a rollback. Actions of the script are logged#"
echo "# for the purpose of tracing errors asssociated with scripts. #"
echo "###############################################################"

echo "Please enter the number corresponding to the node you would like"
echo "to run scripts on(1-9).NB:Only Charging System nodes are available"
echo "1. SDP"
echo "2. CCN"
echo "3. OCC"
echo "4. EMM"
echo "5. AIR"
echo "6. EMA/EDA"
echo "7. NG-VS"
echo "8. ECMS"
echo "9. NG-CRS"
read nod

case $nod in 
	1)
		echo "The following scripts show the various security baselines compliance configurations on SDP. "
		echo "Please Enter the number between 1-40 associated with the appropriate script to run or enter "
		echo "41 to run all the scripts corresponding to the MBSS compliance list required by MTN"
		echo "1. Restrict Root Access on SDP node"
		echo "2. Disallow root access via FTP on SDP node"
		echo "3. Set Account Lockout Threshold for invalid logon attempts on SDP node"
		echo "4. Restrict mounting of NFS shares on SDP node"
		echo "5. Restrict concurrent unauthenticated user access from different terminals on SDP node"
		echo "6. Use of SSH key based authentication on SDP node"
		echo "7. Remove or disable inactive users on SDP node"
		echo "8. set Password restriction, Complexity and Expiry on SDP node"
		echo "9. Disable insecure and unused services on SDP node"
		echo "10. Configure SSH Session Timeout on SDP node"
		echo "11. Disable Anonymous FTP login on SDP node"
		echo "12. Set X11 Protocol Forwarding on SDP node"
		echo "13. Enable Stack protection against buffer overflows on SDP node"
		echo "14. Disable/Remove CGI scripts on SDP node"
		echo "15. Create and enable warning banners on SDP node"
		echo "20. Disable/Configure weak SNMP community string on SDP node"
		echo "21. Disable Trace/Track in apache HTTPD on SDP node"
		echo "22. Disable SSL weak cipher(using RC4) in apache on SDP node"
		echo "23. Disable SSLv3 and TLSv1 protocol weak CBC Mode on SDP node"
		echo "24. Upgrade a supported version of apache HTTP server on SDP node"
		echo "25. Disable SSH Weak CBC Mode Ciphers on SDP node"
		echo "26. Reset/Rocover Root Password on SDP node"
		echo "27. Enable Audit Logging on SDP node"
		echo "28. Logging of user activities on OS level on SDP node"
		echo "29. Restrict access of audit logs on SDP node"
		echo "30. Configure remote syslog from UNIX server on SDP node"
		echo "31. Prevent SNMP information disclosure on SDP node"
		echo "32. SMTP and web server version shall not be disclosed on SDP node"
		echo "33. Upgrade database to the latest patch version on SDP node"
		echo "34. upgrade operating system to the latest patch version on SDP node"
		echo "35. Configure the host based firewall on SDP node"
		echo "36. Provide screenshot for security control validation on SDP node"
		echo "37. Provide consistent information regarding security control configuration on SDP node"
		echo "38. Perform regular reviews of audit logs on SDP node"
		echo "39. Initiate a vulnerability scan by the Qualys scanner after inplementation on SDP node"
		echo "40. Security Compliance Checklist Automation on SDP node"
		echo "41. Run All Scripts on SDP node"
		echo "##########################################################################################################################"
		echo "Please Enter the number corresponding with the checklist to execute scripts or enter 41 to run all scripts on the SDP node"
		echo "##########################################################################################################################"
		read scrnim
		echo $scrnim

		case $scrnim in
			1)
				. Disable_root.sh
				disable_root
				;;
			2)
				. vsftpd_disable.sh
				Disable
				;;
			3)
				. Lockout_timer.sh
				Lock
				;;
			4)
				. nfs-shares.sh
				nfs-shares
				;;
			5)
				. Con-Unauth.sh
				Conc
				;;
			6) 
				. SSHkey-Auth.sh
				keyb
				;;
			7)
				. Disable_inactive.sh
				Disable_inactive
				;;
			8)
				. PassRestriction.sh
				Restriction
				;;
			9)
				. Disable_Unused_Services.sh
				Services
				;;
			10)	
				. Timeout.sh
				ssht
				;;
			11)
				. anonymous.sh
				anonym
				;;
			12)     
				. X11forwarding.sh
				X11
				;;
			13)
				. Stack-Prot.sh
				Stack
				;;
			14)
				. Remove-cgi.sh
				Remove-cgi
				;; 
			15)
				. warning-banner.sh
				Warning
				;;
			16)	
				. Trace-httpd.sh
				Trace
				;; 
		 esac
	2)
		echo "The following scripts show the various security baselines compliance configurations on CCN. "
                echo "Please Enter the number between 1-40 associated with the appropriate script to run or enter "
                echo "41 to run all the scripts corresponding to the MBSS compliance list required by MTN"
                echo "1. Restrict Root Access on CCN node"
                echo "2. Disallow root access via FTP on CCN node"
                echo "3. Set Account Lockout Threshold for invalid logon attempts on CCN node"
                echo "4. Restrict mounting of NFS shares on CCN node"
                echo "5. Restrict concurrent unauthenticated user access from different terminals on CCN node"
                echo "6. Use of SSH key based authentication on CCN node"
                echo "7. Remove or disable inactive users on CCN node"
                echo "8. set Password restriction, Complexity" 
                echo "9. set password complexity"
                echo "10. set password expiry"
                echo "11. set password complexity verification function"
                echo "12. Disable unsecures services"
                echo "13. Configure SSH Session Timeout"
                echo "14. Disable Anonymous FTP login"
                echo "15. Set X11 Protocol Forwarding"
                echo "16. Disable Unused services"
                echo "17. Enable Stack protection against buffer overflows"
                echo "18. Disable/Remove CGI scripts"
                echo "19. Create and enable warning banners"
                echo "20. Disable/Configure weak SNMP community string"
                echo "21. Disable Trace/Track in apache HTTPD"
                echo "22. Disable SSL weak cipher(using RC4) in apache"
                echo "23. Disable SSLv3 and TLSv1 protocol weak CBC Mode"
                echo "24. Upgrade a supported version of apache HTTP server"
                echo "25. Disable SSH Weak CBC Mode Ciphers"
                echo "26. Reset/Rocover Root Password"
                echo "27. Enable Audit Logging"
                echo "28. Logging of user activities on OS level"
                echo "29. Restrict access of audit logs"
                echo "30. Configure remote syslog from UNIX server"
                echo "31. Prevent SNMP information disclosure"
                echo "32. SMTP and web server version shall not be disclosed"
                echo "33. Upgrade database to the latest patch version"
                echo "34. upgrade operating system to the latest patch version"
                echo "35. Configure the host based firewall"
                echo "36. Provide screenshot for security control validation"
                echo "37. Provide consistent information regarding security control configuration"
                echo "38. Perform regular reviews of audit logs"
                echo "39. Initiate a vulnerability scan by the Qualys scanner after inplementation"
                echo "40. Security Compliance Checklist Automation"
                echo "41. All Scripts"
		echo "##########################################################################################################"
                echo "Please Enter the number corresponding with the checklist to execute scripts or enter 41 to run all scripts"
                echo "##########################################################################################################"
                read scrnim
                echo $scrnim

                case $scrnim in
                        1)
                                . Disable_root.sh
                                disable_root
                                ;;
                        2)
                                . vsftpd_disable.sh
                                Disable
                                ;;
                        3)
                                . Lockout_timer.sh
                                Lock
                                ;;
                        4)
                                . nfs-shares.sh
                                nfs-shares
                                ;;
                        5)
                                . Con-Unauth.sh
                                Conc
                                ;;
                        6)
                                . SSHkey-Auth.sh
                                keyb
                                ;;
                        7)
                                . Disable_inactive.sh
                                Disable_inactive
                                ;;
                        8)
                                . PassRestriction.sh
                                Restriction
                                ;;
                        9)
                                . Disable_Unused_Services.sh
                                Services
                                ;;
                        10)
                                . Timeout.sh
                                ssht
                                ;;
                        11)
                                . anonymous.sh
                                anonym
                                ;;
                        12)
                                . X11forwarding.sh
                                X11
                                ;;
                        13)
                                . Stack-Prot.sh
                                Stack
                                ;;
                        14)
                                . Remove-cgi.sh
                                Remove-cgi
                                ;;
                 esac
	3)
		echo "The following scripts show the various security baselines. "
                echo "Please Enter the number associated with the appropriate script to"
                echo "run between (1-40)or enter 41 to run all scripts"
                echo "1. Restrict Root Access on SDP "
                echo "2. Disallow root access via FTP"
                echo "3. Set Account Lockout Threshold for invalid logon attempts"
                echo "4. Restrict mounting of NFS shares"
                echo "5. Restrict concurrent unauthenticated user access from different terminals"
                echo "6. Use of SSH key based authentication"
                echo "7. Remove or disable inactive users"
                echo "8. set Password restriction"
                echo "9. set password complexity"
                echo "10. set password expiry"
                echo "11. set password complexity verification function"
                echo "12. Disable unsecures services"
                echo "13. Configure SSH Session Timeout"
                echo "14. Disable Anonymous FTP login"
                echo "15. Set X11 Protocol Forwarding"
                echo "16. Disable Unused services"
                echo "17. Enable Stack protection against buffer overflows"
                echo "18. Disable/Remove CGI scripts"
                echo "19. Create and enable warning banners"
                echo "20. Disable/Configure weak SNMP community string"
                echo "21. Disable Trace/Track in apache HTTPD"
                echo "22. Disable SSL weak cipher(using RC4) in apache"
                echo "23. Disable SSLv3 and TLSv1 protocol weak CBC Mode"
                echo "24. Upgrade a supported version of apache HTTP server"
                echo "25. Disable SSH Weak CBC Mode Ciphers"
                echo "26. Reset/Rocover Root Password"
                echo "27. Enable Audit Logging"
                echo "28. Logging of user activities on OS level"
                echo "29. Restrict access of audit logs"
                echo "30. Configure remote syslog from UNIX server"
                echo "31. Prevent SNMP information disclosure"
                echo "32. SMTP and web server version shall not be disclosed"
                echo "33. Upgrade database to the latest patch version"
                echo "34. upgrade operating system to the latest patch version"
                echo "35. Configure the host based firewall"
                echo "36. Provide screenshot for security control validation"
                echo "37. Provide consistent information regarding security control configuration"
                echo "38. Perform regular reviews of audit logs"
                echo "39. Initiate a vulnerability scan by the Qualys scanner after inplementation"
                echo "40. Security Compliance Checklist Automation"
                echo "41. All Scripts"
                echo "##########################################################################################################"
                echo "Please Enter the number corresponding with the checklist to execute scripts or enter 41 to run all scripts"
                echo "##########################################################################################################"
                read scrnim
                echo $scrnim

                case $scrnim in
                        1)
                                . Disable_root.sh
                                disable_root
                                ;;
                        2)
                                . vsftpd_disable.sh
                                Disable
                                ;;
                        3)
                                . Lockout_timer.sh
                                Lock
                                ;;
                        4)
                                . nfs-shares.sh
                                nfs-shares
                                ;;
                        5)
                                . Con-Unauth.sh
                                Conc
                                ;;
                        6)
                                . SSHkey-Auth.sh
                                keyb
                                ;;
                        7)
                                . Disable_inactive.sh
                                Disable_inactive
                                ;;
                        8)
                                . PassRestriction.sh
                                Restriction
                                ;;
                        9)
                                . Disable_Unused_Services.sh
                                Services
                                ;;
                        10)
                                . Timeout.sh
                                ssht
                                ;;
                        11)
                                . anonymous.sh
                                anonym
                                ;;
                        12)
                                . X11forwarding.sh
                                X11
                                ;;
                        13)
                                . Stack-Prot.sh
                                Stack
                                ;;
                        14)
                                . Remove-cgi.sh
                                Remove-cgi
                                ;;
                 esac
	4)
		echo "The following scripts show the various security baselines. "
                echo "Please Enter the number associated with the appropriate script to"
                echo "run between (1-40)or enter 41 to run all scripts"
                echo "1. Restrict Root Access on SDP "
                echo "2. Disallow root access via FTP"
                echo "3. Set Account Lockout Threshold for invalid logon attempts"
                echo "4. Restrict mounting of NFS shares"
                echo "5. Restrict concurrent unauthenticated user access from different terminals"
                echo "6. Use of SSH key based authentication"
                echo "7. Remove or disable inactive users"
                echo "8. set Password restriction"
                echo "9. set password complexity"
                echo "10. set password expiry"
                echo "11. set password complexity verification function"
                echo "12. Disable unsecures services"
                echo "13. Configure SSH Session Timeout"
                echo "14. Disable Anonymous FTP login"
                echo "15. Set X11 Protocol Forwarding"
                echo "16. Disable Unused services"
                echo "17. Enable Stack protection against buffer overflows"
                echo "18. Disable/Remove CGI scripts"
                echo "19. Create and enable warning banners"
                echo "20. Disable/Configure weak SNMP community string"
                echo "21. Disable Trace/Track in apache HTTPD"
                echo "22. Disable SSL weak cipher(using RC4) in apache"
                echo "23. Disable SSLv3 and TLSv1 protocol weak CBC Mode"
                echo "24. Upgrade a supported version of apache HTTP server"
                echo "25. Disable SSH Weak CBC Mode Ciphers"
                echo "26. Reset/Rocover Root Password"
                echo "27. Enable Audit Logging"
                echo "28. Logging of user activities on OS level"
                echo "29. Restrict access of audit logs"
                echo "30. Configure remote syslog from UNIX server"
                echo "31. Prevent SNMP information disclosure"
                echo "32. SMTP and web server version shall not be disclosed"
                echo "33. Upgrade database to the latest patch version"
                echo "34. upgrade operating system to the latest patch version"
                echo "35. Configure the host based firewall"
                echo "36. Provide screenshot for security control validation"
                echo "37. Provide consistent information regarding security control configuration"
                echo "38. Perform regular reviews of audit logs"
                echo "39. Initiate a vulnerability scan by the Qualys scanner after inplementation"
                echo "40. Security Compliance Checklist Automation"
                echo "41. All Scripts"
                echo "##########################################################################################################"
                echo "Please Enter the number corresponding with the checklist to execute scripts or enter 41 to run all scripts"
                echo "##########################################################################################################"
                read scrnim
                echo $scrnim

                case $scrnim in
                        1)
                                . Disable_root.sh
                                disable_root
                                ;;
                        2)
                                . vsftpd_disable.sh
                                Disable
                                ;;
                        3)
                                . Lockout_timer.sh
                                Lock
                                ;;
                        4)
                                . nfs-shares.sh
                                nfs-shares
                                ;;
                        5)
                                . Con-Unauth.sh
                                Conc
                                ;;
                        6)
                                . SSHkey-Auth.sh
                                keyb
                                ;;
                        7)
                                . Disable_inactive.sh
                                Disable_inactive
                                ;;
                        8)
                                . PassRestriction.sh
                                Restriction
                                ;;
                        9)
                                . Disable_Unused_Services.sh
                                Services
                                ;;
                        10)
                                . Timeout.sh
                                ssht
                                ;;
                        11)
                                . anonymous.sh
                                anonym
                                ;;
                        12)
                                . X11forwarding.sh
                                X11
                                ;;
                        13)
                                . Stack-Prot.sh
                                Stack
                                ;;
                        14)
                                . Remove-cgi.sh
                                Remove-cgi
                                ;;
                 esac
	5)
		echo "The following scripts show the various security baselines. "
                echo "Please Enter the number associated with the appropriate script to"
                echo "run between (1-40)or enter 41 to run all scripts"
                echo "1. Restrict Root Access on SDP "
                echo "2. Disallow root access via FTP"
                echo "3. Set Account Lockout Threshold for invalid logon attempts"
                echo "4. Restrict mounting of NFS shares"
                echo "5. Restrict concurrent unauthenticated user access from different terminals"
                echo "6. Use of SSH key based authentication"
                echo "7. Remove or disable inactive users"
                echo "8. set Password restriction"
                echo "9. set password complexity"
                echo "10. set password expiry"
                echo "11. set password complexity verification function"
                echo "12. Disable unsecures services"
                echo "13. Configure SSH Session Timeout"
                echo "14. Disable Anonymous FTP login"
                echo "15. Set X11 Protocol Forwarding"
                echo "16. Disable Unused services"
                echo "17. Enable Stack protection against buffer overflows"
                echo "18. Disable/Remove CGI scripts"
                echo "19. Create and enable warning banners"
                echo "20. Disable/Configure weak SNMP community string"
                echo "21. Disable Trace/Track in apache HTTPD"
                echo "22. Disable SSL weak cipher(using RC4) in apache"
                echo "23. Disable SSLv3 and TLSv1 protocol weak CBC Mode"
                echo "24. Upgrade a supported version of apache HTTP server"
                echo "25. Disable SSH Weak CBC Mode Ciphers"
                echo "26. Reset/Rocover Root Password"
                echo "27. Enable Audit Logging"
                echo "28. Logging of user activities on OS level"
                echo "29. Restrict access of audit logs"
                echo "30. Configure remote syslog from UNIX server"
                echo "31. Prevent SNMP information disclosure"
                echo "32. SMTP and web server version shall not be disclosed"
                echo "33. Upgrade database to the latest patch version"
                echo "34. upgrade operating system to the latest patch version"
                echo "35. Configure the host based firewall"
                echo "36. Provide screenshot for security control validation"
                echo "37. Provide consistent information regarding security control configuration"
                echo "38. Perform regular reviews of audit logs"
                echo "39. Initiate a vulnerability scan by the Qualys scanner after inplementation"
                echo "40. Security Compliance Checklist Automation"
                echo "41. All Scripts"
                echo "##########################################################################################################"
                echo "Please Enter the number corresponding with the checklist to execute scripts or enter 41 to run all scripts"
                echo "##########################################################################################################"
                read scrnim
                echo $scrnim

                case $scrnim in
                        1)
                                . Disable_root.sh
                                disable_root
                                ;;
                        2)
                                . vsftpd_disable.sh
                                Disable
                                ;;
                        3)
                                . Lockout_timer.sh
                                Lock
                                ;;
                        4)
                                . nfs-shares.sh
                                nfs-shares
                                ;;
                        5)
                                . Con-Unauth.sh
                                Conc
                                ;;
                        6)
                                . SSHkey-Auth.sh
                                keyb
                                ;;
                        7)
                                . Disable_inactive.sh
                                Disable_inactive
                                ;;
                        8)
                                . PassRestriction.sh
                                Restriction
                                ;;
                        9)
                                . Disable_Unused_Services.sh
                                Services
                                ;;
                        10)
                                . Timeout.sh
                                ssht
                                ;;
                        11)
                                . anonymous.sh
                                anonym
				;;
                        12)
                                . X11forwarding.sh
                                X11
                                ;;
                        13)
                                . Stack-Prot.sh
                                Stack
                                ;;
                        14)
                                . Remove-cgi.sh
                                Remove-cgi
                                ;;
                 esac
	6)
		echo "The following scripts show the various security baselines. "
                echo "Please Enter the number associated with the appropriate script to"
                echo "run between (1-40)or enter 41 to run all scripts"
                echo "1. Restrict Root Access on SDP "
                echo "2. Disallow root access via FTP"
                echo "3. Set Account Lockout Threshold for invalid logon attempts"
                echo "4. Restrict mounting of NFS shares"
                echo "5. Restrict concurrent unauthenticated user access from different terminals"
                echo "6. Use of SSH key based authentication"
                echo "7. Remove or disable inactive users"
                echo "8. set Password restriction"
                echo "9. set password complexity"
                echo "10. set password expiry"
                echo "11. set password complexity verification function"
                echo "12. Disable unsecures services"
                echo "13. Configure SSH Session Timeout"
                echo "14. Disable Anonymous FTP login"
                echo "15. Set X11 Protocol Forwarding"
                echo "16. Disable Unused services"
                echo "17. Enable Stack protection against buffer overflows"
                echo "18. Disable/Remove CGI scripts"
                echo "19. Create and enable warning banners"
                echo "20. Disable/Configure weak SNMP community string"
                echo "21. Disable Trace/Track in apache HTTPD"
                echo "22. Disable SSL weak cipher(using RC4) in apache"
                echo "23. Disable SSLv3 and TLSv1 protocol weak CBC Mode"
                echo "24. Upgrade a supported version of apache HTTP server"
                echo "25. Disable SSH Weak CBC Mode Ciphers"
                echo "26. Reset/Rocover Root Password"
                echo "27. Enable Audit Logging"
                echo "28. Logging of user activities on OS level"
                echo "29. Restrict access of audit logs"
                echo "30. Configure remote syslog from UNIX server"
                echo "31. Prevent SNMP information disclosure"
                echo "32. SMTP and web server version shall not be disclosed"
                echo "33. Upgrade database to the latest patch version"
                echo "34. upgrade operating system to the latest patch version"
                echo "35. Configure the host based firewall"
                echo "36. Provide screenshot for security control validation"
                echo "37. Provide consistent information regarding security control configuration"
                echo "38. Perform regular reviews of audit logs"
                echo "39. Initiate a vulnerability scan by the Qualys scanner after inplementation"
                echo "40. Security Compliance Checklist Automation"
                echo "41. All Scripts"
                echo "##########################################################################################################"
                echo "Please Enter the number corresponding with the checklist to execute scripts or enter 41 to run all scripts"
                echo "##########################################################################################################"
                read scrnim
                echo $scrnim

                case $scrnim in
                        1)
                                . Disable_root.sh
                                disable_root
                                ;;
                        2)
                                . vsftpd_disable.sh
                                Disable
                                ;;
                        3)
                                . Lockout_timer.sh
                                Lock
                                ;;
                        4)
                                . nfs-shares.sh
                                nfs-shares
                                ;;
                        5)
                                . Con-Unauth.sh
                                Conc
                                ;;
                        6)
                                . SSHkey-Auth.sh
                                keyb
                                ;;
                        7)
                                . Disable_inactive.sh
                                Disable_inactive
                                ;;
                        8)
                                . PassRestriction.sh
                                Restriction
                                ;;
                        9)
                                . Disable_Unused_Services.sh
                                Services
                                ;;
                        10)
                                . Timeout.sh
                                ssht
                                ;;
                        11)
                                . anonymous.sh
                                anonym
                                ;;
                        12)
                                . X11forwarding.sh
                                X11
                                ;;
                        13)
                                . Stack-Prot.sh
                                Stack
                                ;;
                        14)
                                . Remove-cgi.sh
                                Remove-cgi
                                ;;
                esac

	7)
		echo "The following scripts show the various security baselines. "
                echo "Please Enter the number associated with the appropriate script to"
                echo "run between (1-40)or enter 41 to run all scripts"
                echo "1. Restrict Root Access on SDP "
                echo "2. Disallow root access via FTP"
                echo "3. Set Account Lockout Threshold for invalid logon attempts"
                echo "4. Restrict mounting of NFS shares"
                echo "5. Restrict concurrent unauthenticated user access from different terminals"
                echo "6. Use of SSH key based authentication"
                echo "7. Remove or disable inactive users"
                echo "8. set Password restriction"
                echo "9. set password complexity"
                echo "10. set password expiry"
                echo "11. set password complexity verification function"
                echo "12. Disable unsecures services"
                echo "13. Configure SSH Session Timeout"
                echo "14. Disable Anonymous FTP login"
                echo "15. Set X11 Protocol Forwarding"
                echo "16. Disable Unused services"
                echo "17. Enable Stack protection against buffer overflows"
                echo "18. Disable/Remove CGI scripts"
                echo "19. Create and enable warning banners"
                echo "20. Disable/Configure weak SNMP community string"
                echo "21. Disable Trace/Track in apache HTTPD"
                echo "22. Disable SSL weak cipher(using RC4) in apache"
                echo "23. Disable SSLv3 and TLSv1 protocol weak CBC Mode"
                echo "24. Upgrade a supported version of apache HTTP server"
                echo "25. Disable SSH Weak CBC Mode Ciphers"
                echo "26. Reset/Rocover Root Password"
                echo "27. Enable Audit Logging"
                echo "28. Logging of user activities on OS level"
                echo "29. Restrict access of audit logs"
                echo "30. Configure remote syslog from UNIX server"
                echo "31. Prevent SNMP information disclosure"
                echo "32. SMTP and web server version shall not be disclosed"
                echo "33. Upgrade database to the latest patch version"
                echo "34. upgrade operating system to the latest patch version"
                echo "35. Configure the host based firewall"
                echo "36. Provide screenshot for security control validation"
                echo "37. Provide consistent information regarding security control configuration"
                echo "38. Perform regular reviews of audit logs"
                echo "39. Initiate a vulnerability scan by the Qualys scanner after inplementation"
                echo "40. Security Compliance Checklist Automation"
                echo "41. All Scripts"
                echo "##########################################################################################################"
                echo "Please Enter the number corresponding with the checklist to execute scripts or enter 41 to run all scripts"
                echo "##########################################################################################################"
                read scrnim
                echo $scrnim

                case $scrnim in
                        1)
                                . Disable_root.sh
                                disable_root
                                ;;
                        2)
                                . vsftpd_disable.sh
                                Disable
                                ;;
                        3)
                                . Lockout_timer.sh
                                Lock
                                ;;
                        4)
                                . nfs-shares.sh
                                nfs-shares
                                ;;
                        5)
                                . Con-Unauth.sh
                                Conc
                                ;;
                        6)
                                . SSHkey-Auth.sh
                                keyb
                                ;;
                        7)
                                . Disable_inactive.sh
                                Disable_inactive
                                ;;
                        8)
                                . PassRestriction.sh
                                Restriction
                                ;;
                        9)
                                . Disable_Unused_Services.sh
                                Services
                                ;;
                        10)
                                . Timeout.sh
                                ssht
                                ;;
                        11)
                                . anonymous.sh
                                anonym
                                ;;
                        12)
                                . X11forwarding.sh
                                X11
                                ;;
                        13)
                                . Stack-Prot.sh
                                Stack
                                ;;
                        14)
                                . Remove-cgi.sh
                                Remove-cgi
                                ;;
                esac

	8)
		echo "The following scripts show the various security baselines. "
                echo "Please Enter the number associated with the appropriate script to"
                echo "run between (1-40)or enter 41 to run all scripts"
                echo "1. Restrict Root Access on SDP "
                echo "2. Disallow root access via FTP"
                echo "3. Set Account Lockout Threshold for invalid logon attempts"
                echo "4. Restrict mounting of NFS shares"
                echo "5. Restrict concurrent unauthenticated user access from different terminals"
                echo "6. Use of SSH key based authentication"
                echo "7. Remove or disable inactive users"
                echo "8. set Password restriction"
                echo "9. set password complexity"
                echo "10. set password expiry"
                echo "11. set password complexity verification function"
                echo "12. Disable unsecures services"
                echo "13. Configure SSH Session Timeout"
                echo "14. Disable Anonymous FTP login"
                echo "15. Set X11 Protocol Forwarding"
                echo "16. Disable Unused services"
                echo "17. Enable Stack protection against buffer overflows"
                echo "18. Disable/Remove CGI scripts"
                echo "19. Create and enable warning banners"
                echo "20. Disable/Configure weak SNMP community string"
                echo "21. Disable Trace/Track in apache HTTPD"
                echo "22. Disable SSL weak cipher(using RC4) in apache"
                echo "23. Disable SSLv3 and TLSv1 protocol weak CBC Mode"
                echo "24. Upgrade a supported version of apache HTTP server"
                echo "25. Disable SSH Weak CBC Mode Ciphers"
                echo "26. Reset/Rocover Root Password"
                echo "27. Enable Audit Logging"
                echo "28. Logging of user activities on OS level"
                echo "29. Restrict access of audit logs"
                echo "30. Configure remote syslog from UNIX server"
                echo "31. Prevent SNMP information disclosure"
                echo "32. SMTP and web server version shall not be disclosed"
                echo "33. Upgrade database to the latest patch version"
                echo "34. upgrade operating system to the latest patch version"
                echo "35. Configure the host based firewall"
                echo "36. Provide screenshot for security control validation"
                echo "37. Provide consistent information regarding security control configuration"
                echo "38. Perform regular reviews of audit logs"
                echo "39. Initiate a vulnerability scan by the Qualys scanner after inplementation"
                echo "40. Security Compliance Checklist Automation"
                echo "41. All Scripts"
                echo "##########################################################################################################"
                echo "Please Enter the number corresponding with the checklist to execute scripts or enter 41 to run all scripts"
                echo "##########################################################################################################"
                read scrnim
                echo $scrnim

                case $scrnim in
                        1)
                                . Disable_root.sh
                                disable_root
                                ;;
                        2)
                                . vsftpd_disable.sh
                                Disable
                                ;;
                        3)
                                . Lockout_timer.sh
                                Lock
                                ;;
                        4)
                                . nfs-shares.sh
                                nfs-shares
                                ;;
                        5)
                                . Con-Unauth.sh
                                Conc
                                ;;
                        6)
                                . SSHkey-Auth.sh
                                keyb
                                ;;
                        7)
                                . Disable_inactive.sh
                                Disable_inactive
                                ;;
                        8)
                                . PassRestriction.sh
                                Restriction
                                ;;
                        9)
                                . Disable_Unused_Services.sh
                                Services
                                ;;
                        10)
                                . Timeout.sh
                                ssht
                                ;;
                        11)
                                . anonymous.sh
                                anonym
                                ;;
                        12)
                                . X11forwarding.sh
                                X11
                                ;;
                        13)
                                . Stack-Prot.sh
                                Stack
                                ;;
                        14)
                                . Remove-cgi.sh
                                Remove-cgi
                                ;;
                esac

	9)
		echo "The following scripts show the various security baselines. "
                echo "Please Enter the number associated with the appropriate script to"
                echo "run between (1-40)or enter 41 to run all scripts"
                echo "1. Restrict Root Access on SDP "
                echo "2. Disallow root access via FTP"
                echo "3. Set Account Lockout Threshold for invalid logon attempts"
                echo "4. Restrict mounting of NFS shares"
                echo "5. Restrict concurrent unauthenticated user access from different terminals"
                echo "6. Use of SSH key based authentication"
                echo "7. Remove or disable inactive users"
                echo "8. set Password restriction"
                echo "9. set password complexity"
                echo "10. set password expiry"
                echo "11. set password complexity verification function"
                echo "12. Disable unsecures services"
                echo "13. Configure SSH Session Timeout"
                echo "14. Disable Anonymous FTP login"
                echo "15. Set X11 Protocol Forwarding"
                echo "16. Disable Unused services"
                echo "17. Enable Stack protection against buffer overflows"
                echo "18. Disable/Remove CGI scripts"
                echo "19. Create and enable warning banners"
                echo "20. Disable/Configure weak SNMP community string"
                echo "21. Disable Trace/Track in apache HTTPD"
                echo "22. Disable SSL weak cipher(using RC4) in apache"
                echo "23. Disable SSLv3 and TLSv1 protocol weak CBC Mode"
                echo "24. Upgrade a supported version of apache HTTP server"
                echo "25. Disable SSH Weak CBC Mode Ciphers"
                echo "26. Reset/Rocover Root Password"
                echo "27. Enable Audit Logging"
                echo "28. Logging of user activities on OS level"
                echo "29. Restrict access of audit logs"
                echo "30. Configure remote syslog from UNIX server"
                echo "31. Prevent SNMP information disclosure"
                echo "32. SMTP and web server version shall not be disclosed"
                echo "33. Upgrade database to the latest patch version"
                echo "34. upgrade operating system to the latest patch version"
                echo "35. Configure the host based firewall"
                echo "36. Provide screenshot for security control validation"
                echo "37. Provide consistent information regarding security control configuration"
                echo "38. Perform regular reviews of audit logs"
                echo "39. Initiate a vulnerability scan by the Qualys scanner after inplementation"
                echo "40. Security Compliance Checklist Automation"
                echo "41. All Scripts"
               echo "##########################################################################################################"
                echo "Please Enter the number corresponding with the checklist to execute scripts or enter 41 to run all scripts"
                echo "##########################################################################################################"
                read scrnim
                echo $scrnim

                case $scrnim in
                        1)
                                . Disable_root.sh
                                disable_root
                                ;;
                        2)
                                . vsftpd_disable.sh
                                Disable
                                ;;
                        3)
                                . Lockout_timer.sh
                                Lock
                                ;;
                        4)
                                . nfs-shares.sh
                                nfs-shares
                                ;;
                        5)
                                . Con-Unauth.sh
                                Conc
                                ;;
                        6)
                                . SSHkey-Auth.sh
                                keyb
                                ;;
                        7)
                                . Disable_inactive.sh
                                Disable_inactive
                                ;;
                        8)
                                . PassRestriction.sh
                                Restriction
                                ;;
                        9)
                                . Disable_Unused_Services.sh
                                Services
                                ;;
                        10)
                                . Timeout.sh
                                ssht
                                ;;
                        11)
                                . anonymous.sh
                                anonym
                                ;;

                        12)
                                . X11forwarding.sh
                                X11
                                ;;
                        13)
                                . Stack-Prot.sh
                                Stack
                                ;;
                        14)
                                . Remove-cgi.sh
                                Remove-cgi
                                ;;
                esac

esac
