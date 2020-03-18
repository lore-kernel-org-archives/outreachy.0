X-GM-THRID: 6805595890134286336
X-Received: by 2002:a05:6000:1ca:: with SMTP id t10mr6524369wrx.367.1584552650226;
        Wed, 18 Mar 2020 10:30:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls13047500wrc.7.gmail; Wed, 18
 Mar 2020 10:30:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsd5P30yGBDL2sO8K1M8P6OnSpylxYcygZurgr5+1Zp2W1MYh8VXjDRZR6oXsTzRVnCuicI
X-Received: by 2002:adf:a4d2:: with SMTP id h18mr6938316wrb.90.1584552648610;
        Wed, 18 Mar 2020 10:30:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584552648; cv=none;
        d=google.com; s=arc-20160816;
        b=KXUMjuMdxyY19Zu2kcmahuDRvkOxOn3W0D3aXu3pjzaz3nxy9mjr8hy3QkW4NprUA0
         UC9Mvg3z+zGrXKTKPMx0iYU+gAM7Xnw22ME76z07hVf7vxTruz7y9x/ijhcYK61PYCq3
         TCEHRyQIzuxU1ezXWNeI4qxBHgRkGiu3XwvxdFNWJjsG75yEBNCTXel89GrysNA2yI+j
         R0jVHBS3rZdt5p0QxOZfxIgiWTYNaw7+Hxtd3WGFWYPR8wjJGUS5QzYCbjYMZaCJT3TY
         1Z+gVbAYDNWJBRxKoqe/G1jw3z3Favb5vQQ7DtBUfafsBmqtRgWwFm1SnZN/XTQu/q7S
         K6XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=EHLA1PtU8UlRg/JtZdZ1HnHNhBeX1gwaHP2Pd+toh6A=;
        b=XYocuqcuuFR23k7k9I6VFyQGA3002NziGP9kzwkPmLZTRUj4I7iKh6RcgbhLxNZCrp
         yjq/Hh1opcGjHUCMckfjd8/8xZP4AgyMVuLFCsLANyePU5Gjk2PXcLy4e4JifZcL1T4c
         +3EYBbUf/2wAuvNTQU55H+0VlomKieq5fZX1sydaRbonFGjZvtYHWgfuXbES4CHSNiwi
         txkxLsMKAchQDiVd0oe/FT4qACMDXqnEj50m6EudmO+d9NUnSIC18/cpYh5+LkOxGfpG
         AlgS91wzRIg0JRaCzGaHLjihYpD67gUV+du+K6lvOkkMY35mM3GLD1Lcv99WrT+pfh/O
         U9Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qDrArfV9;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id e12si329970wru.1.2020.03.18.10.30.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 10:30:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qDrArfV9;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id z12so4314756wmf.5
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 10:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=EHLA1PtU8UlRg/JtZdZ1HnHNhBeX1gwaHP2Pd+toh6A=;
        b=qDrArfV959lf1WIohAOrugTYrLk08N3aUTwniYkrHYY3bdQCqo1TC+BoLGfJTL3GBu
         IYBNI+0qSVF3cSz+9GQ4rvG9LGqFxETLafYBfS1YvL1yvN26feS1q3F58gle1/sADdvp
         har2IXF0mMcSyBoFn/+83DNfTsL/HscnzLHFitNcqXRQaidehktT7W48LLJhFSmKFXs3
         O7eYaC/kcNDzaujASEpiwwRbk/uYsNH9iO08+la640xnXTb9eOXCjvDMwheKDXm+mDpW
         BCKu3OsItQOwoPjGMEhtXd9kx4ZG9iSPaPQe61Gocn9VmXPphVT5UP+LDFsiCaFaS7WH
         bBjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=EHLA1PtU8UlRg/JtZdZ1HnHNhBeX1gwaHP2Pd+toh6A=;
        b=NjfgaCYWwFAyxAZbYsJRfy7uM1JGHyI4d9EvdfDYz4wjmfAc3mJOAlsAMsnwXbf0bE
         YPUqiysRhsH9qltGmrpau5rv19P5LXzjm377SyFpbjXNGbIuhksR7l5DIel0agfDHO4F
         0I6Oz+/GOJvwsu1341aR1DL8m9ZSca/FWPBsgUlj1ZLHO/9UcTSK5Zv8U8rosxbgehPY
         5Q9Xnm5zcsgO5yBcyjK+uxuI5GUbJea+kfUmp8XIZhTPuSxeW56YuqbS9uEjizBL3PPF
         1IKabPS3b5DSJZ5UHwSOw+xS+pdovXVqBhINxKvORS2/nAoBoTihM+K3/ISu7G/pyNZc
         2EbA==
X-Gm-Message-State: ANhLgQ3wMKbMeq8PVMXraEA/pCJpiFQpU3mtOe/+X2KaOmfCyv99n+aN
	fLA+YvJbK5JboOQD9l7xPONQg6glm3TjmA==
X-Received: by 2002:a7b:cb44:: with SMTP id v4mr6063457wmj.29.1584552647367;
        Wed, 18 Mar 2020 10:30:47 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.71.247])
        by smtp.gmail.com with ESMTPSA id l64sm4801852wmf.30.2020.03.18.10.30.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 10:30:46 -0700 (PDT)
Message-ID: <0534e4c283948979f1264c150c72546cca910aab.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: Add blank line after
 variable declarations.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, Manish Chopra <manishc@marvell.com>, 
 GR-Linux-NIC-Dev@marvell.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Wed, 18 Mar 2020 13:30:45 -0400
In-Reply-To: <alpine.DEB.2.21.2003181809410.2979@hadrien>
References: <20200318170713.3886-1-jane.pnx9@gmail.com>
	 <alpine.DEB.2.21.2003181809410.2979@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

-----Original Message-----
From: Julia Lawall <julia.lawall@inria.fr>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Manish Chopra <
manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, Greg Kroah-Hartman 
<gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: Add blank line 
after variable declarations.
Date: Wed, 18 Mar 2020 18:10:17 +0100 (CET)


On Wed, 18 Mar 2020, Sam Muhammed wrote:

> Cleanup checkpatch.pl WARNING: Missing a blank line after
> declarations.
> 
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
>  drivers/staging/qlge/qlge_dbg.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/qlge/qlge_dbg.c
> b/drivers/staging/qlge/qlge_dbg.c
> index 737d6abd8076..8bf592812518 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -496,7 +496,9 @@ static int ql_get_mpi_shadow_regs(struct
> ql_adapter *qdev, u32 *buf)
>  static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
>  			   u32 offset, u32 count)
>  {
> -	int i, status = 0;
> +	int i;
> +	int status = 0;
> +

This does more than add a blank line.

Actually, it's fine to declare several variables at once.

julia

>  	for (i = 0; i < count; i++, buf++) {
>  		status = ql_read_mpi_reg(qdev, offset + i, buf);
>  		if (status)
> @@ -1330,6 +1332,7 @@ static void ql_dump_intr_states(struct
> ql_adapter *qdev)
>  {
>  	int i;
>  	u32 value;
> +
>  	for (i = 0; i < qdev->intr_count; i++) {
>  		ql_write32(qdev, INTR_EN, qdev-
> >intr_context[i].intr_read_mask);
>  		value = ql_read32(qdev, INTR_EN);
> @@ -1415,6 +1418,7 @@ void ql_dump_routing_entries(struct ql_adapter
> *qdev)
>  {
>  	int i;
>  	u32 value;
> +
>  	i = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
>  	if (i)
>  		return;
> @@ -1565,6 +1569,7 @@ void ql_dump_stat(struct ql_adapter *qdev)
>  void ql_dump_qdev(struct ql_adapter *qdev)
>  {
>  	int i;
> +
>  	DUMP_QDEV_FIELD(qdev, "%lx", flags);
>  	DUMP_QDEV_FIELD(qdev, "%p", vlgrp);
>  	DUMP_QDEV_FIELD(qdev, "%p", pdev);
> @@ -1650,6 +1655,7 @@ void ql_dump_tx_ring(struct tx_ring *tx_ring)
>  void ql_dump_ricb(struct ricb *ricb)
>  {
>  	int i;
> +
>  	pr_err("===================== Dumping ricb ===============\n");
>  	pr_err("Dumping ricb stuff...\n");
> 
> --
> 2.20.1
> 
> --
> You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20200318170713.3886-1-jane.pnx9%40gmail.com
> .
> 
By this i maintaned the developer's style; declaring more than one
variable was okay, but that was the only occurrence of declaring more
than one variable and assigning a value to one of them in the same
line.

This is an instance where two variables of the same type declared in
different lines since one of them was assigned a value:


	int status = 0;
	int i;

	for (i = PAUSE_SRC_LO; i < XGMAC_REGISTER_END; i += 4, buf++) {
		/* We're reading 400 xgmac registers, but we filter out
		 * several locations that are non-responsive to reads.
		 */

plus a TODO note to fix checkpatch issues; i choose it as a starter. :)


Sam


