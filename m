X-GM-THRID: 6250295934225219584
X-Received: by 10.129.25.212 with SMTP id 203mr2712488ywz.35.1455300983841;
        Fri, 12 Feb 2016 10:16:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.155.103 with SMTP id vv7ls200458igb.37.gmail; Fri, 12 Feb
 2016 10:16:23 -0800 (PST)
X-Received: by 10.107.29.20 with SMTP id d20mr3851284iod.29.1455300983460;
        Fri, 12 Feb 2016 10:16:23 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id tn7si1648598pac.1.2016.02.12.10.16.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 10:16:23 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id fl4so38398888pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 10:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SD5GIH2nktDZcZtruQhWzTpEAltZ6NvzNXH4heI7GHE=;
        b=mXomHVdsC8fbHV0IlCm9GVBkVTLTrjv+rpz+KrStrBiQPgRB+w9S84RJMEssDEf1XV
         L4G+l4u/hxlspOylKqFbNhtxoyltfU17dvodw0DMfWxtgFyPm91QLF7ubPnwWQLm/9lf
         fC/7Nb3zHoTy+ZNjT+8mtg4a4k4Ps8oS7hJX4TJa36gYVPMFs3uMXSecjJu2QgRbc3T5
         Fm/SP2M+m4mbYu0qzSX+Cd926ay3eBh2Nzl8eH5OUP7ZpuhYr7aZGLB1KS93O2iPWRn+
         2WIxGXeBwTUL/UGySA13oHSf4FNWSTEtnBRlaB6ViYZs25sN7FHVB6U+/vo14Vv+kEsu
         8LRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=SD5GIH2nktDZcZtruQhWzTpEAltZ6NvzNXH4heI7GHE=;
        b=ORCHzRj7l8jLKIOf7ijvAGO682hTkc3ZmLjM7ifem8CV25epumDMApXJg0QdcNc19C
         I9lTYzISv+JY8qfRDyPNnA7LCTH0DxaiH7zjsVQ6WjiQAX6p91KtSDb96gbumIPKOVdT
         nf3FgsyWw1cdvUV2SMsN0KjLRw1Bz+SCo/DX9wH6WeHA8OPYkNyRkqch+IujQRs58Fed
         HO0Hs5rSRcwHFUvk/6SDUxSlzSFRrXkxrAL80Y63JfeowGVDLbPIwns/EVqJFSe8fRPz
         MMR3zFRsj4LSvHPzHAeb2YPi6p0sUBkLssT/vRsavhZV+YRWGWGTM/08yxx6UEOOgNPW
         6xuw==
X-Gm-Message-State: AG10YOTSoIZqOPJ9nCgttv96qHDKxAfNG2xLSP/MxUkCCg0+Es40b0frcMVunZNqZm9ssg==
X-Received: by 10.66.62.161 with SMTP id z1mr4228067par.108.1455300983310;
        Fri, 12 Feb 2016 10:16:23 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id xg9sm4769002pac.9.2016.02.12.10.16.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 10:16:22 -0800 (PST)
Date: Fri, 12 Feb 2016 10:16:21 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tejun Heo <tj@kernel.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: move local var init
 closer to usage
Message-ID: <20160212181620.GA3391@d830.WORKGROUP>
References: <20160212070014.GA13288@d830.WORKGROUP>
 <20160212172317.GL3741@mtj.duckdns.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160212172317.GL3741@mtj.duckdns.org>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 12, 2016 at 12:23:17PM -0500, Tejun Heo wrote:
> Hello, Alison.
> 
> On Thu, Feb 11, 2016 at 11:00:22PM -0800, Alison Schofield wrote:
> > Move init of struct urb to after sk_buf is verified otherwise
> > the init is wasted if we exit early.
> > 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > ---
> >  drivers/staging/vt6656/usbpipe.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> > index bec5baf..3648d16 100644
> > --- a/drivers/staging/vt6656/usbpipe.c
> > +++ b/drivers/staging/vt6656/usbpipe.c
> > @@ -209,12 +209,12 @@ int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
> >  	int status = 0;
> >  	struct urb *urb;
> >  
> > -	urb = rcb->urb;
> >  	if (!rcb->skb) {
> >  		dev_dbg(&priv->usb->dev, "rcb->skb is null\n");
> >  		return status;
> >  	}
> >  
> > +	urb = rcb->urb;
> >  	usb_fill_bulk_urb(urb,
> >  			  priv->usb,
> >  			  usb_rcvbulkpipe(priv->usb, 2),
> 
> I'd actually go the other way and do
> 
> 	struct urb *urb = rcb->urb;
> 
> Compilers can easily optimize these orderings.  The focus should be on
> brevity and readability instead of micro optimizations which don't
> really yield anything.
> 
> Thanks.
> 
> -- 
> tejun
This was suggested to me, but I chose to mimic what another
funtion was doing in same file.  I'll change both instances
for brevity & readabiity! 
Thanks,
alison

