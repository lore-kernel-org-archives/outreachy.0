X-GM-THRID: 6193613120116621312
X-Gmail-Labels: Topic type: DISCUSSION
Date: Sun, 13 Sep 2015 00:08:31 -0700 (PDT)
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <d56d45b7-00cd-4567-af69-864c2c9b66eb@googlegroups.com>
In-Reply-To: <fe77d416-3a1a-4c84-9b13-6d84bb46e99f@googlegroups.com>
References: <fe77d416-3a1a-4c84-9b13-6d84bb46e99f@googlegroups.com>
Subject: Re: VM player error
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_187_1525482745.1442128111747"
X-Google-Token: EO_B1K8Fouuc4hshJfw0
X-Google-IP: 124.124.47.116

------=_Part_187_1525482745.1442128111747
Content-Type: multipart/alternative; 
	boundary="----=_Part_188_1257293216.1442128111747"

------=_Part_188_1257293216.1442128111747
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Rajdeep! 

After a bit of searching I found out that this problem arises when the 
Linux type and version that you're trying to load in the VMPlayer is not 
supported yet. Things that you can try:
1. Easiest and every time solution to everything- Uninstall and reinstall 
VMPlayer. Try loading a less new version of the Linux. [Everything should 
work fine if its a stable kernel]
2. If the native machine{in which you've installed VMPlayer} is also a 
Linux machine, you can run the following:

sudo vmware-modconfig --console --install-all
3. If the native machine happens to be windows going to the first option would be good, I think. Otherwise wait for other replies.



On Saturday, September 12, 2015 at 6:32:09 PM UTC+5:30, RAJDEEP KAUR wrote:
>
>
>  Hi Everyone,
>  
>  In the last post  sorry i couldn't discribe the error properly if i am 
> uploading two screenshots can anyone suggest me what how to recover it 
>  Thank you,
>  Regards
>  Rajdeep kaur.
>
>
------=_Part_188_1257293216.1442128111747
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rajdeep! <br><br>After a bit of searching I found out t=
hat this problem arises when the Linux type and version that you&#39;re try=
ing to load in the VMPlayer is not supported yet. Things that you can try:<=
br>1. Easiest and every time solution to everything- Uninstall and reinstal=
l VMPlayer. Try loading a less new version of the Linux. [Everything should=
 work fine if its a stable kernel]<br>2. If the native machine{in which you=
&#39;ve installed VMPlayer} is also a Linux machine, you can run the follow=
ing:<br><pre><code>sudo vmware-modconfig --console --install-all<br><span s=
tyle=3D"font-family: arial,sans-serif;">3. If the native machine happens to=
 be windows going to the first option would be good, I think. Otherwise wai=
t for other replies.<br><br></span></code></pre><span style=3D"font-family:=
 arial,sans-serif;"><br></span><br>On Saturday, September 12, 2015 at 6:32:=
09 PM UTC+5:30, RAJDEEP KAUR wrote:<blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;"><div dir=3D"ltr"><br>=C2=A0Hi Everyone,<br>=C2=A0<br>=C2=A0In the las=
t post=C2=A0 sorry i couldn&#39;t discribe the error properly if i am uploa=
ding two screenshots can anyone suggest me what how to recover it <br>=C2=
=A0Thank you,<br>=C2=A0Regards<br>=C2=A0Rajdeep kaur.<br><br></div></blockq=
uote></div>
------=_Part_188_1257293216.1442128111747--

------=_Part_187_1525482745.1442128111747--

