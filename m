X-GM-THRID: 6335442483781042176
X-Received: by 10.129.168.66 with SMTP id f63mr340051ywh.39.1475423105283;
        Sun, 02 Oct 2016 08:45:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.37.162 with SMTP id q31ls3366039ota.44.gmail; Sun, 02 Oct
 2016 08:45:04 -0700 (PDT)
X-Received: by 10.129.109.204 with SMTP id i195mr218966ywc.77.1475423104848;
        Sun, 02 Oct 2016 08:45:04 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id w124si1862424ywc.4.2016.10.02.08.45.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:45:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id 38so4541852qte.2
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 08:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=RiSeOeWve5hiqSDxlywIF0f3nszE+XrPLjxPGtwm1gM=;
        b=gpViqIn3hicwKvq5im+9ULSZQJu8xRLu3DBqkvjhtUsRnNXyBW0YwS0awbis1b4PMn
         Zji43juPvrFHedo9FOEHPN46hpvGzHx8ktXiIC+jwXURfwVKqMP2AqZfjcTpfKGIqKaW
         kJMWgiKJCoOXS6lui0OXIuqjgkNlQOzNBtFsOLpy0NQ5iwDwyqosyxzdglbf4yAHfEM9
         LycecQaP+xY1gvbQnzzdZ8h7GwH1TbKs0APhZjcgZfR44uC/vHt56LRudLAbJf9Fhjq8
         dxfCcf08hwWv5xJXTfy143WonnMwDB5hFsMj2z3oBUCkvdZMMOKO8paFMwkq0iaveswj
         cNtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=RiSeOeWve5hiqSDxlywIF0f3nszE+XrPLjxPGtwm1gM=;
        b=fCJ5AWHDP9j3qIT07tLW1GpAJ4zCtxDIEGHSswZ/pAaRI0QgfpDYXxNXsbjC3/Rbaq
         3Ca4ifWA4kmxMKQ1q/naOBR2q9qwPYqJdsr0Ch53F/N4C95jtIXFRlSruXIXxHj4ujQa
         5lvL7E2Q5k4mQ6UN9Pek0xOWuRADkYNeCu4wGxt8/X7KX7fY9YWfgYWhj73kiFiPe8G4
         +Ep6V2f/+qbPdlTBNyGK+4mdEs86EhlzeixxVaSrsnFOHZve3mzm6id8KuLjoYhCkn2k
         0aA0RxTGjCqtRMkwdw6KLZVyXXRMpFkb0EECFPhbzxhcyMg+SRCIcJbROJM1OhFSnSrW
         zUiA==
X-Gm-Message-State: AA6/9Rmx9xQNunl/ZEH4Y6RhkjXK1fefBLgB5GwY37F1MkrIC6KBYUyyjiVGk+FzV5gLjP76eggjnDgWzzrkag==
X-Received: by 10.237.34.122 with SMTP id o55mr17010560qtc.15.1475423104604;
 Sun, 02 Oct 2016 08:45:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.171.92 with HTTP; Sun, 2 Oct 2016 08:45:04 -0700 (PDT)
In-Reply-To: <20161002154039.GB21118@kroah.com>
References: <20161002153424.GA4211@life-desktop> <20161002154039.GB21118@kroah.com>
From: Anchal Jain <anchalj109@gmail.com>
Date: Sun, 2 Oct 2016 21:15:04 +0530
Message-ID: <CAAbeOSuPu599ySH5Mm+VB3xx-j0UX25+Ztb2qVbqh8qnErFCKg@mail.gmail.com>
Subject: Re: [PATCH v4 ] staging: iio: cdc: ad7150: add comment to mutex
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Jonathan Cameron <jic23@kernel.org>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a114684ae0b2112053de3b667

--001a114684ae0b2112053de3b667
Content-Type: text/plain; charset=UTF-8

>I think I need to just not take any of these types of patches, as it's
>not exactly a good thing for someone who does not understand the driver
>to be able to fix up.
>
>Just ignore these warnings for now please

I am justing trying to understand your drivers. It will helpful me learn
how it works
So, please I am requesting to you. Let me try. If it is not correct then
don't accept it.

Thank you,
On Sun, Oct 2, 2016 at 9:10 PM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Sun, Oct 02, 2016 at 09:04:43PM +0530, Anchal Jain wrote:
> > Add a comment in mutex to explain what the mutex is work here.
> >
> > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> > ---
> >  drivers/staging/iio/cdc/ad7150.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/
> ad7150.c
> > index f6b9a10..13709bf 100644
> > --- a/drivers/staging/iio/cdc/ad7150.c
> > +++ b/drivers/staging/iio/cdc/ad7150.c
> > @@ -78,7 +78,7 @@ struct ad7150_chip_info {
> >       u8 mag_timeout[2][2];
> >       int old_state;
> >       char *conversion_mode;
> > -     struct mutex state_lock;
> > +     struct mutex state_lock; /* protect hardware state */
>
> I think I need to just not take any of these types of patches, as it's
> not exactly a good thing for someone who does not understand the driver
> to be able to fix up.
>
> Just ignore these warnings for now please.
>
> thanks,
>
> greg k-h
>

--001a114684ae0b2112053de3b667
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>&gt;I think I need to just not take any of these=
 types of patches, as it&#39;s<br>&gt;not exactly a good thing for someone =
who does not understand the driver<br>&gt;to be able to fix up.<br>&gt;<br>=
&gt;Just ignore these warnings for now please<br><br></div>I am justing try=
ing to understand your drivers. It will helpful me learn how it works<br></=
div>So, please I am requesting to you. Let me try. If it is not correct the=
n don&#39;t accept it.<br><div><div><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">Thank you,<br></div><div class=3D"gmail_extra"><di=
v class=3D"gmail_quote">On Sun, Oct 2, 2016 at 9:10 PM, Greg KH <span dir=
=3D"ltr">&lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank=
">gregkh@linuxfoundation.org</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><span class=3D"">On Sun, Oct 02, 2016 at 09:04:43PM +0530, Anchal=
 Jain wrote:<br>
&gt; Add a comment in mutex to explain what the mutex is work here.<br>
&gt;<br>
&gt; Signed-off-by: Anchal Jain &lt;<a href=3D"mailto:anchalj109@gmail.com"=
>anchalj109@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/iio/cdc/<wbr>ad7150.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/iio/cdc/<wbr>ad7150.c b/drivers/staging/i=
io/cdc/<wbr>ad7150.c<br>
&gt; index f6b9a10..13709bf 100644<br>
&gt; --- a/drivers/staging/iio/cdc/<wbr>ad7150.c<br>
&gt; +++ b/drivers/staging/iio/cdc/<wbr>ad7150.c<br>
&gt; @@ -78,7 +78,7 @@ struct ad7150_chip_info {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 mag_timeout[2][2];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int old_state;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0char *conversion_mode;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct mutex state_lock;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct mutex state_lock; /* protect hardware stat=
e */<br>
<br>
</span>I think I need to just not take any of these types of patches, as it=
&#39;s<br>
not exactly a good thing for someone who does not understand the driver<br>
to be able to fix up.<br>
<br>
Just ignore these warnings for now please.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div></div></div></div>

--001a114684ae0b2112053de3b667--

