X-GM-THRID: 6664112359271825408
X-Received: by 2002:a2e:c41:: with SMTP id o1mr708346ljd.19.1551612414214;
        Sun, 03 Mar 2019 03:26:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9a18:: with SMTP id o24ls1605443lji.3.gmail; Sun, 03 Mar
 2019 03:26:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqzoxhqqglTTQTK4AoZkSAbAR6u/373D4Fpuo0ROcWBhXRYypQP39PurYYGsAlcBTDAjqdSN
X-Received: by 2002:a2e:91c4:: with SMTP id u4mr680283ljg.29.1551612413269;
        Sun, 03 Mar 2019 03:26:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551612413; cv=none;
        d=google.com; s=arc-20160816;
        b=xYTe8gFArIB+O024elsoeBivT8x7dx8tvYY+6u0u2ASK+HTp3VTUcJCOA1SmaQbN53
         H6sRkbUZ3UMi7+b+fQxU4U48GXF+u6CH+zX7fVNg64CrMJvwLdSz0ns8DKQKD4mYjRZH
         Uve9onFQrXhA6C7b8Qmy5+wSuVxu94UoXVMl6hadY52GhJKcw0TPLO0Tpik1DJypT5zW
         Xh6vO4E8q79BZNcyAirZetSIGBkoJHDjeLUSfvUNyOBbxxpkIcv6ADbfnmh8jg5Kv8Tc
         lIRkNuiVlT6I0e3sYYdnMd5oldYWh0L6wd3l8ZUTSsvenHIhXACfB6o78EagGyTkGFzh
         +uhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Z9Dux4goXeNevEY0QFjjSzF6DUWU3fpzQGj7TtY5s6o=;
        b=R0gko7PseqdO5MWeGJjZzC0BaDamdX+J++adZKg2ALl2FuWacXVD8mkrk4kh8tdFCi
         nWFr5oevTyoZ/kWCQxPV1F/P+rWJMUpZYKdbP4H7mjgh3Ypx2HbEgBwEbcqYPATZintP
         R9omEMN7Yoie/zZsRet15M2c7OolGUMq2D/RvMXEq2bjuFIcR8BWHwzKChmIyt7rtnZe
         KvplJpMxBwti2Nu33FdFTqMgQ2bNwcufy3cI4O2X0tBjqVfSo2naMMaY0wBpm41+Cudx
         dfE22fs2WBIDHk5d6UjW4bWaGLtro+vF2CreDEKPh9QX6eiX0eMG4ciNo3IJPwAARcn/
         C8Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v27si116067lje.0.2019.03.03.03.26.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 03:26:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,435,1544482800"; 
   d="scan'208";a="297916272"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 12:26:51 +0100
Date: Sun, 3 Mar 2019 12:26:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
cc: Himadri Pandya <himadri18.07@gmail.com>, 
    Larry Finger <Larry.Finger@lwfinger.net>, 
    florian.c.schilhabel@googlemail.com, Greg KH <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 3/3] staging: rtl8712: rename
 bSuspended to suspended
In-Reply-To: <CAK-LDbJLYyfwMis86=-Ux=3sikJ-TCpxHnYnguzCX=rsU2ryRw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903031225490.3207@hadrien>
References: <20190303103915.2684-1-himadri18.07@gmail.com> <20190303103915.2684-4-himadri18.07@gmail.com> <alpine.DEB.2.21.1903031149070.3207@hadrien> <CAK-LDbJLYyfwMis86=-Ux=3sikJ-TCpxHnYnguzCX=rsU2ryRw@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Mar 2019, Vaishali Thakkar wrote:

> On Sun, Mar 3, 2019 at 4:19 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Sun, 3 Mar 2019, Himadri Pandya wrote:
> >
> > >  - Rename structure field bSuspended to suspended to avoid camelcase.
> > > Suggested by checkpatch.
> > >  - Change type to bool as the variable is used as a boolean.
> > >
> > > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > > ---
> > > Changes in V3:
> > >       - Include the type change in changelog text
> > >       - Change the log message to make it more concise and informative
> > > ---
> >
> > You don't need the second ---.  But it doesn't matter - all the text
> > between the first --- and the first diff will be dropped.
>
> Actually, I think it has to do with how our first patch tutorial is documented.
> We advise to write about the changes since previous versions while they
> write their commit log [= after running 'git commit ...']. I think at that time
> applicants are just adding --- and then git format-patch also adds --- by
> default.
>
> I personally kind of like having these text between --- and ---. Looks
> neater and anyway it doesn't matter because text after --- will be
> dropped. But let me know if I should edit kernelnewbies wiki explaining
> this so that applicants don't get confused about what is happening here.

OK.  I actually don't like the extra ---.  I get confused about what is
above the --- and what is below.

julia

>
> > julia
> >
> > >  drivers/staging/rtl8712/drv_types.h     | 2 +-
> > >  drivers/staging/rtl8712/usb_intf.c      | 4 ++--
> > >  drivers/staging/rtl8712/usb_ops_linux.c | 2 +-
> > >  3 files changed, 4 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> > > index acee68d3d152..9ae86631fa8b 100644
> > > --- a/drivers/staging/rtl8712/drv_types.h
> > > +++ b/drivers/staging/rtl8712/drv_types.h
> > > @@ -147,7 +147,7 @@ struct _adapter {
> > >       struct mp_priv  mppriv;
> > >       bool    driver_stopped;
> > >       bool    surprise_removed;
> > > -     s32     bSuspended;
> > > +     bool    suspended;
> > >       u32     IsrContent;
> > >       u32     ImrContent;
> > >       u8      EepromAddressSize;
> > > diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
> > > index 674c31155cdd..7478bbd3de78 100644
> > > --- a/drivers/staging/rtl8712/usb_intf.c
> > > +++ b/drivers/staging/rtl8712/usb_intf.c
> > > @@ -196,7 +196,7 @@ static int r871x_suspend(struct usb_interface *pusb_intf, pm_message_t state)
> > >       struct _adapter *padapter = netdev_priv(pnetdev);
> > >
> > >       netdev_info(pnetdev, "Suspending...\n");
> > > -     padapter->bSuspended = true;
> > > +     padapter->suspended = true;
> > >       rtl871x_intf_stop(padapter);
> > >       if (pnetdev->netdev_ops->ndo_stop)
> > >               pnetdev->netdev_ops->ndo_stop(pnetdev);
> > > @@ -220,7 +220,7 @@ static int r871x_resume(struct usb_interface *pusb_intf)
> > >       netif_device_attach(pnetdev);
> > >       if (pnetdev->netdev_ops->ndo_open)
> > >               pnetdev->netdev_ops->ndo_open(pnetdev);
> > > -     padapter->bSuspended = false;
> > > +     padapter->suspended = false;
> > >       rtl871x_intf_resume(padapter);
> > >       return 0;
> > >  }
> > > diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
> > > index 8df308df35c6..9d290bc2fdb7 100644
> > > --- a/drivers/staging/rtl8712/usb_ops_linux.c
> > > +++ b/drivers/staging/rtl8712/usb_ops_linux.c
> > > @@ -221,7 +221,7 @@ static void r8712_usb_read_port_complete(struct urb *purb)
> > >                       padapter->driver_stopped = true;
> > >                       break;
> > >               case -ENOENT:
> > > -                     if (!padapter->bSuspended) {
> > > +                     if (!padapter->suspended) {
> > >                               padapter->driver_stopped = true;
> > >                               break;
> > >                       }
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190303103915.2684-4-himadri18.07%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903031149070.3207%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>

