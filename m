X-GM-THRID: 6466263123755008000
X-Received: by 10.223.134.37 with SMTP id 34mr1743053wrv.1.1505548120635;
        Sat, 16 Sep 2017 00:48:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.19.211 with SMTP id 202ls673208wmt.25.canary-gmail; Sat, 16
 Sep 2017 00:48:39 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBxPKf3YMiszpmm94BxNFBHCp1tfMGGTDCcz8i1S7A2Q6nH+mI9UZmF6R23z3jWTnEo67fJ
X-Received: by 10.28.138.130 with SMTP id m124mr486031wmd.27.1505548119921;
        Sat, 16 Sep 2017 00:48:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505548119; cv=none;
        d=google.com; s=arc-20160816;
        b=IRGRvPSO2okZj6qdFplQJMAqfqo26V7oupqZprVDpI30jkn1ryRYo5bpPnKkyvf5wr
         AsDsCjT5XOf8H3qsCRWMQDsuf++ru3u97tp4CfBS+F5kk0sx7GjxKuPPGpnW6Ga+d5O9
         D/QBQiEv9Wakn19XyXwXAsJ5JDVBGTSG0MWMNhPJ6HXXg3pFw6b5mNCWjUVKqX4nX+5C
         73SuxveUoA9MeUVhI6DybN74RCGugmo6X71HbSd0mc4n5lNI1+af3U6KhQKNyPe0J0go
         V17uz5W0hVGdwpAv06m/PyKp7oiN3vd8p0iGBsCe9xPYVOjtYTn4OXot7wQMTe45+VsA
         LGPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=gHNPFD8UjwSPzLQdAzsOsZ+vO1Bgu+sr/ijQ2Jm51UA=;
        b=bMpuJng4G2tNw1tO0CAprhm34vIOTEWmHE3RUn8im695N4SxF5bs2/1eL+MO2Z+hTk
         z+CK+PtU/zbkGebqxvogEKstzVjg5f+t9tkw8GIL4zVv1WYt/4vYCptycrEFLYBYvL0R
         ra/pDAt4eHpUf/bIX4J52/uALqCGSclpE7fxJDfAtzdMklFF2Mqt+3ZrqrXEPqRjG/TA
         glzlUnp2MyP3vH5xmBvDKCb98eXP5fCP6ymq8ziNBjYyYUwix2J7A7z40GEPSGIVvwV6
         sTS5A9n+pbi3LksTU1FVG5Yjq9ZSUZAjPo9LvrT/yMfB8j5LwAUmIAaHJcS8N8bEOGoN
         BiBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k18si87423wmd.1.2017.09.16.00.48.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 00:48:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,400,1500933600"; 
   d="scan'208";a="291361808"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 09:48:39 +0200
Date: Sat, 16 Sep 2017 09:48:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-usb: add comment
 for struct mutex definition
In-Reply-To: <1505544199-13800-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709160948260.2943@hadrien>
References: <1505544199-13800-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Aastha Gupta wrote:

> This patch fixes following checkpatch.pl checks:
> CHECK: struct mutex definition without comment
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/most/hdm-usb/hdm_usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
> index 85775da..9c58598 100644
> --- a/drivers/staging/most/hdm-usb/hdm_usb.c
> +++ b/drivers/staging/most/hdm-usb/hdm_usb.c
> @@ -122,7 +122,7 @@ struct most_dev {
>  	bool is_channel_healthy[MAX_NUM_ENDPOINTS];
>  	struct clear_hold_work clear_work[MAX_NUM_ENDPOINTS];
>  	struct usb_anchor *busy_urbs;
> -	struct mutex io_mutex;
> +	struct mutex io_mutex; /* synchronize I/O with disconnect */

Why did you choose this comment?

julia

>  	struct timer_list link_stat_timer;
>  	struct work_struct poll_work_obj;
>  	void (*on_netinfo)(struct most_interface *, unsigned char,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505544199-13800-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

