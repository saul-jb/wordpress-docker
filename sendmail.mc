divert(-1)dnl
define(`_USE_ETC_MAIL_')dnl
include(`/usr/share/sendmail/cf/m4/cf.m4')dnl
VERSIONID(`$Id: sendmail.mc, v 8.15.2-22 2021-03-16 16:04:16 cowboy Exp $')
OSTYPE(`debian')dnl
DOMAIN(`debian-mta')dnl
undefine(`confHOST_STATUS_DIRECTORY')dnl
FEATURE(`no_default_msa')dnl
dnl DAEMON_OPTIONS(`Family=inet6, Name=MTA-v6, Port=smtp, Addr=::1')dnl
DAEMON_OPTIONS(`Family=inet,  Name=MTA-v4, Port=smtp, Addr=127.0.0.1')dnl
dnl DAEMON_OPTIONS(`Family=inet6, Name=MSP-v6, Port=submission, M=Ea, Addr=::1')dnl
DAEMON_OPTIONS(`Family=inet,  Name=MSP-v4, Port=submission, M=Ea, Addr=127.0.0.1')dnl
define(`confPRIVACY_FLAGS',dnl
`needmailhelo,needexpnhelo,needvrfyhelo,restrictqrun,restrictexpand,nobodyreturn,authwarnings')dnl
define(`confCONNECTION_RATE_THROTTLE', `15')dnl
define(`confCONNECTION_RATE_WINDOW_SIZE',`10m')dnl
FEATURE(`use_cw_file')dnl
FEATURE(`access_db', , `skip')dnl
FEATURE(`greet_pause', `1000')dnl 1 seconds
FEATURE(`delay_checks', `friend', `n')dnl
define(`confBAD_RCPT_THROTTLE',`3')dnl
FEATURE(`conncontrol', `nodelay', `terminate')dnl
FEATURE(`ratecontrol', `nodelay', `terminate')dnl
include(`/etc/mail/m4/dialup.m4')dnl
include(`/etc/mail/m4/provider.m4')dnl
MAILER_DEFINITIONS
define(`MAIL_HUB', `example.com.')dnl
define(`LOCAL_RELAY', `example.com.')dnl
MAILER(`local')dnl
MAILER(`smtp')dnl
include(`/etc/mail/tls/starttls.m4')dnl
