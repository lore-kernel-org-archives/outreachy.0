X-GM-THRID: 6334961343676809216
X-Received: by 10.157.58.34 with SMTP id j31mr6602982otc.129.1474978596002;
        Tue, 27 Sep 2016 05:16:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.18 with SMTP id o18ls15307772ota.40.gmail; Tue, 27 Sep
 2016 05:16:35 -0700 (PDT)
X-Received: by 10.13.197.65 with SMTP id h62mr6652605ywd.4.1474978595598;
        Tue, 27 Sep 2016 05:16:35 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id u139si125265ywe.5.2016.09.27.05.16.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 05:16:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id z36so323502qtc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 05:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=cPDYQqs/RhyQL5/XOzqwQqfWeJ1BQ31vycbMYW391GA=;
        b=ytZkJUBjO3e44xvTXn/wKFYmSPHp/Il77mGVHXa7sD8EalQv1QRrYhZTAZZLww0raF
         bx8eIP+7yapQ456mfKCKp8oZHhjUGDfzLvtiDI+k3nAVrubUVWyPbTcCxhY023M5+0Hv
         SPiyAC/aE6t6+jISZ6OB17ER9fEEi1ZesYot/98Grur5WX2zGzWzixDjcZS3wK68iWr7
         IqVFVLdxcLHzsYE0l8NRS3NMO5JctwykJ6jprxp/3/oNwysyQv5vXXrakq8SI5dbfczx
         o3DJxD1u2fb3U+er86wVCWAFoA+RXTR81MgLrm5IT4iKKhthjMN91l5xhCo8kIBOYBwk
         jcGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=cPDYQqs/RhyQL5/XOzqwQqfWeJ1BQ31vycbMYW391GA=;
        b=HBvC4mkd/QzKRg0OUuue8aZrAmM7Fr0emAfVPAzM5Z4TLzVwqOQwY04aKFSu/B2jIW
         bwvkvdIwJ51q7hd54LVyOE5tQEps7tO37dnJkSxnfjOQ8stJ7HT1CvtYOnBxTRaj4s4b
         CSxX0fseYSOY/klAQgD0C9GwnP55AMB+UE0aK8yylejV2laJckpnj6Cq7ZAGJgxfK8dF
         Glkl88vCskJ2f9Nx76I48xLOo8/YoElLUiHEYoUGt1XFkruMKfQF7ecGYroQWZIsUZ1r
         HiP0BI2sXVBncqZvvLCugJ/2QVQpYlwTzGtGcq5pU2pR4sCe8293vVr90hAqL3XIzqqV
         0HmQ==
X-Gm-Message-State: AA6/9RnMfR7BnKYySztk5UDTwpcHUo0nQwrvc8xSTHwQr4ta91Nxtme0SrqI1TgfEyT+S9wrM1thfLRbrN24jg==
X-Received: by 10.237.53.201 with SMTP id d9mr27998423qte.90.1474978595353;
 Tue, 27 Sep 2016 05:16:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.171.92 with HTTP; Tue, 27 Sep 2016 05:16:34 -0700 (PDT)
In-Reply-To: <20160927111608.GA18326@kroah.com>
References: <20160927104504.GA13155@life-desktop> <20160927111608.GA18326@kroah.com>
From: Anchal Jain <anchalj109@gmail.com>
Date: Tue, 27 Sep 2016 17:46:34 +0530
Message-ID: <CAAbeOSuN_FAYa_PUDQRQBsyvuKriv5SQykZwsM8KM=9dsMJOGg@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: cdc: add comment to mutex
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Michael.Hennerich@analog.com, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a11c02be03a3b72053d7c37a6

--001a11c02be03a3b72053d7c37a6
Content-Type: text/plain; charset=UTF-8

>That's the best description for this?  I don't understand this, do you?
>
>Why no ' ' after and before '*'?

because the in C we prefer in the comment in like that
/*....*/
not like this
/'*'....'*'/
If I used this there is not problem the compiler should read as a comment
because in normal C program we can use comment in these pattern /..../
but according to  Linux kernel Coding style
<https://www.kernel.org/doc/Documentation/CodingStyle>

And I am not sure it is the best description may be it is not fully correct
if you want to do some change in comment than I can.

Thank you,
<https://www.kernel.org/doc/Documentation/CodingStyle>

On Tue, Sep 27, 2016 at 4:46 PM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Tue, Sep 27, 2016 at 04:15:12PM +0530, Anchal Jain wrote:
> > Fix the checkpatch.pl issues:
> > CHECK: struct mutes definition without comment
> >
> > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> > ---
> >  drivers/staging/iio/cdc/ad7150.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/
> ad7150.c
> > index f6b9a10..88c6ebe 100644
> > --- a/drivers/staging/iio/cdc/ad7150.c
> > +++ b/drivers/staging/iio/cdc/ad7150.c
> > @@ -78,7 +78,7 @@ struct ad7150_chip_info {
> >       u8 mag_timeout[2][2];
> >       int old_state;
> >       char *conversion_mode;
> > -     struct mutex state_lock;
> > +     struct mutex state_lock; /*generic mutex for cdc and drivers*/
>
> That's the best description for this?  I don't understand this, do you?
>
> Why no ' ' after and before '*'?
>
> thnks,
>
> greg k-h
>

--001a11c02be03a3b72053d7c37a6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>&gt;That&#39;s the best desc=
ription for this?=C2=A0 I don&#39;t understand this, do you?<br>&gt;<br>&gt=
;Why no &#39; &#39; after and before &#39;*&#39;?<br><br></div>because the =
in C we prefer in the  comment in like that <br>/*....*/<br></div>not like =
this<br>/&#39;*&#39;....&#39;*&#39;/<br></div>If I used this there is not p=
roblem the compiler should read as a comment because in normal C program we=
 can use comment in these pattern /..../<br></div>but according to=C2=A0<a =
href=3D"https://www.kernel.org/doc/Documentation/CodingStyle"> Linux kernel=
 Coding style</a><br><br></div>And I am not sure it is the best description=
 may be it is not fully correct if you want to do some change in comment th=
an I can.<br><br></div>Thank you,<br><div><div><a href=3D"https://www.kerne=
l.org/doc/Documentation/CodingStyle"> </a></div></div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Tue, Sep 27, 2016 at 4:46 PM,=
 Greg KH <span dir=3D"ltr">&lt;<a href=3D"mailto:gregkh@linuxfoundation.org=
" target=3D"_blank">gregkh@linuxfoundation.org</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><span class=3D"">On Tue, Sep 27, 2016 at 04:15:=
12PM +0530, Anchal Jain wrote:<br>
&gt; Fix the <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"=
_blank">checkpatch.pl</a> issues:<br>
&gt; CHECK: struct mutes definition without comment<br>
&gt;<br>
&gt; Signed-off-by: Anchal Jain &lt;<a href=3D"mailto:anchalj109@gmail.com"=
>anchalj109@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/iio/cdc/<wbr>ad7150.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/iio/cdc/<wbr>ad7150.c b/drivers/staging/i=
io/cdc/<wbr>ad7150.c<br>
&gt; index f6b9a10..88c6ebe 100644<br>
&gt; --- a/drivers/staging/iio/cdc/<wbr>ad7150.c<br>
&gt; +++ b/drivers/staging/iio/cdc/<wbr>ad7150.c<br>
&gt; @@ -78,7 +78,7 @@ struct ad7150_chip_info {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 mag_timeout[2][2];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int old_state;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0char *conversion_mode;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct mutex state_lock;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct mutex state_lock; /*generic mutex for cdc =
and drivers*/<br>
<br>
</span>That&#39;s the best description for this?=C2=A0 I don&#39;t understa=
nd this, do you?<br>
<br>
Why no &#39; &#39; after and before &#39;*&#39;?<br>
<br>
thnks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div>

--001a11c02be03a3b72053d7c37a6--

