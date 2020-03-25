X-GM-THRID: 6807884729429262336
X-Received: by 2002:a19:ca12:: with SMTP id a18mr822341lfg.213.1585141056040;
        Wed, 25 Mar 2020 05:57:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4d15:: with SMTP id r21ls282133lfi.0.gmail; Wed, 25 Mar
 2020 05:57:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsm0KV9TMHECHXvqI2vrG7XWPATzuUDAugSgLHT+sbmn3Yb6zi3B1oLM4FQ7ALACY2U7nth
X-Received: by 2002:a19:3847:: with SMTP id d7mr2250266lfj.158.1585141054576;
        Wed, 25 Mar 2020 05:57:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585141054; cv=none;
        d=google.com; s=arc-20160816;
        b=h9CTSu6C3/KqpCErcV2+qxUjeOYWmZJjz7+uxd6Pib/2FY9iIk+9JYX4Gqv9Djmn4K
         B91Dx/3rX6O7UmFtdbkDmWMXAzaQu0LeXjhki8j3jCBofTbPph9sEimc5kKAki+I0g55
         3YlMQkjNw6oUIhx5TE6586cB5erDlTOycvFunDDysB1vayq3gAKAbHwClsbnV+kREAq6
         EMSsUdA3ml/Q1JiOsVXqvaTDCs9Nxdz3hh+dBUla0vqYjYzk+ikYFkBsJosQ6EWw4XKo
         Apt9VSo5VCxeK+29gh6vXoLBL/jJjktt/v8JWa4k0cShhYLSDZ2cQAzE0c2mlZvQE6Zl
         5qVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=XSBkMUge2AQafylrZTGC2DU4o+GgY2ukFQa7T0xmDy0=;
        b=bVBr68N9BtIK6fp+zPl2DJfMLfkXQipmGDbNC34Q4Nh9X2a/vJhzJnFQIp9VkufLZt
         o0HSU3euNL5ODZGQDgSPNoP/SanLfW25+1y+wKkKbbIrH6ePJ45n8clSi/blqorRUpN2
         fP+HN+TzdHPnQXvKHHv3MHJV+XgnT/XURy2Nh6udITBmqknLmFntkeX+EmttQEjPs+Wh
         4l9SvsQhOq4vO1uKRkcjiDdHXYCqo4PznyBaXl4p/feKR2a8JDzsWEzy7LmICR35LHun
         GUJ/BzcaLjwzWsQlSRb6FMDAkAVE+GXekKGOPf1Rx3Aov8vbJVjgPYBmvbAg4or+f52s
         XSuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=or85tOVw;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id q17si977485lfe.4.2020.03.25.05.57.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 05:57:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=or85tOVw;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id a81so2509912wmf.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 05:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=XSBkMUge2AQafylrZTGC2DU4o+GgY2ukFQa7T0xmDy0=;
        b=or85tOVw6++CfGd0wrDyUU0vs/Blw8jQ5WRAChAS4KzknTUEWEB+oKlStm93+QdMw0
         0s1K0hAJuYEGTth4W2Cv7XK5Bk8TexJhEHcOsYWEBdr4bKhsJtcuqjcWhI7nJbXS8WC2
         clYgKUTDdEcWtRGs9yK9pAM2m6PXEOmnbPb6g8Nk0TZ46N5/H07RwGLFY5Rue4HEzkTK
         3b/CLqkrkcaAm6fPiv3sQd7mytmNv0xO4PNxgoHJVbPtNEO5XxeulpA73Ci/8tufz8eP
         VMqFAwS8l1YAJxHVYrkov9upkJskOGf5nJRiFQJj9GZvpc4e3m1n43JS0urw80c1sEtp
         v2pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=XSBkMUge2AQafylrZTGC2DU4o+GgY2ukFQa7T0xmDy0=;
        b=ea36irlM4vc8R4UOITXMV9PoxVxOak3Jljf/LnqpPjPtlWcVoiePTjaQU1WkV1/4Du
         +O41+NC4Y/RFbiSnF6xmq7rH81yw8COgGq3pvJEpl9nhJMotZGhxVBPvZpVvAcvFmBYl
         8GkOvfQcM+vIDhdk6Pq964/LUPkTUmah2zrJiNqUuWL4HU8CG3w447/LZWXP0nwKwSkC
         kfSyEp4CDLNVL0JN0kPA73jXs19AwElhvCABMIBcVZ0EhTwet54RhzPrLdSrsZm/1cKA
         7qyUtHSw/Ju13NCkaPcZm09tIsHqq0h6ThDwiNunsQF/fdzkaPeLjjEL9RWSsp3Ped0y
         rpFw==
X-Gm-Message-State: ANhLgQ0mptKm6h8dfEYTPEgfLkgM+I4JBJopUcxu4kHT1XhjrKJzPzlm
	3VNN+BMY3iEsTxBJqv9Lnz0=
X-Received: by 2002:a7b:cd89:: with SMTP id y9mr2166880wmj.142.1585141054014;
        Wed, 25 Mar 2020 05:57:34 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.86.140])
        by smtp.gmail.com with ESMTPSA id s15sm28532924wrm.15.2020.03.25.05.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 05:57:33 -0700 (PDT)
Message-ID: <633ff2c9781a296317fe5004e64ea6a6d3a08c80.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/6] Staging: kpc2000: kpc_dma: Use
 spaces around operators.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Date: Wed, 25 Mar 2020 08:57:30 -0400
In-Reply-To: <20200325123643.GA3454907@kroah.com>
References: <cover.1585082157.git.jane.pnx9@gmail.com>
	 <d881bf9d5c442ae5a0d6669624355f7af73f5fac.1585082158.git.jane.pnx9@gmail.com>
	 <alpine.DEB.2.21.2003242221390.3306@hadrien>
	 <44ca99f66316430555a2da1379283ca846acb027.camel@gmail.com>
	 <20200325123643.GA3454907@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2020-03-25 at 13:36 +0100, Greg Kroah-Hartman wrote:
> On Wed, Mar 25, 2020 at 04:00:36AM -0400, Sam Muhammed wrote:
> > On Tue, 2020-03-24 at 22:22 +0100, Julia Lawall wrote:
> > > 
> > > On Tue, 24 Mar 2020, Sam Muhammed wrote:
> > > 
> > > > Cleanup Checkpatch.pl CHECKs about missing
> > > > spaces around multiple operators.
> > > >
> > > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > > ---
> > > >  drivers/staging/kpc2000/kpc_dma/fileops.c | 12 ++++++------
> > > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > index d93097ed781c..e599ae1bdfd0 100644
> > > > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > @@ -19,7 +19,7 @@ static inline
> > > >  unsigned int  count_pages(unsigned long iov_base, size_t iov_len)
> > > >  {
> > > >  	unsigned long first = (iov_base             & PAGE_MASK) >> PAGE_SHIFT;
> > > > -	unsigned long last  = ((iov_base+iov_len-1) & PAGE_MASK) >> PAGE_SHIFT;
> > > > +	unsigned long last  = ((iov_base + iov_len - 1) & PAGE_MASK) >> PAGE_SHIFT;
> > > 
> > > It seems that the & operators were lined up before and that is not the
> > > case any more.
> > > 
> > 
> > Yes, why they were aligned anyways? 
> 
> Because it is easier to understand the code that way, don't you think?
> 
My bad, iam not used to see the patterns yes, so aligning the first
statement to the second would be a different change? or since a change
is made anyways they both would go together? 


