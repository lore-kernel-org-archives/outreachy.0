X-GM-THRID: 2067485687808
X-Received: by 10.180.83.168 with SMTP id r8mr655755wiy.6.1424881233399;
        Wed, 25 Feb 2015 08:20:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.10.132 with SMTP id i4ls773677lab.25.gmail; Wed, 25 Feb
 2015 08:20:32 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr625868lbc.0.1424881232655;
        Wed, 25 Feb 2015 08:20:32 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id cl5si1161423wib.3.2015.02.25.08.20.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 08:20:32 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f175.google.com with SMTP id r20so34682372wiv.2
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 08:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=wGuQaMyk7McIuRVE4DuaU51Y7aMyhdGJ1QXYMiFHu2E=;
        b=wlvD/Ov6jctslzygufU5p+hltv2sOqXipVo8EV/V36nWBKRXSNEe+/cRNoQk+TarUN
         dMzdJBUTvbeK20vY0XezxczRsQMz6qEtxYUUh5EtHOh+r7glKKM6ylxhlfNE/vRBLGW2
         jne9+Bwly9JQb05her650RdQ6pd34qX/618S4YN7yUfNfNP/Bwa0wPX2nkyiSYp0Brws
         8zgBl15l69PEh+9ZUTPc7Jsby227O194FVad3mIQnDdlAjEurpOlDpKthm4gliCZswbi
         FAP7g9VA4azH3l1F2O9r5igcGETjeu1RsToszOOrgvMbfmvZ5ibBFsEpPCdbhCallygW
         DUAw==
X-Received: by 10.180.198.162 with SMTP id jd2mr17321907wic.21.1424881232520;
        Wed, 25 Feb 2015 08:20:32 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from localhost ([79.170.54.177])
        by mx.google.com with ESMTPSA id t9sm6559538wia.15.2015.02.25.08.20.31
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 08:20:31 -0800 (PST)
Date: Wed, 25 Feb 2015 19:20:28 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: emxx_udc: Replace printk
 with pr_err
Message-ID: <20150225162028.GA2253@example.com>
References: <cover.1424473862.git.hamohammed.sa@gmail.com>
 <aa0c6571b79f806ec4edba60e2d13d2edcf0cd8f.1424473862.git.hamohammed.sa@gmail.com>
 <alpine.DEB.2.02.1502212158560.2296@localhost6.localdomain6>
 <20150224232529.GB24927@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150224232529.GB24927@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Feb 24, 2015 at 03:25:29PM -0800, Greg KH wrote:
> On Sat, Feb 21, 2015 at 09:59:55PM +0100, Julia Lawall wrote:
> > On Sat, 21 Feb 2015, Haneen Mohammed wrote:
> > 
> > > This patch replaces printk(KERN_ERR .. with pr_err, to fix the following
> > > checkpatch.pl warning:
> > > WARNING: Prefer [subsystem eg: netdev]_err([subsystem]dev,  ... then
> > > dev_err(dev,  ... then pr_err(...  to printk(KERN_ERR ...
> > > 
> > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > > ---
> > >  drivers/staging/emxx_udc/emxx_udc.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> > > index c1f98b3..c3fd7f6 100644
> > > --- a/drivers/staging/emxx_udc/emxx_udc.h
> > > +++ b/drivers/staging/emxx_udc/emxx_udc.h
> > > @@ -644,6 +644,6 @@ volatile union usb_reg_access {
> > >  };
> > >  
> > >  /*-------------------------------------------------------------------------*/
> > > -#define ERR(stuff...)		printk(KERN_ERR "udc: " stuff)
> > > +#define ERR(stuff...)		pr_err("udc: " stuff)
> > 
> > A better approach would be to remove ERR completely, and see which 
> > standard kernel debugging function (pr_err?, dev_err?) could be used at 
> > each point.
> 
> Ideally dev_err() should be used, just drop ERR() entirely please.
> 
> thanks,
> 
> greg k-h

I did drop ERR() macro and sent it as new patchset. the last revision
was "[PATCH v5 0/6] Staging: emxx_udc: Fix checkpatch.pl warnings"

Thanks,
Haneen

