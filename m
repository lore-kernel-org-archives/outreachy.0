X-GM-THRID: 6211884889777635328
X-Received: by 10.194.80.103 with SMTP id q7mr1111604wjx.1.1446317652264;
        Sat, 31 Oct 2015 11:54:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.25.143 with SMTP id 137ls346321lfz.41.gmail; Sat, 31 Oct
 2015 11:54:11 -0700 (PDT)
X-Received: by 10.112.145.201 with SMTP id sw9mr2958192lbb.13.1446317651638;
        Sat, 31 Oct 2015 11:54:11 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id g18si261585wmd.1.2015.10.31.11.54.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 11:54:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id fv8so28746397wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 11:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=XWCTrC2/3pRKlgQuGaPrDdsMoeoHTatQ4yaQiF1dl7E=;
        b=yah/+l5hJiLn5kuhI/T4V205aGpkjlli7I0IDGGLXOQ0+uhWFU6+yFhbY2o8x2rDdK
         xZqzY77gWAX2d1DOStibbgbOEh96nI1xXpS3zHFdW5meKJ+xr7EG4pcYuxyBmn2xQGW1
         85yogWiYePybCZTMpJjFlPOFQ0L67OjjsIRS4NLVTeeEZwZaXFLpY3b7STOOQp2B70IU
         uGzGVGQyLojJzGBTTxEAti1yyE4iDmr95gEj63mb9Bxpis4q021yXr9AvFb47QNVHATP
         QiqpCFSh0rbFm4nilyeRj+2N/m/kZ5ozU1QZPdK4cqi2sCbBu1Q0W+Cpcc8XOsF48I7r
         Ev5Q==
MIME-Version: 1.0
X-Received: by 10.194.7.97 with SMTP id i1mr17008299wja.87.1446317651508; Sat,
 31 Oct 2015 11:54:11 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sat, 31 Oct 2015 11:54:11 -0700 (PDT)
In-Reply-To: <20151031185300.GA8949@kroah.com>
References: <20151031184544.GA27064@ubuntu>
	<20151031185300.GA8949@kroah.com>
Date: Sun, 1 Nov 2015 00:24:11 +0530
Message-ID: <CAKHNQQEyJD+j+yNOGtsfZnTkjFcUBNxcAHsTjM=bJWqmb81hOQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: interval_tree:
 Convert inline function to macro
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=047d7b5d86a5d9c3ab05236b11ee

--047d7b5d86a5d9c3ab05236b11ee
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 12:23 AM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Sun, Nov 01, 2015 at 12:15:44AM +0530, Shivani Bhardwaj wrote:
> > Convert the function max_u64() to macro because macros tend to be more
> > flexible than inline functions and here, the macro is going to be type
> > safe so there are not going to be any side effects.
> >
> > Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> > ---
> >  drivers/staging/lustre/lustre/ldlm/interval_tree.c | 7 ++-----
> >  1 file changed, 2 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> > index a2ea8e5..52d0afd 100644
> > --- a/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> > +++ b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> > @@ -42,6 +42,8 @@
> >  #include "../include/obd_support.h"
> >  #include "../include/interval_tree.h"
> >
> > +#define max_u64(x, y) ((x > y) ? x : y)
>
> Ick, no, there is already a _correct_ macro in the kernel for this,
> don't try to create another one that does not work properly for all
> users.
>
> And your patch is also backwards, inline functions are better than
> macros, don't ever convert from an inline function to a macro.
>
>
Alright. Thanks for explaining.


> thanks,
>
> greg k-h
>

--047d7b5d86a5d9c3ab05236b11ee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Nov 1, 2015 at 12:23 AM, Greg KH <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfounda=
tion.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On Sun, Nov 01, 2015 at 12:15:44AM +0530, Shivani Bhardwaj wrote:<=
br>
&gt; Convert the function max_u64() to macro because macros tend to be more=
<br>
&gt; flexible than inline functions and here, the macro is going to be type=
<br>
&gt; safe so there are not going to be any side effects.<br>
&gt;<br>
&gt; Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmai=
l.com">shivanib134@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/ldlm/interval_tree.c | 7 ++-----<b=
r>
&gt;=C2=A0 1 file changed, 2 insertions(+), 5 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/lustre/ldlm/interval_tree.c b/driv=
ers/staging/lustre/lustre/ldlm/interval_tree.c<br>
&gt; index a2ea8e5..52d0afd 100644<br>
&gt; --- a/drivers/staging/lustre/lustre/ldlm/interval_tree.c<br>
&gt; +++ b/drivers/staging/lustre/lustre/ldlm/interval_tree.c<br>
&gt; @@ -42,6 +42,8 @@<br>
&gt;=C2=A0 #include &quot;../include/obd_support.h&quot;<br>
&gt;=C2=A0 #include &quot;../include/interval_tree.h&quot;<br>
&gt;<br>
&gt; +#define max_u64(x, y) ((x &gt; y) ? x : y)<br>
<br>
</span>Ick, no, there is already a _correct_ macro in the kernel for this,<=
br>
don&#39;t try to create another one that does not work properly for all<br>
users.<br>
<br>
And your patch is also backwards, inline functions are better than<br>
macros, don&#39;t ever convert from an inline function to a macro.<br>
<br></blockquote><div><br>Alright. Thanks for explaining.<br>=C2=A0<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div></div>

--047d7b5d86a5d9c3ab05236b11ee--

