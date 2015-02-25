X-GM-THRID: 2067485687808
X-Received: by 10.43.117.72 with SMTP id fl8mr4097581icc.23.1424883275174;
        Wed, 25 Feb 2015 08:54:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.208 with SMTP id z199ls1544223iod.12.gmail; Wed, 25
 Feb 2015 08:54:34 -0800 (PST)
X-Received: by 10.70.45.49 with SMTP id j17mr3748035pdm.4.1424883274658;
        Wed, 25 Feb 2015 08:54:34 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si73233pad.1.2015.02.25.08.54.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 08:54:34 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5DC01B30;
	Wed, 25 Feb 2015 16:54:34 +0000 (UTC)
Date: Wed, 25 Feb 2015 08:54:34 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: emxx_udc: Replace printk
 with pr_err
Message-ID: <20150225165434.GA30720@kroah.com>
References: <cover.1424473862.git.hamohammed.sa@gmail.com>
 <aa0c6571b79f806ec4edba60e2d13d2edcf0cd8f.1424473862.git.hamohammed.sa@gmail.com>
 <alpine.DEB.2.02.1502212158560.2296@localhost6.localdomain6>
 <20150224232529.GB24927@kroah.com>
 <20150225162028.GA2253@example.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150225162028.GA2253@example.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Feb 25, 2015 at 07:20:28PM +0300, Haneen Mohammed wrote:
> On Tue, Feb 24, 2015 at 03:25:29PM -0800, Greg KH wrote:
> > On Sat, Feb 21, 2015 at 09:59:55PM +0100, Julia Lawall wrote:
> > > On Sat, 21 Feb 2015, Haneen Mohammed wrote:
> > > 
> > > > This patch replaces printk(KERN_ERR .. with pr_err, to fix the following
> > > > checkpatch.pl warning:
> > > > WARNING: Prefer [subsystem eg: netdev]_err([subsystem]dev,  ... then
> > > > dev_err(dev,  ... then pr_err(...  to printk(KERN_ERR ...
> > > > 
> > > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > > > ---
> > > >  drivers/staging/emxx_udc/emxx_udc.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> > > > index c1f98b3..c3fd7f6 100644
> > > > --- a/drivers/staging/emxx_udc/emxx_udc.h
> > > > +++ b/drivers/staging/emxx_udc/emxx_udc.h
> > > > @@ -644,6 +644,6 @@ volatile union usb_reg_access {
> > > >  };
> > > >  
> > > >  /*-------------------------------------------------------------------------*/
> > > > -#define ERR(stuff...)		printk(KERN_ERR "udc: " stuff)
> > > > +#define ERR(stuff...)		pr_err("udc: " stuff)
> > > 
> > > A better approach would be to remove ERR completely, and see which 
> > > standard kernel debugging function (pr_err?, dev_err?) could be used at 
> > > each point.
> > 
> > Ideally dev_err() should be used, just drop ERR() entirely please.
> > 
> > thanks,
> > 
> > greg k-h
> 
> I did drop ERR() macro and sent it as new patchset. the last revision
> was "[PATCH v5 0/6] Staging: emxx_udc: Fix checkpatch.pl warnings"

Great, thanks for this, still sifting through the submissions, in order,
so I hadn't gotten to these yet.

greg k-h

