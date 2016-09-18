X-GM-THRID: 6331266648892243968
X-Received: by 10.157.53.70 with SMTP id l6mr2136227ote.55.1474196096142;
        Sun, 18 Sep 2016 03:54:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.1 with SMTP id 1ls6429238otv.45.gmail; Sun, 18 Sep 2016
 03:54:55 -0700 (PDT)
X-Received: by 10.157.42.75 with SMTP id t69mr2691281ota.92.1474196095878;
        Sun, 18 Sep 2016 03:54:55 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id z4si3914253pam.0.2016.09.18.03.54.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 03:54:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id pp5so5564667pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 03:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=G88PF1yZKol+/Tms+zn3QRNv3lEutRzqmjfZdkCFh98=;
        b=CmGoQUuTA5eICJsCPQwy8hXxRZn+wIb2sV5qxmqHo7J/6H2iLCYgP7wp179gK+sNzx
         f6qjyXiYeG4yuCjdFT3+1lQRyaUef44tWkjnOeZelVHPc+RP/gMbEwMhFO2ogGe6pRt4
         P8yuvyRzfh+z8SdOoO/p7Rsf8xzST2QgyunRLLRmt75Esy9BZJS4lPFo6GhMsyLZQL2v
         M+/5X9CScE6ocCW0hmHjVlvyUMIVao/Skdp2EB0rPcKRp21ORq5SMFjthdUpOBkiaQeP
         Z2z3dBg3fqKndwm5Gi+Z6zd36IV+IaOHmmxhl/g1UMcW3pr1H+Vdxlf1mrXyKjLFSjBR
         K/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=G88PF1yZKol+/Tms+zn3QRNv3lEutRzqmjfZdkCFh98=;
        b=a/NA7I7CKAkZmo3WMF4PqOVxm+Ycm2oUkhVh0xo86FHn0cvKksACdjeH+LDMClT3IS
         s8+E+e8j8LyxYkGW/AltmbNiyFWvYgLxHDO/zrvxc0L1IBqBxk/dthhi9F8IdwEwIRBQ
         m1vCckO7cdZ1dDmSX1LbJU59sxUhudSt4mHxE8JqjstW3+dBpnJvuN5tBz5WHK3fobfx
         nv0OmfThdZ8np4W6bXLWeNXFx7W0HyPGStqKmKYjT/+5LB0xot7veu8br+cCkHjbKvFH
         90tRfZiAWB1iU19fyIduHns61UgaEH7CI/hZ/laZqKh8T/PTI5aRkP3IK3GQ5kPnALou
         CaEg==
X-Gm-Message-State: AE9vXwNubZod2A2LRNMt2H42vjXLvycu6VPXK/EcJz0IHQUd1fex7KsFk2vDnYjAkZL3xg==
X-Received: by 10.66.27.106 with SMTP id s10mr38048344pag.96.1474196095697;
        Sun, 18 Sep 2016 03:54:55 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id f7sm3140144pfk.79.2016.09.18.03.54.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 03:54:55 -0700 (PDT)
Date: Sun, 18 Sep 2016 16:24:48 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Forest Bond <forest@alittletooquiet.net>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 3/4] staging: vt6655: card: Break multiple assignments
Message-ID: <20160918105441.GA4690@namrata-HP-Pavilion-g6-Notebook-PC>
References: <cover.1474187686.git.namrataashettar@gmail.com>
 <fe7f635d9b75bb93286245415d4a54497a8a4842.1474187686.git.namrataashettar@gmail.com>
 <20160918104059.GA10846@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160918104059.GA10846@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Sep 18, 2016 at 12:40:59PM +0200, Greg Kroah-Hartman wrote:
> On Sun, Sep 18, 2016 at 02:35:39PM +0530, Namrata A Shettar wrote:
> > Break multiple assignments on same line to resolve checkpatch issue.
> > 
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  drivers/staging/vt6655/card.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> > index afb1e8b..00e7858 100644
> > --- a/drivers/staging/vt6655/card.c
> > +++ b/drivers/staging/vt6655/card.c
> > @@ -528,8 +528,10 @@ CARDvSafeResetTx(
> >  	struct vnt_tx_desc *pCurrTD;
> >  
> >  	/* initialize TD index */
> > -	priv->apTailTD[0] = priv->apCurrTD[0] = &(priv->apTD0Rings[0]);
> > -	priv->apTailTD[1] = priv->apCurrTD[1] = &(priv->apTD1Rings[0]);
> > +        priv->apCurrTD[0] = &(priv->apTD0Rings[0]);
> > +	priv->apTailTD[0] = priv->apCurrTD[0];
> > +        priv->apCurrTD[1] = &(priv->apTD1Rings[0]);
> > +	priv->apTailTD[1] = priv->apCurrTD[1];
> 
> Does that look correct to you?
> 
> (hint, odd indentation)
> 
> And really, the original code is fine, I would recommend just leaving
> this alone, it makes more sense as-is, don't you think?
> 
> thanks,
> 
> greg k-h

Does this hold true for any multiple assignments warning by running
checkpatch.pl? or is it only for the change that has been made here?

thanks,

namrata


