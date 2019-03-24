X-GM-THRID: 6670745270189293568
Date: Sun, 24 Mar 2019 10:24:26 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <89c7faed-8237-4f06-962b-e84fe11eaa80@googlegroups.com>
In-Reply-To: <be5e32cb-952e-44e1-a2f1-ead9066b6a45@googlegroups.com>
References: <20190323112807.9804-1-sanjana99reddy99@gmail.com> <20190324085923.GA32103@kroah.com>
 <alpine.DEB.2.21.1903241004560.2526@hadrien>
 <be5e32cb-952e-44e1-a2f1-ead9066b6a45@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: greybus:
 svc_watchdog: Modify char* array declaration.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1277_1287022295.1553448266976"
X-Google-Token: EMr63uQFXbQBXfW_YS00
X-Google-IP: 219.91.183.91

------=_Part_1277_1287022295.1553448266976
Content-Type: multipart/alternative; 
	boundary="----=_Part_1278_1350882347.1553448266976"

------=_Part_1278_1350882347.1553448266976
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On Sunday, March 24, 2019 at 2:52:51 PM UTC+5:30, sanjana9...@gmail.com=20
wrote:
>
>
>
> On Sunday, March 24, 2019 at 2:35:46 PM UTC+5:30, Julia Lawall wrote:
>>
>>
>>
>> On Sun, 24 Mar 2019, Greg KH wrote:=20
>>
>> > On Sat, Mar 23, 2019 at 04:58:07PM +0530, Sanjana Sanikommu wrote:=20
>> > > Modify "static char* array" to "static char* const array".=20
>> > > Issue found using checkpatch.pl=20
>> > >=20
>> > > WARNING:char* array declaration might be better as static constant=
=20
>> > >=20
>> > > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com>=20
>> > > ---=20
>> > > Changes in v2:=20
>> > > Test build the patch=20
>> >=20
>> > No you did not :(=20
>> >=20
>> > It blows up the build into tiny pieces.  Please properly test build=20
>> your=20
>> > patches before sending them in.=20
>>
>> Sarjana,=20
>>
>> Try make allyesconfig to make it more likely to have a configuration tha=
t=20
>> will actually cause compiling the driver.=20
>>
>   =20
>    I would do that :)
>    thank you
>

       Sorry, I was dumb I now understand why it went wrong=20
       because the expected is =E2=80=98char **=E2=80=99 but argument is of=
 type =E2=80=98const=20
char **=E2=80=99.
       So it cant be changed.
=20

>    Sanjana=20
>
>>
>> julia=20
>>
>> >=20
>> > greg k-h=20
>> >=20
>> > --=20
>> > You received this message because you are subscribed to the Google=20
>> Groups "outreachy-kernel" group.=20
>> > To unsubscribe from this group and stop receiving emails from it, send=
=20
>> an email to outreachy-kern...@googlegroups.com.=20
>> > To post to this group, send email to outreach...@googlegroups.com.=20
>> > To view this discussion on the web visit=20
>> https://groups.google.com/d/msgid/outreachy-kernel/20190324085923.GA3210=
3%40kroah.com.=20
>>
>> > For more options, visit https://groups.google.com/d/optout.=20
>> >=20
>>
>
------=_Part_1278_1350882347.1553448266976
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, March 24, 2019 at 2:52:51 PM UTC+5:30, =
sanjana9...@gmail.com wrote:<blockquote class=3D"gmail_quote" style=3D"marg=
in: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><d=
iv dir=3D"ltr"><br><br>On Sunday, March 24, 2019 at 2:35:46 PM UTC+5:30, Ju=
lia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0;margin=
-left:0.8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
<br>On Sun, 24 Mar 2019, Greg KH wrote:
<br>
<br>&gt; On Sat, Mar 23, 2019 at 04:58:07PM +0530, Sanjana Sanikommu wrote:
<br>&gt; &gt; Modify &quot;static char* array&quot; to &quot;static char* c=
onst array&quot;.
<br>&gt; &gt; Issue found using <a href=3D"http://checkpatch.pl" rel=3D"nof=
ollow" target=3D"_blank" onmousedown=3D"this.href=3D&#39;http://www.google.=
com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3d=
D\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return tru=
e;">checkpatch.pl</a>
<br>&gt; &gt;
<br>&gt; &gt; WARNING:char* array declaration might be better as static con=
stant
<br>&gt; &gt;
<br>&gt; &gt; Signed-off-by: Sanjana Sanikommu &lt;<a rel=3D"nofollow">sanj=
ana9...@gmail.com</a>&gt;
<br>&gt; &gt; ---
<br>&gt; &gt; Changes in v2:
<br>&gt; &gt; Test build the patch
<br>&gt;
<br>&gt; No you did not :(
<br>&gt;
<br>&gt; It blows up the build into tiny pieces. =C2=A0Please properly test=
 build your
<br>&gt; patches before sending them in.
<br>
<br>Sarjana,
<br>
<br>Try make allyesconfig to make it more likely to have a configuration th=
at
<br>will actually cause compiling the driver.
<br></blockquote><div>=C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0I would do that =
:)</div><div>=C2=A0 =C2=A0thank you</div></div></blockquote><div><br></div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0Sorry, I was dumb I now understand why it w=
ent wrong=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0because the expected i=
s =E2=80=98char **=E2=80=99 but argument is of type =E2=80=98const char **=
=E2=80=99.</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0So it cant be changed.</div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0;marg=
in-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"=
ltr"><div>=C2=A0 =C2=A0Sanjana=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">
<br>julia
<br>
<br>&gt;
<br>&gt; greg k-h
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a rel=3D"nofollow">outreachy-kern...@<wbr>googlegroups.co=
m</a>.
<br>&gt; To post to this group, send email to <a rel=3D"nofollow">outreach.=
..@googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190324085923.GA32103%40kroah.com" re=
l=3D"nofollow" target=3D"_blank" onmousedown=3D"this.href=3D&#39;https://gr=
oups.google.com/d/msgid/outreachy-kernel/20190324085923.GA32103%40kroah.com=
&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d=
/msgid/outreachy-kernel/20190324085923.GA32103%40kroah.com&#39;;return true=
;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190324085=
923.GA32103%<wbr>40kroah.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" rel=3D"nofollow" target=3D"_blank" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div></blockquote></div>
------=_Part_1278_1350882347.1553448266976--

------=_Part_1277_1287022295.1553448266976--

