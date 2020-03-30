X-GM-THRID: 6807884729429262336
X-Received: by 2002:a2e:b536:: with SMTP id z22mr7227788ljm.24.1585586027666;
        Mon, 30 Mar 2020 09:33:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8086:: with SMTP id i6ls1048704ljg.8.gmail; Mon, 30 Mar
 2020 09:33:46 -0700 (PDT)
X-Google-Smtp-Source: APiQypL6pjo2biIhcIw2Bdw5dUk3WHuqv07tdeYfbqHUZrZUZdRCldI3eusjMmUwwL1fbMxnFvPa
X-Received: by 2002:a2e:8059:: with SMTP id p25mr7515049ljg.196.1585586026200;
        Mon, 30 Mar 2020 09:33:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585586026; cv=none;
        d=google.com; s=arc-20160816;
        b=qL0OV/BPz5Bs9dPl3cCb6y5Nzyit5YYzSdzg32NXLzeJIncS1kt/iJl0MHBJFpE1AI
         sC/xFMPcFBri153J01g3+nd87MP5L7qfuhLQ0XG48kR1eBRBhBKwW+5Uy0WPdE0ErCA+
         hliLbDOeR1S3JVc48K9HVHSt8kufgZWuMmw95ZEPriMTiVdhb+OVpZoj6EXXQhZQRbno
         zg7XgafBJYLnlIrftEKIi3gMgM3nMWxAB74DegXbuiqwDWSKWlHAvA59dzrZBjNkY1Wh
         rUj6VAV4IAdxPlepZkZmwoECzpeE613D6O5u5PcTL2AYOc719xxCWQ1kev8tZqr/hRpb
         CvUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=2diseJYD9S5/WTPZ3X0NkEd+5BtlyZodYEHruZqSLTg=;
        b=yTdfvaWX7fGQBqVcT9MysgynqoiJdvwK13URzjq50TOp2Gbr92RCeDh1sHPkYw2vh0
         aEenGcCgjgPEd19yFr/mxYggXaYOf/1Dbg/lQndWLIH7DiWkIVLh8XyOebpknmoQ0ARv
         aQ0CY27l3vxgNMvDf/KpWF7JLSf4LpyGpz3xYgbfaqTJkvfO8nVcYKot0KMRsJ73wLKC
         lPGo1k8tGh1F0wUH0ajpigk4oyoW+jDIJJzKaXwl8cbE0ikZlJJ9qYsOeNY9ovlQf6uu
         dznASZDiqclRdDIO5txNCLVzjnn0x2UkT+ucp4PBSfjnWGItRCRKnZaH/J1u8R2dpb20
         TPQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="r/s3VHrq";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id q13si1015304lfo.3.2020.03.30.09.33.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 09:33:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="r/s3VHrq";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id d5so22543518wrn.2
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 09:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=2diseJYD9S5/WTPZ3X0NkEd+5BtlyZodYEHruZqSLTg=;
        b=r/s3VHrqiwHVhUAWkeqlbpdUvqErJ8IX2G3lmo4+8JoWEEt0c/NBQY4twknSYhSNKy
         XnIDzWgdgGLlysIKCmFYawpgtSkY2BogZ/HG4TBGz5pSTVeqkxnbldPRSob+TDsUZQy0
         0ST+w1RwMFjuSA3vYiwDDWyYFhO0Hvp73R3jMWImEqN86P0TbwMUMMsxFmvT6bBvohNF
         vx90/gKpNGwNgD5K/RBn0s2WXRZE/IK0OCRQtI23hmdJvZapkuKA1rAs8DErsWNd7C+T
         pDUYbboNXNaAVMGBRCI3NuKoY9CP0nNAhOPgCOEss5S6NiD3j9x1TvLS8zgJble11OfP
         1Ipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=2diseJYD9S5/WTPZ3X0NkEd+5BtlyZodYEHruZqSLTg=;
        b=kg65GaCFIXP4uFOyXw94+PToauNfGPoJi4G1MRxfpXuiqDETkY+wp8+LbG21WuPRtF
         c0NU41GRR1vBpG8pxuFV+sg8+H5kbJsMr1GPVm8UurMygdqugLfXwoZJuKQEHfa+kEnP
         K7Oyry+wqlZWU75hexIUPj9GoZcQkh6v/QSzzk8RfFs3BmRvnAua+cT9l2KvI7G/OQAm
         63QsMm+aIrJTtGD8u6wyzdPQhlZmD923r7Hhyr3T/PADl8rdJdA1IxEXdWdSWtXM4T94
         +1Py++Iunl38VAR0vwQqxqg2N40D4m8K/7hwpEvuGny5MRJlbEy1M50H9iZpxrux5nO0
         W6cQ==
X-Gm-Message-State: ANhLgQ0/TJdOagn3/Fjq2WeNIOxs8siXQmvyLfrLKQtzx46hdQ+TmEpZ
	av0tleXCgZLaIlj3UFi4Fw8=
X-Received: by 2002:adf:bbcd:: with SMTP id z13mr15642042wrg.389.1585586025581;
        Mon, 30 Mar 2020 09:33:45 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.98.112])
        by smtp.gmail.com with ESMTPSA id s131sm84088wmf.35.2020.03.30.09.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 09:33:44 -0700 (PDT)
Message-ID: <ce36e06d387c45691b8fe62fe6e7c3e6355ecab5.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/7] Staging: kpc2000: kpc_dma:
 Remove comparison to NULL.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>
Date: Mon, 30 Mar 2020 12:33:43 -0400
In-Reply-To: <20200330155543.5f52b955@elisabeth>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
	 <f344afba0a8bb0413941a63678688435f04a96b4.1585143581.git.jane.pnx9@gmail.com>
	 <20200330030346.6420ddc6@elisabeth>
	 <415066fb503764a528fa5cf4d681c5cd25065d24.camel@gmail.com>
	 <20200330155543.5f52b955@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 15:55 +0200, Stefano Brivio wrote:
> On Mon, 30 Mar 2020 06:48:21 -0400
> Sam Muhammed <jane.pnx9@gmail.com> wrote:
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
> Yes... it took me a bit longer to understand this compared to Julia's

I totally agree :D

> explanation :) but I think it's correct.
> 

Thank You.

Sam



