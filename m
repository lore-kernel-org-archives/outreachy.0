X-GM-THRID: 6664112359271825408
X-Received: by 2002:a24:6b55:: with SMTP id v82mr8524866itc.37.1551611123294;
        Sun, 03 Mar 2019 03:05:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7dd3:: with SMTP id b202ls3786249itc.0.gmail; Sun, 03
 Mar 2019 03:05:22 -0800 (PST)
X-Google-Smtp-Source: APXvYqylzkoV4HG8ImPYJA3eYuPEiGwfjGCZkeAI0DVPSG3Ucs2ntvm++f+8T74CBEul6iO7k/LP
X-Received: by 2002:a24:9fc4:: with SMTP id c187mr8533890ite.23.1551611122520;
        Sun, 03 Mar 2019 03:05:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551611122; cv=none;
        d=google.com; s=arc-20160816;
        b=cF7tpBqysh9kwAMzjgPfZ+gyC8eqL1S1XX8K2eQNQ2tshErIFFAggDsje/lRe7c5jL
         Guu46EFZehfjm923KX05rvUiWFvZeDk7x4dptT692OM12rD1Oai9lQIYowHjaRnQaF9x
         V7Gnr2H7js0sJtOOovMkP2gnYv1NucZ2hRqY+pcSk48ypa3FnvF47jCcgfvLd5dhZvDF
         pHRjmI7SY/BVoWK3m8WT3h6NlDZRn+AcAd9TmnZG5YSN05Fv+FtbLb7+WZvToErtEtyH
         zg5J/TKiwetUhRqvvMLIVlbrZJyycoNg8MTOnDf1GZqIEqKIL6keACwNNy06A6WJRswV
         h4zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=Ac+BDVweEjR4Z+ZuMsEQRzOBelVRQJGKt5Y8auku8Mo=;
        b=BkQy3SagfwMOoKZ/sc0psP+Wc0s63cbs7fqHsH7mjbzIvdzVXU6YCkaeri+J7BKhZ/
         lrgK/QDAFuN2ODCeB5C8RcgwZ2K2NVVEk6k9uFNyj+4W63+hwbwhuP0X2D/TVz5vBZ4N
         aG2MiL2oiDNnywFa129bitzLCakyzhm8Zz9dasWNBkRcrKIitxJn979472Se/udZq9ai
         5Pl4ZiHhG2JQQoglq9Lwe1wjCLCEyUyyFxSP0fk2qQKftknyDA7PKwDhsf1jDB9uq6PJ
         lJqEKyiu9Jppty4kovenb3T4J+1MU95tz3TMy906Xj9d91E6TW+GZpKxbTXawtnZQeK6
         a7iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.231 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa07-02.prod.phx3.secureserver.net (p3plsmtpa07-02.prod.phx3.secureserver.net. [173.201.192.231])
        by gmr-mx.google.com with ESMTPS id 184si169978iou.3.2019.03.03.03.05.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 03:05:22 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.231 as permitted sender) client-ip=173.201.192.231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.231 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lj1-f171.google.com ([209.85.208.171])
	by :SMTPAUTH: with ESMTPSA
	id 0OvohKNxYH8cN0OvphYIT8; Sun, 03 Mar 2019 04:05:21 -0700
Received: by mail-lj1-f171.google.com with SMTP id d14so1813126ljl.9
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 03:05:21 -0800 (PST)
X-Gm-Message-State: APjAAAUUvH3MvRlQRePq4xB5n7Q6Ni4U70qer0UjDDcUoWWBUw+mLcky
	T5DezLfZGUAyiRLsBWDkpinr6N2vOdOpq6KogwE=
X-Received: by 2002:a05:651c:112:: with SMTP id a18mr7827156ljb.45.1551611120486;
 Sun, 03 Mar 2019 03:05:20 -0800 (PST)
MIME-Version: 1.0
References: <20190303103915.2684-1-himadri18.07@gmail.com> <20190303103915.2684-4-himadri18.07@gmail.com>
 <alpine.DEB.2.21.1903031149070.3207@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903031149070.3207@hadrien>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Sun, 3 Mar 2019 16:35:08 +0530
X-Gmail-Original-Message-ID: <CAK-LDbJLYyfwMis86=-Ux=3sikJ-TCpxHnYnguzCX=rsU2ryRw@mail.gmail.com>
Message-ID: <CAK-LDbJLYyfwMis86=-Ux=3sikJ-TCpxHnYnguzCX=rsU2ryRw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 3/3] staging: rtl8712: rename
 bSuspended to suspended
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Himadri Pandya <himadri18.07@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>, 
	florian.c.schilhabel@googlemail.com, Greg KH <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfB+NCfl12u2Rv9Mwbo6kEJCRhxiMY8zGdqHwddJePE0CjQZGgQQEOZDIy4Oms61F9t/pE8nzNfTEJdiU7DdrCcOOetWeTALumKiQvYfxWIMrudbYhUlE
 GY19lN6yySzxGJGxKOGk0pQLwHJ9/QhJRSuF2hlmtgAm7b5F7zyUcMdux5mlV/Ht/BzFj6t3783LPiVAwl7kDx2TRu54h0iu0es=

On Sun, Mar 3, 2019 at 4:19 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Sun, 3 Mar 2019, Himadri Pandya wrote:
>
> >  - Rename structure field bSuspended to suspended to avoid camelcase.
> > Suggested by checkpatch.
> >  - Change type to bool as the variable is used as a boolean.
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> > Changes in V3:
> >       - Include the type change in changelog text
> >       - Change the log message to make it more concise and informative
> > ---
>
> You don't need the second ---.  But it doesn't matter - all the text
> between the first --- and the first diff will be dropped.

Actually, I think it has to do with how our first patch tutorial is documented.
We advise to write about the changes since previous versions while they
write their commit log [= after running 'git commit ...']. I think at that time
applicants are just adding --- and then git format-patch also adds --- by
default.

I personally kind of like having these text between --- and ---. Looks
neater and anyway it doesn't matter because text after --- will be
dropped. But let me know if I should edit kernelnewbies wiki explaining
this so that applicants don't get confused about what is happening here.

> julia
>
> >  drivers/staging/rtl8712/drv_types.h     | 2 +-
> >  drivers/staging/rtl8712/usb_intf.c      | 4 ++--
> >  drivers/staging/rtl8712/usb_ops_linux.c | 2 +-
> >  3 files changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> > index acee68d3d152..9ae86631fa8b 100644
> > --- a/drivers/staging/rtl8712/drv_types.h
> > +++ b/drivers/staging/rtl8712/drv_types.h
> > @@ -147,7 +147,7 @@ struct _adapter {
> >       struct mp_priv  mppriv;
> >       bool    driver_stopped;
> >       bool    surprise_removed;
> > -     s32     bSuspended;
> > +     bool    suspended;
> >       u32     IsrContent;
> >       u32     ImrContent;
> >       u8      EepromAddressSize;
> > diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
> > index 674c31155cdd..7478bbd3de78 100644
> > --- a/drivers/staging/rtl8712/usb_intf.c
> > +++ b/drivers/staging/rtl8712/usb_intf.c
> > @@ -196,7 +196,7 @@ static int r871x_suspend(struct usb_interface *pusb_intf, pm_message_t state)
> >       struct _adapter *padapter = netdev_priv(pnetdev);
> >
> >       netdev_info(pnetdev, "Suspending...\n");
> > -     padapter->bSuspended = true;
> > +     padapter->suspended = true;
> >       rtl871x_intf_stop(padapter);
> >       if (pnetdev->netdev_ops->ndo_stop)
> >               pnetdev->netdev_ops->ndo_stop(pnetdev);
> > @@ -220,7 +220,7 @@ static int r871x_resume(struct usb_interface *pusb_intf)
> >       netif_device_attach(pnetdev);
> >       if (pnetdev->netdev_ops->ndo_open)
> >               pnetdev->netdev_ops->ndo_open(pnetdev);
> > -     padapter->bSuspended = false;
> > +     padapter->suspended = false;
> >       rtl871x_intf_resume(padapter);
> >       return 0;
> >  }
> > diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
> > index 8df308df35c6..9d290bc2fdb7 100644
> > --- a/drivers/staging/rtl8712/usb_ops_linux.c
> > +++ b/drivers/staging/rtl8712/usb_ops_linux.c
> > @@ -221,7 +221,7 @@ static void r8712_usb_read_port_complete(struct urb *purb)
> >                       padapter->driver_stopped = true;
> >                       break;
> >               case -ENOENT:
> > -                     if (!padapter->bSuspended) {
> > +                     if (!padapter->suspended) {
> >                               padapter->driver_stopped = true;
> >                               break;
> >                       }
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190303103915.2684-4-himadri18.07%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903031149070.3207%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

