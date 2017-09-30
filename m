X-GM-THRID: 6471306251625037824
Date: Fri, 29 Sep 2017 22:34:03 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <ca0aad38-4e68-414f-a0a0-109cd75bc000@googlegroups.com>
In-Reply-To: <CAFTL4hxsanExgqVXRMasDAt-sLK78_w+hEYrR5rXE9KK9GzGkg@mail.gmail.com>
References: <10f2cfd0-e601-49a3-af37-6157f60b1da9@googlegroups.com>
 <CAFTL4hxsanExgqVXRMasDAt-sLK78_w+hEYrR5rXE9KK9GzGkg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Hi, problems configuring mutt
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4320_946551875.1506749643121"
X-Google-Token: EMvZvM4FxJoXnU3du-s0
X-Google-IP: 87.70.155.11

------=_Part_4320_946551875.1506749643121
Content-Type: multipart/alternative; 
	boundary="----=_Part_4321_266542903.1506749643122"

------=_Part_4321_266542903.1506749643122
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
Thanks a lot,
I enabled the 2-step verification , generated an app password to use in=20
mutt and then disabled the 2 step verification.
This seems to solve the issue.

Dafna

On Saturday, September 30, 2017 at 4:11:11 AM UTC+3, Fr=C3=A9d=C3=A9ric Wei=
sbecker=20
wrote:
>
> 2017-09-29 17:09 GMT+02:00 <daf...@gmail.com <javascript:>>:=20
> >=20
> > I started with the instructions in the site=20
> https://kernelnewbies.org/Outreachyfirstpatch#head-17dd753ec497c8f7e2305c=
e78be8c6ca7cd1c92c=20
> > I sent a mail to myself , It got to the spam folder with warning "this=
=20
> message was not encrypted"=20
> >=20
> > I also got a mail from google:=20
> >=20
> > Review blocked sign-in attempt=20
> > Hi Dafna,=20
> > Google just blocked someone from signing into your Google Account=20
> daf...@gmail.com <javascript:> from an app that may put your account at=
=20
> risk.=20
> >=20
> >=20
> >=20
> > Then after googling, I tried to set ~/.muttrc:=20
> >=20
> > set ssl_starttls =3D yes=20
> > set ssl_force_tls =3D yes=20
> > set imap_user =3D 'daf...@gmail.com <javascript:>'=20
> > set smtp_url =3D "smtp://dafna3@smtp.gmail.com:587/"=20
> > set from =3D 'daf...@gmail.com <javascript:>'=20
> > set realname =3D 'Dafna Hirschfeld'=20
> > set folder =3D "imaps://imap.gmail.com:993"=20
> > set record=3D"+[Gmail]/Sent Mail"=20
> > set spoolfile =3D imaps://imap.gmail.com:993/INBOX=20
> > set postponed=3D"+[Gmail]/Drafts"=20
> > set header_cache =3D "~/.mutt/cache/headers"=20
> > set message_cachedir =3D "~/.mutt/cache/bodies"=20
> > set certificate_file =3D "~/.mutt/certificates"=20
> >=20
> > and my ~/.esmtprc is:=20
> >=20
> > identity "daf...@gmail.com <javascript:>"=20
> > hostname smtp.gmail.com:587=20
> > username "daf...@gmail.com <javascript:>"=20
> > starttls required=20
> >=20
> > now when I run "mutt -d 5" I get the message:=20
> >=20
> > Password for dafna3@gmail.com@imap.gmail.com:=20
> >=20
> > after I enter my password I get "Login Failed"=20
> >=20
> > looking at the ~/.muttdebug0:=20
> >=20
> >=20
> > [2017-09-29 18:01:21] Mutt/1.5.24 (2015-08-30) debugging at level 5=20
> > [2017-09-29 18:01:21] Reading configuration file '/etc/Muttrc'.=20
> > [2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e5768, *ldata =3D=
=20
> (nil)=20
> > [2017-09-29 18:01:21] parse_attach_list: added */.* [9]=20
> > [2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e5760, *ldata =3D=
=20
> (nil)=20
> > [2017-09-29 18:01:21] parse_attach_list: added text/x-vcard [7]=20
> > [2017-09-29 18:01:21] parse_attach_list: added application/pgp.* [2]=20
> > [2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e5760, *ldata =3D=
=20
> 0x11ff180=20
> > [2017-09-29 18:01:21] parse_attach_list: skipping text/x-vcard=20
> > [2017-09-29 18:01:21] parse_attach_list: skipping application/pgp.*=20
> > [2017-09-29 18:01:21] parse_attach_list: added application/x-pkcs7-.*=
=20
> [2]=20
> > [2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e5758, *ldata =3D=
=20
> (nil)=20
> > [2017-09-29 18:01:21] parse_attach_list: added text/plain [7]=20
> > [2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e5760, *ldata =3D=
=20
> 0x11ff180=20
> > [2017-09-29 18:01:21] parse_attach_list: skipping text/x-vcard=20
> > [2017-09-29 18:01:21] parse_attach_list: skipping application/pgp.*=20
> > [2017-09-29 18:01:21] parse_attach_list: skipping application/x-pkcs7-.=
*=20
> > [2017-09-29 18:01:21] parse_attach_list: added message/external-body [4=
]=20
> > [2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e5750, *ldata =3D=
=20
> (nil)=20
> > [2017-09-29 18:01:21] parse_attach_list: added message/external-body [4=
]=20
> > [2017-09-29 18:01:21] Reading configuration file=20
> '/usr/lib/mutt/source-muttrc.d|'.=20
> > [2017-09-29 18:01:21] Reading configuration file=20
> '/etc/Muttrc.d/charset.rc'.=20
> > [2017-09-29 18:01:21] Reading configuration file=20
> '/etc/Muttrc.d/colors.rc'.=20
> > [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 1=20
> > [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 2=20
> > [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 3=20
> > [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 4=20
> > [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 5=20
> > [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 6=20
> > [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 7=20
> > [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 8=20
> > [2017-09-29 18:01:21] Reading configuration file=20
> '/etc/Muttrc.d/compressed-folders.rc'.=20
> > [2017-09-29 18:01:21] Reading configuration file '/etc/Muttrc.d/gpg.rc'=
.=20
> > [2017-09-29 18:01:21] Reading configuration file=20
> '/etc/Muttrc.d/smime.rc'.=20
> > [2017-09-29 18:01:22] Reading configuration file '/home/dafna/.muttrc'.=
=20
> > [2017-09-29 18:01:22] Using default IMAP port 143=20
> > [2017-09-29 18:01:22] Using default IMAPS port 993=20
> > [2017-09-29 18:01:22] Reading imaps://imap.gmail.com:993/INBOX...=20
> > [2017-09-29 18:01:22] Looking up imap.gmail.com...=20
> > [2017-09-29 18:01:22] Connecting to imap.gmail.com...=20
> > [2017-09-29 18:01:22] SSL/TLS connection using TLS1.2=20
> (ECDHE-RSA/AES-128-GCM/AEAD)=20
> > [2017-09-29 18:01:23] Connected to imap.gmail.com:993 on fd=3D5=20
> > [2017-09-29 18:01:23] imap_cmd_step: grew buffer to 512 bytes=20
> > [2017-09-29 18:01:23] 5< * OK Gimap ready for requests from 87.70.155.1=
1=20
> 4mb36680424wrk=20
> > [2017-09-29 18:01:23] IMAP queue drained=20
> > [2017-09-29 18:01:23] 5> a0000 CAPABILITY=20
> > [2017-09-29 18:01:23] 5< * CAPABILITY IMAP4rev1 UNSELECT IDLE NAMESPACE=
=20
> QUOTA ID XLIST CHILDREN X-GM-EXT-1 XYZZY SASL-IR AUTH=3DXOAUTH2 AUTH=3DPL=
AIN=20
> AUTH=3DPLAIN-CLIENTTOKEN AUTH=3DOAUTHBEARER AUTH=3DXOAUTH=20
> > [2017-09-29 18:01:23] Handling CAPABILITY=20
> > [2017-09-29 18:01:23] 5< a0000 OK Thats all she wrote! 4mb36680424wrk=
=20
> > [2017-09-29 18:01:23] IMAP queue drained=20
> > [2017-09-29 18:01:23] imap_authenticate: Using any available method.=20
> > [2017-09-29 18:01:23] SASL local ip: 192.168.1.3;49818, remote=20
> ip:64.233.184.109;993=20
> > [2017-09-29 18:01:23] External SSF: 128=20
> > [2017-09-29 18:01:23] mutt_sasl_cb_authname: getting authname for=20
> imap.gmail.com:993=20
> > [2017-09-29 18:01:23] mutt_sasl_cb_authname: getting user for=20
> imap.gmail.com:993=20
> > [2017-09-29 18:01:23] mutt_sasl_cb_pass: getting password for=20
> dafna3@gmail.com@imap.gmail.com:993=20
> > [2017-09-29 18:01:51] Authenticating (PLAIN)...=20
> > [2017-09-29 18:01:51] 5> a0001 AUTHENTICATE PLAIN=20
> ZGFmbmEzQGdtYWlsLmNvbQBkYWZuYTNAZ21haWwuY29tAHptb3JhYml0YW4=3D=20
> > [2017-09-29 18:01:52] 5< * NO [WEBALERT=20
> https://accounts.google.com/signin/continue?sarp=3D1&scc=3D1&plt=3DAKgnsb=
ugOQ198DOy7Zb1MDieiIPEzFKc8]=20
> Web login required.=20
> > [2017-09-29 18:01:52] Handling untagged NO=20
> > [2017-09-29 18:01:52] [WEBALERT=20
> https://accounts.google.com/signin/continue?sarp=3D1&scc=3D1&plt=3DAKgnsb=
ugOQ198DOy7Zb1MDieiIPEzFKc1njxh1OAIMIwnM_HFpfrZrE8Cs8jIZ8]=20
> Web login required.=20
> > [2017-09-29 18:01:54] 5< a0001 NO [ALERT] Please log in via your web=20
> browser: https://support.google.com/mail/accounts/answer/78754 (Failure)=
=20
> > [2017-09-29 18:01:54] IMAP queue drained=20
> > [2017-09-29 18:01:54] imap_auth_sasl: IMAP4rev1 UNSELECT IDLE NAMESPACE=
=20
> QUOTA ID XLIST CHILDREN X-GM-EXT-1 XYZZY SASL-IR AUTH=3DXOAUTH2 AUTH=3DPL=
AIN=20
> AUTH=3DPLAIN-CLIENTTOKEN AUTH=3DOAUTHBEARER AUTH=3DXOAUTH failed=20
> > [2017-09-29 18:01:54] Logging in...=20
> > [2017-09-29 18:01:54] 5> a0002 LOGIN "daf...@gmail.com <javascript:>"=
=20
> <my password was here >=20
> > [2017-09-29 18:01:54] 5< * NO [WEBALERT=20
> https://accounts.google.com/signin/continue?sarp=3D1&scc=3D1&plt=3DAKgnsb=
tsuqTeiA_IDHsoIa3Utf_H1khBtwHGPHU6HQDMyeG3LyUNEoFXbnca04wxTgx9HN5kLUpQ]=20
> Web login required.=20
> > [2017-09-29 18:01:54] Handling untagged NO=20
> > [2017-09-29 18:01:54] [WEBALERT=20
> https://accounts.google.com/signin/continue?sarp=3D1&scc=3D1&plt=3DAKgnsb=
tsuqTeiA_IDHsoIa3Utf_H1khBtwHGPHU6HQDMyeG3LyUNEoFXbnca04wxTgx9HN5kLUpQ9nLYd=
dqY70JeOESSjlwXKknggYPTII1U_XV7]=20
> Web login required.=20
> > [2017-09-29 18:01:56] 5< a0002 NO [ALERT] Please log in via your web=20
> browser: https://support.google.com/mail/accounts/answer/78754 (Failure)=
=20
>
>
> Hi Dafna,=20
>
> Yes they haven't made gmail easy for the outside IMAP world. Well it=20
> used to be easy but google is evolving as it does...=20
>
> So you need to make sure you check everything there:=20
> https://support.google.com/mail/accounts/answer/78754=20
>
> Some outstanding non obvious points from that page:=20
>
> 1) Make sure you enabled IMAP on gmail parameters=20
> 2) Enable access to non secured apps (google account parameters)=20
> 3) Check  https://www.google.com/ajccounts/DisplayUnlockCaptcha=20
>
> It's also possible that none of this will help. For exemple IMAP login=20
> on my account has stopped working suddenly several days ago.=20
> Impossible to know why. So I'm stuck with overkill email clients=20
> supporting OAUTH2. You should have better luck though, my case seems=20
> to be isolated as far as I know.=20
>

------=_Part_4321_266542903.1506749643122
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Thanks a lot,</div><div>I enabled the 2-step verif=
ication , generated an app password to use in mutt and then disabled the 2 =
step verification.</div><div>This seems to solve the issue.</div><div><br><=
/div><div>Dafna<br><br>On Saturday, September 30, 2017 at 4:11:11 AM UTC+3,=
 Fr=C3=A9d=C3=A9ric Weisbecker wrote:<blockquote class=3D"gmail_quote" styl=
e=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left:=
 1ex;">2017-09-29 17:09 GMT+02:00 &lt;<a href=3D"javascript:" target=3D"_bl=
ank" gdf-obfuscated-mailto=3D"QurbDNdjBQAJ" rel=3D"nofollow" onmousedown=3D=
"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#3=
9;javascript:&#39;;return true;">daf...@gmail.com</a>&gt;:
<br>&gt;
<br>&gt; I started with the instructions in the site <a href=3D"https://ker=
nelnewbies.org/Outreachyfirstpatch#head-17dd753ec497c8f7e2305ce78be8c6ca7cd=
1c92c" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;h=
ttps://www.google.com/url?q\x3dhttps%3A%2F%2Fkernelnewbies.org%2FOutreachyf=
irstpatch%23head-17dd753ec497c8f7e2305ce78be8c6ca7cd1c92c\x26sa\x3dD\x26snt=
z\x3d1\x26usg\x3dAFQjCNH6ntbEZFiQ1PCceUmFijRCWtJelg&#39;;return true;" oncl=
ick=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fkerne=
lnewbies.org%2FOutreachyfirstpatch%23head-17dd753ec497c8f7e2305ce78be8c6ca7=
cd1c92c\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNH6ntbEZFiQ1PCceUmFijRCWtJel=
g&#39;;return true;">https://kernelnewbies.org/<wbr>Outreachyfirstpatch#hea=
d-<wbr>17dd753ec497c8f7e2305ce78be8c6<wbr>ca7cd1c92c</a>
<br>&gt; I sent a mail to myself , It got to the spam folder with warning &=
quot;this message was not encrypted&quot;
<br>&gt;
<br>&gt; I also got a mail from google:
<br>&gt;
<br>&gt; Review blocked sign-in attempt
<br>&gt; Hi Dafna,
<br>&gt; Google just blocked someone from signing into your Google Account =
<a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"QurbDNdj=
BQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&#39;;ret=
urn true;" onclick=3D"this.href=3D&#39;javascript:&#39;;return true;">daf..=
.@gmail.com</a> from an app that may put your account at risk.
<br>&gt;
<br>&gt;
<br>&gt;
<br>&gt; Then after googling, I tried to set ~/.muttrc:
<br>&gt;
<br>&gt; set ssl_starttls =3D yes
<br>&gt; set ssl_force_tls =3D yes
<br>&gt; set imap_user =3D &#39;<a href=3D"javascript:" target=3D"_blank" g=
df-obfuscated-mailto=3D"QurbDNdjBQAJ" rel=3D"nofollow" onmousedown=3D"this.=
href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;java=
script:&#39;;return true;">daf...@gmail.com</a>&#39;
<br>&gt; set smtp_url =3D &quot;smtp://<a href=3D"http://dafna3@smtp.gmail.=
com:587/" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#3=
9;http://dafna3@smtp.gmail.com:587/&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://dafna3@smtp.gmail.com:587/&#39;;return true;">dafna3@smtp.gm=
ail.com:<wbr>587/</a>&quot;
<br>&gt; set from =3D &#39;<a href=3D"javascript:" target=3D"_blank" gdf-ob=
fuscated-mailto=3D"QurbDNdjBQAJ" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascri=
pt:&#39;;return true;">daf...@gmail.com</a>&#39;
<br>&gt; set realname =3D &#39;Dafna Hirschfeld&#39;
<br>&gt; set folder =3D &quot;imaps://<a href=3D"http://imap.gmail.com:993"=
 target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://=
imap.gmail.com:993&#39;;return true;" onclick=3D"this.href=3D&#39;http://im=
ap.gmail.com:993&#39;;return true;">imap.gmail.com:993</a>&quot;
<br>&gt; set record=3D&quot;+[Gmail]/Sent Mail&quot;
<br>&gt; set spoolfile =3D imaps://<a href=3D"http://imap.gmail.com:993/INB=
OX" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http=
://imap.gmail.com:993/INBOX&#39;;return true;" onclick=3D"this.href=3D&#39;=
http://imap.gmail.com:993/INBOX&#39;;return true;">imap.gmail.com:993/<wbr>=
INBOX</a>
<br>&gt; set postponed=3D&quot;+[Gmail]/Drafts&quot;
<br>&gt; set header_cache =3D &quot;~/.mutt/cache/headers&quot;
<br>&gt; set message_cachedir =3D &quot;~/.mutt/cache/bodies&quot;
<br>&gt; set certificate_file =3D &quot;~/.mutt/certificates&quot;
<br>&gt;
<br>&gt; and my ~/.esmtprc is:
<br>&gt;
<br>&gt; identity &quot;<a href=3D"javascript:" target=3D"_blank" gdf-obfus=
cated-mailto=3D"QurbDNdjBQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&=
#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&=
#39;;return true;">daf...@gmail.com</a>&quot;
<br>&gt; hostname <a href=3D"http://smtp.gmail.com:587" target=3D"_blank" r=
el=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://smtp.gmail.com:587&#=
39;;return true;" onclick=3D"this.href=3D&#39;http://smtp.gmail.com:587&#39=
;;return true;">smtp.gmail.com:587</a>
<br>&gt; username &quot;<a href=3D"javascript:" target=3D"_blank" gdf-obfus=
cated-mailto=3D"QurbDNdjBQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&=
#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&=
#39;;return true;">daf...@gmail.com</a>&quot;
<br>&gt; starttls required
<br>&gt;
<br>&gt; now when I run &quot;mutt -d 5&quot; I get the message:
<br>&gt;
<br>&gt; Password for dafna3@gmail.com@<a href=3D"http://imap.gmail.com" ta=
rget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://ima=
p.gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;http://imap.gmai=
l.com&#39;;return true;">imap.gmail.<wbr>com</a>:
<br>&gt;
<br>&gt; after I enter my password I get &quot;Login Failed&quot;
<br>&gt;
<br>&gt; looking at the ~/.muttdebug0:
<br>&gt;
<br>&gt;
<br>&gt; [2017-09-29 18:01:21] Mutt/1.5.24 (2015-08-30) debugging at level =
5
<br>&gt; [2017-09-29 18:01:21] Reading configuration file &#39;/etc/Muttrc&=
#39;.
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e5768, *ldat=
a =3D (nil)
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: added */.* [9]
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e5760, *ldat=
a =3D (nil)
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: added text/x-vcard [7]
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: added application/pgp.* [=
2]
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e5760, *ldat=
a =3D 0x11ff180
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: skipping text/x-vcard
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: skipping application/pgp.=
*
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: added application/x-pkcs7=
-.* [2]
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e5758, *ldat=
a =3D (nil)
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: added text/plain [7]
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e5760, *ldat=
a =3D 0x11ff180
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: skipping text/x-vcard
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: skipping application/pgp.=
*
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: skipping application/x-pk=
cs7-.*
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: added message/external-bo=
dy [4]
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: ldata =3D 0x6e5750, *ldat=
a =3D (nil)
<br>&gt; [2017-09-29 18:01:21] parse_attach_list: added message/external-bo=
dy [4]
<br>&gt; [2017-09-29 18:01:21] Reading configuration file &#39;/usr/lib/mut=
t/source-muttrc.<wbr>d|&#39;.
<br>&gt; [2017-09-29 18:01:21] Reading configuration file &#39;/etc/Muttrc.=
d/charset.rc&#39;.
<br>&gt; [2017-09-29 18:01:21] Reading configuration file &#39;/etc/Muttrc.=
d/colors.rc&#39;.
<br>&gt; [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far:=
 1
<br>&gt; [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far:=
 2
<br>&gt; [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far:=
 3
<br>&gt; [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far:=
 4
<br>&gt; [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far:=
 5
<br>&gt; [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far:=
 6
<br>&gt; [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far:=
 7
<br>&gt; [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far:=
 8
<br>&gt; [2017-09-29 18:01:21] Reading configuration file &#39;/etc/Muttrc.=
d/compressed-<wbr>folders.rc&#39;.
<br>&gt; [2017-09-29 18:01:21] Reading configuration file &#39;/etc/Muttrc.=
d/gpg.rc&#39;.
<br>&gt; [2017-09-29 18:01:21] Reading configuration file &#39;/etc/Muttrc.=
d/smime.rc&#39;.
<br>&gt; [2017-09-29 18:01:22] Reading configuration file &#39;/home/dafna/=
.muttrc&#39;.
<br>&gt; [2017-09-29 18:01:22] Using default IMAP port 143
<br>&gt; [2017-09-29 18:01:22] Using default IMAPS port 993
<br>&gt; [2017-09-29 18:01:22] Reading imaps://<a href=3D"http://imap.gmail=
.com:993/INBOX." target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.hre=
f=3D&#39;http://imap.gmail.com:993/INBOX.&#39;;return true;" onclick=3D"thi=
s.href=3D&#39;http://imap.gmail.com:993/INBOX.&#39;;return true;">imap.gmai=
l.com:993/<wbr>INBOX.</a>..
<br>&gt; [2017-09-29 18:01:22] Looking up imap.gmail.com...
<br>&gt; [2017-09-29 18:01:22] Connecting to imap.gmail.com...
<br>&gt; [2017-09-29 18:01:22] SSL/TLS connection using TLS1.2 (ECDHE-RSA/A=
ES-128-GCM/AEAD)
<br>&gt; [2017-09-29 18:01:23] Connected to <a href=3D"http://imap.gmail.co=
m:993" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;h=
ttp://imap.gmail.com:993&#39;;return true;" onclick=3D"this.href=3D&#39;htt=
p://imap.gmail.com:993&#39;;return true;">imap.gmail.com:993</a> on fd=3D5
<br>&gt; [2017-09-29 18:01:23] imap_cmd_step: grew buffer to 512 bytes
<br>&gt; [2017-09-29 18:01:23] 5&lt; * OK Gimap ready for requests from 87.=
70.155.11 4mb36680424wrk
<br>&gt; [2017-09-29 18:01:23] IMAP queue drained
<br>&gt; [2017-09-29 18:01:23] 5&gt; a0000 CAPABILITY
<br>&gt; [2017-09-29 18:01:23] 5&lt; * CAPABILITY IMAP4rev1 UNSELECT IDLE N=
AMESPACE QUOTA ID XLIST CHILDREN X-GM-EXT-1 XYZZY SASL-IR AUTH=3DXOAUTH2 AU=
TH=3DPLAIN AUTH=3DPLAIN-CLIENTTOKEN AUTH=3DOAUTHBEARER AUTH=3DXOAUTH
<br>&gt; [2017-09-29 18:01:23] Handling CAPABILITY
<br>&gt; [2017-09-29 18:01:23] 5&lt; a0000 OK Thats all she wrote! 4mb36680=
424wrk
<br>&gt; [2017-09-29 18:01:23] IMAP queue drained
<br>&gt; [2017-09-29 18:01:23] imap_authenticate: Using any available metho=
d.
<br>&gt; [2017-09-29 18:01:23] SASL local ip: 192.168.1.3;49818, remote ip:=
64.233.184.109;993
<br>&gt; [2017-09-29 18:01:23] External SSF: 128
<br>&gt; [2017-09-29 18:01:23] mutt_sasl_cb_authname: getting authname for =
<a href=3D"http://imap.gmail.com:993" target=3D"_blank" rel=3D"nofollow" on=
mousedown=3D"this.href=3D&#39;http://imap.gmail.com:993&#39;;return true;" =
onclick=3D"this.href=3D&#39;http://imap.gmail.com:993&#39;;return true;">im=
ap.gmail.com:993</a>
<br>&gt; [2017-09-29 18:01:23] mutt_sasl_cb_authname: getting user for <a h=
ref=3D"http://imap.gmail.com:993" target=3D"_blank" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;http://imap.gmail.com:993&#39;;return true;" oncl=
ick=3D"this.href=3D&#39;http://imap.gmail.com:993&#39;;return true;">imap.g=
mail.com:993</a>
<br>&gt; [2017-09-29 18:01:23] mutt_sasl_cb_pass: getting password for dafn=
a3@gmail.com@<a href=3D"http://imap.gmail.com:993" target=3D"_blank" rel=3D=
"nofollow" onmousedown=3D"this.href=3D&#39;http://imap.gmail.com:993&#39;;r=
eturn true;" onclick=3D"this.href=3D&#39;http://imap.gmail.com:993&#39;;ret=
urn true;">imap.gmail.<wbr>com:993</a>
<br>&gt; [2017-09-29 18:01:51] Authenticating (PLAIN)...
<br>&gt; [2017-09-29 18:01:51] 5&gt; a0001 AUTHENTICATE PLAIN ZGFmbmEzQGdtY=
WlsLmNvbQBkYWZuYT<wbr>NAZ21haWwuY29tAHptb3JhYml0YW4=3D
<br>&gt; [2017-09-29 18:01:52] 5&lt; * NO [WEBALERT <a href=3D"https://acco=
unts.google.com/signin/continue?sarp=3D1&amp;scc=3D1&amp;plt=3DAKgnsbugOQ19=
8DOy7Zb1MDieiIPEzFKc8" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"th=
is.href=3D&#39;https://accounts.google.com/signin/continue?sarp\x3d1\x26scc=
\x3d1\x26plt\x3dAKgnsbugOQ198DOy7Zb1MDieiIPEzFKc8&#39;;return true;" onclic=
k=3D"this.href=3D&#39;https://accounts.google.com/signin/continue?sarp\x3d1=
\x26scc\x3d1\x26plt\x3dAKgnsbugOQ198DOy7Zb1MDieiIPEzFKc8&#39;;return true;"=
>https://accounts.google.com/<wbr>signin/continue?sarp=3D1&amp;scc=3D1&amp;=
<wbr>plt=3D<wbr>AKgnsbugOQ198DOy7Zb1MDieiIPEzF<wbr>Kc8</a>] Web login requi=
red.
<br>&gt; [2017-09-29 18:01:52] Handling untagged NO
<br>&gt; [2017-09-29 18:01:52] [WEBALERT <a href=3D"https://accounts.google=
.com/signin/continue?sarp=3D1&amp;scc=3D1&amp;plt=3DAKgnsbugOQ198DOy7Zb1MDi=
eiIPEzFKc1njxh1OAIMIwnM_HFpfrZrE8Cs8jIZ8" target=3D"_blank" rel=3D"nofollow=
" onmousedown=3D"this.href=3D&#39;https://accounts.google.com/signin/contin=
ue?sarp\x3d1\x26scc\x3d1\x26plt\x3dAKgnsbugOQ198DOy7Zb1MDieiIPEzFKc1njxh1OA=
IMIwnM_HFpfrZrE8Cs8jIZ8&#39;;return true;" onclick=3D"this.href=3D&#39;http=
s://accounts.google.com/signin/continue?sarp\x3d1\x26scc\x3d1\x26plt\x3dAKg=
nsbugOQ198DOy7Zb1MDieiIPEzFKc1njxh1OAIMIwnM_HFpfrZrE8Cs8jIZ8&#39;;return tr=
ue;">https://accounts.google.com/<wbr>signin/continue?sarp=3D1&amp;scc=3D1&=
amp;<wbr>plt=3D<wbr>AKgnsbugOQ198DOy7Zb1MDieiIPEzF<wbr>Kc1njxh1OAIMIwnM_<wb=
r>HFpfrZrE8Cs8jIZ8</a>] Web login required.
<br>&gt; [2017-09-29 18:01:54] 5&lt; a0001 NO [ALERT] Please log in via you=
r web browser: <a href=3D"https://support.google.com/mail/accounts/answer/7=
8754" target=3D"_blank" onmousedown=3D"this.href=3D&#39;https://support.goo=
gle.com/mail/accounts/answer/78754&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://support.google.com/mail/accounts/answer/78754&#39;;return t=
rue;">https://support.google.com/<wbr>mail/accounts/answer/78754</a> (Failu=
re)
<br>&gt; [2017-09-29 18:01:54] IMAP queue drained
<br>&gt; [2017-09-29 18:01:54] imap_auth_sasl: IMAP4rev1 UNSELECT IDLE NAME=
SPACE QUOTA ID XLIST CHILDREN X-GM-EXT-1 XYZZY SASL-IR AUTH=3DXOAUTH2 AUTH=
=3DPLAIN AUTH=3DPLAIN-CLIENTTOKEN AUTH=3DOAUTHBEARER AUTH=3DXOAUTH failed
<br>&gt; [2017-09-29 18:01:54] Logging in...
<br>&gt; [2017-09-29 18:01:54] 5&gt; a0002 LOGIN &quot;<a href=3D"javascrip=
t:" target=3D"_blank" gdf-obfuscated-mailto=3D"QurbDNdjBQAJ" rel=3D"nofollo=
w" onmousedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=
=3D"this.href=3D&#39;javascript:&#39;;return true;">daf...@gmail.com</a>&qu=
ot; &lt;my password was here &gt;
<br>&gt; [2017-09-29 18:01:54] 5&lt; * NO [WEBALERT <a href=3D"https://acco=
unts.google.com/signin/continue?sarp=3D1&amp;scc=3D1&amp;plt=3DAKgnsbtsuqTe=
iA_IDHsoIa3Utf_H1khBtwHGPHU6HQDMyeG3LyUNEoFXbnca04wxTgx9HN5kLUpQ" target=3D=
"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://accounts.=
google.com/signin/continue?sarp\x3d1\x26scc\x3d1\x26plt\x3dAKgnsbtsuqTeiA_I=
DHsoIa3Utf_H1khBtwHGPHU6HQDMyeG3LyUNEoFXbnca04wxTgx9HN5kLUpQ&#39;;return tr=
ue;" onclick=3D"this.href=3D&#39;https://accounts.google.com/signin/continu=
e?sarp\x3d1\x26scc\x3d1\x26plt\x3dAKgnsbtsuqTeiA_IDHsoIa3Utf_H1khBtwHGPHU6H=
QDMyeG3LyUNEoFXbnca04wxTgx9HN5kLUpQ&#39;;return true;">https://accounts.goo=
gle.com/<wbr>signin/continue?sarp=3D1&amp;scc=3D1&amp;<wbr>plt=3DAKgnsbtsuq=
TeiA_<wbr>IDHsoIa3Utf_<wbr>H1khBtwHGPHU6HQDMyeG3LyUNEoFXb<wbr>nca04wxTgx9HN=
5kLUpQ</a>] Web login required.
<br>&gt; [2017-09-29 18:01:54] Handling untagged NO
<br>&gt; [2017-09-29 18:01:54] [WEBALERT <a href=3D"https://accounts.google=
.com/signin/continue?sarp=3D1&amp;scc=3D1&amp;plt=3DAKgnsbtsuqTeiA_IDHsoIa3=
Utf_H1khBtwHGPHU6HQDMyeG3LyUNEoFXbnca04wxTgx9HN5kLUpQ9nLYddqY70JeOESSjlwXKk=
nggYPTII1U_XV7" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://accounts.google.com/signin/continue?sarp\x3d1\x26scc\x3d1\x=
26plt\x3dAKgnsbtsuqTeiA_IDHsoIa3Utf_H1khBtwHGPHU6HQDMyeG3LyUNEoFXbnca04wxTg=
x9HN5kLUpQ9nLYddqY70JeOESSjlwXKknggYPTII1U_XV7&#39;;return true;" onclick=
=3D"this.href=3D&#39;https://accounts.google.com/signin/continue?sarp\x3d1\=
x26scc\x3d1\x26plt\x3dAKgnsbtsuqTeiA_IDHsoIa3Utf_H1khBtwHGPHU6HQDMyeG3LyUNE=
oFXbnca04wxTgx9HN5kLUpQ9nLYddqY70JeOESSjlwXKknggYPTII1U_XV7&#39;;return tru=
e;">https://accounts.google.com/<wbr>signin/continue?sarp=3D1&amp;scc=3D1&a=
mp;<wbr>plt=3DAKgnsbtsuqTeiA_<wbr>IDHsoIa3Utf_<wbr>H1khBtwHGPHU6HQDMyeG3LyU=
NEoFXb<wbr>nca04wxTgx9HN5kLUpQ9nLYddqY70J<wbr>eOESSjlwXKknggYPTII1U_XV7</a>=
] Web login required.
<br>&gt; [2017-09-29 18:01:56] 5&lt; a0002 NO [ALERT] Please log in via you=
r web browser: <a href=3D"https://support.google.com/mail/accounts/answer/7=
8754" target=3D"_blank" onmousedown=3D"this.href=3D&#39;https://support.goo=
gle.com/mail/accounts/answer/78754&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://support.google.com/mail/accounts/answer/78754&#39;;return t=
rue;">https://support.google.com/<wbr>mail/accounts/answer/78754</a> (Failu=
re)
<br>
<br>
<br>Hi Dafna,
<br>
<br>Yes they haven&#39;t made gmail easy for the outside IMAP world. Well i=
t
<br>used to be easy but google is evolving as it does...
<br>
<br>So you need to make sure you check everything there:
<br><a href=3D"https://support.google.com/mail/accounts/answer/78754" targe=
t=3D"_blank" onmousedown=3D"this.href=3D&#39;https://support.google.com/mai=
l/accounts/answer/78754&#39;;return true;" onclick=3D"this.href=3D&#39;http=
s://support.google.com/mail/accounts/answer/78754&#39;;return true;">https:=
//support.google.com/<wbr>mail/accounts/answer/78754</a>
<br>
<br>Some outstanding non obvious points from that page:
<br>
<br>1) Make sure you enabled IMAP on gmail parameters
<br>2) Enable access to non secured apps (google account parameters)
<br>3) Check =C2=A0<a href=3D"https://www.google.com/ajccounts/DisplayUnloc=
kCaptcha" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#3=
9;https://www.google.com/ajccounts/DisplayUnlockCaptcha&#39;;return true;" =
onclick=3D"this.href=3D&#39;https://www.google.com/ajccounts/DisplayUnlockC=
aptcha&#39;;return true;">https://www.google.com/<wbr>ajccounts/DisplayUnlo=
ckCaptcha</a>
<br>
<br>It&#39;s also possible that none of this will help. For exemple IMAP lo=
gin
<br>on my account has stopped working suddenly several days ago.
<br>Impossible to know why. So I&#39;m stuck with overkill email clients
<br>supporting OAUTH2. You should have better luck though, my case seems
<br>to be isolated as far as I know.
<br></blockquote></div></div>
------=_Part_4321_266542903.1506749643122--

------=_Part_4320_946551875.1506749643121--

