X-GM-THRID: 6463725672479064064
X-Received: by 10.223.160.199 with SMTP id n7mr332804wrn.15.1504977072029;
        Sat, 09 Sep 2017 10:11:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.139.211 with SMTP id n202ls468688wmd.8.gmail; Sat, 09 Sep
 2017 10:11:11 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb70yVU6khWL+6otOAsmjnNzrOeoYEKiu4cc0gzkFYrt2ccugV9O1tqsummwKJ9RvGOy23KK
X-Received: by 10.28.99.67 with SMTP id x64mr475573wmb.31.1504977071026;
        Sat, 09 Sep 2017 10:11:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504977070; cv=none;
        d=google.com; s=arc-20160816;
        b=y2ciw34hzwWky+ti+5+2bfKOeuo1lPuz/aVEpEP4FShayCbeWnednYc+AUX+VsQihj
         PGGwjj4IdBpGwYTyz7Da07ndPMtlf45oNusJWU9YrdKJ0YbjH5JWK08i3Mra+gK51d5x
         0Po5xs2y6P2OPoKeM3JdRlhVXfnjGA6G594pT5EwkeKWxkLktbXHgsX56gI7A/tmDGd0
         ic2LN61yd0EqFgmsT+jYeEzo4JhbZRDbS6a39VTHRqQQNFseEQixtIMPY0mdPP1ImUkq
         dvRmzuWAUbKcPEfS/ilg2yaVLKSnVNImmT/cV7Wq2ag0saThczKQfvMXIbvKdMBzcdSs
         HpHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=SAk9f+nQcWo7niZYsLbmXV+XtBuXWn+T3n+wOuyBMbg=;
        b=YiUnQbwy9RT2kvmHhiFhVnhEr6B97tSj2rLErgJOVfg7tOosZ/wBo14tlGFq1EBeTw
         8r8UXelsyNcg49zTtlB81jGkajKaJLr8j66dX/jjlPSDkLPfQpYoQv1hn9jW7ze6rYzp
         yYDwPtgqhGmtfxCo3FN5CZ9/ulUGida1eDkeFx68fNbi+5OxLqwrFJco1zvXko7KOq0Y
         9IJOrDk3+QvbNlZ0mx3lVcp8u9GVI4fhdt4DjapwZyLe6LAd7lNJH6lYEjjO37brvZgi
         hRX1PranZtecgOlUvKHk40xmBGr1LqaoKHBnA+9n5RA5yOhWRpD+lIPHaYCB7++Lf+7j
         5okA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 74si324764wmf.8.2017.09.09.10.11.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 10:11:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,367,1500933600"; 
   d="scan'208";a="236892738"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Sep 2017 19:11:10 +0200
Date: Sat, 9 Sep 2017 19:11:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
    linux-fbdev@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove extra blank
 lines
In-Reply-To: <1504953287-14740-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709091910580.2149@hadrien>
References: <1504953287-14740-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Sep 2017, Harsha Sharma wrote:

> This was reported by checkpatch.pl
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/sm750fb/sm750_cursor.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
> index aa47a16..6b27b06 100644
> --- a/drivers/staging/sm750fb/sm750_cursor.c
> +++ b/drivers/staging/sm750fb/sm750_cursor.c
> @@ -18,8 +18,6 @@
>  #include "sm750.h"
>  #include "sm750_cursor.h"
>
> -
> -
>  #define poke32(addr, data) \
>  writel((data), cursor->mmio + (addr))
>
> @@ -45,7 +43,6 @@
>  #define HWC_COLOR_3                         0xC
>  #define HWC_COLOR_3_RGB565_MASK             0xffff
>
> -
>  /* hw_cursor_xxx works for voyager,718 and 750 */
>  void sm750_hw_cursor_enable(struct lynx_cursor *cursor)
>  {
> @@ -134,7 +131,6 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
>  	}
>  }
>
> -
>  void sm750_hw_cursor_setData2(struct lynx_cursor *cursor, u16 rop,
>  			      const u8 *pcol, const u8 *pmsk)
>  {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504953287-14740-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

