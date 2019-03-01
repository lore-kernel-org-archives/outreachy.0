X-GM-THRID: 6663088716189270016
Date: Fri, 1 Mar 2019 00:30:29 -0800 (PST)
From: etsai042@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <96c560f5-52b3-4190-89cd-da3dedcff8d1@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1903010917500.4065@hadrien>
References: <20190228162703.14828-1-etsai042@gmail.com> <alpine.DEB.2.21.1902282110390.3134@hadrien> <7cbedee6-4634-4634-830e-0084b6e921f7@googlegroups.com>
 <alpine.DEB.2.20.1903010917500.4065@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fpgaboot: Delete newline at
 end of file
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_159_848844800.1551429029832"
X-Google-Token: EKXb4-MF5cybjaaL3yo0
X-Google-IP: 128.199.125.193

------=_Part_159_848844800.1551429029832
Content-Type: multipart/alternative; 
	boundary="----=_Part_160_1410123826.1551429029832"

------=_Part_160_1410123826.1551429029832
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks Julia! I'll be more careful with it :D

=E5=9C=A8 2019=E5=B9=B43=E6=9C=881=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=94 UTC+=
8=E4=B8=8B=E5=8D=884:20:28=EF=BC=8CJulia Lawall=E5=86=99=E9=81=93=EF=BC=9A
>
>
>
> On Thu, 28 Feb 2019, etsa...@gmail.com <javascript:> wrote:=20
>
> > Hi, Julia! There is a checkpatch.pl warning=20
> > of drivers/staging/gs_fpgaboot/Kconfig because, as it is written in=20
> > Documentation/kbuild/kconfig-language.txt (line178):------------=20
> > Every line starts with a key word and can be followed by multiple=20
> > - help text: "help" or "---help---"=20
> >   This defines a help text. The end of the help text is determined by=
=20
> >   the indentation level, this means it ends at the first line which has=
=20
> >   a smaller indentation than the first line of the help text.=20
> >   "---help---" and "help" do not differ in behaviour, "---help---" is=
=20
> >   used to help visually separate configuration logic from help within=
=20
> >   the file as an aid to developers.=20
> > ------------=20
> > The newline at the end of Kconfig file is the reason of this warning,=
=20
> > deleting it is the change I made. I did not made major change to its=20
> > context, just fixed its code style.=20
>
> OK, this is a good example, of why a log message of "Fix checkpatch=20
> warning X" is not very helpful.  There is no way to guess the relationshi=
p=20
> between the warning message and the change.  The log message should say=
=20
> what you do and why.  So here is would be=20
>
> "Add a missing newline at the end of a Kconfig file, to silence the=20
> checkpatch warning ..."=20
>
> julia=20
>
> >=20
> > =E5=9C=A8 2019=E5=B9=B43=E6=9C=881=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=94 =
UTC+8=E4=B8=8A=E5=8D=884:12:20=EF=BC=8CJulia Lawall=E5=86=99=E9=81=93=EF=BC=
=9A=20
> >=20
> >=20
> >       On Fri, 1 Mar 2019, Elisa Tsai wrote:=20
> >=20
> >       > From: E-Tsai <etsa...@gmail.com>=20
> >       >=20
> >       > This patch fixes the checkpatch.pl warning:=20
> >       > WARNING: please write a paragraph that describes the config=20
> >       symbol fully=20
> >       >=20
> >       > Signed-off-by: E-Tsai <etsa...@gmail.com>=20
> >=20
> >       If your real name is Elisa Tsai, you should put that.=20
> >=20
> >       > ---=20
> >       >  drivers/staging/gs_fpgaboot/Kconfig | 2 +-=20
> >       >  1 file changed, 1 insertion(+), 1 deletion(-)=20
> >       >=20
> >       > diff --git a/drivers/staging/gs_fpgaboot/Kconfig=20
> >       b/drivers/staging/gs_fpgaboot/Kconfig=20
> >       > index 550645291fab..f1179eef2d78 100644=20
> >       > --- a/drivers/staging/gs_fpgaboot/Kconfig=20
> >       > +++ b/drivers/staging/gs_fpgaboot/Kconfig=20
> >       > @@ -5,4 +5,4 @@ config GS_FPGABOOT=20
> >       >          tristate "Xilinx FPGA firmware download module"=20
> >       >          default n=20
> >       >          help=20
> >       > -          Xilinx FPGA firmware download module=20
> >       > +          Xilinx FPGA firmware download module=20
> >=20
> >       I don't see the change here.=20
> >=20
> >       This is probably not the best first patch to send, because=20
> >       without=20
> >       expertise in the device, you won't know what paragraph to write.=
=20
> >=20
> >       julia=20
> >=20
> >       > \ No newline at end of file=20
> >       > --=20
> >       > 2.17.1=20
> >       >=20
> >       > --=20
> >       > You received this message because you are subscribed to the=20
> >       Google Groups "outreachy-kernel" group.=20
> >       > To unsubscribe from this group and stop receiving emails from=
=20
> >       it, send an email to outreachy-kern...@googlegroups.com.=20
> >       > To post to this group, send email to=20
> >       outreach...@googlegroups.com.=20
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/20190228162703.14828-1-e=20
> >       tsai042%40gmail.com.=20
> >       > For more options, visit https://groups.google.com/d/optout.=20
> >       >=20
> >=20
> > --=20
> > You received this message because you are subscribed to the Google=20
> Groups=20
> > "outreachy-kernel" group.=20
> > To unsubscribe from this group and stop receiving emails from it, send=
=20
> an=20
> > email to outreachy-kern...@googlegroups.com <javascript:>.=20
> > To post to this group, send email to outreach...@googlegroups.com=20
> <javascript:>.=20
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/7cbedee6-4634-4634-830e-=20
> > 0084b6e921f7%40googlegroups.com.=20
> > For more options, visit https://groups.google.com/d/optout.=20
> >=20
> >


------=_Part_160_1410123826.1551429029832
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Julia! I&#39;ll be more careful with it :D<br><br>=
=E5=9C=A8 2019=E5=B9=B43=E6=9C=881=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=94 UTC+=
8=E4=B8=8B=E5=8D=884:20:28=EF=BC=8CJulia Lawall=E5=86=99=E9=81=93=EF=BC=9A<=
blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bord=
er-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Thu, 28 Feb 2019, <a href=3D"javascript:" target=3D"_blank" gdf-obfu=
scated-mailto=3D"QsY5tIqdCAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D=
&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:=
&#39;;return true;">etsa...@gmail.com</a> wrote:
<br>
<br>&gt; Hi, Julia! There is a <a href=3D"http://checkpatch.pl" target=3D"_=
blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.c=
om/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAF=
QjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D=
&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x=
26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;"=
>checkpatch.pl</a> warning
<br>&gt; of=C2=A0drivers/staging/gs_<wbr>fpgaboot/Kconfig because, as it is=
 written in
<br>&gt; Documentation/kbuild/kconfig-<wbr>language.txt (line178):---------=
---
<br>&gt; Every line starts with a key word and can be followed by multiple
<br>&gt; - help text: &quot;help&quot; or &quot;---help---&quot;
<br>&gt; =C2=A0 This defines a help text. The end of the help text is deter=
mined by
<br>&gt; =C2=A0 the indentation level, this means it ends at the first line=
 which has
<br>&gt; =C2=A0 a smaller indentation than the first line of the help text.
<br>&gt; =C2=A0 &quot;---help---&quot; and &quot;help&quot; do not differ i=
n behaviour, &quot;---help---&quot; is
<br>&gt; =C2=A0 used to help visually separate configuration logic from hel=
p within
<br>&gt; =C2=A0 the file as an aid to developers.
<br>&gt; ------------
<br>&gt; The newline at the end of Kconfig file is the reason of this warni=
ng,
<br>&gt; deleting it is the change I made. I did not made major change to i=
ts
<br>&gt; context, just fixed its code style.
<br>
<br>OK, this is a good example, of why a log message of &quot;Fix checkpatc=
h
<br>warning X&quot; is not very helpful. =C2=A0There is no way to guess the=
 relationship
<br>between the warning message and the change. =C2=A0The log message shoul=
d say
<br>what you do and why. =C2=A0So here is would be
<br>
<br>&quot;Add a missing newline at the end of a Kconfig file, to silence th=
e
<br>checkpatch warning ...&quot;
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; =E5=9C=A8 2019=E5=B9=B43=E6=9C=881=E6=97=A5=E6=98=9F=E6=9C=9F=E4=
=BA=94 UTC+8=E4=B8=8A=E5=8D=884:12:20=EF=BC=8CJulia Lawall=E5=86=99=E9=81=
=93=EF=BC=9A
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 On Fri, 1 Mar 2019, Elisa Tsai wrote:
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; From: E-Tsai &lt;<a>etsa...@gmail.com</a=
>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; This patch fixes the <a href=3D"http://c=
heckpatch.pl" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3d=
D\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return tru=
e;" onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2=
Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974=
NI3_mFug&#39;;return true;">checkpatch.pl</a> warning:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; WARNING: please write a paragraph that d=
escribes the config
<br>&gt; =C2=A0 =C2=A0 =C2=A0 symbol fully
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: E-Tsai &lt;<a>etsa...@gma=
il.com</a>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 If your real name is Elisa Tsai, you should p=
ut that.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; ---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/gs_fpgaboot/<wbr>K=
config | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A01 file changed, 1 insertion(+), 1 =
deletion(-)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/gs_fpgaboot=
/<wbr>Kconfig
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/gs_fpgaboot/<wbr>Kconfig
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 550645291fab..f1179eef2d78 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/gs_fpgaboot/<wbr>K=
config
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/gs_fpgaboot/<wbr>K=
config
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -5,4 +5,4 @@ config GS_FPGABOOT
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0tristate &quot;Xilinx FPGA firmware download module&quot;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0default n
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0help
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0Xilinx FPGA firmware download module
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0Xilinx FPGA firmware download module
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 I don&#39;t see the change here.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 This is probably not the best first patch to =
send, because
<br>&gt; =C2=A0 =C2=A0 =C2=A0 without
<br>&gt; =C2=A0 =C2=A0 =C2=A0 expertise in the device, you won&#39;t know w=
hat paragraph to write.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 julia
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; \ No newline at end of file
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; 2.17.1
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; You received this message because you ar=
e subscribed to the
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Google Groups &quot;outreachy-kernel&quot; gr=
oup.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To unsubscribe from this group and stop =
receiving emails from
<br>&gt; =C2=A0 =C2=A0 =C2=A0 it, send an email to <a>outreachy-kern...@<wb=
r>googlegroups.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To post to this group, send email to
<br>&gt; =C2=A0 =C2=A0 =C2=A0 <a>outreach...@googlegroups.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To view this discussion on the web visit=
https://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/201902=
28162703.14828-1-e" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.=
href=3D&#39;http://groups.google.com/d/msgid/outreachy-kernel/2019022816270=
3.14828-1-e&#39;;return true;" onclick=3D"this.href=3D&#39;http://groups.go=
ogle.com/d/msgid/outreachy-kernel/20190228162703.14828-1-e&#39;;return true=
;">groups.google.<wbr>com/d/msgid/outreachy-kernel/<wbr>20190228162703.1482=
8-1-e</a>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 tsai042%<a href=3D"http://40gmail.com" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.goo=
gle.com/url?q\x3dhttp%3A%2F%2F40gmail.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3=
dAFQjCNF6SYGO6IiAPhbk3gMhjWdyIU0BdA&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40gmail.com\x26sa\x3dD\=
x26sntz\x3d1\x26usg\x3dAFQjCNF6SYGO6IiAPhbk3gMhjWdyIU0BdA&#39;;return true;=
">40gmail.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; For more options, visit <a href=3D"https=
://groups.google.com/d/optout" target=3D"_blank" rel=3D"nofollow" onmousedo=
wn=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;return true;=
" onclick=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;retur=
n true;">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"QsY5tIqdCAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;r=
eturn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"QsY5tIqdCAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/7cbedee6-4634-4634-830e-" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://groups.=
google.com/d/msgid/outreachy-kernel/7cbedee6-4634-4634-830e-&#39;;return tr=
ue;" onclick=3D"this.href=3D&#39;http://groups.google.com/d/msgid/outreachy=
-kernel/7cbedee6-4634-4634-830e-&#39;;return true;">groups.google.<wbr>com/=
d/msgid/outreachy-kernel/<wbr>7cbedee6-4634-4634-830e-</a>
<br>&gt; 0084b6e921f7%<a href=3D"http://40googlegroups.com" target=3D"_blan=
k" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/u=
rl?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26s=
a\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;retur=
n true;">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br>&gt;</blockquote></div>
------=_Part_160_1410123826.1551429029832--

------=_Part_159_848844800.1551429029832--

