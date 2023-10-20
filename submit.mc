divert(-1)dnl
divert(0)dnl
define(`_USE_ETC_MAIL_')dnl
include(`/usr/share/sendmail/cf/m4/cf.m4')dnl
VERSIONID(`$Id: submit.mc, v 8.15.2-22 2021-03-16 16:04:16 cowboy Exp $')
OSTYPE(`debian')dnl
DOMAIN(`debian-msp')dnl
dnl MASQUERADE_AS()dnl
dnl FEATURE(`masquerade_envelope')dnl
FEATURE(`msp', `[127.0.0.1]', `25')dnl
FEATURE(`use_ct_file')dnl
