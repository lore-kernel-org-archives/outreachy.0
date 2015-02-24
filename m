X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.151.101 with SMTP id up5mr390435pab.10.1424820330246;
        Tue, 24 Feb 2015 15:25:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.196.33 with SMTP id ij1ls1116473obc.64.gmail; Tue, 24 Feb
 2015 15:25:30 -0800 (PST)
X-Received: by 10.182.5.104 with SMTP id r8mr371097obr.19.1424820330033;
        Tue, 24 Feb 2015 15:25:30 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si4356032pbc.2.2015.02.24.15.25.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 15:25:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [216.239.55.136])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B4B74B30;
	Tue, 24 Feb 2015 23:25:29 +0000 (UTC)
Date: Tue, 24 Feb 2015 15:25:29 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: emxx_udc: Replace printk
 with pr_err
Message-ID: <20150224232529.GB24927@kroah.com>
References: <cover.1424473862.git.hamohammed.sa@gmail.com>
 <aa0c6571b79f806ec4edba60e2d13d2edcf0cd8f.1424473862.git.hamohammed.sa@gmail.com>
 <alpine.DEB.2.02.1502212158560.2296@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1502212158560.2296@localhost6.localdomain6>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 09:59:55PM +0100, Julia Lawall wrote:
> On Sat, 21 Feb 2015, Haneen Mohammed wrote:
> 
> > This patch replaces printk(KERN_ERR .. with pr_err, to fix the following
> > checkpatch.pl warning:
> > WARNING: Prefer [subsystem eg: netdev]_err([subsystem]dev,  ... then
> > dev_err(dev,  ... then pr_err(...  to printk(KERN_ERR ...
> > 
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> >  drivers/staging/emxx_udc/emxx_udc.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> > index c1f98b3..c3fd7f6 100644
> > --- a/drivers/staging/emxx_udc/emxx_udc.h
> > +++ b/drivers/staging/emxx_udc/emxx_udc.h
> > @@ -644,6 +644,6 @@ volatile union usb_reg_access {
> >  };
> >  
> >  /*-------------------------------------------------------------------------*/
> > -#define ERR(stuff...)		printk(KERN_ERR "udc: " stuff)
> > +#define ERR(stuff...)		pr_err("udc: " stuff)
> 
> A better approach would be to remove ERR completely, and see which 
> standard kernel debugging function (pr_err?, dev_err?) could be used at 
> each point.

Ideally dev_err() should be used, just drop ERR() entirely please.

thanks,

greg k-h

