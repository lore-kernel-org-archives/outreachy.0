X-GM-THRID: 6667559870599790592
X-Received: by 2002:a05:600c:21c8:: with SMTP id x8mr374072wmj.14.1552417948660;
        Tue, 12 Mar 2019 12:12:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:8085:: with SMTP id b127ls495934wmd.0.canary-gmail; Tue,
 12 Mar 2019 12:12:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqycEpKXkFL/DMN8vlUfmeyJ1KJeRhysjY+B9O4D1XK+ElazwYDlSUtuS4I+5dIxet8J5E3M
X-Received: by 2002:a1c:a702:: with SMTP id q2mr378353wme.0.1552417947861;
        Tue, 12 Mar 2019 12:12:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552417947; cv=none;
        d=google.com; s=arc-20160816;
        b=j594fZXI86XTE1El5qWsJbj+1scRo5106QmTE44Mi5AvcLyHgL+2Yh+CtqMJeLDzQG
         R5MwnZ13PlvIn3SJbAl2njRSUD29d+D3jdOE27snRgWgCBcpjNPhFVVg5JR9r3m1Gzzm
         +sl8mL/InGJVBFDXjMdQeiZgcs4CotC3+/s0+Re/gxhqb61XK+KXM+ttvTD+6VNSK72D
         FlXASkgrdGwBJCmGUgSmOT0pF2/0T3mkvHxM71MNBBncD+VmKE3QZDR6gAVggX9bVIG5
         76ep7zk2z/o22qeIboyDbcBZBTkaBacWQoJ+xHx7P6L1d3gRhFb+sBEJMYWnzISagIkP
         IUpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=rAr5n2R+fF8aujmIb7+fN5GElU6Ltvy5nhRd+yTI7sY=;
        b=b1iOJOAgfigTeeyn8x9J8NW2u3bdvPuzvHTJvYbhMz92gjo1n0ObJJgJdchtf6u0qJ
         zQgD4dx26WCcHAl3Gs7FP7+Xy9xKdexM3U+h70uNeJkR9TMVicdXURJXSXYS7Y5qFZQR
         uIXgWgPLxzTo44PaDQf1P1BM7ZZSIJck5UKMpqmWRGziHyJXJrKhCO34nxrjT1cz0dlk
         Q+WBgfaCjsL6AWNhEuBe/O1rOM9U2SwmgQwzYYFKglpNDkO6EVNpG8ICCFLTlRNU+yQo
         b4p9b7Yf5cAs+7xeZNwv5O+I22+Tnzu8bVnFe0uHAPSlMzFfKcKvTIL87mR9pvPDI1eC
         dDMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b130si120588wmc.0.2019.03.12.12.12.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 12:12:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,471,1544482800"; 
   d="scan'208";a="373122707"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2019 20:12:27 +0100
Date: Tue, 12 Mar 2019 20:12:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Remove an unnecessary
 initialization in function
In-Reply-To: <20190312182531.GB17075@madhuleo>
Message-ID: <alpine.DEB.2.21.1903122008400.2722@hadrien>
References: <20190312173730.23281-1-madhumithabiw@gmail.com> <alpine.DEB.2.20.1903121850370.4097@hadrien> <20190312180344.GA17075@madhuleo> <alpine.DEB.2.20.1903121912480.4097@hadrien> <20190312182531.GB17075@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Output of file -
>
> ...
> ...
> HANDLING: git/kernels/staging/drivers/staging/speakup/main.c
> HANDLING: git/kernels/staging/drivers/staging/speakup/speakup_bns.c
> HANDLING: git/kernels/staging/drivers/staging/speakup/speakup_apollo.mod.c
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_sii164.c
> diff =
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c
> diff =
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750.c
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_swi2c.c
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_mode.c
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_dvi.c
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750_accel.c
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750fb.mod.c
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_hwi2c.c
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_display.c
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_power.c
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750_hw.c
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/sm750_cursor.c
>
> Here, Do I need to consider the file, which states diff =
> HANDLING: git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c

You would indeed find changes on standard output for the files that have
diff here.

If you don't want to see this output, you can use the option --very-quiet.
Usually I put both standrad output and standard error in files, so I can
look at them later if there are any issues.

I don't see the entry for the file that was incorrectly transformed, so I'm
still not sure what the issue is.  Can you try your semantic patch on just
the file drivers/staging/speakup/speakup_decpc.c?  Are you sure that your
semantic patch has the word "local"?  If you have idexpression without the
local, that would explain the result.

julia

