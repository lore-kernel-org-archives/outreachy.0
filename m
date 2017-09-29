X-GM-THRID: 6471306251625037824
X-Received: by 10.129.160.151 with SMTP id x145mr13128198ywg.220.1506718399874;
        Fri, 29 Sep 2017 13:53:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.37.70.196 with SMTP id t187ls921131yba.1.gmail; Fri, 29 Sep
 2017 13:53:19 -0700 (PDT)
X-Received: by 10.13.212.12 with SMTP id w12mr13135070ywd.147.1506718399130;
        Fri, 29 Sep 2017 13:53:19 -0700 (PDT)
Received: by 10.13.232.205 with SMTP id r196msywe;
        Fri, 29 Sep 2017 08:09:31 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCqp8P8F5Lzi8qUE6XjboJq7iUyQiB5R1tvjKfaO00Dsemv/BEwz13sxK5aWYGniqmKuFUlIs+C+A==
X-Received: by 10.31.61.143 with SMTP id k137mr317244vka.24.1506697770811;
        Fri, 29 Sep 2017 08:09:30 -0700 (PDT)
X-Google-Web-Client: true
Date: Fri, 29 Sep 2017 08:09:30 -0700 (PDT)
From: dafna3@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <10f2cfd0-e601-49a3-af37-6157f60b1da9@googlegroups.com>
Subject: Hi, problems configuring mutt
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3082_803047782.1506697770626"
X-Google-Token: EKrEuc4FTiKEVyMDq9E0
X-Google-IP: 87.70.155.11

------=_Part_3082_803047782.1506697770626
Content-Type: multipart/alternative; 
	boundary="----=_Part_3083_332827525.1506697770626"

------=_Part_3083_332827525.1506697770626
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I started with the instructions in the site 
https://kernelnewbies.org/Outreachyfirstpatch#head-17dd753ec497c8f7e2305ce78be8c6ca7cd1c92c
I sent a mail to myself , It got to the spam folder with warning "this 
message was not encrypted"

I also got a mail from google:

Review blocked sign-in attempt 
Hi Dafna,
Google just blocked someone from signing into your Google Account 
dafna3@gmail.com from an app that may put your account at risk.



Then after googling, I tried to set ~/.muttrc:

*set ssl_starttls = yes*
*set ssl_force_tls = yes*
*set imap_user = 'dafna3@gmail.com'*
*set smtp_url = "smtp://dafna3@smtp.gmail.com:587/"*
*set from = 'dafna3@gmail.com'*
*set realname = 'Dafna Hirschfeld'*
*set folder = "imaps://imap.gmail.com:993"*
*set record="+[Gmail]/Sent Mail"*
*set spoolfile = imaps://imap.gmail.com:993/INBOX*
*set postponed="+[Gmail]/Drafts"*
*set header_cache = "~/.mutt/cache/headers"*
*set message_cachedir = "~/.mutt/cache/bodies"*
*set certificate_file = "~/.mutt/certificates"*

and my ~/.esmtprc is:

*identity "dafna3@gmail.com"*
*hostname smtp.gmail.com:587*
*username "dafna3@gmail.com"*
*starttls required*

now when I run "mutt -d 5" I get the message:

*Password for dafna3@gmail.com@imap.gmail.com:*

after I enter my password I get "Login Failed" 

looking at the ~/.muttdebug0:


[2017-09-29 18:01:21] Mutt/1.5.24 (2015-08-30) debugging at level 5
[2017-09-29 18:01:21] Reading configuration file '/etc/Muttrc'.
[2017-09-29 18:01:21] parse_attach_list: ldata = 0x6e5768, *ldata = (nil)
[2017-09-29 18:01:21] parse_attach_list: added */.* [9]
[2017-09-29 18:01:21] parse_attach_list: ldata = 0x6e5760, *ldata = (nil)
[2017-09-29 18:01:21] parse_attach_list: added text/x-vcard [7]
[2017-09-29 18:01:21] parse_attach_list: added application/pgp.* [2]
[2017-09-29 18:01:21] parse_attach_list: ldata = 0x6e5760, *ldata = 
0x11ff180
[2017-09-29 18:01:21] parse_attach_list: skipping text/x-vcard
[2017-09-29 18:01:21] parse_attach_list: skipping application/pgp.*
[2017-09-29 18:01:21] parse_attach_list: added application/x-pkcs7-.* [2]
[2017-09-29 18:01:21] parse_attach_list: ldata = 0x6e5758, *ldata = (nil)
[2017-09-29 18:01:21] parse_attach_list: added text/plain [7]
[2017-09-29 18:01:21] parse_attach_list: ldata = 0x6e5760, *ldata = 
0x11ff180
[2017-09-29 18:01:21] parse_attach_list: skipping text/x-vcard
[2017-09-29 18:01:21] parse_attach_list: skipping application/pgp.*
[2017-09-29 18:01:21] parse_attach_list: skipping application/x-pkcs7-.*
[2017-09-29 18:01:21] parse_attach_list: added message/external-body [4]
[2017-09-29 18:01:21] parse_attach_list: ldata = 0x6e5750, *ldata = (nil)
[2017-09-29 18:01:21] parse_attach_list: added message/external-body [4]
[2017-09-29 18:01:21] Reading configuration file 
'/usr/lib/mutt/source-muttrc.d|'.
[2017-09-29 18:01:21] Reading configuration file '/etc/Muttrc.d/charset.rc'.
[2017-09-29 18:01:21] Reading configuration file '/etc/Muttrc.d/colors.rc'.
[2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 1
[2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 2
[2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 3
[2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 4
[2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 5
[2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 6
[2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 7
[2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 8
[2017-09-29 18:01:21] Reading configuration file 
'/etc/Muttrc.d/compressed-folders.rc'.
[2017-09-29 18:01:21] Reading configuration file '/etc/Muttrc.d/gpg.rc'.
[2017-09-29 18:01:21] Reading configuration file '/etc/Muttrc.d/smime.rc'.
[2017-09-29 18:01:22] Reading configuration file '/home/dafna/.muttrc'.
[2017-09-29 18:01:22] Using default IMAP port 143
[2017-09-29 18:01:22] Using default IMAPS port 993
[2017-09-29 18:01:22] Reading imaps://imap.gmail.com:993/INBOX...
[2017-09-29 18:01:22] Looking up imap.gmail.com...
[2017-09-29 18:01:22] Connecting to imap.gmail.com...
[2017-09-29 18:01:22] SSL/TLS connection using TLS1.2 
(ECDHE-RSA/AES-128-GCM/AEAD)
[2017-09-29 18:01:23] Connected to imap.gmail.com:993 on fd=5
[2017-09-29 18:01:23] imap_cmd_step: grew buffer to 512 bytes
[2017-09-29 18:01:23] 5< * OK Gimap ready for requests from 87.70.155.11 
4mb36680424wrk
[2017-09-29 18:01:23] IMAP queue drained
[2017-09-29 18:01:23] 5> a0000 CAPABILITY
[2017-09-29 18:01:23] 5< * CAPABILITY IMAP4rev1 UNSELECT IDLE NAMESPACE 
QUOTA ID XLIST CHILDREN X-GM-EXT-1 XYZZY SASL-IR AUTH=XOAUTH2 AUTH=PLAIN 
AUTH=PLAIN-CLIENTTOKEN AUTH=OAUTHBEARER AUTH=XOAUTH
[2017-09-29 18:01:23] Handling CAPABILITY
[2017-09-29 18:01:23] 5< a0000 OK Thats all she wrote! 4mb36680424wrk
[2017-09-29 18:01:23] IMAP queue drained
[2017-09-29 18:01:23] imap_authenticate: Using any available method.
[2017-09-29 18:01:23] SASL local ip: 192.168.1.3;49818, remote 
ip:64.233.184.109;993
[2017-09-29 18:01:23] External SSF: 128
[2017-09-29 18:01:23] mutt_sasl_cb_authname: getting authname for 
imap.gmail.com:993
[2017-09-29 18:01:23] mutt_sasl_cb_authname: getting user for 
imap.gmail.com:993
[2017-09-29 18:01:23] mutt_sasl_cb_pass: getting password for 
dafna3@gmail.com@imap.gmail.com:993
[2017-09-29 18:01:51] Authenticating (PLAIN)...
[2017-09-29 18:01:51] 5> a0001 AUTHENTICATE PLAIN 
ZGFmbmEzQGdtYWlsLmNvbQBkYWZuYTNAZ21haWwuY29tAHptb3JhYml0YW4=
[2017-09-29 18:01:52] 5< * NO [WEBALERT 
https://accounts.google.com/signin/continue?sarp=1&scc=1&plt=AKgnsbugOQ198DOy7Zb1MDieiIPEzFKc8] 
Web login required.
[2017-09-29 18:01:52] Handling untagged NO
[2017-09-29 18:01:52] [WEBALERT 
https://accounts.google.com/signin/continue?sarp=1&scc=1&plt=AKgnsbugOQ198DOy7Zb1MDieiIPEzFKc1njxh1OAIMIwnM_HFpfrZrE8Cs8jIZ8] 
Web login required.
[2017-09-29 18:01:54] 5< a0001 NO [ALERT] Please log in via your web 
browser: https://support.google.com/mail/accounts/answer/78754 (Failure)
[2017-09-29 18:01:54] IMAP queue drained
[2017-09-29 18:01:54] imap_auth_sasl: IMAP4rev1 UNSELECT IDLE NAMESPACE 
QUOTA ID XLIST CHILDREN X-GM-EXT-1 XYZZY SASL-IR AUTH=XOAUTH2 AUTH=PLAIN 
AUTH=PLAIN-CLIENTTOKEN AUTH=OAUTHBEARER AUTH=XOAUTH failed
[2017-09-29 18:01:54] Logging in...
[2017-09-29 18:01:54] 5> a0002 LOGIN "dafna3@gmail.com" <my password was 
here >
[2017-09-29 18:01:54] 5< * NO [WEBALERT 
https://accounts.google.com/signin/continue?sarp=1&scc=1&plt=AKgnsbtsuqTeiA_IDHsoIa3Utf_H1khBtwHGPHU6HQDMyeG3LyUNEoFXbnca04wxTgx9HN5kLUpQ] 
Web login required.
[2017-09-29 18:01:54] Handling untagged NO
[2017-09-29 18:01:54] [WEBALERT 
https://accounts.google.com/signin/continue?sarp=1&scc=1&plt=AKgnsbtsuqTeiA_IDHsoIa3Utf_H1khBtwHGPHU6HQDMyeG3LyUNEoFXbnca04wxTgx9HN5kLUpQ9nLYddqY70JeOESSjlwXKknggYPTII1U_XV7] 
Web login required.
[2017-09-29 18:01:56] 5< a0002 NO [ALERT] Please log in via your web 
browser: https://support.google.com/mail/accounts/answer/78754 (Failure)
[2017-09-29 18:01:56] IMAP queue drained
[2017-09-29 18:01:56] Login failed.
[2017-09-29 18:01:58] mutt_num_postponed: using old IMAP postponed count.
[2017-09-29 18:02:47] mutt_index_menu[683]: Got op 147
[2017-09-29 18:02:47] Closing connection to imap.gmail.com...
[2017-09-29 18:02:47] 5> a0003 LOGOUT
[2017-09-29 18:02:47] 5< * BYE Logout Requested 4mb36680424wrk
[2017-09-29 18:02:47] Handling BYE
[2017-09-29 18:02:47] 5< a0003 OK Quoth the raven, nevermore... 
4mb36680424wrk
[2017-09-29 18:02:47] IMAP queue drained








------=_Part_3083_332827525.1506697770626
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I started with the instructions in the site=C2=A0<a h=
ref=3D"https://kernelnewbies.org/Outreachyfirstpatch#head-17dd753ec497c8f7e=
2305ce78be8c6ca7cd1c92c">https://kernelnewbies.org/Outreachyfirstpatch#head=
-17dd753ec497c8f7e2305ce78be8c6ca7cd1c92c</a></div><div>I sent a mail to my=
self , It got to the spam folder with warning &quot;this message was not en=
crypted&quot;</div><div><br></div><div>I also got a mail from google:</div>=
<div><br></div><div><table border=3D"0" cellspacing=3D"0" cellpadding=3D"0"=
 style=3D"font-family: arial, sans-serif; font-size: 12.8px; max-width: 600=
px;"><tbody><tr><td><table bgcolor=3D"#D94235" width=3D"100%" border=3D"0" =
cellspacing=3D"0" cellpadding=3D"0" style=3D"min-width: 332px; max-width: 6=
00px; border-top: 1px solid rgb(240, 240, 240); border-right: 1px solid rgb=
(240, 240, 240); border-left: 1px solid rgb(240, 240, 240); border-top-left=
-radius: 3px; border-top-right-radius: 3px;"><tbody><tr><td style=3D"font-f=
amily: Roboto-Regular, Helvetica, Arial, sans-serif; font-size: 24px; color=
: rgb(255, 255, 255); line-height: 1.25; min-width: 300px;">Review blocked =
sign-in attempt</td><td width=3D"32px"></td></tr><tr><td height=3D"18px" co=
lspan=3D"3"></td></tr></tbody></table></td></tr><tr><td><table bgcolor=3D"#=
FAFAFA" width=3D"100%" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" sty=
le=3D"min-width: 332px; max-width: 600px; border-right: 1px solid rgb(240, =
240, 240); border-bottom: 1px solid rgb(192, 192, 192); border-left: 1px so=
lid rgb(240, 240, 240); border-bottom-left-radius: 3px; border-bottom-right=
-radius: 3px;"><tbody><tr height=3D"16px"><td width=3D"32px" rowspan=3D"3">=
</td><td></td><td width=3D"32px" rowspan=3D"3"></td></tr><tr><td><table bor=
der=3D"0" cellspacing=3D"0" cellpadding=3D"0" style=3D"min-width: 300px;"><=
tbody><tr><td style=3D"font-family: Roboto-Regular, Helvetica, Arial, sans-=
serif; font-size: 13px; color: rgb(32, 32, 32); line-height: 1.5; padding-b=
ottom: 4px;">Hi Dafna,</td></tr><tr><td style=3D"font-family: Roboto-Regula=
r, Helvetica, Arial, sans-serif; font-size: 13px; color: rgb(32, 32, 32); l=
ine-height: 1.5; padding-top: 4px; padding-bottom: 4px;">Google just blocke=
d someone from signing into your Google Account=C2=A0<a style=3D"color: rgb=
(34, 34, 34);">dafna3@gmail.com</a>=C2=A0from an app that may put your acco=
unt at risk.<br><br></td></tr></tbody></table></td></tr></tbody></table></t=
d></tr></tbody></table></div><div><br></div><div><br></div><div>Then after =
googling, I tried to set ~/.muttrc:</div><div><br></div><div><div><i><b>set=
 ssl_starttls =3D yes</b></i></div><div><i><b>set ssl_force_tls =3D yes</b>=
</i></div><div><i><b>set imap_user =3D &#39;dafna3@gmail.com&#39;</b></i></=
div><div><i><b>set smtp_url =3D &quot;smtp://dafna3@smtp.gmail.com:587/&quo=
t;</b></i></div><div><i><b>set from =3D &#39;dafna3@gmail.com&#39;</b></i><=
/div><div><i><b>set realname =3D &#39;Dafna Hirschfeld&#39;</b></i></div><d=
iv><i><b>set folder =3D &quot;imaps://imap.gmail.com:993&quot;</b></i></div=
><div><i><b>set record=3D&quot;+[Gmail]/Sent Mail&quot;</b></i></div><div><=
i><b>set spoolfile =3D imaps://imap.gmail.com:993/INBOX</b></i></div><div><=
i><b>set postponed=3D&quot;+[Gmail]/Drafts&quot;</b></i></div><div><i><b>se=
t header_cache =3D &quot;~/.mutt/cache/headers&quot;</b></i></div><div><i><=
b>set message_cachedir =3D &quot;~/.mutt/cache/bodies&quot;</b></i></div><d=
iv><i><b>set certificate_file =3D &quot;~/.mutt/certificates&quot;</b></i><=
/div></div><div><i><b><br></b></i></div><div>and my ~/.esmtprc is:</div><di=
v><br></div><div><div><b><i>identity &quot;dafna3@gmail.com&quot;</i></b></=
div><div><b><i>hostname smtp.gmail.com:587</i></b></div><div><b><i>username=
 &quot;dafna3@gmail.com&quot;</i></b></div><div><b><i>starttls required</i>=
</b></div></div><div><br></div><div>now when I run &quot;mutt -d 5&quot; I =
get the message:</div><div><br></div><div><b><i>Password for dafna3@gmail.c=
om@imap.gmail.com:</i></b><br></div><div><b><i><br></i></b></div><div>after=
 I enter my password I get &quot;Login Failed&quot;=C2=A0</div><div><br></d=
iv><div>looking at the ~/.muttdebug0:</div><div><br></div><div><br></div><d=
iv><div>[2017-09-29 18:01:21] Mutt/1.5.24 (2015-08-30) debugging at level 5=
</div><div>[2017-09-29 18:01:21] Reading configuration file &#39;/etc/Muttr=
c&#39;.</div><div>[2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e57=
68, *ldata =3D (nil)</div><div>[2017-09-29 18:01:21] parse_attach_list: add=
ed */.* [9]</div><div>[2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x=
6e5760, *ldata =3D (nil)</div><div>[2017-09-29 18:01:21] parse_attach_list:=
 added text/x-vcard [7]</div><div>[2017-09-29 18:01:21] parse_attach_list: =
added application/pgp.* [2]</div><div>[2017-09-29 18:01:21] parse_attach_li=
st: ldata =3D 0x6e5760, *ldata =3D 0x11ff180</div><div>[2017-09-29 18:01:21=
] parse_attach_list: skipping text/x-vcard</div><div>[2017-09-29 18:01:21] =
parse_attach_list: skipping application/pgp.*</div><div>[2017-09-29 18:01:2=
1] parse_attach_list: added application/x-pkcs7-.* [2]</div><div>[2017-09-2=
9 18:01:21] parse_attach_list: ldata =3D 0x6e5758, *ldata =3D (nil)</div><d=
iv>[2017-09-29 18:01:21] parse_attach_list: added text/plain [7]</div><div>=
[2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e5760, *ldata =3D 0x1=
1ff180</div><div>[2017-09-29 18:01:21] parse_attach_list: skipping text/x-v=
card</div><div>[2017-09-29 18:01:21] parse_attach_list: skipping applicatio=
n/pgp.*</div><div>[2017-09-29 18:01:21] parse_attach_list: skipping applica=
tion/x-pkcs7-.*</div><div>[2017-09-29 18:01:21] parse_attach_list: added me=
ssage/external-body [4]</div><div>[2017-09-29 18:01:21] parse_attach_list: =
ldata =3D 0x6e5750, *ldata =3D (nil)</div><div>[2017-09-29 18:01:21] parse_=
attach_list: added message/external-body [4]</div><div>[2017-09-29 18:01:21=
] Reading configuration file &#39;/usr/lib/mutt/source-muttrc.d|&#39;.</div=
><div>[2017-09-29 18:01:21] Reading configuration file &#39;/etc/Muttrc.d/c=
harset.rc&#39;.</div><div>[2017-09-29 18:01:21] Reading configuration file =
&#39;/etc/Muttrc.d/colors.rc&#39;.</div><div>[2017-09-29 18:01:21] mutt_all=
oc_color(): Color pairs used so far: 1</div><div>[2017-09-29 18:01:21] mutt=
_alloc_color(): Color pairs used so far: 2</div><div>[2017-09-29 18:01:21] =
mutt_alloc_color(): Color pairs used so far: 3</div><div>[2017-09-29 18:01:=
21] mutt_alloc_color(): Color pairs used so far: 4</div><div>[2017-09-29 18=
:01:21] mutt_alloc_color(): Color pairs used so far: 5</div><div>[2017-09-2=
9 18:01:21] mutt_alloc_color(): Color pairs used so far: 6</div><div>[2017-=
09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 7</div><div>[2=
017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 8</div><di=
v>[2017-09-29 18:01:21] Reading configuration file &#39;/etc/Muttrc.d/compr=
essed-folders.rc&#39;.</div><div>[2017-09-29 18:01:21] Reading configuratio=
n file &#39;/etc/Muttrc.d/gpg.rc&#39;.</div><div>[2017-09-29 18:01:21] Read=
ing configuration file &#39;/etc/Muttrc.d/smime.rc&#39;.</div><div>[2017-09=
-29 18:01:22] Reading configuration file &#39;/home/dafna/.muttrc&#39;.</di=
v><div>[2017-09-29 18:01:22] Using default IMAP port 143</div><div>[2017-09=
-29 18:01:22] Using default IMAPS port 993</div><div>[2017-09-29 18:01:22] =
Reading imaps://imap.gmail.com:993/INBOX...</div><div>[2017-09-29 18:01:22]=
 Looking up imap.gmail.com...</div><div>[2017-09-29 18:01:22] Connecting to=
 imap.gmail.com...</div><div>[2017-09-29 18:01:22] SSL/TLS connection using=
 TLS1.2 (ECDHE-RSA/AES-128-GCM/AEAD)</div><div>[2017-09-29 18:01:23] Connec=
ted to imap.gmail.com:993 on fd=3D5</div><div>[2017-09-29 18:01:23] imap_cm=
d_step: grew buffer to 512 bytes</div><div>[2017-09-29 18:01:23] 5&lt; * OK=
 Gimap ready for requests from 87.70.155.11 4mb36680424wrk</div><div>[2017-=
09-29 18:01:23] IMAP queue drained</div><div>[2017-09-29 18:01:23] 5&gt; a0=
000 CAPABILITY</div><div>[2017-09-29 18:01:23] 5&lt; * CAPABILITY IMAP4rev1=
 UNSELECT IDLE NAMESPACE QUOTA ID XLIST CHILDREN X-GM-EXT-1 XYZZY SASL-IR A=
UTH=3DXOAUTH2 AUTH=3DPLAIN AUTH=3DPLAIN-CLIENTTOKEN AUTH=3DOAUTHBEARER AUTH=
=3DXOAUTH</div><div>[2017-09-29 18:01:23] Handling CAPABILITY</div><div>[20=
17-09-29 18:01:23] 5&lt; a0000 OK Thats all she wrote! 4mb36680424wrk</div>=
<div>[2017-09-29 18:01:23] IMAP queue drained</div><div>[2017-09-29 18:01:2=
3] imap_authenticate: Using any available method.</div><div>[2017-09-29 18:=
01:23] SASL local ip: 192.168.1.3;49818, remote ip:64.233.184.109;993</div>=
<div>[2017-09-29 18:01:23] External SSF: 128</div><div>[2017-09-29 18:01:23=
] mutt_sasl_cb_authname: getting authname for imap.gmail.com:993</div><div>=
[2017-09-29 18:01:23] mutt_sasl_cb_authname: getting user for imap.gmail.co=
m:993</div><div>[2017-09-29 18:01:23] mutt_sasl_cb_pass: getting password f=
or dafna3@gmail.com@imap.gmail.com:993</div><div>[2017-09-29 18:01:51] Auth=
enticating (PLAIN)...</div><div>[2017-09-29 18:01:51] 5&gt; a0001 AUTHENTIC=
ATE PLAIN ZGFmbmEzQGdtYWlsLmNvbQBkYWZuYTNAZ21haWwuY29tAHptb3JhYml0YW4=3D</d=
iv><div>[2017-09-29 18:01:52] 5&lt; * NO [WEBALERT https://accounts.google.=
com/signin/continue?sarp=3D1&amp;scc=3D1&amp;plt=3DAKgnsbugOQ198DOy7Zb1MDie=
iIPEzFKc8] Web login required.</div><div>[2017-09-29 18:01:52] Handling unt=
agged NO</div><div>[2017-09-29 18:01:52] [WEBALERT https://accounts.google.=
com/signin/continue?sarp=3D1&amp;scc=3D1&amp;plt=3DAKgnsbugOQ198DOy7Zb1MDie=
iIPEzFKc1njxh1OAIMIwnM_HFpfrZrE8Cs8jIZ8] Web login required.</div><div>[201=
7-09-29 18:01:54] 5&lt; a0001 NO [ALERT] Please log in via your web browser=
: https://support.google.com/mail/accounts/answer/78754 (Failure)</div><div=
>[2017-09-29 18:01:54] IMAP queue drained</div><div>[2017-09-29 18:01:54] i=
map_auth_sasl: IMAP4rev1 UNSELECT IDLE NAMESPACE QUOTA ID XLIST CHILDREN X-=
GM-EXT-1 XYZZY SASL-IR AUTH=3DXOAUTH2 AUTH=3DPLAIN AUTH=3DPLAIN-CLIENTTOKEN=
 AUTH=3DOAUTHBEARER AUTH=3DXOAUTH failed</div><div>[2017-09-29 18:01:54] Lo=
gging in...</div><div>[2017-09-29 18:01:54] 5&gt; a0002 LOGIN &quot;dafna3@=
gmail.com&quot; &lt;my password was here &gt;</div><div>[2017-09-29 18:01:5=
4] 5&lt; * NO [WEBALERT https://accounts.google.com/signin/continue?sarp=3D=
1&amp;scc=3D1&amp;plt=3DAKgnsbtsuqTeiA_IDHsoIa3Utf_H1khBtwHGPHU6HQDMyeG3LyU=
NEoFXbnca04wxTgx9HN5kLUpQ] Web login required.</div><div>[2017-09-29 18:01:=
54] Handling untagged NO</div><div>[2017-09-29 18:01:54] [WEBALERT https://=
accounts.google.com/signin/continue?sarp=3D1&amp;scc=3D1&amp;plt=3DAKgnsbts=
uqTeiA_IDHsoIa3Utf_H1khBtwHGPHU6HQDMyeG3LyUNEoFXbnca04wxTgx9HN5kLUpQ9nLYddq=
Y70JeOESSjlwXKknggYPTII1U_XV7] Web login required.</div><div>[2017-09-29 18=
:01:56] 5&lt; a0002 NO [ALERT] Please log in via your web browser: https://=
support.google.com/mail/accounts/answer/78754 (Failure)</div><div>[2017-09-=
29 18:01:56] IMAP queue drained</div><div>[2017-09-29 18:01:56] Login faile=
d.</div><div>[2017-09-29 18:01:58] mutt_num_postponed: using old IMAP postp=
oned count.</div><div>[2017-09-29 18:02:47] mutt_index_menu[683]: Got op 14=
7</div><div>[2017-09-29 18:02:47] Closing connection to imap.gmail.com...</=
div><div>[2017-09-29 18:02:47] 5&gt; a0003 LOGOUT</div><div>[2017-09-29 18:=
02:47] 5&lt; * BYE Logout Requested 4mb36680424wrk</div><div>[2017-09-29 18=
:02:47] Handling BYE</div><div>[2017-09-29 18:02:47] 5&lt; a0003 OK Quoth t=
he raven, nevermore... 4mb36680424wrk</div><div>[2017-09-29 18:02:47] IMAP =
queue drained</div></div><div><br></div><div><br></div><div><br></div><div>=
<br></div><div><br></div><div><br></div><div><br></div></div>
------=_Part_3083_332827525.1506697770626--

------=_Part_3082_803047782.1506697770626--

