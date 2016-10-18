X-GM-THRID: 6342441922054848512
X-Received: by 10.28.198.198 with SMTP id w189mr1173381wmf.7.1476826763342;
        Tue, 18 Oct 2016 14:39:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.38.133 with SMTP id m127ls141360wmm.7.gmail; Tue, 18 Oct
 2016 14:39:17 -0700 (PDT)
X-Received: by 10.28.207.135 with SMTP id f129mr237565wmg.7.1476826756951;
        Tue, 18 Oct 2016 14:39:16 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id i129si64284wmg.3.2016.10.18.14.39.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2016 14:39:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id d199so1266534wmd.1
        for <outreachy-kernel@googlegroups.com>; Tue, 18 Oct 2016 14:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VVN7ov70qaGc2WPClTcD9Mwm4JYHy95utkex5f4vNVA=;
        b=rK0etrpo/szzcH9gRZXv3AtVyoUHuJ43eWHvPpJ/sXwjoFDuTxXU6hgAIdJkJ2gvW+
         CqDDBfnwigTAiwUjT/0U4dNtyvCqRKCwNZlEkl9zn01y66JAUegs9YPQ1xp3mYW01AHy
         lWfx+iSROW7hKOLqQCqqtxuyc8XkILJ9RDxgfKW2fp94wu9BAyHJrsJA1MStWfG+eqRc
         QS78vxh3kk51sKwoJV+jMnITM2/VunrpeD53a8fQAemqzkk14SHyoD/crgys78hi+qOF
         VPHmhbU0qV5o0Z4m3n1ZoitiZ2oUz8ZbTccmxAHKEqYZvfI1pBEwyAitQ+MtAFIxxIfW
         lstg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VVN7ov70qaGc2WPClTcD9Mwm4JYHy95utkex5f4vNVA=;
        b=ItHTYz1jm9oYoOOo/R7oBkTiYKNJivGNyJXsRfQTdhn70+zrD3HM7nim5jj8Z2uxE7
         cFd6L4fQt6NVUZk016MG2Zf6sTf21kYd/P3MMZTCbr5Mt/zG+koO29ne6PdhfPM1vtFJ
         mJ51g0JFgIv+877RfCHlVaryb/6y05Bxi8SnPUOwXpn6bFtF54ScEFwiefvDT9qkyhna
         oBW91XruGMa0rgY6LazsL98MBH1bgVbDgs9m5mpqGlAhtBLGyAMH/H0wuE+MV2TbT7xh
         4nofJoergiX+9XgK08SuPoHzN1zXx8NF0X/VyqNC79ybkpgedVKroVpeMlsWqEuG9d5g
         p8Ag==
X-Gm-Message-State: AA6/9Rl0HxL0PmOA1/8cKYPZybddcQ+9rlkRKAd0xmPymLLqbThGdRglHd71/IX1xYl24g==
X-Received: by 10.194.157.169 with SMTP id wn9mr1714149wjb.195.1476826756709;
        Tue, 18 Oct 2016 14:39:16 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id y2sm65072866wjx.20.2016.10.18.14.39.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 18 Oct 2016 14:39:16 -0700 (PDT)
Date: Wed, 19 Oct 2016 00:39:13 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: emxx_udc: Make a
 read-only structure
Message-ID: <20161018213912.GA14750@domino-MS-16Y1>
References: <20161018204221.GA7799@domino-MS-16Y1>
 <alpine.DEB.2.20.1610182247190.2247@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1610182247190.2247@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 18, 2016 at 10:48:54PM +0200, Julia Lawall wrote:
> On Tue, 18 Oct 2016, Mihaela Muraru wrote:
> 
> > This patch add const qualifier at the declaration of the structure,
> > because it contains information about usb hardware device and those
> > values shoud not be overwritten.
> 
> This focuses on the intent, which makes sense, but one really wants to be
> sure that we won't end up with a const value floating into a modification
> context, which would cause a runtime error.  So it would be good to
> describe how the structure is used.  For example, is it only passed to
> another function where the corresponding parameter is declared as const?

The structure is declared and used only in emxx_udc.c. I searched it in all
staging driver.

And is passed as a patameter only to the sizeof operetor, 
that doesn't change the variable of the structure.

To be 100% sure I will search on all the files of the kernel,
it would take some time, and I will tell you what is the result, if is
ok for you. 

mihaela


> 
> >
> > The structure become a read-only data, this increase the security and
> > the integrity of the program.
> >
> > Found with Coccinelle:
> > @r disable optional_qualifier@
> > identifier s,i;
> > @@
> > * static struct s i ={...};
> >
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > ---
> >  drivers/staging/emxx_udc/emxx_udc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> > index c3e2988..8b406f3 100644
> > --- a/drivers/staging/emxx_udc/emxx_udc.c
> > +++ b/drivers/staging/emxx_udc/emxx_udc.c
> > @@ -1386,7 +1386,7 @@ static void _nbu2ss_set_endpoint_stall(
> >
> >  /*-------------------------------------------------------------------------*/
> >  /* Device Descriptor */
> > -static struct usb_device_descriptor device_desc = {
> > +static const struct usb_device_descriptor device_desc = {
> >  	.bLength              = sizeof(device_desc),
> >  	.bDescriptorType      = USB_DT_DEVICE,
> >  	.bcdUSB               = cpu_to_le16(0x0200),
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161018204221.GA7799%40domino-MS-16Y1.
> > For more options, visit https://groups.google.com/d/optout.
> >

