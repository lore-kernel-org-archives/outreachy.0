X-GM-THRID: 6805820058208567296
X-Received: by 2002:a1c:63c4:: with SMTP id x187mr2247507wmb.124.1584606397171;
        Thu, 19 Mar 2020 01:26:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d4c4:: with SMTP id w4ls579620wrk.8.gmail; Thu, 19 Mar
 2020 01:26:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuZHYXjoH7VIrrWKTiu5WWsjfZ5sZ51EwP3MaZmynWg57PcdK9AsKXexerpuL3P0J//sn6t
X-Received: by 2002:adf:fe03:: with SMTP id n3mr1183906wrr.266.1584606395708;
        Thu, 19 Mar 2020 01:26:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584606395; cv=none;
        d=google.com; s=arc-20160816;
        b=aNM9vfvY+zlfIvdDIVZmmchSzxF08IeSWIDkk1cli1JlUgyh3cIlujlVqRVuCr53XT
         3uFqRTIUOGcdz0CHsrFJDC8FxcloWIyLjlN4XHvFHaSXsV2WqHxwKFYSeS6FJ591kc02
         jLJLo+aLsZF/6Y0yGXxvJgmqHOZ8/4oxRR4HY3fWaTa6yKiCHqBHsyFzLemCTKS2pW5g
         qQt+9gfmJ6RsFahZZZ1g31n5FRtfY4avtJTdfksa9oCPjNQsHARUj8NEmERxdxCiKfTw
         LSFquAJCUY/h9GMivp23mSWv4ekqy0YPMGvTXnXZaib83UfI/LE4ZbjhOvIolYrfVQH1
         qPpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=K5XOE6nwmIaK8VKtV3NtbtHlYcKO7Y56L1SO+9Fb7o4=;
        b=Lqj2T0y/KuB7Bd047zBVuZ5jeSgtqi9H9Ixp37VBXAMsF0e4elWI7hOO/zJNtLsDd3
         5bCbRCftGYTnsm/M3XUrGe812F4luYiWjtsuGHEFr/9XkWHdF1JQ9OwE9OYUEk6pWfgl
         MXTl9y/VytuDI35mAnCBM518ZDdEZn6ZokzyTbjG2O0/anbNzI9yNV6T5kgzABn7bdNP
         PigJejEeM2oXH6/3IljRwzDtF+s8H5tVNRWJ1xTDweHLzMuXY0pYlbytX7MXph+HHxRW
         7wYqY49zyxmP5diVQYB4uVFtoGGMyilgw2pMRXDW3M+1PjHlvg5EUi2FdiPlCGkNcMoG
         Uyyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W5QyRtpu;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id q205si88699wme.4.2020.03.19.01.26.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 01:26:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W5QyRtpu;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id l20so969454wmi.3
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 01:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=K5XOE6nwmIaK8VKtV3NtbtHlYcKO7Y56L1SO+9Fb7o4=;
        b=W5QyRtpufTHoSTXwyweda9qv4mMKXr+CHQCmgITDosEVVjQK3aSwYahZRQcOnqTYjt
         IgshQiwgSLeEXxw6rVfCF5TLq+8MB5Q+7nkk2vs6WJQlbXbk75DnS4CLw9ZjbwRo/C1q
         4teSK6tE6qQQPUihn2z3KTBTFjQqi7zFMOjaigOKZ8lXVB8abmmV/GxW+D1LGjMJif/e
         KOKaIXS5Be16BVIWgwUauGOZVttsYW6PCJLWsAd8FWjLqbIj2xJiXs3V5EkLmcnV6jiV
         0lDLG0osKb65dRuK5mp9rFzP/2MTa9zUOGVoRUCNvbC6+wzn55nWtUPsjFaaF314vpVy
         FdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=K5XOE6nwmIaK8VKtV3NtbtHlYcKO7Y56L1SO+9Fb7o4=;
        b=uc4M48IXEbYGg2C8LBMCVprJwNUpZZOgfMFl7nFrKDLNg/ItOLDA+9xHYcTC2QEXav
         IfgWeuOiEjQEm2vlBveU5mJ+Dz0MgN4XVXPirBYaalYwHloY1d7xxhZIMXHfTEMdM7dd
         7nI8vtmAnIqEiO/RFAtDX6fgRHwDoH/NYM1gPwxm95BQcUfBx/+dgeD2gnoaPaCTTiTe
         9pCRwydghULr/KTaMQkQvxHsSpwn7/OnyqNbX/cbMoT3O0gYEpB31kctO5V6r7jDqaFT
         ve9DHa1uElICRRSEddoKFbQmxrl0cHKeD6T0SgAUw6PmZjd4hA+1vffdXyNlt6IX+2ue
         XrAA==
X-Gm-Message-State: ANhLgQ3bIoHyXhQCvk0sqNksMzvRYaW+ggVE8097EtbzwBQA190w+wmt
	LAoB6zogwUgnWYA0/nDky2E=
X-Received: by 2002:a05:600c:2319:: with SMTP id 25mr2293538wmo.106.1584606395396;
        Thu, 19 Mar 2020 01:26:35 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.134.116])
        by smtp.gmail.com with ESMTPSA id h15sm2379222wrw.97.2020.03.19.01.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2020 01:26:34 -0700 (PDT)
Message-ID: <ade067e271f86f07eff6d9fc19205f9c2ea74f67.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: qlge: Add a blank line
 after variable declarations.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Date: Thu, 19 Mar 2020 04:26:33 -0400
In-Reply-To: <alpine.DEB.2.21.2003190915400.3010@hadrien>
References: <20200319073721.3203-1-jane.pnx9@gmail.com>
	  <alpine.DEB.2.21.2003190904090.3010@hadrien>
	 <24261b3c042ddbfc04fa7ff4fb3626900b9305e2.camel@gmail.com>
	 <alpine.DEB.2.21.2003190915400.3010@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-03-19 at 09:17 +0100, Julia Lawall wrote:
> 
> On Thu, 19 Mar 2020, Sam Muhammed wrote:
> 
> > On Thu, 2020-03-19 at 09:04 +0100, Julia Lawall wrote:
> > >
> > > On Thu, 19 Mar 2020, Sam Muhammed wrote:
> > >
> > > > Cleanup checkpatch.pl WARNINGS: Missing a blank line after declarations.
> > >
> > > I wasn't able to apply this patch.  I have the impression that it lost its
> > > last line.  Theer are only two lines after the + in the last hunk, and
> > > there should be three.
> > >
> > > julia
> > >
> >
> > Oh, Iam afraid it's a blank line i removed as it was flagged as a
> > trailing white-space by checkpatch.pl .
> > Okay sending a v4
> 
> If you can reproduce the problem, you could inform the maintainer of
> checkpatch:
> 
> Joe Perches <joe@perches.com>
> 
> But I don't recall seeing such a problem, so be sure that it was not just
> something strange on your side.
> 

No, its also a coding style, the developer separates certain print
messages from the rest of the code, e.g.:

```
int i;

	pr_err("===================== Dumping ricb ===============\n");
	pr_err("Dumping ricb stuff...\n");

	pr_err("ricb->base_cq = %d\n", ricb->base_cq & 0x1f);
	pr_err("ricb->flags = %s%s%s%s%s%s%s%s%s\n",
```
it was there i should have left it, but i thought it was mistakenly
added by me while adding "---" at the end.

Sam

> julia
> 
> >
> > Sam
> >
> > >
> > > >
> > > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > > ---
> > > > Changes in v3:
> > > > - Add a version change log.
> > > >
> > > > Changes in v2:
> > > > - Applying only one logical change since this patch contained two
> > > > different logical changes.
> > > >
> > > >  drivers/staging/qlge/qlge_dbg.c | 5 +++++
> > > >  1 file changed, 5 insertions(+)
> > > >
> > > > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> > > > index 737d6abd8076..1795533cbd3a 100644
> > > > --- a/drivers/staging/qlge/qlge_dbg.c
> > > > +++ b/drivers/staging/qlge/qlge_dbg.c
> > > > @@ -497,6 +497,7 @@ static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
> > > >  			   u32 offset, u32 count)
> > > >  {
> > > >  	int i, status = 0;
> > > > +
> > > >  	for (i = 0; i < count; i++, buf++) {
> > > >  		status = ql_read_mpi_reg(qdev, offset + i, buf);
> > > >  		if (status)
> > > > @@ -1330,6 +1331,7 @@ static void ql_dump_intr_states(struct ql_adapter *qdev)
> > > >  {
> > > >  	int i;
> > > >  	u32 value;
> > > > +
> > > >  	for (i = 0; i < qdev->intr_count; i++) {
> > > >  		ql_write32(qdev, INTR_EN, qdev->intr_context[i].intr_read_mask);
> > > >  		value = ql_read32(qdev, INTR_EN);
> > > > @@ -1415,6 +1417,7 @@ void ql_dump_routing_entries(struct ql_adapter *qdev)
> > > >  {
> > > >  	int i;
> > > >  	u32 value;
> > > > +
> > > >  	i = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
> > > >  	if (i)
> > > >  		return;
> > > > @@ -1565,6 +1568,7 @@ void ql_dump_stat(struct ql_adapter *qdev)
> > > >  void ql_dump_qdev(struct ql_adapter *qdev)
> > > >  {
> > > >  	int i;
> > > > +
> > > >  	DUMP_QDEV_FIELD(qdev, "%lx", flags);
> > > >  	DUMP_QDEV_FIELD(qdev, "%p", vlgrp);
> > > >  	DUMP_QDEV_FIELD(qdev, "%p", pdev);
> > > > @@ -1650,6 +1654,7 @@ void ql_dump_tx_ring(struct tx_ring *tx_ring)
> > > >  void ql_dump_ricb(struct ricb *ricb)
> > > >  {
> > > >  	int i;
> > > > +
> > > >  	pr_err("===================== Dumping ricb ===============\n");
> > > >  	pr_err("Dumping ricb stuff...\n");
> > > > ---
> > > > 2.20.1
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200319073721.3203-1-jane.pnx9%40gmail.com.
> > > >
> >
> >
> >



