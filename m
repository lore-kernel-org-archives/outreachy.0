X-GM-THRID: 6948309790946754560
X-Received: by 2002:ac8:58d3:: with SMTP id u19mr2326345qta.306.1628746608902;
        Wed, 11 Aug 2021 22:36:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:d619:: with SMTP id r25ls2860890qkk.3.gmail; Wed, 11 Aug
 2021 22:36:48 -0700 (PDT)
X-Received: by 2002:a37:b544:: with SMTP id e65mr2854407qkf.84.1628746608219;
        Wed, 11 Aug 2021 22:36:48 -0700 (PDT)
Received: by 2002:ae9:eb42:0:b029:3b3:e487:12ad with SMTP id af79cd13be357-3d28babc6b0ms85a;
        Wed, 11 Aug 2021 14:09:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy7U/eXHYw/ktRl/4wIYs0YP4b1WViu4NF7Ckj+E5/ZznzE7FoKq4oiy/aaPNImyHSBZTLHu+8jlQ==
X-Received: by 2002:a25:a2d1:: with SMTP id c17mr594711ybn.286.1628716159631;
        Wed, 11 Aug 2021 14:09:19 -0700 (PDT)
X-Google-Web-Client: true
Date: Wed, 11 Aug 2021 14:09:19 -0700 (PDT)
From: Igor Zhbanov <izh1979@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <4b96abb2-baea-4c16-9d7b-e2ce901a3b2fn@googlegroups.com>
In-Reply-To: <2427703.GWXgmFPN0f@localhost.localdomain>
References: <2427703.GWXgmFPN0f@localhost.localdomain>
Subject: Re: checkpatch.pl
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_188_873932826.1628716159418"

------=_Part_188_873932826.1628716159418
Content-Type: multipart/alternative; 
	boundary="----=_Part_189_1906792695.1628716159418"

------=_Part_189_1906792695.1628716159418
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Fabio,

It seems that the script uses python2, so you need to install "python-ply"=
=20
package.

=D1=81=D1=80=D0=B5=D0=B4=D0=B0, 7 =D0=B0=D0=BF=D1=80=D0=B5=D0=BB=D1=8F 2021=
 =D0=B3. =D0=B2 10:10:40 UTC+3, fmdefr...@gmail.com:=20

> When I run checkpatch.pl I get the following message that clutters the=20
> output with a lot of traceback lines. Obviously, it makes its output a bi=
t=20
> harder to read and it annoys me, however it seems that the script does it=
s=20
> work and spots the violations of the coding rules.
>
> lines ...-... Traceback (most recent call last):
> File "scripts/spdxcheck.py", line 6, in <module>
> from ply import lex, yacc
> ImportError: No module named ply
>
> What I understand is that a Python script, that is called spdxcheck.py an=
d=20
> that is called by checkpatch.pl (Perl calling Python, lovely... :)),=20
> can't find a module called "ply".=20
>
> My laptop runs openSuSE Tumbleweed. It has two directories named "ply",=
=20
> one in /usr/lib/python3.8/site-packages/pycparser/ and the other in=20
> /usr/lib/python3.8/site-packages/. "zipper" (the openSuSE package manager=
)=20
> says that I have two packages already installed: python38-ply and=20
> python-ply-doc (Python Lex and Yacc), therefore I suppose I have the=20
> modules that checkpatch->spdxcheck is looking for but it cannot find them=
=20
> (missing environment variable?).
>
> Can someone, please, help me to solve this issue?
>
> Thanks,
>
> Fabio=20
>
>
>
------=_Part_189_1906792695.1628716159418
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div>Hi Fabio,</div><div><br></div><div>It seems that the script uses pytho=
n2, so you need to install "python-ply" package.<br></div><br><div class=3D=
"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">=D1=81=D1=80=D0=B5=D0=
=B4=D0=B0, 7 =D0=B0=D0=BF=D1=80=D0=B5=D0=BB=D1=8F 2021 =D0=B3. =D0=B2 10:10=
:40 UTC+3, fmdefr...@gmail.com: <br/></div><blockquote class=3D"gmail_quote=
" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); =
padding-left: 1ex;">When I run <a href=3D"http://checkpatch.pl" target=3D"_=
blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Dru&amp;q=3Dhttp://checkpatch.pl&amp;source=3Dgmail&amp;ust=3D162880248=
8614000&amp;usg=3DAFQjCNHzhsi3DhfkgtZi3GEdEsAS0hRQww">checkpatch.pl</a> I g=
et the following message that clutters the output with a lot of traceback l=
ines. Obviously, it makes its output a bit harder to read and it annoys me,=
 however it seems that the script does its work and spots the violations of=
 the coding rules.
<br>
<br>lines ...-... Traceback (most recent call last):
<br>  File &quot;scripts/spdxcheck.py&quot;, line 6, in &lt;module&gt;
<br>    from ply import lex, yacc
<br>ImportError: No module named ply
<br>
<br>What I understand is that a Python script, that is called spdxcheck.py =
and that is called by <a href=3D"http://checkpatch.pl" target=3D"_blank" re=
l=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Dru&a=
mp;q=3Dhttp://checkpatch.pl&amp;source=3Dgmail&amp;ust=3D1628802488614000&a=
mp;usg=3DAFQjCNHzhsi3DhfkgtZi3GEdEsAS0hRQww">checkpatch.pl</a> (Perl callin=
g Python, lovely... :)), can&#39;t find a module called &quot;ply&quot;.=20
<br>
<br>My laptop runs openSuSE Tumbleweed. It has two directories named &quot;=
ply&quot;, one in /usr/lib/python3.8/site-packages/pycparser/ and the other=
 in /usr/lib/python3.8/site-packages/. &quot;zipper&quot; (the openSuSE pac=
kage manager) says that I have two packages already installed: python38-ply=
 and python-ply-doc (Python Lex and Yacc), therefore I suppose I have the m=
odules that checkpatch-&gt;spdxcheck is looking for but it cannot find them=
 (missing environment variable?).
<br>
<br>Can someone, please, help me to solve this issue?
<br>
<br>Thanks,
<br>
<br>Fabio=20
<br>
<br>
<br></blockquote></div>
------=_Part_189_1906792695.1628716159418--

------=_Part_188_873932826.1628716159418--

