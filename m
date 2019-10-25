X-GM-THRID: 6751743425868988416
X-Received: by 2002:a17:902:740b:: with SMTP id g11mr5007847pll.10.1572021018664;
        Fri, 25 Oct 2019 09:30:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9725:: with SMTP id k5ls784641pfg.15.gmail; Fri, 25 Oct
 2019 09:30:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyqHmOMcCpHJXDm8RWoprusnNPbbo5YuJAkC9RQvuUItMmqi0pIvdCFv6wQu20UJdCQcbmG
X-Received: by 2002:a63:c445:: with SMTP id m5mr5494958pgg.211.1572021017501;
        Fri, 25 Oct 2019 09:30:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572021017; cv=none;
        d=google.com; s=arc-20160816;
        b=GpDngyOL4gqrimr/shbPo3XQeMlToDKAdaWg1kEu2mkBav2jTjU16Hkkr6tT4pPSuM
         oFGKx+yPf1LwYaREGFRyWkJUTIrbs7LYuRaNRQq1DaaTi+9/B8ZiQCavYy16iuf2tUG5
         XEGTavM+kj+KsVXWPbuuUN4n8IlaK3MKzPOGS6YrBLX/zccgGcYjvwK8NvMv+ZQopplM
         Nh3ttmFO00ImCw8asauZPet6GeH2l9NRbq+qm9ttj6zv8/zd3TJAl7z6sre0KyUqejpF
         1/VMqLuBWIi8/GCxtgT2NeOeGV7sERwYnAwjIhHQAeIB+QnG+l3Aee1TxR1TDORgppAy
         qCfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qcxDsHOL/CxvDA1jbnANU8zu9huPz2zSyvK9HCdpH0Y=;
        b=OMYn+XQ9fBU+lckXV5gxZg76Ul3rJvKGTN4mwn+o715QdyC9/p/dLdz+GRDTCvWx1X
         mDL/Act7JCDYSx0sqoNSMAGWcATw1uv03OvnF/jI8i3r6tBrkdZ6HuYRv0Uzq9WrqsH6
         2KchKvUSg5fpHbCFeL51R/NnjsRbOfkHkBiuYWHqkHnQrjikwuBIXGhNeMayUZ3oAXkg
         +dKkVnU7HjI+FgBurZa6dkOiawYgujOSZwavBrnD5fVlBWlqAoKoN3en/LmDwiPJHCh5
         2nbE3BNJVVViJjPllIO6a5NpmYg44LIRTQ72Rx2p8R14BOk6pzX5qoINje3zw8Nv/UB/
         YJXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lsed1mY0;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id z22si249218pju.2.2019.10.25.09.30.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 09:30:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lsed1mY0;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id m15so4161442qtq.2
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 09:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qcxDsHOL/CxvDA1jbnANU8zu9huPz2zSyvK9HCdpH0Y=;
        b=lsed1mY07xJ0Jlt/VvdQhkNhgqkzHjxBSkCGgZ7R5DAWxOm/0gpwAq74t5ds4HPhHa
         SEmx/9Xz+frVynLYy/SiYNLUsbRiwAU9X1FSnzGm712iTqspQcZjctqyqXCZ2YlK7r4l
         drhp3GXPrxvNVC6ru31e1neW2SJIbWFqrr1LrnP1w1CUCaSTdQ4jzYoPZz63Ooqn7U6k
         gY81sRVldhfy6q8mDZuw/3+9YEjj/wdBCyb60+m6v6Ypik5Z1KzZkrOufmTYUxUCTxMA
         HT5mp2iRmGQX20G/FD8QYrJOqz6nmeDT705SK104rCSX5WqyrBfNAzEkPJjRd5zpFhat
         8UDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qcxDsHOL/CxvDA1jbnANU8zu9huPz2zSyvK9HCdpH0Y=;
        b=lMuyeYo45u1i9HB7wMDjqp5zpJcVy1iwFXRnPhXDRhVL+AE9B4l8H32UUI5vlj6usq
         6NPqiPJOT02kHDMwg7TlVrP5TIQGhvJ+jhNiB0Pxbh1Rh+Akq0asj3XDrpTi6yia04GI
         GBd4rOVqJ6LGOgUBm08YolR/+vSA/qm5yd6YS5Bb5BMRgPF03/7hE6ypq0+X6PGP8lki
         mNDR6U1P4HKA437fUZR3TKpPVJZkskS5M/UYfzkIde0JnfGNU61Bh1v7rAhzZiozuIH6
         D80V7GrjQ+2DgTZYTacpuXlIdAWdoCThfGn6pm6+MUL4lVTZRSeY/CAwW7jasMKNjvmn
         477g==
X-Gm-Message-State: APjAAAX+M9bf25lZ0ODPYflunlmuFiNiQQOXVOViXBcs4s2rLB8tt8kC
	4g66mBCJGGZeC6qaIMr6sBc=
X-Received: by 2002:ac8:e03:: with SMTP id a3mr2421337qti.169.1572021016483;
        Fri, 25 Oct 2019 09:30:16 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id c23sm1847056qte.66.2019.10.25.09.30.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 09:30:15 -0700 (PDT)
Date: Fri, 25 Oct 2019 13:30:11 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
	outreachy-kernel@googlegroups.com,
	Greg KH <gregkh@linuxfoundation.org>,
	Joerg Roedel <joro@8bytes.org>
Subject: Re: [RESEND PATCH] iommu : Remove var of return
Message-ID: <20191025163011.GA31443@cristiane-Inspiron-5420>
References: <20191025151912.GA30952@cristiane-Inspiron-5420>
 <20191025154953.GA639799@lophozonia>
 <alpine.DEB.2.21.1910251753220.3307@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910251753220.3307@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 25, 2019 at 05:54:03PM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 25 Oct 2019, Jean-Philippe Brucker wrote:
> 
> > Hi Cristiane,
> >
> > Thanks for the patch, the change looks fine.
> >
> > Just one note: the title of the patch should follow the naming convention
> > of the IOMMU subsystem, and provide more context. You can generally find
> > out which format is used by a subsystem by running "git log --oneline
> > <file>", although virtio-iommu doesn't have many commit so it's not
> > completely obvious. For IOMMU, the format is "iommu/<driver>: <Change
> > something>", so the first line of this patch could be:
> >
> >     iommu/virtio: Remove unused variable
> >
> > Since this isn't in staging, I think the mailing lists given by
> > scripts/get_maintainer.pl should also be on Cc
> > (virtualization@lists.linux-foundation.org and
> > iommu@lists.linux-foundation.org, but you can omit kernel@vger.kernel.org)
> 
> Cristiane, I don't think you have many patches accepted yet, so you should
> stick to drivers/staging for the moment.
> 
> julia
All right, I just send a new patch iommu/virtio and I'll move to
drivers/staging. Thanks for the feedback!
> 
> 
> >
> > Thanks,
> > Jean
> >
> > On Fri, Oct 25, 2019 at 12:19:12PM -0300, CristianeNaves wrote:
> > > Remove the variable of return. Issue found by
> > > coccicheck(scripts/coccinelle/misc/returnvar.cocci)
> > >
> > > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > > ---
> > >  drivers/iommu/virtio-iommu.c | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
> > > index 3ea9d76..d8f29c8 100644
> > > --- a/drivers/iommu/virtio-iommu.c
> > > +++ b/drivers/iommu/virtio-iommu.c
> > > @@ -153,7 +153,6 @@ static off_t viommu_get_write_desc_offset(struct viommu_dev *viommu,
> > >   */
> > >  static int __viommu_sync_req(struct viommu_dev *viommu)
> > >  {
> > > -	int ret = 0;
> > >  	unsigned int len;
> > >  	size_t write_len;
> > >  	struct viommu_request *req;
> > > @@ -182,7 +181,7 @@ static int __viommu_sync_req(struct viommu_dev *viommu)
> > >  		kfree(req);
> > >  	}
> > >
> > > -	return ret;
> > > +	return 0;
> > >  }
> > >
> > >  static int viommu_sync_req(struct viommu_dev *viommu)
> > > --
> > > 2.7.4
> > >
> >

