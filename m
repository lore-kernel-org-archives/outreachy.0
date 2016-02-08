X-GM-THRID: 6249004522009526272
X-Received: by 10.112.98.235 with SMTP id el11mr964371lbb.0.1454963910116;
        Mon, 08 Feb 2016 12:38:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.89.14 with SMTP id n14ls795471lfb.70.gmail; Mon, 08 Feb
 2016 12:38:28 -0800 (PST)
X-Received: by 10.112.125.99 with SMTP id mp3mr3552988lbb.3.1454963908308;
        Mon, 08 Feb 2016 12:38:28 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 5si524757wmm.2.2016.02.08.12.38.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2016 12:38:28 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,417,1449529200"; 
   d="scan'208";a="202157334"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Feb 2016 21:38:27 +0100
Date: Mon, 8 Feb 2016 21:38:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Greg KH <gregkh@linuxfoundation.org>
cc: Bhumika Goyal <bhumirks@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging:wlan-ng:Merged two lines into
 one
In-Reply-To: <20160208193922.GA10743@kroah.com>
Message-ID: <alpine.DEB.2.02.1602082137530.2060@localhost6.localdomain6>
References: <1454959731-21240-1-git-send-email-bhumirks@gmail.com> <20160208193922.GA10743@kroah.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 8 Feb 2016, Greg KH wrote:

> On Tue, Feb 09, 2016 at 12:58:51AM +0530, Bhumika Goyal wrote:
> > The last two lines of these functions are compressed into one.
> > Also removed the variable ret as it is now not used.
> > Found using coccinelle:
> > @@
> > expression e, ret;
> > @@
> > 
> > -ret =
> > +return
> >      e;
> > -return ret;
> > 
> > Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> > ---
> >  drivers/staging/wlan-ng/hfa384x_usb.c | 20 ++++----------------
> >  1 file changed, 4 insertions(+), 16 deletions(-)
> 
> We do not accept patches on the outreachy-kernel mailing list yet,
> please submit these the "normal way" in order for them to be accepted to
> the kernel community.

Actually, it seems that it is already February 9 in her location :)

julia

> 
> thanks,
> 
> greg k-h
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160208193922.GA10743%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
> 

