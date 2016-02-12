X-GM-THRID: 6250289163666456576
X-Received: by 10.182.29.129 with SMTP id k1mr3050356obh.23.1455305725703;
        Fri, 12 Feb 2016 11:35:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.194 with SMTP id c63ls879713ioj.109.gmail; Fri, 12 Feb
 2016 11:35:25 -0800 (PST)
X-Received: by 10.107.12.99 with SMTP id w96mr4132568ioi.5.1455305721873;
        Fri, 12 Feb 2016 11:35:21 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id ff2si1613158pad.2.2016.02.12.11.35.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 11:35:20 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id yy13so51120843pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 11:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=/6zMQatUqnquyXSW8b+/Osj9nNpHnbW/vMzKeWj5PCA=;
        b=p8D5HIcpaswWdkfsSnnIIv9AxXWZD4+d6poBbC++mlnRV9qJU+NLqNBJKhx4tasHAS
         BhH4oskFhd33JCADxq0ZU2RBtlWu61gUDrOyNuParBJzK1AU5/faq0X3H0ShgY7H/5qa
         52pasXNvIx39ecOI5AAkxE4xrC43tYNZz4ENDBvLopFAbiKMXhUxKpqylCnq059jFzOE
         eS3frgs87PcYlwbbp+4p3azG4JspvwKS8LXX/XgBx/BQ330tpSBZcin3Lf5XNOU0MacQ
         urzOJtihQoKFItSv7ucamS42JEPFWyewiZzryn9K/KPYVHTOlvZYtgdBjotZe+hUH7sb
         Y2oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=/6zMQatUqnquyXSW8b+/Osj9nNpHnbW/vMzKeWj5PCA=;
        b=TxcFfNf6wqBO9UiI4W29/02ImOgTjrvHO/Z6GdXbahR+y8FTSBE7UlNsOEPIABtO9E
         6SicrHafJteZ0HEph31Mk6xsu2So11VKu3p9jTCbV6dxDGEeTStTu4nR/jXLX0CPvHF7
         2lyzP/eGYliTfme0yajMQ10tVmJB9xt9WIr9fGTDvQNtdyJSlY91cC6BDrjAID81m4NM
         2d2uvpLU0rxH5eRnTb2kwBY8YQdajSkSLl06h02KcmkyFPYNmBJ9GDZvdfy51Ei5mNze
         RgEuLMUvDSAKI+3CWuSw9YYlVDM1VEiuyI8xhnru29EMBZBl3hHK9BRw/+ax4/gZ5p03
         b6BA==
X-Gm-Message-State: AG10YOSWw7VU1I7jdbUydKPSZg/AV7UpxVMwYsfvVk7XOXBanVXcUpHQCtWl1o1BrxaHXw==
X-Received: by 10.66.124.131 with SMTP id mi3mr4609347pab.7.1455305720845;
        Fri, 12 Feb 2016 11:35:20 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id y11sm21191377pfa.85.2016.02.12.11.35.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 11:35:20 -0800 (PST)
Date: Fri, 12 Feb 2016 11:35:19 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tejun Heo <tj@kernel.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace kzalloc with
 kmalloc
Message-ID: <20160212193518.GA5221@d830.WORKGROUP>
References: <20160212063353.GA12041@d830.WORKGROUP>
 <20160212172045.GK3741@mtj.duckdns.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160212172045.GK3741@mtj.duckdns.org>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 12, 2016 at 12:20:45PM -0500, Tejun Heo wrote:
> Hello,
> 
> On Thu, Feb 11, 2016 at 10:34:05PM -0800, Alison Schofield wrote:
> > All fields of allocated structure are filled in directly following
> > the allocate, so no need to initialize it to zero.
> > 
> > Use preferred kmalloc() sizeof style to silence:
> > CHECK: Prefer kmalloc(sizeof(*priv->rcb[ii])...)
> > 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > ---
> >  drivers/staging/vt6656/main_usb.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> > index a2f23ae..74ff707 100644
> > --- a/drivers/staging/vt6656/main_usb.c
> > +++ b/drivers/staging/vt6656/main_usb.c
> > @@ -449,7 +449,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
> >  	}
> >  
> >  	for (ii = 0; ii < priv->num_rcb; ii++) {
> > -		priv->rcb[ii] = kzalloc(sizeof(struct vnt_rcb), GFP_KERNEL);
> > +		priv->rcb[ii] = kmalloc(sizeof(*priv->rcb[ii]), GFP_KERNEL);
> 
> I don't know.  It's on the init path which is extremely cold and
> zeroing followed by inits are extremely cheap as the inits end up
> hitting the same cachelines (sometimes even cheaper than not doing it
> as zeroing often doesn't even need to read in the cachelines, so it
> just becomes cacheline allocation).  It's nice to zero this type of
> structures as later field additions or code modifications may lead to
> surprises.
> 
> This doesn't mean kzalloc is always better than kmalloc or vice-versa
> and what to use when can be a surprisingly tricky question.  I'd
> suggest staying away from mechanical conversions between kmalloc and
> kzalloc.
> 
> Thanks.
> 
> -- 
> tejun
Thanks for the review and detailed comments. This caught my eye because
it differed from the other kmallocs in same function.  I found that it
had been changed to kZalloc a few years ago via a patch that replaced
kmalloc+memset with kzalloc. Unfortunately there was no mention of why
the zeroing was needed in the first place. I saw that to be a "mechanial
conversion" and so pursued further.

Each piece of this struct is initialized immediately after the alloc,
so usage before initialization is not the issue.  As far as being on a
cold path...that's where I lost the trail.  It was not clear to me that the
".start" op is only done at probe.  I guess I will drop it based on
that fact.  

(cachelines and protecting future changes were not on my radar)

Thanks,
alison







