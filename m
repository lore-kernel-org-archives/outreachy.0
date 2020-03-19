X-GM-THRID: 6805820058208567296
X-Received: by 2002:ac2:4110:: with SMTP id b16mr1376716lfi.211.1584605708926;
        Thu, 19 Mar 2020 01:15:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8997:: with SMTP id c23ls325018lji.7.gmail; Thu, 19 Mar
 2020 01:15:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuIIUrptq8YkJB4QLsbjBHV7P9oQXWe8M/4bVeCJN0qefJPKr9w9sk5NsZ8XUIVlDwZKad8
X-Received: by 2002:a2e:92d6:: with SMTP id k22mr1394363ljh.18.1584605707379;
        Thu, 19 Mar 2020 01:15:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584605707; cv=none;
        d=google.com; s=arc-20160816;
        b=BRl+qN0HRGfniqCDkixrkxnSF8Al4LnUoPSDZQ0XKFlWApZGCZwqhvZPRmrESgFFfI
         R3AzOwqc3KrKZvgw7Xbu/GiqpB/5MMMZG39zvvTfotfLssDyT2rxFhN6LWH3p+3Z/dpB
         Xl//VQzhUeMfPDqRMwMvxuh9LcGPlCIQQnfnJnxaV/WlPMyZxXFMjsfExV5EbbfYAg3h
         qH0Zo+SaG8NHBGI5YSbxCdN+5+ZmFz00aXMp5e8ZNCt5pJDkqDaVlZEyuRpm9YRe8Zae
         yZoBX642GHpYzTXgjh5I4vVDA/sqYI4LlkgH5yClIrZl5ckfuVfaHjJQuBkkLOiio1Pb
         UhGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=KJcqx5iIE7YNBZJKmdLc1ylUXN66n4mCwSGH/GNTQAw=;
        b=sLngH+64dyWau7ABYDPjPPiMLUbmTXvAqvXLJRXtFtxv+qRpXSkbh4blBrA9en7feE
         1xDeXOMqyt9GSC2Hez+LYHYFyqyHrgqT1EetoWKNgQ4w+2D8FFOpI3kdnX2p2YHdodtk
         02e6nT/QJPHnGiLmmI8RRT8K+6KdLTfLvZenpA/zCI43TO90GHqxlmo4Vy4CtrHZnTkj
         L45YRhnKzwbUb8r3WEm7ACFdpcbnSohwNTAxBpUPyqjjq9KSRH9DCiKXZPuf/eNsBURl
         iR5irSXg0gqla3i/z8wUrKiNh/0fDByKL3+kCnGgnuxPpryVEcLskR7E9UxQwwhrxIOM
         XAzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VIXOaIw6;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id t3si34827lfq.5.2020.03.19.01.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 01:15:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VIXOaIw6;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id c187so935741wme.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 01:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=KJcqx5iIE7YNBZJKmdLc1ylUXN66n4mCwSGH/GNTQAw=;
        b=VIXOaIw6+Ks4Z/cYYP8bdG3gNoOwOtbuFaw2/g92mgmuWC9jhhcl/xsX6qIqkTv7rl
         JLqhrq3GxXd9KG9TPBL14jLqb67bbJvAPf13SG2migQl6FoJYjzQO8ddXflrmidpxpR2
         wLcZWVpXts+qbjmkOAF0rItHF/qOABvP3nt+C/6ueeZvG9+SvEkGkQHic2EPOWWmxmAV
         r9Ds/IMu8Rkqm0eqVLzr9VN4KIFoOL2QvaL+tztPULn/ewVwio2qMDu6/gUkqFFzS91P
         y1ot8d2EA3Wv6OZx1la/I8fcbzXiblQIFrW0/gJVtjH/sOD7gIQpIu1KMOiLkggq+BaI
         1l3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=KJcqx5iIE7YNBZJKmdLc1ylUXN66n4mCwSGH/GNTQAw=;
        b=A+IM4lWIig497Oqic/kGGAunR4+LOEKVZgrTF3hqlFrAhf4URPBj7PXgiJBWOtYcXI
         cRNzjmaGQMqnkoUFHOWpu5B6yYgLI/Ig4YZ7g2bra7CX0dR3xbQK2YpYXyKsyQDed/0Z
         EVcZi2iXZAJ0LY84VodSkapH3/N8Ir2Yza7Bzngf5MwEIhGwyAMBAjDyQnhJAUalraeN
         wN+7PW/RNaLr0pDV/gMUgiNH0Esw2F2rrCQ/QdNOb7nMdwWv8mgQN05Mcwn6b6xX8RxL
         GhbVDWfoCppUxkvUoTCCCpKBOMhSQHwMRrNK7Ge/BgWh0hA/FfoFKSuUiRCfW8Eu52Cq
         MV5w==
X-Gm-Message-State: ANhLgQ1LvzC8xM87fe/v/+Of9DFI/m8Tn+EoTflTdz1kbR47ssa6BIVb
	PTXjc0gFFPNPk1vdUQlDGyo=
X-Received: by 2002:a7b:cbc5:: with SMTP id n5mr2130505wmi.164.1584605706722;
        Thu, 19 Mar 2020 01:15:06 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.134.116])
        by smtp.gmail.com with ESMTPSA id r18sm2297275wro.13.2020.03.19.01.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2020 01:15:06 -0700 (PDT)
Message-ID: <24261b3c042ddbfc04fa7ff4fb3626900b9305e2.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: qlge: Add a blank line
 after variable declarations.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Date: Thu, 19 Mar 2020 04:15:04 -0400
In-Reply-To: <alpine.DEB.2.21.2003190904090.3010@hadrien>
References: <20200319073721.3203-1-jane.pnx9@gmail.com>
	 <alpine.DEB.2.21.2003190904090.3010@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-03-19 at 09:04 +0100, Julia Lawall wrote:
> 
> On Thu, 19 Mar 2020, Sam Muhammed wrote:
> 
> > Cleanup checkpatch.pl WARNINGS: Missing a blank line after declarations.
> 
> I wasn't able to apply this patch.  I have the impression that it lost its
> last line.  Theer are only two lines after the + in the last hunk, and
> there should be three.
> 
> julia
> 

Oh, Iam afraid it's a blank line i removed as it was flagged as a
trailing white-space by checkpatch.pl .
Okay sending a v4

Sam

> 
> >
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > ---
> > Changes in v3:
> > - Add a version change log.
> >
> > Changes in v2:
> > - Applying only one logical change since this patch contained two
> > different logical changes.
> >
> >  drivers/staging/qlge/qlge_dbg.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> > index 737d6abd8076..1795533cbd3a 100644
> > --- a/drivers/staging/qlge/qlge_dbg.c
> > +++ b/drivers/staging/qlge/qlge_dbg.c
> > @@ -497,6 +497,7 @@ static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
> >  			   u32 offset, u32 count)
> >  {
> >  	int i, status = 0;
> > +
> >  	for (i = 0; i < count; i++, buf++) {
> >  		status = ql_read_mpi_reg(qdev, offset + i, buf);
> >  		if (status)
> > @@ -1330,6 +1331,7 @@ static void ql_dump_intr_states(struct ql_adapter *qdev)
> >  {
> >  	int i;
> >  	u32 value;
> > +
> >  	for (i = 0; i < qdev->intr_count; i++) {
> >  		ql_write32(qdev, INTR_EN, qdev->intr_context[i].intr_read_mask);
> >  		value = ql_read32(qdev, INTR_EN);
> > @@ -1415,6 +1417,7 @@ void ql_dump_routing_entries(struct ql_adapter *qdev)
> >  {
> >  	int i;
> >  	u32 value;
> > +
> >  	i = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
> >  	if (i)
> >  		return;
> > @@ -1565,6 +1568,7 @@ void ql_dump_stat(struct ql_adapter *qdev)
> >  void ql_dump_qdev(struct ql_adapter *qdev)
> >  {
> >  	int i;
> > +
> >  	DUMP_QDEV_FIELD(qdev, "%lx", flags);
> >  	DUMP_QDEV_FIELD(qdev, "%p", vlgrp);
> >  	DUMP_QDEV_FIELD(qdev, "%p", pdev);
> > @@ -1650,6 +1654,7 @@ void ql_dump_tx_ring(struct tx_ring *tx_ring)
> >  void ql_dump_ricb(struct ricb *ricb)
> >  {
> >  	int i;
> > +
> >  	pr_err("===================== Dumping ricb ===============\n");
> >  	pr_err("Dumping ricb stuff...\n");
> > ---
> > 2.20.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200319073721.3203-1-jane.pnx9%40gmail.com.
> >



