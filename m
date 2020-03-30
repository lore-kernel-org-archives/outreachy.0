X-GM-THRID: 6807884729429262336
X-Received: by 2002:a2e:b4b9:: with SMTP id q25mr7214250ljm.104.1585569349704;
        Mon, 30 Mar 2020 04:55:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:549a:: with SMTP id t26ls1983307lfk.9.gmail; Mon, 30 Mar
 2020 04:55:48 -0700 (PDT)
X-Google-Smtp-Source: APiQypIeOzi/E5S5Nd/jiwH8vqfHh6+3DQxmnPiYrzpK0yVRVTUnCb9eqcBvV9rr7Vg2TlLVHYvG
X-Received: by 2002:ac2:5327:: with SMTP id f7mr5391192lfh.214.1585569348235;
        Mon, 30 Mar 2020 04:55:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585569348; cv=none;
        d=google.com; s=arc-20160816;
        b=xf5Zvmr1wvSBiBTUyIAA7SY28ydiD7yS3CzORSmT0/fP43DKHp8k8h5tmZwoanNv1Q
         SMGZ/9Dv5XK4Q4N0aGv95QMxg5HIR0tg6gHFLEL/viOF2hlhU18VtdrodOG/wSOQJ20C
         UyboAThOrIAbWzzhtPWSxxVMOCSQRXpgiQFatGTlBJ5NO6oQndk0IiyoxPjrAv6Sw52H
         A4uBhoXTpr63ZYNyVRmLw3wVO7vm5nq6h0swuzeQ4bOb9ugyreZSW3PHSs84lyj7gSql
         HenPuI73M8sduCSsb+1A0/3tEV2rLTrRhJDn2NcK5j7tSz3UTKxDIUXaWuvkw5+uzlqw
         tljQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=BFy3Wi2V5+D6UBjFc9zbsInDGn9rH/6gnGGOhwvuzDM=;
        b=vY/VPxKRuP2UVs5Qz9yoS+UKg0Y2E9AUB0CiVmwedayB4XqdQisnuaYhT7xON0sIMq
         ill5RY/yOtB9lIUu4FV6YUEs1Hv7aPgG+LuKPBANtibL9/pgjp5SwZ9BnX0T0uzoBr4W
         Q2hdEn1TWdgXM1LHgDBVBpG43lh3DCEg8uTzuZ6h8MgevtD600M+tXA1aJGCpkKLN58n
         /CS2YbtOfVeIo/VdPifNhI43LYGYXoLHBuN/dEK8/hkuMJLQumo3ULGIVRqXwXI4AOJ6
         UJhTuKPrs/gEA5sbZBdEtIcKe3JI5ncKXgpbPrxCuihCjcsZhnKYtYL3Z71fmsPwvNJy
         s1rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=griUDaH0;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d12si783259lfi.2.2020.03.30.04.55.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 04:55:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=griUDaH0;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id 31so21237347wrs.3
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 04:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=BFy3Wi2V5+D6UBjFc9zbsInDGn9rH/6gnGGOhwvuzDM=;
        b=griUDaH0F1Wcul1vY+rL1kr7+lN1z4FjNbW0Prc2ZF3CC4N4cAqRHFjyO9MYZPF45+
         8nmVuzT+q+Byr0tP9JOrNGiPkjnXgMWVjUJ8qlQHGkfBerx1kz130Sn7O6VCnFzkjGHy
         ux989wzyfSboRMYuauhBhn1bS9h6ng6oSXpl+f9cnX1NRb9ZpbJD2ubGv75ZleuvuiwE
         TryaQyhYK5FaKP3buscoeWEcWmwCEh+6irFtKwnmriqkzWBeIspRifYaXpq7+hOHudOI
         iC5DMcarr5lBgi+2+DcvmlmWYICuSAmrow+6mxcdlHgK+RJIXl9d4WnpvZ/KQZ57LLLT
         DkEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=BFy3Wi2V5+D6UBjFc9zbsInDGn9rH/6gnGGOhwvuzDM=;
        b=DJXLs7Nm1coMDfKZR6gIFcvvlGEYO1aV9D/AfxBAvlPEHIIkZvzXwpUhORsgdEL36K
         /oZwr6HdZOPRgdOCKeNvXb2NWNqDroisJJXufreDJoQsHbqGZOYaf6v2UJPuDC0rHJhv
         Ute+Y15pCiZeBxlp/vv/7zX5F9pCAHOItN/bd17qu7VO78PqNrFKQil7VL3t6gvjlZ2M
         M+69qNjTNijcsWmNYnm3Y4lWSHVjUHMQDXlMPNnYYz7Y1cqRvb4bKETj6056qao/BcNd
         +6VaybQc3hEY+O/mVWnvHjqj+Yh7K8mMBk11WPVU6I1UUW7NASn3R8/Rh0BXYLF/e+8W
         G6tA==
X-Gm-Message-State: ANhLgQ32h5jOMf/fw/HBduufGkmElP7wS2fC4RDF/LaF5wq1q2B21uJS
	BeaxMvSM8YeDN2muAjspUnk=
X-Received: by 2002:adf:f7cf:: with SMTP id a15mr14280801wrq.224.1585569347539;
        Mon, 30 Mar 2020 04:55:47 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.98.112])
        by smtp.gmail.com with ESMTPSA id v11sm22113472wrm.43.2020.03.30.04.55.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 04:55:46 -0700 (PDT)
Message-ID: <65ecf86be7e14f5c3fec03acb4ff51c86ab211ee.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/6] Staging: kpc2000: kpc_dma: Use
 spaces around operators.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Julia Lawall
	 <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Date: Mon, 30 Mar 2020 07:55:45 -0400
In-Reply-To: <20200330030244.5a906bdd@elisabeth>
References: <cover.1585082157.git.jane.pnx9@gmail.com>
	 <d881bf9d5c442ae5a0d6669624355f7af73f5fac.1585082158.git.jane.pnx9@gmail.com>
	 <alpine.DEB.2.21.2003242221390.3306@hadrien>
	 <44ca99f66316430555a2da1379283ca846acb027.camel@gmail.com>
	 <20200325123643.GA3454907@kroah.com>
	 <633ff2c9781a296317fe5004e64ea6a6d3a08c80.camel@gmail.com>
	 <20200330030244.5a906bdd@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 03:02 +0200, Stefano Brivio wrote:
> On Wed, 25 Mar 2020 08:57:30 -0400
> Sam Muhammed <jane.pnx9@gmail.com> wrote:
> 
> > On Wed, 2020-03-25 at 13:36 +0100, Greg Kroah-Hartman wrote:
> > > On Wed, Mar 25, 2020 at 04:00:36AM -0400, Sam Muhammed wrote:  
> > > > On Tue, 2020-03-24 at 22:22 +0100, Julia Lawall wrote:  
> > > > > 
> > > > > On Tue, 24 Mar 2020, Sam Muhammed wrote:
> > > > >   
> > > > > > Cleanup Checkpatch.pl CHECKs about missing
> > > > > > spaces around multiple operators.
> > > > > >
> > > > > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > > > > ---
> > > > > >  drivers/staging/kpc2000/kpc_dma/fileops.c | 12 ++++++------
> > > > > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > > > index d93097ed781c..e599ae1bdfd0 100644
> > > > > > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > > > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > > > @@ -19,7 +19,7 @@ static inline
> > > > > >  unsigned int  count_pages(unsigned long iov_base, size_t iov_len)
> > > > > >  {
> > > > > >  	unsigned long first = (iov_base             & PAGE_MASK) >> PAGE_SHIFT;
> > > > > > -	unsigned long last  = ((iov_base+iov_len-1) & PAGE_MASK) >> PAGE_SHIFT;
> > > > > > +	unsigned long last  = ((iov_base + iov_len - 1) & PAGE_MASK) >> PAGE_SHIFT;  
> > > > > 
> > > > > It seems that the & operators were lined up before and that is not the
> > > > > case any more.
> > > > >   
> > > > 
> > > > Yes, why they were aligned anyways?   
> > > 
> > > Because it is easier to understand the code that way, don't you think?
> > >   
> > My bad, iam not used to see the patterns yes, so aligning the first
> > statement to the second would be a different change? or since a change
> > is made anyways they both would go together? 
> 
> I think yes, this should be a single patch, because:
> 
> 1. realigning the first line is needed only as you edit the second one,
> 
> 2. with two patches the alignment would be "broken" after the first one
>    (this is especially a hard rule with build failures and warnings, but
>    the concept usually applies to these cases as well)
> 
> ...however, why would you ask this question and anyway re-post the
> series 89 minutes later? Mind that this is a good way to get your
> patches ignored by some maintainers.
> 

But reading through Julia's comment about it and re-considering the
change, my question was already answered with Julia's comment as of 
_if i make a change, i should keep the style and not break the
alignment_

So i probably shouldn't ask the question from the first place and read
Julia's comment more carefully. :)

Thank You.

Sam



