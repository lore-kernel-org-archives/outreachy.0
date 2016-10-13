X-GM-THRID: 6339053517033963520
X-Received: by 10.36.86.19 with SMTP id o19mr1723054itb.11.1476361213655;
        Thu, 13 Oct 2016 05:20:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.238.5 with SMTP id b5ls2398637iti.3.gmail; Thu, 13 Oct 2016
 05:20:12 -0700 (PDT)
X-Received: by 10.107.137.223 with SMTP id t92mr1784001ioi.86.1476361212393;
        Thu, 13 Oct 2016 05:20:12 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p131si2148835vkf.1.2016.10.13.05.20.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 05:20:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,339,1473112800"; 
   d="scan'208";a="196652336"
Received: from lstlambert-656-1-236-67.w82-127.abo.wanadoo.fr (HELO hadrien.local) ([82.127.3.67])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2016 14:20:10 +0200
Date: Thu, 13 Oct 2016 14:20:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
In-Reply-To: <21e853d5-b5bb-4b00-b1b5-7ec1a38145f6@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1610131418560.3086@hadrien>
References: <20161008112506.GA12694@euri> <alpine.DEB.2.10.1610081940270.3259@hadrien> <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com> <d15336f4-5027-4b19-b3fd-52f4fac150c0@googlegroups.com> <alpine.DEB.2.10.1610091553500.5891@hadrien>
 <fd933dbe-c8ef-4f38-ae1c-7f75a8bab6c7@googlegroups.com> <alpine.DEB.2.10.1610112221080.3192@hadrien> <5a2e45cf-903e-41c4-91d8-37d45aea9ce7@googlegroups.com> <alpine.DEB.2.10.1610120710390.3282@hadrien>
 <21e853d5-b5bb-4b00-b1b5-7ec1a38145f6@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1645046208-1476361210=:3086"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1645046208-1476361210=:3086
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 13 Oct 2016, Varsha Rao wrote:

>
> This patch fixes the checkpatch issue by replacing BBvClearFOE with
> bbvclearfoe.
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6655/baseband.h
> b/drivers/staging/vt6655/baseband.h
> index 6d9a936..a732fba 100644
> --- a/drivers/staging/vt6655/baseband.h
> +++ b/drivers/staging/vt6655/baseband.h
> @@ -58,7 +58,7 @@
>  #define TOP_RATE_2M         0x00200000
>  #define TOP_RATE_1M         0x00100000
>  
> -#define BBvClearFOE(dwIoBase)                                \
> +#define bbvclearfoe(dwIoBase)                                \
>          BBbWriteEmbedded(dwIoBase, 0xB1, 0)

I think this is what you sent before, and that the macro is never used?
I have the impression that what you did wrong is to just remove
BBvClearFOE(dwIoBase) and not the entire macro definition (both lines).

julia


>  
>  #define BBvSetFOE(dwIoBase)                                \
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/21e853d5-b5bb-4b00-b1b5-
> 7ec1a38145f6%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1645046208-1476361210=:3086--

