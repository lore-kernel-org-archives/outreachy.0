X-GM-THRID: 6330109506616295424
Date: Wed, 14 Sep 2016 02:08:25 -0700 (PDT)
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: bankarsandhya512@gmail.com
Message-Id: <0475959f-954a-445b-a442-64a01d6348c0@googlegroups.com>
In-Reply-To: <CAK-LDb+M9yazGyEvCMKMztGNnJ8dWQax4iXONn=p7pRmE1w=kA@mail.gmail.com>
References: <20160914085822.GA2558@sandhya>
 <CAK-LDb+M9yazGyEvCMKMztGNnJ8dWQax4iXONn=p7pRmE1w=kA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Use x instead of x
 != NULL.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_410_291607509.1473844105382"
X-Google-Token: EImn5L4FYzcYW5HScIc0
X-Google-IP: 182.77.94.114

------=_Part_410_291607509.1473844105382
Content-Type: multipart/alternative; 
	boundary="----=_Part_411_1906160804.1473844105383"

------=_Part_411_1906160804.1473844105383
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



Thank you for quick reply . Shall I send it with v2 with adding commit log 
information?




On Wednesday, September 14, 2016 at 2:34:07 PM UTC+5:30, Vaishali Thakkar 
wrote:
>
> Hi, 
>
> On Wed, Sep 14, 2016 at 2:28 PM, Sandhya Bankar 
> <bankarsa...@gmail.com <javascript:>> wrote: 
> > Use x instead of x != NULL. 
>
> Commit log should contain the information about why doing this change is 
> good 
> instead of what you are doing. Also, if you have used any tool for 
> detecting or 
> solving the issue then probably writing something like 'Issue found using 
> x' 
> would be useful. :) 
>
> Thanks 
>
> > Signed-off-by: Sandhya Bankar <bankarsa...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/speakup/fakekey.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/speakup/fakekey.c 
> b/drivers/staging/speakup/fakekey.c 
> > index 8f058b4..032b936 100644 
> > --- a/drivers/staging/speakup/fakekey.c 
> > +++ b/drivers/staging/speakup/fakekey.c 
> > @@ -56,7 +56,7 @@ int speakup_add_virtual_keyboard(void) 
> > 
> >  void speakup_remove_virtual_keyboard(void) 
> >  { 
> > -       if (virt_keyboard != NULL) { 
> > +       if (virt_keyboard) { 
> >                 input_unregister_device(virt_keyboard); 
> >                 virt_keyboard = NULL; 
> >         } 
> > -- 
> > 1.8.2.3 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20160914085822.GA2558%40sandhya. 
>
> > For more options, visit https://groups.google.com/d/optout. 
>
>
>
> -- 
> Vaishali 
> http://vaishalithakkar.in/ 
>

------=_Part_411_1906160804.1473844105383
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>Thank you for quick reply . Shall I send it with v=
2 with adding commit log information?<br><br><br><br><br>On Wednesday, Sept=
ember 14, 2016 at 2:34:07 PM UTC+5:30, Vaishali Thakkar wrote:<blockquote c=
lass=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px=
 #ccc solid;padding-left: 1ex;">Hi,
<br>
<br>On Wed, Sep 14, 2016 at 2:28 PM, Sandhya Bankar
<br>&lt;<a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"=
af9wfv-NBwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&=
#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;return true=
;">bankarsa...@gmail.com</a>&gt; wrote:
<br>&gt; Use x instead of x !=3D NULL.
<br>
<br>Commit log should contain the information about why doing this change i=
s good
<br>instead of what you are doing. Also, if you have used any tool for dete=
cting or
<br>solving the issue then probably writing something like &#39;Issue found=
 using x&#39;
<br>would be useful. :)
<br>
<br>Thanks
<br>
<br>&gt; Signed-off-by: Sandhya Bankar &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"af9wfv-NBwAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">bankarsa...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/speakup/<wbr>fakekey.c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/speakup/<wbr>fakekey.c b/drivers/stag=
ing/speakup/<wbr>fakekey.c
<br>&gt; index 8f058b4..032b936 100644
<br>&gt; --- a/drivers/staging/speakup/<wbr>fakekey.c
<br>&gt; +++ b/drivers/staging/speakup/<wbr>fakekey.c
<br>&gt; @@ -56,7 +56,7 @@ int speakup_add_virtual_keyboard(<wbr>void)
<br>&gt;
<br>&gt; =C2=A0void speakup_remove_virtual_<wbr>keyboard(void)
<br>&gt; =C2=A0{
<br>&gt; - =C2=A0 =C2=A0 =C2=A0 if (virt_keyboard !=3D NULL) {
<br>&gt; + =C2=A0 =C2=A0 =C2=A0 if (virt_keyboard) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 input_unre=
gister_device(virt_<wbr>keyboard);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 virt_keybo=
ard =3D NULL;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt; --
<br>&gt; 1.8.2.3
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"af9wfv-NBwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"af9wfv-NBwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20160914085822.GA2558%40sandhya" targe=
t=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://group=
s.google.com/d/msgid/outreachy-kernel/20160914085822.GA2558%40sandhya&#39;;=
return true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d/msgid=
/outreachy-kernel/20160914085822.GA2558%40sandhya&#39;;return true;">https:=
//groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20160914085822.GA255=
8%<wbr>40sandhya</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>
<br>
<br>
<br>--=20
<br>Vaishali
<br><a href=3D"http://vaishalithakkar.in/" target=3D"_blank" rel=3D"nofollo=
w" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2=
F%2Fvaishalithakkar.in%2F\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFTQCErjwj=
agpBB3EQj7EkZcNBoOw&#39;;return true;" onclick=3D"this.href=3D&#39;http://w=
ww.google.com/url?q\x3dhttp%3A%2F%2Fvaishalithakkar.in%2F\x26sa\x3dD\x26snt=
z\x3d1\x26usg\x3dAFQjCNFTQCErjwjagpBB3EQj7EkZcNBoOw&#39;;return true;">http=
://vaishalithakkar.in/</a>
<br></blockquote></div>
------=_Part_411_1906160804.1473844105383--

------=_Part_410_291607509.1473844105382--

