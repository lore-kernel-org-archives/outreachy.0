X-GM-THRID: 6523943394650095616
X-Received: by 10.25.159.129 with SMTP id i123mr847095lfe.21.1518980246726;
        Sun, 18 Feb 2018 10:57:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.190.21 with SMTP id o21ls620245lff.8.gmail; Sun, 18 Feb
 2018 10:57:24 -0800 (PST)
X-Google-Smtp-Source: AH8x22634excuyla70rtbFSV+5OQ1wrDPmQlxrJId/2poEtGytJAjVUdV6CiZc7HW/ylDix0QLPG
X-Received: by 10.25.216.12 with SMTP id p12mr847460lfg.32.1518980244212;
        Sun, 18 Feb 2018 10:57:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518980244; cv=none;
        d=google.com; s=arc-20160816;
        b=ZXSlstunUFH4Mg413qRO3VNgQEwSKjf5exW0fT5n5In2OTRsxD7aTN2cLcwBrGp+yC
         +P/NYh1AvTZGHBY3hzHrDIPAH5ooSh6A4etHgK5gC8oAQgA99CenG8ZCY/8/yQFzFW7m
         c4L1xuA34935tTcYNrZ5U5R2IbHGzdmX3KBUYVcZmgnnUH+SMnAA6WPrO3t5OAwx6Bml
         Dx/sSqIQRC6c2B20iVh3RtR3F1V5Z13lrq6sa1Yd05fUzcocRuMnoX7j4BFvLxcjYVVs
         kbCCbPm8z7aHeceX/LILkSZhJs2QVAWDxNV9Slu6Q1/EiVlag5Yer9YTCYZoRvfCItWz
         0ZFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=EdtrhGJSgG9+gyXFs1chNrZSLF4mfyG50K7a8nh0vvU=;
        b=plxBFs/Izh/9SC8kPcl33ymyCl5mwjpnXVbfIsgfBBzwUsc4oQmwZDU8vGioRKUtQz
         GAZUhq6WbI1W+fpTkW8D/C2IxgZaT/oFoXaKG4AFJ+GXxavrydvmgab2Hx/fjHuQb6qw
         yqbpbblOxAMGl7jT8KHLni5F+YyIZW4iq2t9ZElh4IO9HM5FEEan61wJ2Rkf+DSO+OXF
         UxoixIZhTxl1LguKLEBpszTsO7xLAEyeCFIRrwZujq5liG7mxjkBLVINs62Mku0USKuh
         HY2AVZLGoJnkoOZdqXc+s7H4o1pYjHr6KdJdCzr6BeubuGIzIHefSz3fvu8M9CCA79lw
         K9DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 25si232503ljt.1.2018.02.18.10.57.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 10:57:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,531,1511823600"; 
   d="scan'208";a="255191124"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2018 19:57:23 +0100
Date: Sun, 18 Feb 2018 19:57:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eisha Chen-yen-su <chenyensu0@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Add a missing
 space
In-Reply-To: <20180218171138.4313-1-chenyensu0@gmail.com>
Message-ID: <alpine.DEB.2.20.1802181956480.2777@hadrien>
References: <20180218171138.4313-1-chenyensu0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 18 Feb 2018, Eisha Chen-yen-su wrote:

> Add a missing space so that the * is properly aligned with
> the rest of the block comment. Problem found with checkpatch.

Good job on the log message.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

>
> Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
> ---
>  drivers/staging/comedi/drivers/ni_stc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/comedi/drivers/ni_stc.h b/drivers/staging/comedi/drivers/ni_stc.h
> index cb9d4c3a1926..831088c5cabb 100644
> --- a/drivers/staging/comedi/drivers/ni_stc.h
> +++ b/drivers/staging/comedi/drivers/ni_stc.h
> @@ -9,7 +9,7 @@
>  /*
>   * References:
>   *   DAQ-STC Technical Reference Manual
> -*/
> + */
>
>  #ifndef _COMEDI_NI_STC_H
>  #define _COMEDI_NI_STC_H
> --
> 2.14.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180218171138.4313-1-chenyensu0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

