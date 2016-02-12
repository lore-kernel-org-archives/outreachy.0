X-GM-THRID: 6250228823501045760
X-Received: by 10.140.252.131 with SMTP id x125mr41420913qhc.12.1455254035805;
        Thu, 11 Feb 2016 21:13:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.210 with SMTP id p76ls167459qgp.17.gmail; Thu, 11 Feb
 2016 21:13:55 -0800 (PST)
X-Received: by 10.129.41.70 with SMTP id p67mr23008671ywp.33.1455254035070;
        Thu, 11 Feb 2016 21:13:55 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u66si1421843pfa.2.2016.02.11.21.13.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 21:13:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id ADCB7E9D;
	Fri, 12 Feb 2016 05:13:54 +0000 (UTC)
Date: Thu, 11 Feb 2016 21:13:54 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: RAKHI SHARMA <rakhish1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>,
	Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8712: Replace kmalloc
 by kzalloc.
Message-ID: <20160212051354.GA24591@kroah.com>
References: <1455244786-6824-1-git-send-email-rakhish1994@gmail.com>
 <20160212031015.GA9936@kroah.com>
 <CAMnyiXvOgTT-cO1YHJJ3xx1Bvvi44JSV=82yAbu5sZg61R5fZg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMnyiXvOgTT-cO1YHJJ3xx1Bvvi44JSV=82yAbu5sZg61R5fZg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 12, 2016 at 10:03:47AM +0530, RAKHI SHARMA wrote:
> On Fri, Feb 12, 2016 at 8:40 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> 
>     On Fri, Feb 12, 2016 at 08:09:46AM +0530, Rakhi Sharma wrote:
>     > Mainly the issue is that bool variables can have invalid values.
>     > So as memory allocated with kmalloc() is essentially random, any struct
>     > that contains bools, is allocated with kmalloc() and doesn't have the
>     > bools explicitly set might have invalid values.
>     > This is easily fixed by allocating it with kzalloc().
>     >
>     > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
>     > ---
>     >� drivers/staging/rtl8712/rtl871x_io.c | 2 +-
>     >� 1 file changed, 1 insertion(+), 1 deletion(-)
>     >
>     > diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/
>     rtl8712/rtl871x_io.c
>     > index fbbc635..2891b82 100644
>     > --- a/drivers/staging/rtl8712/rtl871x_io.c
>     > +++ b/drivers/staging/rtl8712/rtl871x_io.c
>     > @@ -60,7 +60,7 @@ static uint _init_intf_hdl(struct _adapter *padapter,
>     >� � � �set_intf_funs = &(r8712_usb_set_intf_funs);
>     >� � � �set_intf_ops = &r8712_usb_set_intf_ops;
>     >� � � �init_intf_priv = &r8712_usb_init_intf_priv;
>     > -� � �pintf_priv = pintf_hdl->pintfpriv = kmalloc(sizeof(struct
>     intf_priv),
>     > +� � �pintf_priv = pintf_hdl->pintfpriv = kzalloc(sizeof(struct
>     intf_priv),
>     >� � � � � � � � � � � � � � � � � � � � � � � � � �GFP_ATOMIC);
> 
> 
> Hi Greg,
> 
>     Why is this needed?� Don't do a zero-fill unless the code is
>     expecting/wanting it.
> 
> 
> Sure I will take care of it in future.
> �
> 
>     � Are you sure that the fields don't already get
>     set properly?� Is this a waste of time?
> 
> 
> I was going through this file and found the kmalloc function I read the code
> and thought
> it need change, as it is always better to use kzalloc.

It is not always better to use kzalloc, otherwise we would just get rid
of kmalloc and replace it with kzalloc, or change kmalloc to zero out
all memory.

> May be it will usefull in future or may be not.

It has to be useful now to matter.

> In my previous
> contribution (before outreachy round), one of
> maintainer
> advise me to do this in case if I found it ok. and I really don't think this is
> waste of time.
> Please let me know if I am doing wrong :)
> 
> �
> 
>     We need a lot more information, you can't just blindly convert these
>     calls, especially on "fast paths", like I think this might be.
> 
> 
> Please let me know what information you need, I will try to deliver that :)

What benifit does this code change cause?  Why is it needed?  What
fields are not being set to zero that somehow could leak information
before your change that your change fixes?  Why is zeroing out the
memory better/faster/nicer/etc. now?

In short you have to prove this is a fix, as it is, I can't see that
here just yet.

hope this helps,

greg k-h

