X-GM-THRID: 6805820058208567296
X-Received: by 2002:adf:e808:: with SMTP id o8mr2599833wrm.366.1584605839178;
        Thu, 19 Mar 2020 01:17:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls564871wrp.11.gmail; Thu, 19 Mar
 2020 01:17:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvBxFJkYc9hZ5/49ABy3TLXkKxQTtJRPpTSvN8mPfKuBTmwwN5uf8vK05aDLjfd0Q7FCM62
X-Received: by 2002:adf:fe4c:: with SMTP id m12mr2667169wrs.96.1584605837910;
        Thu, 19 Mar 2020 01:17:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584605837; cv=none;
        d=google.com; s=arc-20160816;
        b=ecZnpFShGA+itelEj8jwsjQgZaOv8/F/L+dl0MVcYN/dF2j6xyM1NJiWf+k2Rct+OT
         mlToTjYzFQCION+9FOqsegtI8C/trIp5pR1FSRITfyqvDWkXrisYuGhgxLbMJCbDID/j
         TJ4Oownrjv5N3ZlwVB/rfDfpvnBDZ3XN8vXkcYrsUe+Idb/QgoaJwapUzpFZ/bCBPz5C
         jXzeUeD57GfEo0EHIIiK08p8HyDECt6HNsj/SAV6M2JBrGjnZq0qu39S1UpBnRjMHaQB
         kux9Jf+/AAMxdBkp67+PxVzsrTRuS0HVoW2QBuYTSDojJxMhFT/z2EMruhlJJLzYWBIN
         6Abw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3Fp1RJKGE3g+5xykmDhoWko8WrgXIOZyxiRMyiqIPOs=;
        b=HDCcoOZipraCGOb8YsQWUGqqzBXhFD/o6FMSd79z6jZ+tjY3K/8lWBPbWEPXuQKQOJ
         90pMxgAWQ7cQ62WgaXCzfLoePnacMbnTUlQz0tE5mLSCzyiRWAnEmKz5gGMfsIPUkZu4
         MIZdTybtcWhQYLY36dse3tKgZCLB8H4z9OTV355sI+WiMYvstiEO5dvgUS3K4b7JtvpI
         c/0jDQkPJKPJMGU0s0+EhuSgnImPx8paQhfBFcy/CGcDvhUrfoefq140/rOfOS07USpz
         1zjvMqULnqrjHl9m7dJB69MAt2Itd1h328QDu0Zq/a41PUhOnvQiX5fhm722rQbLAZxv
         YX4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m2si253095wmi.3.2020.03.19.01.17.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 01:17:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,570,1574118000"; 
   d="scan'208";a="441098370"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 09:17:17 +0100
Date: Thu, 19 Mar 2020 09:17:17 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: qlge: Add a blank line
 after variable declarations.
In-Reply-To: <24261b3c042ddbfc04fa7ff4fb3626900b9305e2.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003190915400.3010@hadrien>
References: <20200319073721.3203-1-jane.pnx9@gmail.com>  <alpine.DEB.2.21.2003190904090.3010@hadrien> <24261b3c042ddbfc04fa7ff4fb3626900b9305e2.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Mar 2020, Sam Muhammed wrote:

> On Thu, 2020-03-19 at 09:04 +0100, Julia Lawall wrote:
> >
> > On Thu, 19 Mar 2020, Sam Muhammed wrote:
> >
> > > Cleanup checkpatch.pl WARNINGS: Missing a blank line after declarations.
> >
> > I wasn't able to apply this patch.  I have the impression that it lost its
> > last line.  Theer are only two lines after the + in the last hunk, and
> > there should be three.
> >
> > julia
> >
>
> Oh, Iam afraid it's a blank line i removed as it was flagged as a
> trailing white-space by checkpatch.pl .
> Okay sending a v4

If you can reproduce the problem, you could inform the maintainer of
checkpatch:

Joe Perches <joe@perches.com>

But I don't recall seeing such a problem, so be sure that it was not just
something strange on your side.

julia

>
> Sam
>
> >
> > >
> > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > ---
> > > Changes in v3:
> > > - Add a version change log.
> > >
> > > Changes in v2:
> > > - Applying only one logical change since this patch contained two
> > > different logical changes.
> > >
> > >  drivers/staging/qlge/qlge_dbg.c | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > >
> > > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> > > index 737d6abd8076..1795533cbd3a 100644
> > > --- a/drivers/staging/qlge/qlge_dbg.c
> > > +++ b/drivers/staging/qlge/qlge_dbg.c
> > > @@ -497,6 +497,7 @@ static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
> > >  			   u32 offset, u32 count)
> > >  {
> > >  	int i, status = 0;
> > > +
> > >  	for (i = 0; i < count; i++, buf++) {
> > >  		status = ql_read_mpi_reg(qdev, offset + i, buf);
> > >  		if (status)
> > > @@ -1330,6 +1331,7 @@ static void ql_dump_intr_states(struct ql_adapter *qdev)
> > >  {
> > >  	int i;
> > >  	u32 value;
> > > +
> > >  	for (i = 0; i < qdev->intr_count; i++) {
> > >  		ql_write32(qdev, INTR_EN, qdev->intr_context[i].intr_read_mask);
> > >  		value = ql_read32(qdev, INTR_EN);
> > > @@ -1415,6 +1417,7 @@ void ql_dump_routing_entries(struct ql_adapter *qdev)
> > >  {
> > >  	int i;
> > >  	u32 value;
> > > +
> > >  	i = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
> > >  	if (i)
> > >  		return;
> > > @@ -1565,6 +1568,7 @@ void ql_dump_stat(struct ql_adapter *qdev)
> > >  void ql_dump_qdev(struct ql_adapter *qdev)
> > >  {
> > >  	int i;
> > > +
> > >  	DUMP_QDEV_FIELD(qdev, "%lx", flags);
> > >  	DUMP_QDEV_FIELD(qdev, "%p", vlgrp);
> > >  	DUMP_QDEV_FIELD(qdev, "%p", pdev);
> > > @@ -1650,6 +1654,7 @@ void ql_dump_tx_ring(struct tx_ring *tx_ring)
> > >  void ql_dump_ricb(struct ricb *ricb)
> > >  {
> > >  	int i;
> > > +
> > >  	pr_err("===================== Dumping ricb ===============\n");
> > >  	pr_err("Dumping ricb stuff...\n");
> > > ---
> > > 2.20.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200319073721.3203-1-jane.pnx9%40gmail.com.
> > >
>
>
>

