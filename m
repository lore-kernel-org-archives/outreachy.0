X-GM-THRID: 6805595890134286336
X-Received: by 2002:a2e:8885:: with SMTP id k5mr3132790lji.123.1584553792157;
        Wed, 18 Mar 2020 10:49:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b042:: with SMTP id d2ls2547983ljl.3.gmail; Wed, 18 Mar
 2020 10:49:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvKrUTPjloGSGbzUk4shmUu+Xl8GpbiddSDXMrzZdjGEdYkmoUXFRJTfqWQw4bYtE1mrPYo
X-Received: by 2002:a05:651c:50e:: with SMTP id o14mr169567ljp.241.1584553790323;
        Wed, 18 Mar 2020 10:49:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584553790; cv=none;
        d=google.com; s=arc-20160816;
        b=hpF6of87HS+CMShWv/dOmrVb6IAyD/v1u93hHlRRcbVqkZlNfMsBI7jKRtZey0UJlj
         2F6Q2UTHOk+e8S4tzCcdWB03zbiL9M3qftZM7OTHZ+KBPk4bdextujRdpApO2i2vQf9o
         lzRf4egc+V2G5AQCRlC3muy2CtcGvUNxJoPTJY59fbBuceX9sEk7gRr+e3Cp6fZXhUvG
         DbrWEqMNaG+sJjJcBXFDM3KLFk/xGvIkl3YDv4bpDNzuB8/IZ0Uexr4U2uRTRCp7jBul
         e22FwNawOkhP2VtGOUjqmxKpf0EhyTqDyMU3vkPoix7PyvQBwSogJZ9D6/Ihq++KqOsm
         9NbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=z2qy2Tea+lfwstK24r0cThYVU7mIxH10jcoiTpTuCvE=;
        b=jOksAqIayihK2j2S9RvR4Na48iXdwGoKu7AaHF/UIF5/L3dFzT0mSX7H60phXgS7J/
         ZBddCkGjldJtu/dWbBG3l57cJ6m7m9aVCBfICpLW2VlxNso9pciopppz87KI6k05IL4s
         Xh0NtzQ/RRiSU0AUuyNAhjol+xyYVfqp77ZXBVBcKQUO3EO4SwkSolz++kF7+dDe+QjD
         sYFqc+JZF4mmZ8ydDPxJXaQuem8CiovjBrWMkJNDEGmWTaOKM8+M3e3eQpNuUnOFTPXa
         Rl4MDYfwx2vZCwtN6MlIKz7uh4gRUOo90gxx6oF0sPqxdHdeAdX8YpVvrM3peYLZUIDI
         nrkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b26si344212ljk.4.2020.03.18.10.49.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 10:49:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,568,1574118000"; 
   d="scan'208";a="342840713"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2020 18:49:42 +0100
Date: Wed, 18 Mar 2020 18:49:41 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammad <jane.pnx9@gmail.com>
cc: outreachy-kernel@googlegroups.com, Manish Chopra <manishc@marvell.com>, 
    gr-linux-nic-dev@marvell.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: Add blank line after
 variable declarations.
In-Reply-To: <ae3830fd-20f7-40e8-ac3c-56c1fe8181ee@gmail.com>
Message-ID: <alpine.DEB.2.21.2003181847160.2979@hadrien>
References: <20200318170713.3886-1-jane.pnx9@gmail.com> <alpine.DEB.2.21.2003181809410.2979@hadrien> <0534e4c283948979f1264c150c72546cca910aab.camel@gmail.com> <ae3830fd-20f7-40e8-ac3c-56c1fe8181ee@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 18 Mar 2020, Sam Muhammad wrote:

> I am afraid my reply wasn't inline :(
>
> Sam
>
> Get BlueMail for Android
> On Mar 18, 2020, at 7:30 PM, Sam Muhammed <jane.pnx9@gmail.com> wrote:
>
> -----Original Message-----
> From: Julia Lawall <julia.lawall@inria.fr>
> To: Sam Muhammed <jane.pnx9@gmail.com>
> Cc: outreachy-kernel@googlegroups.com, Manish Chopra <
> manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>
> Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: Add blank line
> after variable declarations.
> Date: Wed, 18 Mar 2020 18:10:17 +0100 (CET)
> On Wed, 18 Mar 2020, Sam Muhammed wrote:
>  Cleanup checkpatch.pl WARNING: Missing a blank line after
>  declarations.
>
>  Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
>  ---
>   drivers/staging/qlge/qlge_dbg.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
>
>  diff --git a/drivers/staging/qlge/qlge_dbg.c
>  b/drivers/staging/qlge/qlge_dbg.c
>  index 737d6abd8076..8bf592812518 100644
>  --- a/drivers/staging/qlge/qlge_dbg.c
>  +++ b/drivers/staging/qlge/qlge_dbg.c
>  @@ -496,7 +496,9 @@ static int ql_get_mpi_shadow_regs(struct
>  ql_adapter *qdev, u32 *buf)
>   static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
>         u32 offset, u32 count)
>   {
>  - int i, status = 0;
>  + int i;
>  + int status = 0;
>  +
> This does more than add a blank line.
> Actually, it's fine to declare several variables at once.
> julia
>    for (i = 0; i < count; i++, buf++) {
>     status = ql_read_mpi_reg(qdev, offset + i, buf);
>     if (status)
>  @@ -1330,6 +1332,7 @@ static void ql_dump_intr_states(struct
>  ql_adapter *qdev)
>   {
>    int i;
>    u32 value;
>  +
>    for (i = 0; i < qdev->intr_count; i++) {
>     ql_write32(qdev, INTR_EN, qdev-
> intr_context[i].intr_read_mask);
>     value = ql_read32(qdev, INTR_EN);
>  @@ -1415,6 +1418,7 @@ void ql_dump_routing_entries(struct ql_adapter
>  *qdev)
>   {
>    int i;
>    u32 value;
>  +
>    i = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
>    if (i)
>     return;
>  @@ -1565,6 +1569,7 @@ void ql_dump_stat(struct ql_adapter *qdev)
>   void ql_dump_qdev(struct ql_adapter *qdev)
>   {
>    int i;
>  +
>    DUMP_QDEV_FIELD(qdev, "%lx", flags);
>    DUMP_QDEV_FIELD(qdev, "%p", vlgrp);
>    DUMP_QDEV_FIELD(qdev, "%p", pdev);
>  @@ -1650,6 +1655,7 @@ void ql_dump_tx_ring(struct tx_ring *tx_ring)
>   void ql_dump_ricb(struct ricb *ricb)
>   {
>    int i;
>  +
>    pr_err("===================== Dumping ricb ===============\n");
>    pr_err("Dumping ricb stuff...\n");
>
>  --
>  2.20.1
>
>  --
>  You received this message because you are subscribed to the Google
>  Groups "outreachy-kernel" group.
>  To unsubscribe from this group and stop receiving emails from it,
>  send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>  To view this discussion on the web visit
>  https://groups.google.com/d/msgid/outreachy-kernel/20200318170713.3886-1-ja
> ne.pnx9%40gmail.com
>  .
>
> By this i maintaned the developer's style; declaring more than one
> variable was okay, but that was the only occurrence of declaring more
> than one variable and assigning a value to one of them in the same
> line.


OK, if the rest of the code seems to have a strong preference for
declaring only one variable at a time, I guess that is OK.  But the main
problem is that a patch should only do one thing at a time.  So a patch
about adding blank lines after declarations should not also rearrange the
declarations.  If you want to submit both changes, you can send a series.
But it could be better to do just one thing to start with.

While it is good to not be top posting, it would be better to put your
reply next to the text it refers to, rather than completely at the bottom
of the message.

julia

> This is an instance where two variables of the same type declared in
> different lines since one of them was assigned a value:
>  int status = 0;
>  int i;
>  for (i = PAUSE_SRC_LO; i < XGMAC_REGISTER_END; i += 4, buf++) {
>   /* We're reading 400 xgmac registers, but we filter out
>    * several locations that are non-responsive to reads.
>    */
> plus a TODO note to fix checkpatch issues; i choose it as a starter. :)
> Sam
>
>
>

