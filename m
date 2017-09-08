X-GM-THRID: 6463409376999768064
X-Received: by 10.46.32.39 with SMTP id g39mr249138ljg.17.1504879840522;
        Fri, 08 Sep 2017 07:10:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.201 with SMTP id 70ls3163lft.13.gmail; Fri, 08 Sep 2017
 07:10:39 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA4Db8dY+TZ0SmVfSiaFhZ8vX5rt1OiKg2cUL9/Y/NEF8nEeY9WDF3ZhUY6HpY1lIPEYDlK
X-Received: by 10.46.85.7 with SMTP id j7mr238242ljb.7.1504879838991;
        Fri, 08 Sep 2017 07:10:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504879838; cv=none;
        d=google.com; s=arc-20160816;
        b=0/kXrVMv7OuWH8E0T4ULyFsLUIi/zPzGvRVFB27tJ10qnDIY8hAZJ7BY0WSpBNlaYD
         kYUdkbXc5lvv58Kc54kVupoPbb6IJf9gCm9ytt0l7drWoJf28TpIiRlY78L1d6crAFct
         gUmaM8vEd8jAMwYzn2RDJj5ekIo55ZRCo5W6YsFFPCmh7v9w9LQ08/CPuqq/Xf8LkXHo
         bjre+QDQgHlTuE/VcJv5YQyIY9uDibNCKTbR74/buOhgoCx1iP5wR/lSN/ZUP7ZLiWXE
         eEe9MlGgbtaMvn5rqrLsXCsmz/NTrHEulTzUv/m5SnAom9MJNLxeiJPV2P5WVxwSB58N
         XJBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=x8+kzwCpiyiKO+9Y4fFm+gYIPPuwWjC7dsRaWkCSw40=;
        b=B49MLqhLmznjFv/njEw5ArfRMDAivFZqEWhhpakrPzSTKGhL9KYmQLZ6n/0u5Yi85r
         l5zCYJ+m2K6+OSmGTpPBv+CU+bZ0BqHwepwg5tuHHrL/CrGnLpFD/BfTkq7AWrTi72DD
         EuqL0sx9Zh46Snw1KX6wlaeGRLibP8R8VRwbAZiKxzNcYBLwY+ebFdSmGiaO1NMHPtxX
         GfGwXJUrhCMY3oWu44jNPBi312/1Jn4ienPFTgd8PY/8RxKlMywJUFJ7Xj5Tv80rjVtk
         T+L4QzbKE2af+zWIjkyDMb7C0w2fs1B4wi68878l3VW/Px4CZivVsIGtVa8SFZvNPlZA
         aekA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e135si117076wmg.6.2017.09.08.07.10.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 07:10:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,361,1500933600"; 
   d="scan'208";a="290192654"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 16:10:38 +0200
Date: Fri, 8 Sep 2017 16:10:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gregkh@linuxfoundation.org, laurent.pinchart@ideasonboard.com, 
    mchehab@kernel.org, linux-media@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: omap4iss: Use WARN_ON()
 instead of BUG_ON().
In-Reply-To: <1504879698-5855-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709081609440.3165@hadrien>
References: <1504879698-5855-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 8 Sep 2017, Srishti Sharma wrote:

> Use WARN_ON() instead of BUG_ON() to avoid crashing the kernel.
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/media/omap4iss/iss.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index c26c99fd..b1036ba 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -893,7 +893,7 @@ void omap4iss_put(struct iss_device *iss)
>  		return;
>
>  	mutex_lock(&iss->iss_mutex);
> -	BUG_ON(iss->ref_count == 0);
> +	WARN_ON(iss->ref_count == 0);
>  	if (--iss->ref_count == 0) {

Won't this then infinite loop?

julia

>  		iss_disable_interrupts(iss);
>  		/* Reset the ISS if an entity has failed to stop. This is the
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504879698-5855-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

