X-GM-THRID: 6805595890134286336
X-Received: by 2002:a2e:86c6:: with SMTP id n6mr3212798ljj.46.1584554961267;
        Wed, 18 Mar 2020 11:09:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:96:: with SMTP id 22ls601853ljq.0.gmail; Wed, 18
 Mar 2020 11:09:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtjyaz0Cws7nWxgWcZqdAMVH0PpBQ4gao7a/52sXKqTbeh1YMtNLydsk1znNzF9Nkzv2ll+
X-Received: by 2002:a2e:870b:: with SMTP id m11mr3140086lji.109.1584554959572;
        Wed, 18 Mar 2020 11:09:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584554959; cv=none;
        d=google.com; s=arc-20160816;
        b=sQGrqJxfS+QJAnqisYXizW5Y32kvNrtbKqXQ/msad6RtL4gOn4g4vzmwdkJKWtiMqX
         4ziZ6oczzF2RormSDRXxUqLS5gmkMG7fNc+F+wTPzgsc33KvtZhxtEGetNgYr9aTzPpv
         lTBKBuKp9Ht5xYL/DckA0wHi5wvATwOchZ4DQA5BK2hmEO+CdFWEwLIcSS4y90p1ot1W
         maaA68hKlhx27J4XzQxyktPORslLezoByt4xDjCCo/WVCvoDm0AqYuC2HCm5LGtQx4d0
         saa6hsN/z+Pgg/bv31BLKiqfMWrppwsNhX8siwOqESO+s7KRqXbUIMOazfpEP5XKf/cJ
         /vTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=n8jli6A6XFl3RVvgUkgTMjZnL+9GRDRzItwqMyE5L6w=;
        b=TJXAU1HO3SWQeE1BI8nZCc8/7jgxSxdKV1rhwYOzJSZHvJrWcQMJ7UXTBzNwbgbzD2
         5O5mApMwPNy6LgnmMEZg0fw3KWw/nf7HU7BTwf//FefDoLwkZGdu/mPJ5V/xJyJZgwl9
         5eGbZxLktWnmH196hwSpOb94HWm9SDXNHZrNqnL2rdHzGmO4B/KogCT2VAbF4xzMPDsw
         tghu8E5qXDpJ1OPpkPwLeAy3MfEOTXTsmGTPZRNu7uo1yCZgvkWAMLqMCRBwNlQoWkcF
         nnSCYNSKP6Ux0WB4KaJU2H4BOYe9qnrJLFqgj8ktwpbIFOgork1PxvPxED2IQKQnjfbe
         8vAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MX/MvdxW";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s17si563681ljm.5.2020.03.18.11.09.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 11:09:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MX/MvdxW";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id b2so25406446wrj.10
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 11:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=n8jli6A6XFl3RVvgUkgTMjZnL+9GRDRzItwqMyE5L6w=;
        b=MX/MvdxWjJgoa6JrWfR4pe9YAcgkM9fZOqCNeIXyWDW4dBqyJXQ+6mexOcp65Vcwal
         HK9D4oKwL/Bp5fXYVDvgYVPTToRCwgPAX/9FByJlyoQ0QESnE0t4+4NP08reZt9eHyXT
         mkurKKtgAkD9aWmmsvmQqqV7aFkMRf8fP1XrQKOZIu103vYjB7S2Fi1E1sJObyIQblnB
         SoCk/fpFKltBrFaWK4ohF3L/x+d4eTxtpWDgLGaYxQUANxkQx8uOMiL0o857GLTuGQSq
         HZn3attJmX72eO/xsYD0PGg7sjtdoQgrC02CQIiSr+MLXJBb0rp3RgYgkIG1pc+KGv5D
         4HoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=n8jli6A6XFl3RVvgUkgTMjZnL+9GRDRzItwqMyE5L6w=;
        b=gW/QPMm+YbtjHbspdgrZDTXD8LQX8x3C4t685ZwxlGfmLG6qnFonTPtUTLVTCXwAEj
         6dCS7+p1RGXpnc3CwUJrZjQHHBVTzLJ1Tw2vHzf8veez0tWB9XATLzcH6J8cBZ8IPw1J
         KtHzw/hjVYHWkYCcRqeQ8EX6uWO94OKIjL4ot5nqBl0vwgga6hx5PyaTtDm1nbDO1BFV
         CYruvm/7XRka/l1DkuEuwgdBe+8fjlyfi7Dz4WpOoIKbWscElWJnHbVaA96Xw9fusZ2X
         glgCAn6/GgO0aSUsCuAGKKx9xNbxI2gt9jdVKfuX6BD51b2dokcLpO395yVyVsXvU208
         hwog==
X-Gm-Message-State: ANhLgQ3OIZYIBN9T5fX4fB+DHP+8cTFebuiT5kzTMRu5dgQrB2UrSQPc
	rkdi7j5yCMO0LIOGaH0w8O8=
X-Received: by 2002:a5d:4c47:: with SMTP id n7mr7242438wrt.254.1584554959265;
        Wed, 18 Mar 2020 11:09:19 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.71.247])
        by smtp.gmail.com with ESMTPSA id n18sm10446861wrw.34.2020.03.18.11.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 11:09:18 -0700 (PDT)
Message-ID: <a36aa831b963de5bb49e07cdd82adff4429c687a.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: Add blank line after
 variable declarations.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, Manish Chopra <manishc@marvell.com>, 
 gr-linux-nic-dev@marvell.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Wed, 18 Mar 2020 14:09:17 -0400
In-Reply-To: <alpine.DEB.2.21.2003181847160.2979@hadrien>
References: <20200318170713.3886-1-jane.pnx9@gmail.com>
	 <alpine.DEB.2.21.2003181809410.2979@hadrien>
	 <0534e4c283948979f1264c150c72546cca910aab.camel@gmail.com>
	 <ae3830fd-20f7-40e8-ac3c-56c1fe8181ee@gmail.com>
	 <alpine.DEB.2.21.2003181847160.2979@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2020-03-18 at 18:49 +0100, Julia Lawall wrote:
> 
> On Wed, 18 Mar 2020, Sam Muhammad wrote:
> 
> > I am afraid my reply wasn't inline :(
> >
> > Sam
> >
> > Get BlueMail for Android
> > On Mar 18, 2020, at 7:30 PM, Sam Muhammed <jane.pnx9@gmail.com> wrote:
> >
> > -----Original Message-----
> > From: Julia Lawall <julia.lawall@inria.fr>
> > To: Sam Muhammed <jane.pnx9@gmail.com>
> > Cc: outreachy-kernel@googlegroups.com, Manish Chopra <
> > manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org>
> > Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: Add blank line
> > after variable declarations.
> > Date: Wed, 18 Mar 2020 18:10:17 +0100 (CET)
> > On Wed, 18 Mar 2020, Sam Muhammed wrote:
> >  Cleanup checkpatch.pl WARNING: Missing a blank line after
> >  declarations.
> >
> >  Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> >  ---
> >   drivers/staging/qlge/qlge_dbg.c | 8 +++++++-
> >   1 file changed, 7 insertions(+), 1 deletion(-)
> >
> >  diff --git a/drivers/staging/qlge/qlge_dbg.c
> >  b/drivers/staging/qlge/qlge_dbg.c
> >  index 737d6abd8076..8bf592812518 100644
> >  --- a/drivers/staging/qlge/qlge_dbg.c
> >  +++ b/drivers/staging/qlge/qlge_dbg.c
> >  @@ -496,7 +496,9 @@ static int ql_get_mpi_shadow_regs(struct
> >  ql_adapter *qdev, u32 *buf)
> >   static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
> >         u32 offset, u32 count)
> >   {
> >  - int i, status = 0;
> >  + int i;
> >  + int status = 0;
> >  +
> > This does more than add a blank line.
> > Actually, it's fine to declare several variables at once.
> > julia
> >    for (i = 0; i < count; i++, buf++) {
> >     status = ql_read_mpi_reg(qdev, offset + i, buf);
> >     if (status)
> >  @@ -1330,6 +1332,7 @@ static void ql_dump_intr_states(struct
> >  ql_adapter *qdev)
> >   {
> >    int i;
> >    u32 value;
> >  +
> >    for (i = 0; i < qdev->intr_count; i++) {
> >     ql_write32(qdev, INTR_EN, qdev-
> > intr_context[i].intr_read_mask);
> >     value = ql_read32(qdev, INTR_EN);
> >  @@ -1415,6 +1418,7 @@ void ql_dump_routing_entries(struct ql_adapter
> >  *qdev)
> >   {
> >    int i;
> >    u32 value;
> >  +
> >    i = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
> >    if (i)
> >     return;
> >  @@ -1565,6 +1569,7 @@ void ql_dump_stat(struct ql_adapter *qdev)
> >   void ql_dump_qdev(struct ql_adapter *qdev)
> >   {
> >    int i;
> >  +
> >    DUMP_QDEV_FIELD(qdev, "%lx", flags);
> >    DUMP_QDEV_FIELD(qdev, "%p", vlgrp);
> >    DUMP_QDEV_FIELD(qdev, "%p", pdev);
> >  @@ -1650,6 +1655,7 @@ void ql_dump_tx_ring(struct tx_ring *tx_ring)
> >   void ql_dump_ricb(struct ricb *ricb)
> >   {
> >    int i;
> >  +
> >    pr_err("===================== Dumping ricb ===============\n");
> >    pr_err("Dumping ricb stuff...\n");
> >
> >  --
> >  2.20.1
> >
> >  --
> >  You received this message because you are subscribed to the Google
> >  Groups "outreachy-kernel" group.
> >  To unsubscribe from this group and stop receiving emails from it,
> >  send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >  To view this discussion on the web visit
> >  https://groups.google.com/d/msgid/outreachy-kernel/20200318170713.3886-1-ja
> > ne.pnx9%40gmail.com
> >  .
> >
> > By this i maintaned the developer's style; declaring more than one
> > variable was okay, but that was the only occurrence of declaring more
> > than one variable and assigning a value to one of them in the same
> > line.
> 
> 
> OK, if the rest of the code seems to have a strong preference for
> declaring only one variable at a time, I guess that is OK.  But the main
> problem is that a patch should only do one thing at a time.  So a patch
> about adding blank lines after declarations should not also rearrange the
> declarations.  If you want to submit both changes, you can send a series.
> But it could be better to do just one thing to start with.

Great, Thank You.

Sam

> 
> While it is good to not be top posting, it would be better to put your
> reply next to the text it refers to, rather than completely at the bottom
> of the message.
> 
> julia
> 
> > This is an instance where two variables of the same type declared in
> > different lines since one of them was assigned a value:
> >  int status = 0;
> >  int i;
> >  for (i = PAUSE_SRC_LO; i < XGMAC_REGISTER_END; i += 4, buf++) {
> >   /* We're reading 400 xgmac registers, but we filter out
> >    * several locations that are non-responsive to reads.
> >    */
> > plus a TODO note to fix checkpatch issues; i choose it as a starter. :)
> > Sam
> >
> >
> >



