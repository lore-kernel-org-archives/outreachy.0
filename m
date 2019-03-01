X-GM-THRID: 6663088716189270016
Date: Thu, 28 Feb 2019 19:18:36 -0800 (PST)
From: etsai042@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <7cbedee6-4634-4634-830e-0084b6e921f7@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1902282110390.3134@hadrien>
References: <20190228162703.14828-1-etsai042@gmail.com>
 <alpine.DEB.2.21.1902282110390.3134@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fpgaboot: Delete newline at
 end of file
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_89_627094834.1551410316300"
X-Google-Token: EIzJ4uMFt26qciYFqxI0
X-Google-IP: 128.199.125.193

------=_Part_89_627094834.1551410316300
Content-Type: multipart/alternative; 
	boundary="----=_Part_90_1966889601.1551410316301"

------=_Part_90_1966889601.1551410316301
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi, Julia! There is a checkpatch.pl warning=20
of drivers/staging/gs_fpgaboot/Kconfig because, as it is written in=20
Documentation/kbuild/kconfig-language.txt (line178):
------------
Every line starts with a key word and can be followed by multiple
- help text: "help" or "---help---"
  This defines a help text. The end of the help text is determined by
  the indentation level, this means it ends at the first line which has
  a smaller indentation than the first line of the help text.
  "---help---" and "help" do not differ in behaviour, "---help---" is
  used to help visually separate configuration logic from help within
  the file as an aid to developers.
------------
The newline at the end of Kconfig file is the reason of this warning,=20
deleting it is the change I made. I did not made major change to its=20
context, just fixed its code style.

=E5=9C=A8 2019=E5=B9=B43=E6=9C=881=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=94 UTC+=
8=E4=B8=8A=E5=8D=884:12:20=EF=BC=8CJulia Lawall=E5=86=99=E9=81=93=EF=BC=9A
>
>
>
> On Fri, 1 Mar 2019, Elisa Tsai wrote:=20
>
> > From: E-Tsai <etsa...@gmail.com <javascript:>>=20
> >=20
> > This patch fixes the checkpatch.pl warning:=20
> > WARNING: please write a paragraph that describes the config symbol full=
y=20
> >=20
> > Signed-off-by: E-Tsai <etsa...@gmail.com <javascript:>>=20
>
> If your real name is Elisa Tsai, you should put that.=20
>
> > ---=20
> >  drivers/staging/gs_fpgaboot/Kconfig | 2 +-=20
> >  1 file changed, 1 insertion(+), 1 deletion(-)=20
> >=20
> > diff --git a/drivers/staging/gs_fpgaboot/Kconfig=20
> b/drivers/staging/gs_fpgaboot/Kconfig=20
> > index 550645291fab..f1179eef2d78 100644=20
> > --- a/drivers/staging/gs_fpgaboot/Kconfig=20
> > +++ b/drivers/staging/gs_fpgaboot/Kconfig=20
> > @@ -5,4 +5,4 @@ config GS_FPGABOOT=20
> >          tristate "Xilinx FPGA firmware download module"=20
> >          default n=20
> >          help=20
> > -          Xilinx FPGA firmware download module=20
> > +          Xilinx FPGA firmware download module=20
>
> I don't see the change here.=20
>
> This is probably not the best first patch to send, because without=20
> expertise in the device, you won't know what paragraph to write.=20
>
> julia=20
>
> > \ No newline at end of file=20
> > --=20
> > 2.17.1=20
> >=20
> > --=20
> > You received this message because you are subscribed to the Google=20
> Groups "outreachy-kernel" group.=20
> > To unsubscribe from this group and stop receiving emails from it, send=
=20
> an email to outreachy-kern...@googlegroups.com <javascript:>.=20
> > To post to this group, send email to outreach...@googlegroups.com=20
> <javascript:>.=20
> > To view this discussion on the web visit=20
> https://groups.google.com/d/msgid/outreachy-kernel/20190228162703.14828-1=
-etsai042%40gmail.com.=20
>
> > For more options, visit https://groups.google.com/d/optout.=20
> >=20
>

------=_Part_90_1966889601.1551410316301
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, Julia! There is a checkpatch.pl warning of=C2=A0driver=
s/staging/gs_fpgaboot/Kconfig because, as it is written in Documentation/kb=
uild/kconfig-language.txt (line178):<div><div><div>------------<br></div><d=
iv>Every line starts with a key word and can be followed by multiple</div><=
div><div>- help text: &quot;help&quot; or &quot;---help---&quot;</div><div>=
=C2=A0 This defines a help text. The end of the help text is determined by<=
/div><div>=C2=A0 the indentation level, this means it ends at the first lin=
e which has</div><div>=C2=A0 a smaller indentation than the first line of t=
he help text.</div><div>=C2=A0 &quot;---help---&quot; and &quot;help&quot; =
do not differ in behaviour, &quot;---help---&quot; is</div><div>=C2=A0 used=
 to help visually separate configuration logic from help within</div><div>=
=C2=A0 the file as an aid to developers.</div></div></div><div>------------=
</div><div>The newline at the end of Kconfig file is the reason of this war=
ning, deleting it is the change I made. I did not made major change to its =
context, just fixed its code style.</div></div><br>=E5=9C=A8 2019=E5=B9=B43=
=E6=9C=881=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=94 UTC+8=E4=B8=8A=E5=8D=884:12:=
20=EF=BC=8CJulia Lawall=E5=86=99=E9=81=93=EF=BC=9A<blockquote class=3D"gmai=
l_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;=
padding-left: 1ex;">
<br>
<br>On Fri, 1 Mar 2019, Elisa Tsai wrote:
<br>
<br>&gt; From: E-Tsai &lt;<a href=3D"javascript:" target=3D"_blank" gdf-obf=
uscated-mailto=3D"si9Ass51CAAJ" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascri=
pt:&#39;;return true;">etsa...@gmail.com</a>&gt;
<br>&gt;
<br>&gt; This patch fixes the <a href=3D"http://checkpatch.pl" target=3D"_b=
lank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.co=
m/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQ=
jCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&=
#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x2=
6sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">=
checkpatch.pl</a> warning:
<br>&gt; WARNING: please write a paragraph that describes the config symbol=
 fully
<br>&gt;
<br>&gt; Signed-off-by: E-Tsai &lt;<a href=3D"javascript:" target=3D"_blank=
" gdf-obfuscated-mailto=3D"si9Ass51CAAJ" rel=3D"nofollow" onmousedown=3D"th=
is.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;j=
avascript:&#39;;return true;">etsa...@gmail.com</a>&gt;
<br>
<br>If your real name is Elisa Tsai, you should put that.
<br>
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/gs_fpgaboot/<wbr>Kconfig | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/gs_fpgaboot/<wbr>Kconfig b/drivers/st=
aging/gs_fpgaboot/<wbr>Kconfig
<br>&gt; index 550645291fab..f1179eef2d78 100644
<br>&gt; --- a/drivers/staging/gs_fpgaboot/<wbr>Kconfig
<br>&gt; +++ b/drivers/staging/gs_fpgaboot/<wbr>Kconfig
<br>&gt; @@ -5,4 +5,4 @@ config GS_FPGABOOT
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0tristate &qu=
ot;Xilinx FPGA firmware download module&quot;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0default n
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0help
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0Xilinx FPG=
A firmware download module
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0Xilinx FPG=
A firmware download module
<br>
<br>I don&#39;t see the change here.
<br>
<br>This is probably not the best first patch to send, because without
<br>expertise in the device, you won&#39;t know what paragraph to write.
<br>
<br>julia
<br>
<br>&gt; \ No newline at end of file
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"si9Ass51CAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"si9Ass51CAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190228162703.14828-1-etsai042%40gmai=
l.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;h=
ttps://groups.google.com/d/msgid/outreachy-kernel/20190228162703.14828-1-et=
sai042%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;https://g=
roups.google.com/d/msgid/outreachy-kernel/20190228162703.14828-1-etsai042%4=
0gmail.com&#39;;return true;">https://groups.google.com/d/<wbr>msgid/outrea=
chy-kernel/<wbr>20190228162703.14828-1-<wbr>etsai042%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_90_1966889601.1551410316301--

------=_Part_89_627094834.1551410316300--

