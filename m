X-GM-THRID: 6335442483781042176
X-Received: by 10.66.165.97 with SMTP id yx1mr4562449pab.39.1475425262480;
        Sun, 02 Oct 2016 09:21:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.162 with SMTP id 34ls290261iol.13.gmail; Sun, 02 Oct
 2016 09:21:02 -0700 (PDT)
X-Received: by 10.107.145.134 with SMTP id t128mr5239508iod.14.1475425262013;
        Sun, 02 Oct 2016 09:21:02 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id u139si2016016ywe.5.2016.10.02.09.21.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 09:21:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id m184so9225196qkb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 09:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=hVnMbGTRagQkRfS5+3P3GkH8cc8qo/pWSE+59puW1Qo=;
        b=pUcToxWXfSbXm9jf2P+XpAhtO60gtAvs1edal2ypqqmWM8Xyx9pdhb78K4YAeoGZJy
         Xv6TGJ0qefxIH1YhiHbIhVCZiAgHuBPzY4/72w2hFHyGAhG3R/ypF/OYvnXpNQnFyO+r
         yTfTtAgrrqigkNR+s1IMXHzcTjQ8m4JnsrAkbu2IMtXuUSpKXPVa91psiBZPv7S8vlyh
         94AHOIC+woKOPBy65xEBO4d0HPOKMfNA2DjfG7b8FSnTSSTOG+xA/wEkay+eZkEPsTT1
         vfx0MbWykvg5K++YvKLYF7Cqlsz3da2mnYTD2pgbaVxooUeewQbTruJlcz2Foqc5V4U4
         sWTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=hVnMbGTRagQkRfS5+3P3GkH8cc8qo/pWSE+59puW1Qo=;
        b=Zk8NTnLbXX13nnZ/OsQj36eEfMlZML5p1abLkTqb3eJSo5r70v6sd6HZbrY08ZT2fs
         mfS6BmOcQFu/L4yPfYhJr23CsKEPJNW7I1JNZ1najIThg11LvDnIaiarbLOVNuXFDI6V
         p2tqOOIc+kcxWeOz19hFnNeHfvK+HN36lb/CyTbaizuQJ5pkGwF10ri2Q/BtAebzE+LN
         QaWWCKyrAAmqktrxRG20qUDBoei++Rg10yNOUQmiQU/1YXIxfsfWdkhFN0uqiH8UVrkB
         1yVJq4u8iFY9k822Ka87Mmg0HkbT7PnALakBYla0HlSEouqNj2tohjJekDZBqG9cM3KK
         mT0w==
X-Gm-Message-State: AA6/9RmBR3fl7mi9n/Jp6mVKtCdVhLEr5k2JNrZtGaPpEEqXW2Req3tAQoHuUEMf58BWPbpcHUWIGUYj0a7+JA==
X-Received: by 10.55.197.157 with SMTP id k29mr17763021qkl.217.1475425261810;
 Sun, 02 Oct 2016 09:21:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.171.92 with HTTP; Sun, 2 Oct 2016 09:21:01 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1610021751050.3327@hadrien>
References: <20161002153424.GA4211@life-desktop> <20161002154039.GB21118@kroah.com>
 <CAAbeOSuPu599ySH5Mm+VB3xx-j0UX25+Ztb2qVbqh8qnErFCKg@mail.gmail.com> <alpine.DEB.2.10.1610021751050.3327@hadrien>
From: Anchal Jain <anchalj109@gmail.com>
Date: Sun, 2 Oct 2016 21:51:01 +0530
Message-ID: <CAAbeOSv3x=ef+CxeGk11hiTMaeiRdzqrEPgiyMfpxg0St2H-qw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4 ] staging: iio: cdc: ad7150: add
 comment to mutex
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, Jonathan Cameron <jic23@kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1149932a9f7c52053de43638

--001a1149932a9f7c52053de43638
Content-Type: text/plain; charset=UTF-8

>If you want to submit such patches, you need to look carefully at how the
>lock is used in the code.  In this case, the code between the lock and the
>unlock is rather complex.  In general, it is rather difficult to
>understand why a lock is needed in a certain place, which is why the
>comment is suggested in the first place.  But it is more targeting the
>person who originally wrote the driver than somone who is doing code
>cleanups.  Then you need also to look at other drivers that already have
>such a comment to see what kind of information should be provided.
>
>julia

thank you :-)

On Sun, Oct 2, 2016 at 9:23 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 2 Oct 2016, Anchal Jain wrote:
>
> > >I think I need to just not take any of these types of patches, as it's
> > >not exactly a good thing for someone who does not understand the driver
> > >to be able to fix up.
> > >
> > >Just ignore these warnings for now please
> >
> > I am justing trying to understand your drivers. It will helpful me learn
> > how it works
> > So, please I am requesting to you. Let me try. If it is not correct then
> > don't accept it.
>
> If you want to submit such patches, you need to look carefully at how the
> lock is used in the code.  In this case, the code between the lock and the
> unlock is rather complex.  In general, it is rather difficult to
> understand why a lock is needed in a certain place, which is why the
> comment is suggested in the first place.  But it is more targeting the
> person who originally wrote the driver than somone who is doing code
> cleanups.  Then you need also to look at other drivers that already have
> such a comment to see what kind of information should be provided.
>
> julia
>
> >
> > Thank you,
> > On Sun, Oct 2, 2016 at 9:10 PM, Greg KH <gregkh@linuxfoundation.org>
> wrote:
> >       On Sun, Oct 02, 2016 at 09:04:43PM +0530, Anchal Jain wrote:
> >       > Add a comment in mutex to explain what the mutex is work
> >       here.
> >       >
> >       > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> >       > ---
> >       >  drivers/staging/iio/cdc/ad7150.c | 2 +-
> >       >  1 file changed, 1 insertion(+), 1 deletion(-)
> >       >
> >       > diff --git a/drivers/staging/iio/cdc/ad7150.c
> >       b/drivers/staging/iio/cdc/ad7150.c
> >       > index f6b9a10..13709bf 100644
> >       > --- a/drivers/staging/iio/cdc/ad7150.c
> >       > +++ b/drivers/staging/iio/cdc/ad7150.c
> >       > @@ -78,7 +78,7 @@ struct ad7150_chip_info {
> >       >       u8 mag_timeout[2][2];
> >       >       int old_state;
> >       >       char *conversion_mode;
> >       > -     struct mutex state_lock;
> >       > +     struct mutex state_lock; /* protect hardware state */
> >
> >       I think I need to just not take any of these types of patches,
> >       as it's
> >       not exactly a good thing for someone who does not understand
> >       the driver
> >       to be able to fix up.
> >
> >       Just ignore these warnings for now please.
> >
> >       thanks,
> >
> >       greg k-h
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.
> com/d/msgid/outreachy-kernel/CAAbeOSuPu599ySH5Mm%2BV
> > B3xx-j0UX25%2BZtb2qVbqh8qnErFCKg%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--001a1149932a9f7c52053de43638
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><span class=3D"m_7432355764839450230gmail-im"><b=
r>
</span>&gt;If you want to submit such patches, you need to look carefully a=
t how the<br>&gt;lock is used in the code.=C2=A0 In this case, the code bet=
ween the lock and the<br>&gt;unlock is rather complex.=C2=A0 In general, it=
 is rather difficult to<br>&gt;understand why a lock is needed in a certain=
 place, which is why the<br>&gt;comment is suggested in the first place.=C2=
=A0 But it is more targeting the<br>&gt;person who originally wrote the dri=
ver than somone who is doing code<br>&gt;cleanups.=C2=A0 Then you need also=
 to look at other drivers that already have<br>&gt;such a comment to see wh=
at kind of information should be provided.<br>&gt;<br>&gt;julia<br><br></di=
v>thank you :-) <br></div><div><div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Sun, Oct 2, 2016 at 9:23 PM, Julia Lawall <span dir=
=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">juli=
a.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><s=
pan class=3D""><br>
<br>
On Sun, 2 Oct 2016, Anchal Jain wrote:<br>
<br>
&gt; &gt;I think I need to just not take any of these types of patches, as =
it&#39;s<br>
&gt; &gt;not exactly a good thing for someone who does not understand the d=
river<br>
&gt; &gt;to be able to fix up.<br>
&gt; &gt;<br>
&gt; &gt;Just ignore these warnings for now please<br>
&gt;<br>
&gt; I am justing trying to understand your drivers. It will helpful me lea=
rn<br>
&gt; how it works<br>
&gt; So, please I am requesting to you. Let me try. If it is not correct th=
en<br>
&gt; don&#39;t accept it.<br>
<br>
</span>If you want to submit such patches, you need to look carefully at ho=
w the<br>
lock is used in the code.=C2=A0 In this case, the code between the lock and=
 the<br>
unlock is rather complex.=C2=A0 In general, it is rather difficult to<br>
understand why a lock is needed in a certain place, which is why the<br>
comment is suggested in the first place.=C2=A0 But it is more targeting the=
<br>
person who originally wrote the driver than somone who is doing code<br>
cleanups.=C2=A0 Then you need also to look at other drivers that already ha=
ve<br>
such a comment to see what kind of information should be provided.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Thank you,<br>
&gt; On Sun, Oct 2, 2016 at 9:10 PM, Greg KH &lt;<a href=3D"mailto:gregkh@l=
inuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sun, Oct 02, 2016 at 09:04:43PM +0530, An=
chal Jain wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Add a comment in mutex to explain what =
the mutex is work<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0here.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Anchal Jain &lt;<a href=
=3D"mailto:anchalj109@gmail.com">anchalj109@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/iio/cdc/<wbr>ad71=
50.c | 2 +-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 1 insertion(+), 1=
 deletion(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/iio/cdc/<w=
br>ad7150.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/iio/cdc/<wbr>ad7150.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index f6b9a10..13709bf 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/iio/cdc/<wbr>ad71=
50.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/iio/cdc/<wbr>ad71=
50.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -78,7 +78,7 @@ struct ad7150_chip_in=
fo {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 mag_timeou=
t[2][2];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int old_state=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0char *convers=
ion_mode;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0struct mutex state=
_lock;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0struct mutex state=
_lock; /* protect hardware state */<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0I think I need to just not take any of these=
 types of patches,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0as it&#39;s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0not exactly a good thing for someone who doe=
s not understand<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0the driver<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0to be able to fix up.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Just ignore these warnings for now please.<b=
r>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0thanks,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0greg k-h<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CAAbeOSuPu599ySH5Mm%2BV" rel=3D"nore=
ferrer" target=3D"_blank">groups.google.<wbr>com/d/msgid/outreachy-kernel/<=
wbr>CAAbeOSuPu599ySH5Mm%2BV</a><br>
&gt; B3xx-j0UX25%<wbr>2BZtb2qVbqh8qnErFCKg%<a href=3D"http://40mail.gmail.c=
om" rel=3D"noreferrer" target=3D"_blank">40mail.<wbr>gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
&gt;</font></span></blockquote></div><br></div></div></div></div>

--001a1149932a9f7c52053de43638--

