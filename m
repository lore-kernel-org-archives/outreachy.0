X-GM-THRID: 6805820058208567296
X-Received: by 2002:a2e:a58c:: with SMTP id m12mr1233122ljp.141.1584605098382;
        Thu, 19 Mar 2020 01:04:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:4bd6:: with SMTP id y205ls245718lfa.8.gmail; Thu, 19 Mar
 2020 01:04:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv2Tr7roUU6+mfdhR4V80lnPwWeJlcTaxVivuZGsxLuNhzpjCDlR7PKLg9AAreP4IkWDlT4
X-Received: by 2002:a19:a401:: with SMTP id q1mr1316502lfc.157.1584605096810;
        Thu, 19 Mar 2020 01:04:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584605096; cv=none;
        d=google.com; s=arc-20160816;
        b=P5Eu5eDam9/17HOqYbnHnaPVYziDlD/Stvcpz1LW8fpyi4ANasSypQ7FBzRZUZx2an
         pQ9dnSUR2icyyCI6hM93y7yjRuhUvsCNZ2tpH+qG3mpEgx3SEyoh+1E/RYfJor3VXCX4
         8KkDcE0AeIex0BF3SYuyYdc1yDx0nPoCOJ+/OeQxeiDtpQqJsMaXYtKzwMsxLo3Ox0kt
         +90keyfUSj2QAxcj71R4LBODcU4sCrxsTWIL1X/VekFEndYjdH8HLn5kq0w1oM+pnd4M
         miEKceH/93IxjKV6BZX8qKTe1A6slTNLzNWzylOFbhgnNtIxFub7RF7riZbzynZ710YP
         RomQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7zZu3BH5sswKBGODAP6t6cLeggnA6ogCGWlQ+oCHZKs=;
        b=ctU6fXdbJwhN09fZWvNe4SDVrxOk7FWgeWMrH72ouXcBzVP5bPJgto1dXkmJmh9SmQ
         /lXpH+LvlP7z4vp0SNTdoGjybvw3ifcD+LMQxViRUvGjJxEM7pAgqPDXWJz/XXl0Zc7E
         ywfLOSdNmr5HWKlouP8uG3B+i6vQKawwQgWc67mbLd6ZsFIgLfZ2i+Cdry+BKoglb1oF
         e5RxwhOUUSdEpiVvMizoFaxtcGulb6b5YuJX82mP0xLHstuEUGuh2ovVKLeeyXUjff0V
         KnZeiLqaGM/vLvHQ9F8EOJTMvw6RJMGb91nLzgsk3TxBi4HcJcV1twhqjT0Zh0Lnqd8O
         CI0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s22si61816ljp.0.2020.03.19.01.04.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 01:04:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,570,1574118000"; 
   d="scan'208";a="342887816"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 09:04:55 +0100
Date: Thu, 19 Mar 2020 09:04:55 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: qlge: Add a blank line
 after variable declarations.
In-Reply-To: <20200319073721.3203-1-jane.pnx9@gmail.com>
Message-ID: <alpine.DEB.2.21.2003190904090.3010@hadrien>
References: <20200319073721.3203-1-jane.pnx9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Mar 2020, Sam Muhammed wrote:

> Cleanup checkpatch.pl WARNINGS: Missing a blank line after declarations.

I wasn't able to apply this patch.  I have the impression that it lost its
last line.  Theer are only two lines after the + in the last hunk, and
there should be three.

julia


>
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
> Changes in v3:
> - Add a version change log.
>
> Changes in v2:
> - Applying only one logical change since this patch contained two
> different logical changes.
>
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
> ---
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200319073721.3203-1-jane.pnx9%40gmail.com.
>

