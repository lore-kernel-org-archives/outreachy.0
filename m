X-GM-THRID: 6805641341994795008
X-Received: by 2002:a1c:e1c3:: with SMTP id y186mr3828872wmg.151.1584563079592;
        Wed, 18 Mar 2020 13:24:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c771:: with SMTP id x17ls1405926wmk.2.canary-gmail; Wed,
 18 Mar 2020 13:24:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvaEsZoLiz3DmtSqHyD5KM4GVx70UyjphyBRxaQJPc7/gVJnzmZCLxotOIw3Sfbd7TcDt1t
X-Received: by 2002:a1c:7405:: with SMTP id p5mr5439133wmc.73.1584563077987;
        Wed, 18 Mar 2020 13:24:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584563077; cv=none;
        d=google.com; s=arc-20160816;
        b=DIShIc9/EfdU2/5ISxCZCmY3KqsJnUfOyVoQ+Qfoknxy5ifU9kIKe5VS+UxU9XhCkK
         wIUw9KxvxCBSDOGvKbzopBf7u2HvseNHspAX+jVudAps+H1p4po5FQMPRzK/NS2exCLw
         DaCUSXbk2USJQ8UjVD7ySrfYuN+9xDbOLwDU7rogVvBtjGvGpYpFINhfE1P471zSFsf5
         S5rAOVRWTzrCcIDnCux0SJI42X+tuxUt45U1A4GLOg8hPtWgl1ThNHS85/zfzA0hJz1X
         KlEGj/9SPP6EJ0OJ1TxHNHcIYzFFg9DCCoLW2E5k9mZyot8GOp0oF34bGaUNI9HU4hMz
         h6VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:dkim-signature;
        bh=5fkTC7WgnnsdpZ9j+svcYj/vpyuw7oJgwmCWJGrNgYc=;
        b=zdV2PteIK1KCTkADBjkj9vWJH/o+zqlhR+k4EJewEloXPc7VFTvK5LxL10Q+tsr4qj
         JNQ1gLoTUf+PxKpOHeUz+rXTFNXWhhLg8anQgbrBHs1LOdJH7Kv+jwXVELyRMQP0BId1
         zK3h/YXWklul+lm7vsUeqb/IPnUllF/RM2Cp7JXR9oKEHJQ2O2SGSisKGDpxwg+Aygpy
         6y70gmEntdmWzSXEUF7FQL7hwotZsFgCcnH+L+5RVU2enMxdiH6VCouC5Em7CzNWdL1k
         l+vkiu7VG62AYm9GdJeLRzpZfobyCeZgc45uQdOyU9GxSH5FEf7hmJM0mBpaJnTdZK7F
         TuVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I0jXUzK8;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id l13si2394wrp.2.2020.03.18.13.24.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:24:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I0jXUzK8;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id 11so5010050wmo.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 13:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=5fkTC7WgnnsdpZ9j+svcYj/vpyuw7oJgwmCWJGrNgYc=;
        b=I0jXUzK850/olGuWzmx5dRT74J7WMVyYO0PhybaKpXZNJOsnnfW9fP3q1hvbvXK4C/
         F1wwbtlPt8JGLu9LAnQ0dd38zfPtUMTxmx7rzulI+oRoC+wnfDRmh8EjwS0dIdC9TXa3
         h0A53bVl/vbrh0N35AwNVE1rHRwlbPy3xrM5NUHOu64ptpLskNjspb7392JzpxQYZiUZ
         RvR4IGrkKMSz+xV3Qlez9OU+YFqN3tcOQ3Zj8TXD+BXctBBvU6OJq8emYtO5Vc2V4gkn
         mfylEe2miQLjXrzwZu3ewHfMM6sahL6Az1sM4Lp0S0JTUMMvacfDkpa/i7FjJvMsL3B4
         jS8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=5fkTC7WgnnsdpZ9j+svcYj/vpyuw7oJgwmCWJGrNgYc=;
        b=jUyWQq0TzZNZK5JLRfIKWLsviVErADorPDtlxGJ3rrNY7v2T5UP3D6337dpwm0Y8tV
         0fBN4qqW05Whv5aHN1WtmwvMfVu9B7l1f/M0P7ZZJrpcnTaupSKELVR7eMN0QVcXCcos
         qcjX2jHssCodgW6h/v2HaJlz614psw7wrqSdKSxeyUFOV/x8Rg8PMcqHonN64aEo8bam
         AmzHmJEVSLTDQj0X1fzLAzJcVu7tI0iVnS7a7vz+7ddh9FnW386tM1c6obMbdo5D4NtR
         M08oTSSCjTo/5Grb1DQgHRyMPEdJbPLj3vwVAE/uD1Fx7ye7wi9MOgg1YOoVQ5ejqXqf
         h6tA==
X-Gm-Message-State: ANhLgQ1l50rEdCbyngsRWkqZTqpP4beM2GFATaQkX6h0yWLxyuuf2XD5
	2VOfuil7qSQ/3z9YGdEpZ2EKGy72Ls8=
X-Received: by 2002:a05:600c:2244:: with SMTP id a4mr6588310wmm.147.1584563077617;
        Wed, 18 Mar 2020 13:24:37 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.71.247])
        by smtp.gmail.com with ESMTPSA id p16sm5258573wmg.22.2020.03.18.13.24.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 13:24:37 -0700 (PDT)
Message-ID: <40b18761b15e8de56919b3afe61c7caa118f1391.camel@gmail.com>
Subject: Re: [PATCH] Staging: qlge: Add a blank line after variable
 declaration.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Date: Wed, 18 Mar 2020 16:24:32 -0400
In-Reply-To: <20200318200352.3497-1-jane.pnx9@gmail.com>
References: <20200318200352.3497-1-jane.pnx9@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2020-03-18 at 16:03 -0400, Sam Muhammed wrote:
> Cleanup checkpatch.pl WARNINGS: Missing a blank line after declarations.
> 
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
> ---

duplicate :(, should i resend or revision?

>  drivers/staging/qlge/qlge_dbg.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> index 737d6abd8076..1795533cbd3a 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -497,6 +497,7 @@ static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
>  			   u32 offset, u32 count)
>  {
>  	int i, status = 0;
> +
>  	for (i = 0; i < count; i++, buf++) {
>  		status = ql_read_mpi_reg(qdev, offset + i, buf);
>  		if (status)
> @@ -1330,6 +1331,7 @@ static void ql_dump_intr_states(struct ql_adapter *qdev)
>  {
>  	int i;
>  	u32 value;
> +
>  	for (i = 0; i < qdev->intr_count; i++) {
>  		ql_write32(qdev, INTR_EN, qdev->intr_context[i].intr_read_mask);
>  		value = ql_read32(qdev, INTR_EN);
> @@ -1415,6 +1417,7 @@ void ql_dump_routing_entries(struct ql_adapter *qdev)
>  {
>  	int i;
>  	u32 value;
> +
>  	i = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
>  	if (i)
>  		return;
> @@ -1565,6 +1568,7 @@ void ql_dump_stat(struct ql_adapter *qdev)
>  void ql_dump_qdev(struct ql_adapter *qdev)
>  {
>  	int i;
> +
>  	DUMP_QDEV_FIELD(qdev, "%lx", flags);
>  	DUMP_QDEV_FIELD(qdev, "%p", vlgrp);
>  	DUMP_QDEV_FIELD(qdev, "%p", pdev);
> @@ -1650,6 +1654,7 @@ void ql_dump_tx_ring(struct tx_ring *tx_ring)
>  void ql_dump_ricb(struct ricb *ricb)
>  {
>  	int i;
> +
>  	pr_err("===================== Dumping ricb ===============\n");
>  	pr_err("Dumping ricb stuff...\n");
>  



