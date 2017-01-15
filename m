X-GM-THRID: 6374319834458488832
X-Gmail-Labels: Topic type: DISCUSSION
Date: Sun, 15 Jan 2017 11:15:00 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <11f9892a-2437-4c98-ba12-72a155cdb20e@googlegroups.com>
In-Reply-To: <c81ecc02-03b8-4a0a-ad9b-6de06226e5de@googlegroups.com>
References: <c81ecc02-03b8-4a0a-ad9b-6de06226e5de@googlegroups.com>
Subject: Re: COMMAND NOT WORKING
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4131_2121742150.1484507700469"
X-Google-Token: ELSU78MFv7KGIP67RO00
X-Google-IP: 14.139.82.6

------=_Part_4131_2121742150.1484507700469
Content-Type: multipart/alternative; 
	boundary="----=_Part_4132_254608230.1484507700469"

------=_Part_4132_254608230.1484507700469
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

In my previous reply, there is some typing mistake in the command for 
configuring proxy so the correct command is 

git config --global http.proxy http://user:passwd@proxy.example.com:8080 <http://user:passwd@proxy.example.com:3128>


there is no '=' after http.proxy

On Wednesday, January 11, 2017 at 5:46:29 PM UTC+5:30, Arushi Singhal wrote:
>
> *I have tried the command :*
> git clone -b staging-testing git://
> git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> *But this is showing the output:*
> Cloning into 'staging'...
> fatal: unable to connect to git.kernel.org:
> git.kernel.org[0: 198.145.20.140]: errno=Connection refused
> git.kernel.org[1: 199.204.44.194]: errno=Connection refused
> git.kernel.org[2: 149.20.4.72]: errno=Connection refused
> git.kernel.org[3: 2001:4f8:1:10:0:1991:8:25]: errno=Network is unreachable
> git.kernel.org[4: 2620:3:c000:a:0:1991:8:25]: errno=Network is unreachable
>
>
>
>
>
> *Can anyone help me out?Thanks and RegardsArushi Singhal*
>

------=_Part_4132_254608230.1484507700469
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In my previous reply, there is some typing mistake in the =
command for configuring proxy so the correct command is <br><pre dir=3D"ltr=
" style=3D"margin:0px;padding:3px;border:1px inset;width:98%;min-height:34p=
x;text-align:left;overflow:auto">git config --global http.proxy <a href=3D"=
http://user:passwd@proxy.example.com:3128" rel=3D"nofollow" target=3D"_blan=
k"><span>http</span><span>://</span><span>user</span><span>:</span><span>pa=
sswd</span><span>@</span><span><wbr>proxy</span><span>.</span><span>example=
</span><span>.</span><span>com</span><span>:</span><span>8080</span></a></p=
re><br>there is no &#39;=3D&#39; after http.proxy<br><br>On Wednesday, Janu=
ary 11, 2017 at 5:46:29 PM UTC+5:30, Arushi Singhal wrote:<blockquote class=
=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #cc=
c solid;padding-left: 1ex;"><div dir=3D"ltr"><b>I have tried the command :<=
/b><br>git clone -b staging-testing git://<a href=3D"http://git.kernel.org/=
pub/scm/linux/kernel/git/gregkh/staging.git" rel=3D"nofollow">git.kernel.or=
g/pub/scm/<wbr>linux/kernel/git/gregkh/<wbr>staging.git</a><br><b>But this =
is showing the output:</b><br>Cloning into &#39;staging&#39;...<br>fatal: u=
nable to connect to <a href=3D"http://git.kernel.org" rel=3D"nofollow">git.=
kernel.org</a>:<br><a href=3D"http://git.kernel.org" rel=3D"nofollow">git.k=
ernel.org</a>[0: 198.145.20.140]: errno=3DConnection refused<br><a href=3D"=
http://git.kernel.org" rel=3D"nofollow">git.kernel.org</a>[1: 199.204.44.19=
4]: errno=3DConnection refused<br><a href=3D"http://git.kernel.org" rel=3D"=
nofollow">git.kernel.org</a>[2: 149.20.4.72]: errno=3DConnection refused<br=
><a href=3D"http://git.kernel.org" rel=3D"nofollow">git.kernel.org</a>[3: 2=
001:4f8:1:10:0:1991:8:25]: errno=3DNetwork is unreachable<br><a href=3D"htt=
p://git.kernel.org" rel=3D"nofollow">git.kernel.org</a>[4: 2620:3:c000:a:0:=
1991:8:25]: errno=3DNetwork is unreachable<br><br><b>Can anyone help me out=
?<br><br>Thanks and Regards<br>Arushi Singhal<br></b><br></div></blockquote=
></div>
------=_Part_4132_254608230.1484507700469--

------=_Part_4131_2121742150.1484507700469--

