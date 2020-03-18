X-GM-THRID: 6805641341994795008
X-Received: by 2002:a05:6402:1d95:: with SMTP id dk21mr5672213edb.93.1584562998863;
        Wed, 18 Mar 2020 13:23:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:8548:: with SMTP id h8ls1314849ejy.11.gmail; Wed, 18
 Mar 2020 13:23:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vti+9v6jggtx77FbRoiLxXW7mYkmpMF96Izi63g6eLr0Sy+kZdVobwgp4cKbtHfHNd4QCv/
X-Received: by 2002:a17:906:7083:: with SMTP id b3mr43080ejk.238.1584562997477;
        Wed, 18 Mar 2020 13:23:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584562997; cv=none;
        d=google.com; s=arc-20160816;
        b=wMvNk5sivXNtx7/tyWWPrT4OOsP0wNJyB1qMk2lRYQYGYIaodjxPvvETmS27UCb1Rz
         hEFbUMssChFJtK3dENZOTMRY1sVWyF9M3qwuWiOY3bluoAzVNCmwmLqyz8oIhE1TaSCg
         4S38WpEcfBapirHqtm72jo/MJ3LqnWPiWptex67FE+myip7BWetuO7oCdnDaKTu3GEIg
         VWAgwxvPGLISmZ0XaMMVLqAJt6Webh+NVtHFPv7vngjCREFg8RkbJcftoBtDqMEALfor
         G03f7esExICr0Ug9/XAQw6fEKVhZnz4zmvG8KpE8FzhSiQoybHxslXA03Ce7p+XzmPek
         fzIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=5pGut5fwxem6bZHGsFuAYN9sJ78ykqzMz0zx0OqZQKU=;
        b=BvCVyrarL/5fV2gydqu4Q8aMV5P8vLhWB3+TCPv3cNRNsaQ46KsdcrLJZHH21KhbSt
         fh0kLqJVoZ/Nfqd7SxNIobCMq8J1LJp+Wpt1LwvWwYx/YbDkAonwH3jtVsEl1bvXvAE4
         32GRZepymZlqWyiyjP0nq1sCoMcOwe1q4sNkD9RAaKW/EjUn4+VGHw276bOfTlyEjUCM
         3C1FnSsDO7b771DdioLRjTtmiuJ4/2S85EiNO2h2KdHetWNDSDYAwxwG6ZDHdiuAK//b
         ldw/45PhPizdAF9PbYtG71pg2ee9u4CR+X19DgPaQQLhLMgOb2ht5nmkOfW68Ypy+PpJ
         8nVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x7si2876ejw.0.2020.03.18.13.23.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:23:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,568,1574118000"; 
   d="scan'208";a="342855311"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2020 21:23:16 +0100
Date: Wed, 18 Mar 2020 21:23:16 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: Add a blank line after
 variable declaration.
In-Reply-To: <20200318200352.3497-1-jane.pnx9@gmail.com>
Message-ID: <alpine.DEB.2.21.2003182122060.2979@hadrien>
References: <20200318200352.3497-1-jane.pnx9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 18 Mar 2020, Sam Muhammed wrote:

> Cleanup checkpatch.pl WARNINGS: Missing a blank line after declarations.

This is a revision of what you did before.  So there should be v2 in the
subject line.  And under the --- there should be a description of what you
did differently as compared to the previous version.

>
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
> ---

Only one --- is needed.  Perhaps you added one and another one was added
automatically?

julia

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
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200318200352.3497-1-jane.pnx9%40gmail.com.
>

