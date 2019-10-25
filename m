X-GM-THRID: 6751743425868988416
X-Received: by 2002:a25:760c:: with SMTP id r12mr3669675ybc.240.1572015550610;
        Fri, 25 Oct 2019 07:59:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:7845:: with SMTP id t66ls337839ywc.14.gmail; Fri, 25 Oct
 2019 07:59:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyypmZDTDaaa2jWIqfDzFlGzGh1G2JdZ4S05NeEeOssJlscCs11+Ls/qhDNxVK9MsWrGijv
X-Received: by 2002:a81:35c9:: with SMTP id c192mr2761609ywa.57.1572015549029;
        Fri, 25 Oct 2019 07:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572015549; cv=none;
        d=google.com; s=arc-20160816;
        b=sZ2Ixi3tMeX2xMG/cJS5zZ0RxPO3tNNKxHctCpOpAsfk/SulBRv8kBpRmK+j/RNMS5
         YqegJhEc7OLQU2cSMyojmh1gxZyD/+3Henj5o9k612OO5BJA9DEO5e4BhH+6DyCV4c1F
         +kGsIKx6aEcKIHbhNBussPHdnfn92jeTwA7exv5AOi4bld2PbJE3STkeEg6B4NIbWsEI
         SEbgbVUgH4fNmNQOX994VpglcPWK+QEMD/hpebulFE6VxrW1mGtwL8Ox0+9qlEp5k4ns
         k5kLF7qyxmJrCw/q59pAsAas8x3uQcZ6raET/ulDxOQk/m9VIOcC4TUdLLDVMYS6JrjT
         VhOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ql0AELSmhprXW9icv1KW1FHlhJ1sR527p4w2pucGjso=;
        b=sLW8DkEL7j9I93zoAhnHGYbhDbbEvqJbV2/u4hAgOoAdfcmybBlW9ZqJcYELsnIP7q
         s4WVeD9cqbdxk/kxnEea2TSKvqe/5mpMShfJe7yfsjY/uAv7fYvP+PuUOnDRqr8YXEOC
         IprcUwdBzK5bw84GkVGZQmE+FRWzRhJM7UlP3C/MgJW0JT1UiB0dh26wEniXlD/HbBfA
         BzclWHx5LapouJFXm008qhPlRgRgVd71DsqN4GMh8ATEx2YsKQTQgXL3T0RhDUqBBg8A
         6lDitX3QmaDMM2kua6+LJCwAoY/p8Z1I/Ct4aaaFdWtnUMcFYqY7qqMc4rKDqQaJQrjM
         aT/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mT5Y1dtD;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id u8si164085ybc.2.2019.10.25.07.59.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 07:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mT5Y1dtD;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id w2so2039889qkf.2
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 07:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ql0AELSmhprXW9icv1KW1FHlhJ1sR527p4w2pucGjso=;
        b=mT5Y1dtDPJQUFBWoOv588Lat4nBjZVfPIX2TJuKy1OfHDg5kqYN+fb1fvhtAzkySRl
         kttmVE8YgXr4AAZZq2RBf0xxjyTLzauSlf+4SJZ6TbpM8BKItckgsZBGvV293+6/r03g
         HEFnKJP2X1EizvIFDOqlRozTjJzgSYfnT/zPVktbGMA0+XEAAUAcQwwpymHkAbEqVjjR
         Bv4gS0nY+pSxJmZG6xQCqSp77LTtG41If23GT0FrdIbfe5fO2AVoPAurn8dMdy9ELMx1
         kheovHVDXitImWtgdMqKfNzzaIa4wALwKK1HBeQtQ/GdHjtCE8+9vgNPwoRQm+WZdlDI
         e5gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ql0AELSmhprXW9icv1KW1FHlhJ1sR527p4w2pucGjso=;
        b=GhfmmVp65cP4DL+DTNqzkIOzDf6yBCI7Hu/Mnp5WhHTVZyseeB2BAVwIKmabJtTRKk
         NDA4oi0+sH+J7LVK7b6E3sQOPorm4Bec5hpi9wuNPdNkYYe8BBNt3OyLLdHQnhdDal0w
         LIaQgkfLg/ffJob+itxADzvNeZmZL3cC0dJ/zr3rWT+VtDFJ0WZf2mih5FN9EXWDNWJq
         7Oo49V36a0TmqU4tEuq5T1/3d2szJEm1CoGMEHSwjRGPdBOjEGJ1+koAN8nCRsO96epV
         o+VG8Th+UrlT/skWYGZTnXeTS66TuCEkkkrnxBDiWyLJ4Oxn9aG7SeattO9WoSqRCGK+
         iorA==
X-Gm-Message-State: APjAAAUseH2kkk1hdd4fLsjl50j9RjKJ2DJu9DwdO9+PHNHjOyJQuZdm
	tIome2wgt6gYTH0YVQKXSPU=
X-Received: by 2002:a37:8b03:: with SMTP id n3mr3121550qkd.493.1572015548576;
        Fri, 25 Oct 2019 07:59:08 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id j10sm1427228qtb.34.2019.10.25.07.59.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 07:59:08 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:59:04 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Joerg Roedel <joro@8bytes.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] iommu : Remove var of return
Message-ID: <20191025145904.GC30690@cristiane-Inspiron-5420>
References: <20191025141240.GA30575@cristiane-Inspiron-5420>
 <alpine.DEB.2.21.1910251622030.3307@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910251622030.3307@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 25, 2019 at 04:22:59PM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 25 Oct 2019, CristianeNaves wrote:
> 
> > Remove the variable of return. Issue found by
> > coccicheck(scripts/coccinelle/misc/returnvar.cocci)
> >
> > Signed-off-by: CristianeNaves <cristianenavescardoso09@gmail.com>
> 
> So there is really no space between Cristiane and Naves?  I would have
> expected it to go the other way, with a space in both cases.
> 
> julia
> 
> > ---
> >  drivers/iommu/virtio-iommu.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
> > index 3ea9d76..d8f29c8 100644
> > --- a/drivers/iommu/virtio-iommu.c
> > +++ b/drivers/iommu/virtio-iommu.c
> > @@ -153,7 +153,6 @@ static off_t viommu_get_write_desc_offset(struct viommu_dev *viommu,
> >   */
> >  static int __viommu_sync_req(struct viommu_dev *viommu)
> >  {
> > -	int ret = 0;
> >  	unsigned int len;
> >  	size_t write_len;
> >  	struct viommu_request *req;
> > @@ -182,7 +181,7 @@ static int __viommu_sync_req(struct viommu_dev *viommu)
> >  		kfree(req);
> >  	}
> >
> > -	return ret;
> > +	return 0;
> >  }
> >
> >  static int viommu_sync_req(struct viommu_dev *viommu)
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191025141240.GA30575%40cristiane-Inspiron-5420.
> >
Sorry, It's wrong. I'll change the name and resend the patch.

