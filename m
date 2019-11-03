X-GM-THRID: 6755177272483774464
X-Received: by 2002:a19:4bd8:: with SMTP id y207mr1568267lfa.125.1572812459920;
        Sun, 03 Nov 2019 12:20:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9e56:: with SMTP id g22ls1559457ljk.14.gmail; Sun, 03
 Nov 2019 12:20:58 -0800 (PST)
X-Google-Smtp-Source: APXvYqz6M6ChaACkDXVkKVs3WNWod+cpyO3Le9V53glEjt8+O5gWPg9Uvkst+gatzu2uGWKebl6Z
X-Received: by 2002:a2e:90b:: with SMTP id 11mr15677277ljj.233.1572812458877;
        Sun, 03 Nov 2019 12:20:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572812458; cv=none;
        d=google.com; s=arc-20160816;
        b=oybCBrb+mLw3YKLDUx+FB2UcQUzXQ/8SwiQQ/9lIiMt/u3oP1llETYC7k38CDsXC3t
         xIX8tBeMOSecOgrBFFb2Gh9iSUEqL8kCGGWA3qbSelQcx7APeCqG04xRwQprONZVDTJ6
         wCta2K0eWX/cAPTKvCd/8onSGXjQ0M0ksMOGUK8ihXRJ0WGRyEtTAx8e88NYPj7UDVrB
         C70DRiK1IxQEMSrnlq3b2xUz26AEU/B4o7OYJVF2wZu2jUV+4Kucowsy8f6KnYUaU6Qa
         LVQu1pZfDgBegCl4QjLX3Xx4kGjahrjWFxX5C9trbNXhp2k8Lcr6cuL6EsqpOZscDG23
         xkmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+6f5MlwCS71Tn2s9PPJgyCSeT0MefKYI/i5nWcZteps=;
        b=C1faHHU+wMb0F6o7GFKpXU2V1leVnnbXmT8z9onoiESI4vR65Uc13MCKDV/fRlTgAV
         XzEkpEfWAoVBjGr8ItMpuS5LvHAJIMna748qqvQWNGMryvCUkB2xZjPvl9jsuLpRdtw0
         2ARGx1STf2AGKwV9esAyorM2FKeabiMZthGldVGC37M5l1i9MqLih3wiqKGzMFVK+B0s
         m/sRvBJbEFFQlw7fDtHro3NznniKWKx2BJOz1Phw5HiB6hhi57coSNJW1DCFbwdRH5vw
         sNn0d2/opGIe9KrqOqkGA3Gy6ieaxEj06k45kXJi9Xk13VN2hryuKgp5hEif8tGiDfPW
         BlUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z18si340461lfh.1.2019.11.03.12.20.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 12:20:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,264,1569276000"; 
   d="scan'208";a="325448969"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2019 21:20:44 +0100
Date: Sun, 3 Nov 2019 21:20:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    abbotti@mev.co.uk, hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: rewrite macro function
 with GNU extension
In-Reply-To: <20191103201740.25415-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1911032119140.2557@hadrien>
References: <20191103201740.25415-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Nov 2019, Jules Irenge wrote:

> Rewrite macro function with GNU extension
> to remove a possible side-effects of MACRO argument reuse "x".
> Issue detected by checkpatch tool
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/comedi/comedi.h | 6 ++++--
>  drivers/staging/wfx/queue.c     | 2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
> index 09a940066c0e..d8a8eec82930 100644
> --- a/drivers/staging/comedi/comedi.h
> +++ b/drivers/staging/comedi/comedi.h
> @@ -1103,8 +1103,10 @@ enum ni_common_signal_names {
>
>  /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
>
> -#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb + (x)))
> -#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
> +#define NI_USUAL_PFI_SELECT(x)		\
> +	({typeof(x) x_ = (x); (x_ < 10) ? (0x1 + x_) : (0xb + x_); })
> +#define NI_USUAL_RTSI_SELECT(x)		\
> +	({typeof(x) x_ = (x); (x_ < 7) ? (0xb + x_) : 0x1b; })

It seems like a clever idea, but could these be functions?  The only
problem could be if the arguments have different types a the different
uses.  If that is the case, it would be good to mention that in the log
message.

>
>  /*
>   * mode bits for NI general-purpose counters, set with
> diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
> index ef3ee55cf621..5d29bce65f71 100644
> --- a/drivers/staging/wfx/queue.c
> +++ b/drivers/staging/wfx/queue.c
> @@ -565,7 +565,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
>  		}
>
>  		if (ret)
> -			return 0;
> +			return NULL;

This seems to be left over from some other change.

julia

>
>  		queue_num = queue - wdev->tx_queue;
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191103201740.25415-1-jbi.octave%40gmail.com.
>

