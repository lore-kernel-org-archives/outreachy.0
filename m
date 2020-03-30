X-GM-THRID: 6807884729429262336
X-Received: by 2002:a2e:7e08:: with SMTP id z8mr6846744ljc.180.1585566139044;
        Mon, 30 Mar 2020 04:02:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:549a:: with SMTP id t26ls1961351lfk.9.gmail; Mon, 30 Mar
 2020 04:02:17 -0700 (PDT)
X-Google-Smtp-Source: APiQypIfxtahyUpQNO5iWzwLgxGyQw70RTU3u+Lwv0gRq9q057LDWXRYAS+UdUWO3yjrMyKhZz1g
X-Received: by 2002:a19:2391:: with SMTP id j139mr7530808lfj.147.1585566137332;
        Mon, 30 Mar 2020 04:02:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585566137; cv=none;
        d=google.com; s=arc-20160816;
        b=QhdcnV3IZqc7Q/+f+/EuLkIfQ3CSjoBsiFHEtyGyVsxgCnTWxOPBZWfaxqO0iiAcdC
         YvQW1bIYuQl1qa48XsaTCLsqpeE01zLJoOIMKberOU6CqiCy6RHyXOVqi5PFmH3wsZ4i
         7OvyZQ2MpEBLr+53V6fGD8t0zmS2NZBmZSyKurXbECzPXsaOpumKpnKPHnMP5bK3VKSC
         9pYcqH0jg4jPT6NYdrFrjPkO1UFWj0DSNK46P5GJXKSWHEW60V9xXgZNinLYmdjNJf8L
         wLmBZaZ3sizUP29/b98OVjV84I96xuUasu1DjK1izC3gRrxmaJlThZp/KjA8dg0QBJlv
         y0ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=gVeXSNY+407i+AZXW0PXwpvMaMCCRiY6gOa6/afoDTo=;
        b=dVathisqGKerQSkUjl9KmP54YXKXFHQ1JCDJUXWuD/oqf/V9puTahDgeE8WumotRie
         uZhuELYXIxhhFxw3nKVPlFCp9vxDt5ZfZQArZ9JddOCEsoHd6123+liPI0GcmDnaBzvY
         l6+fXdp3zARKQug9aJWVbnNDWlez6mZF2WERB7v6VaqIniOfipdOyTWTy1yGMJ8Sd1XF
         2x1E8RxPtHMXfrJMrnbwI7Fslu7sWKCZBEkYqsX1bR6+wMou7a4qrj82vTeXPpzRPYPW
         1zwfznR6MmxUWku6TzcV1sTlOQ3srqPgEzGiqeh7on6sQHhcbx2fBKpguNAfbCPzIdWW
         yNNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hMxWehh6;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id e4si598680ljn.1.2020.03.30.04.02.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 04:02:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hMxWehh6;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id 65so21084084wrl.1
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 04:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=gVeXSNY+407i+AZXW0PXwpvMaMCCRiY6gOa6/afoDTo=;
        b=hMxWehh6gP1AyjZfQTEHNJaWdRbDwTDwVuppPgUhPnognwWjGlP1LK6D6Us4ZPz6CM
         IL8gq4NMnmOi1Fuu4PezslLedr7BkCmrQXyZbip3n9bQooHNXqrfbVG7BKTV9GrqvTLe
         8036Lkydr66XKKGUv9zKOXr2eq4Gx1j2bDgslVVIko2lMJNQpgWI7/0jWb13t+n/9+QF
         6hGbd6oJPwXTAvhzdlV8NW2LxnLtpR2ZIsI6PkXmq9qv2tgpAWAtJrQpc5bt/WrdpeH8
         d9CQKYwXFUJ3T2i8SuVDXnvKjOTqJ8tW9rk7tVpiRJOo0N+pydYTmJhakWbK2ih1VoCy
         uWRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=gVeXSNY+407i+AZXW0PXwpvMaMCCRiY6gOa6/afoDTo=;
        b=AJWeLH6bX74bRA6qcaSmA5fp2dlC70fqAppt7hpt2XJmTe8HhVXGsZ8vKXAa5FD286
         +Erj0BDwdH1NJzv4GXxa9R47V96XDNsliGecGIOfrttPtG48GEOh6fbs8N4x1tO7Jk2C
         Wk6CyHPspJU+IrtXDLnlxz6/5UZWEeLbvUSL33OzmP3eTCTjJKkPjpRw+razP3HMuMmB
         QxFMrdh06FkAWHCS3WWK5Dg5p//UjY9NLiYckDLqsDXY3pbFgMe+4V20nG6Isjv5OL1a
         ClgDNmLKKgRPm9yjkrMAzzgeRKI9Fc1pozVpKqe4Y/MDIJmARcCQFM6aadO6R5sEg5te
         3rqQ==
X-Gm-Message-State: ANhLgQ16iW/clyPlXxlOXbRv5kXc+qdfy0YZyKcls+4tcA6iSvJiEIEt
	+dAiO4kScdOqid6olZN50/c=
X-Received: by 2002:a05:6000:1090:: with SMTP id y16mr13546704wrw.281.1585566136761;
        Mon, 30 Mar 2020 04:02:16 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.98.112])
        by smtp.gmail.com with ESMTPSA id p22sm19976302wmg.37.2020.03.30.04.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 04:02:15 -0700 (PDT)
Message-ID: <4f6335b3a995f3a059e67f798e11f7ac21ae3069.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/7] Staging: kpc2000: kpc_dma:
 Remove comparison to NULL.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Stefano Brivio <sbrivio@redhat.com>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Date: Mon, 30 Mar 2020 07:02:13 -0400
In-Reply-To: <alpine.DEB.2.21.2003301257060.2432@hadrien>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
	  <f344afba0a8bb0413941a63678688435f04a96b4.1585143581.git.jane.pnx9@gmail.com>
	  <20200330030346.6420ddc6@elisabeth>
	 <415066fb503764a528fa5cf4d681c5cd25065d24.camel@gmail.com>
	 <alpine.DEB.2.21.2003301257060.2432@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 12:58 +0200, Julia Lawall wrote:
> 
> On Mon, 30 Mar 2020, Sam Muhammed wrote:
> 
> > On Mon, 2020-03-30 at 03:04 +0200, Stefano Brivio wrote:
> > > On Wed, 25 Mar 2020 10:26:36 -0400
> > > Sam Muhammed <jane.pnx9@gmail.com> wrote:
> > >
> > > > Comparison to NULL been used across the driver,
> > > > remove them and use (!var) instead.
> > > >
> > > > Checkpatch.pl: CHECK:
> > > > Comparison to NULL could be written "!desc"... etc
> > > >
> > > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > > ---
> > > > Changes in v2:
> > > > - None.
> > > >
> > > >  drivers/staging/kpc2000/kpc_dma/dma.c            |  2 +-
> > > >  drivers/staging/kpc2000/kpc_dma/fileops.c        | 12 ++++++------
> > > >  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h |  4 ++--
> > > >  3 files changed, 9 insertions(+), 9 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
> > > > index 51a4dd534a0d..4bfbc717bc07 100644
> > > > --- a/drivers/staging/kpc2000/kpc_dma/dma.c
> > > > +++ b/drivers/staging/kpc2000/kpc_dma/dma.c
> > > > @@ -236,7 +236,7 @@ int  count_descriptors_available(struct kpc_dma_device *eng)
> > > >  	struct kpc_dma_descriptor *cur = eng->desc_next;
> > > >
> > > >  	while (cur != eng->desc_completed) {
> > > > -		BUG_ON(cur == NULL);
> > > > +		BUG_ON(!cur);
> > > >  		count++;
> > > >  		cur = cur->Next;
> > > >  	}
> > > > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > index 40525540dde6..5eb6c5f24feb 100644
> > > > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > @@ -124,7 +124,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> > > >  		pcnt = count_parts_for_sge(sg);
> > > >  		for (p = 0 ; p < pcnt ; p++) {
> > > >  			// Fill out the descriptor
> > > > -			BUG_ON(desc == NULL);
> > > > +			BUG_ON(!desc);
> > > >  			clear_desc(desc);
> > > >  			if (p != pcnt-1) {
> > > >  				desc->DescByteCount = 0x80000;
> > > > @@ -203,11 +203,11 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
> > > >  {
> > > >  	unsigned int i;
> > > >
> > > > -	BUG_ON(acd == NULL);
> > > > -	BUG_ON(acd->user_pages == NULL);
> > > > -	BUG_ON(acd->sgt.sgl == NULL);
> > > > -	BUG_ON(acd->ldev == NULL);
> > > > -	BUG_ON(acd->ldev->pldev == NULL);
> > > > +	BUG_ON(!acd);
> > > > +	BUG_ON(!acd->user_pages);
> > > > +	BUG_ON(!acd->sgt.sgl);
> > > > +	BUG_ON(!acd->ldev);
> > > > +	BUG_ON(!acd->ldev->pldev);
> > >
> > > I've seen some tool reporting this (perhaps Coccinelle?): with
> > > x == NULL, BUG_ON(!x) causes a kernel panic just like dereferencing x.
> > > So the first statement in e.g.:
> > >
> > > 	BUG_ON(!acd);
> > > 	BUG_ON(!acd->user_pages);
> > >
> > > is redundant. This change wouldn't be related to this patch, though.
> > >
> > Please correct me if i got this wrong:
> >
> > Does it mean that explicitly stating BUG_ON(!x) case to cause a kernel
> > panic is not necessary since its already being dereferenced, and
> > dereferencing it is stated to cause a kernel panic already?
> 
> Suppose acd is NULL.  Then acd->user_pages will crash with a NULL pointer
> derefence.  That is the same as what you are asking the BUG_ON to do in
> the first line.  So you can get the effect of both lines with only the
> first line.  If BUG_ON gave some more helpful information, then you could
> also have the first line.  But it doesn't.
> 

Great, Thank You

Sam

> julia



