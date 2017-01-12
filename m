X-GM-THRID: 6374319834458488832
Date: Thu, 12 Jan 2017 05:10:02 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <140e33b6-ad81-40a2-ac64-606a75e5acd1@googlegroups.com>
In-Reply-To: <306428e8-1204-4b38-804a-e54ce0db03c8@googlegroups.com>
References: <c81ecc02-03b8-4a0a-ad9b-6de06226e5de@googlegroups.com>
 <306428e8-1204-4b38-804a-e54ce0db03c8@googlegroups.com>
Subject: Re: COMMAND NOT WORKING
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_526_1298391117.1484226602766"
X-Google-Token: EKqA3sMF75KNFGOqx-I0
X-Google-IP: 14.139.82.6

------=_Part_526_1298391117.1484226602766
Content-Type: multipart/alternative; 
	boundary="----=_Part_527_6795224.1484226602767"

------=_Part_527_6795224.1484226602767
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Hi Simran you are right there that first I have to config the proxy and 
then proceed further and thank-you for the reply and solution.
Thanks
Arushi  


On Thursday, January 12, 2017 at 6:07:07 PM UTC+5:30, SIMRAN SINGHAL wrote:
>
> Hello Arushi,
>
> I have recently faced the same problem and the solution which works for me 
> is:-
> if you are working under proxy first configure proxy which looks like:
>
> git config --global http.proxy=http://user:passwd@proxy.example.com:8080 <http://user:passwd@proxy.example.com:3128>
>
>
> and then try this command
>
> git clone -b staging-testing http://
> git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
>
>
>
------=_Part_527_6795224.1484226602767
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hi Simran you are right there that first I have to con=
fig the proxy and then proceed further and thank-you for the reply and solu=
tion.<br>Thanks<br>Arushi=C2=A0 <br><br><br>On Thursday, January 12, 2017 a=
t 6:07:07 PM UTC+5:30, SIMRAN SINGHAL wrote:<blockquote class=3D"gmail_quot=
e" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;paddin=
g-left: 1ex;"><div dir=3D"ltr">Hello Arushi,<br><br>I have recently faced t=
he same problem and the solution which works for me is:-<br>if you are work=
ing under proxy first configure proxy which looks like:<br><br><pre dir=3D"=
ltr" style=3D"margin:0px;padding:3px;border:1px inset;width:98%;min-height:=
34px;text-align:left;overflow:auto">git config --global http.proxy=3D<a hre=
f=3D"http://user:passwd@proxy.example.com:3128" rel=3D"nofollow" target=3D"=
_blank" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp=
%3A%2F%2Fuser%3Apasswd%40proxy.example.com%3A3128\x26sa\x3dD\x26sntz\x3d1\x=
26usg\x3dAFQjCNHXXEu7SNJqoP_FTMjc7be-ei2r9g&#39;;return true;" onclick=3D"t=
his.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fuser%3Apasswd%4=
0proxy.example.com%3A3128\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNHXXEu7SNJ=
qoP_FTMjc7be-ei2r9g&#39;;return true;"><span>http</span><span>://</span><sp=
an>user</span><span>:</span><span>passwd</span><span>@</span><span><wbr>pro=
xy</span><span>.</span><span>example</span><span>.</span><span>com</span><s=
pan>:</span><span>8080</span></a></pre><br>and then try this command<br><br=
>git clone -b staging-testing http://<a href=3D"http://git.kernel.org/pub/s=
cm/linux/kernel/git/gregkh/staging.git" rel=3D"nofollow" target=3D"_blank" =
onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2=
Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fgregkh%2Fstaging.git\x=
26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEwAL1027OsEIqhiuqonOyjQBBG1g&#39;;re=
turn true;" onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp=
%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fgregkh%2Fstagi=
ng.git\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEwAL1027OsEIqhiuqonOyjQBBG1g=
&#39;;return true;">git.kernel.org/pub/scm/<wbr>linux/kernel/git/gregkh/<wb=
r>staging.git</a><br><br><br></div></blockquote></div>
------=_Part_527_6795224.1484226602767--

------=_Part_526_1298391117.1484226602766--

