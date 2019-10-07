X-GM-THRID: 6745167024590159872
X-Received: by 2002:aa7:df8e:: with SMTP id b14mr31141465edy.65.1570481704908;
        Mon, 07 Oct 2019 13:55:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3591:: with SMTP id o17ls308501ejb.5.gmail; Mon, 07
 Oct 2019 13:55:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwDILFwrJlWFhsPmv4j5q3xjOeCg9BhEqMDLfN/3ZBHyF2/Cfmg8nNycz5yljlAXANyme7V
X-Received: by 2002:a17:906:4541:: with SMTP id s1mr25923192ejq.210.1570481704045;
        Mon, 07 Oct 2019 13:55:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570481704; cv=none;
        d=google.com; s=arc-20160816;
        b=xzYIfVpjuRmlw052JVuX0mZbc19RFyENasp3DhunnnyUo6vbPwuOOX/A3tSSNAhS3x
         li1fLU+BR0FQr0hTqzshtPEOu9HoWYqZ+iZoUNFLL+3rloKnZ09fhbcGLE++hInhDQLR
         s4RzUkywCRaF3Hd3D33PELR35QUbM4CN0caZQW0gZi50u4H+oaWIR+PEfBXmJLfmOHGn
         Cx0cp04RkKHvyeTnjm1jpOjfund6w6I9qQRsWWLLYCsYc8dRwOWDJPy6GLt+oHKMOV+m
         Uy5jhICjNXfK5kT1oCIMj95PrnuENEpufLEfDe+8UlY5Ew7rGTcPdF2/CAfTCaAqEiss
         Uh2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=TI4sD+zxqNxxy9WGvAmIyNK1I6t8+4GE/F+o7q15Evo=;
        b=gCdrgBQRvGz42Lzz0S3fHXagZf7BlrAGWc3Gg51qyHseSfpuoZz7UaTGtJwRD6D8M4
         fPGvIGwVdQulyyuojuOAojO8iIEBmcLM4dj4cfuYY21YILemT4YucHYyz4ZOTzTCm4Ci
         LSsfmYOQcS/TTf9GDddWtJK9hmfkRjfiP9ywwn0Lpwv8xBq1SHSvy3YLbRDc4xyIaSg/
         0qkgrMC51Fpr/tk2CvaObzrsRsutn+QV5HLMimYbDsdo9fEzc6IZKPVWXo5dWoNarhSb
         QuN7PrvoI6vF+vG4ZAxhOw5qXlzFCUszLt9XTdqyUMG25cR4XMWkgOZYEK78hKuulZQQ
         RM1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y11si707468edq.1.2019.10.07.13.55.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 13:55:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,269,1566856800"; 
   d="scan'208";a="405127971"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2019 22:55:03 +0200
Date: Mon, 7 Oct 2019 22:55:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Add comment to lock
 declaration
In-Reply-To: <20191007205248.24466-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1910072254290.2578@hadrien>
References: <20191007205248.24466-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 7 Oct 2019, Jules Irenge wrote:

> Add comment to spinlock declaration to fix warning issued by checkpatch.pl
> "CHECK: spinlock_t definition without comment".

Since it is not apparent from the shown code, it would be helpful to
describe what evidence you used to choose this comment.

thanks,
julia

>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/rtl8712/drv_types.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> index 0c4325073c63..960d8709aada 100644
> --- a/drivers/staging/rtl8712/drv_types.h
> +++ b/drivers/staging/rtl8712/drv_types.h
> @@ -160,7 +160,7 @@ struct _adapter {
>  	int pid; /*process id from UI*/
>  	struct work_struct wk_filter_rx_ff0;
>  	u8 blnEnableRxFF0Filter;
> -	spinlock_t lock_rx_ff0_filter;
> +	spinlock_t lock_rx_ff0_filter; /*spinlock to protect interrupt request*/
>  	const struct firmware *fw;
>  	struct usb_interface *pusb_intf;
>  	struct mutex mutex_start;
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191007205248.24466-1-jbi.octave%40gmail.com.
>

