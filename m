X-GM-THRID: 6256430192250585088
X-Received: by 10.107.15.79 with SMTP id x76mr15477241ioi.31.1456689646099;
        Sun, 28 Feb 2016 12:00:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.230 with SMTP id h99ls1180581ioi.75.gmail; Sun, 28 Feb
 2016 12:00:45 -0800 (PST)
X-Received: by 10.107.157.10 with SMTP id g10mr16159586ioe.28.1456689645819;
        Sun, 28 Feb 2016 12:00:45 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qk0-x22f.google.com (mail-qk0-x22f.google.com. [2607:f8b0:400d:c09::22f])
        by gmr-mx.google.com with ESMTPS id y131si1354001ywc.0.2016.02.28.12.00.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:00:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) client-ip=2607:f8b0:400d:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22f.google.com with SMTP id x1so49808859qkc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 12:00:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=/6IjFW9iO2dU01w25P33OfDjVkpRy1NiXc/SeRRu7ZI=;
        b=hUG8UhF6qPwcbzVht/jrmcq57dmXfbAt6m01tS3SPI/V3M+28JclyBbJN3lJTZtYNu
         W3BxHVvAyqd4NWWznaKvNOggOD8bAkXN9t9sNW+nKGffELesk6NbjLNM+pX+qjOHpePS
         oMxDLnKg537XjX2fGVRkFD3ghJOfJWxQtVEKUjfwaZKFMot+ocX9n8DIXq/DffQg4HpR
         ySHLzewYuN518PgIYIaXCoD9VAYsubQko7inUCEm1hE9CdWnuMMks5JmO3+EzGiUigcR
         2KAWlhFOTml6+LJKTsj0mYXkIv0aUUUwUsLLSjvU5E9nnufgU3PsPkNArneNXWx03k8k
         TT3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=/6IjFW9iO2dU01w25P33OfDjVkpRy1NiXc/SeRRu7ZI=;
        b=jNask3qdP5riOoFw6MfcSiXD2nJa9ciJ8vhXRE9agEKfMuR75Wj9g26S3avK0p9FaB
         LHzC8dwRCso1Z5WiJNFtaoZHYNdK8ypda6tEBd9G9aEFiP1+aN7xX1QrtT5MiGOTBFAA
         8DOLOV77C1ypU1hSJyTV947wJb2opL97xvSxE7BDxheL2DwSGXPDejbZv43rR3t5LrVI
         5oRzps/1E7PEqaSK96NI2miEuML5FQtdIqtthddC4v5ivs+slRcNgTFoTfJGqKGkyrPI
         Wle6ThE8lu7AhlrdpDK1/oC5/c/L/dRm3vuqNl5XUduvDBxcLSn6B3i0E/zROS2paYxS
         MXrg==
X-Gm-Message-State: AD7BkJKfD4Jh4w0CJO2J584z6xrvTQJUvnT3Z1oVKCpwPz89A4vB1JB6HJDYg8DvC+D50ojTUKbNSUdhKgNIhw==
X-Received: by 10.55.81.2 with SMTP id f2mr14882389qkb.87.1456689645598; Sun,
 28 Feb 2016 12:00:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.217.215 with HTTP; Sun, 28 Feb 2016 12:00:06 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602282053160.2075@localhost6.localdomain6>
References: <20160228194139.GA1694@Karyakshetra> <alpine.DEB.2.02.1602282045040.2075@localhost6.localdomain6>
 <CAFNHFT_j5ORVAnEXJYWLAHikbRNjf5+YKKG3EcAS0GOs9WWmWA@mail.gmail.com> <alpine.DEB.2.02.1602282053160.2075@localhost6.localdomain6>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Mon, 29 Feb 2016 01:30:06 +0530
Message-ID: <CAFNHFT_jny=8j2=tVNA0uRR+dieAdRZ3Vwf3umbJkOXe_Fi46w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/6] Remove NULL test before vfree
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Sure. Will send v2 with  patches merged.

Thanks,
Bhaktipriya

On Mon, Feb 29, 2016 at 1:23 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 29 Feb 2016, Bhaktipriya Shridhar wrote:
>
>> Hello Julia,
>>
>> Well, you caught me there :)
>> Path names were the same for some patches because the files belonged
>> to the same directory.
>> Can you suggest a different subject?
>
> If need be, you could go down to the file name (without the .c).  Or just
> put the patches for two files together.  None of the patches are that big.
>
> julia
>
>>
>> Thanks,
>> Bhaktipriya
>>
>>
>>
>>
>> On Mon, Feb 29, 2016 at 1:16 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Mon, 29 Feb 2016, Bhaktipriya Shridhar wrote:
>> >
>> >> This patch-set removes NULL tests before vfree.
>> >>
>> >> Bhaktipriya Shridhar (6):
>> >>   staging: rts5208: Remove NULL test before vfree
>> >>   staging: rtl8192e: Remove NULL test before vfree
>> >>   staging: rts5208: Remove NULL Test before vfree
>> >>   staging: rtl8188eu: core: Remove NULL test before vfree
>> >>   staging: rtl8188eu: core: Remove NULL Test before vfree
>> >
>> > I think that turning test into Test is a slightly subtle way of making the
>> > subject lines different.  It could be better to use a bit more of the path
>> > name.
>> >
>> > julia
>> >
>> >>   staging: rtl8188eu: os_dep: Remove NULL test before vfree
>> >>
>> >>  drivers/staging/rtl8188eu/core/rtw_recv.c    |  3 +--
>> >>  drivers/staging/rtl8188eu/core/rtw_sta_mgt.c |  3 +--
>> >>  drivers/staging/rtl8188eu/os_dep/usb_intf.c  |  2 +-
>> >>  drivers/staging/rtl8192e/rtl8192e/rtl_core.c |  6 ++---
>> >>  drivers/staging/rts5208/ms.c                 | 30 ++++++++---------------
>> >>  drivers/staging/rts5208/xd.c                 | 36 ++++++++++------------------
>> >>  6 files changed, 27 insertions(+), 53 deletions(-)
>> >>
>> >> --
>> >> 2.1.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160228194139.GA1694%40Karyakshetra.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>

