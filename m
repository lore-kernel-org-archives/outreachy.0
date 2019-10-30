X-GM-THRID: 6753369380801740800
X-Received: by 2002:a2e:9058:: with SMTP id n24mr3481299ljg.114.1572413270419;
        Tue, 29 Oct 2019 22:27:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9a94:: with SMTP id p20ls412806lji.9.gmail; Tue, 29 Oct
 2019 22:27:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzbPaD6otF6UvpBbFuajNanEh/h2Q3v4Y/FcxVduvXs2VIZSsNnVxDUgn2JZ0ftf7ttmiSX
X-Received: by 2002:a2e:8e88:: with SMTP id z8mr5134252ljk.56.1572413269487;
        Tue, 29 Oct 2019 22:27:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572413269; cv=none;
        d=google.com; s=arc-20160816;
        b=pGpqsxCoYHOBQ2MwpPfuijw+6RrwX5Vn12vqPIlmLo1jBQW5KmvknomWum35SnAYfh
         aVJixtTiXFt893yej48qouqXuqMmY8QtojMxcn9KDQv2/2Tvt6ExhAwqzy7JIIhnsJfN
         ABlw1w++hg9wow3b0siSSV2PggUayBUNkpRqNCZDLclQPfWjOZJ7iZvuuaSq3h2PI6ML
         e4Mtlz4JgQyw/rOMkoK06OaQl9HKa6B6i/8zNz6x243oPN5ezj2GsEW+eX7WuHpz0S3J
         OGek4QsVhlw+KoNzfd6yf6mgrZ29JV8kwi1yp4NeNl4zS+NZxj8cJXDAo1+8yei19KST
         1/zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Qn5BnMCAq02mRK3iZuTBJY6INxBc3Bj5SsKvu7mXJbo=;
        b=JB4otVf0mMkE3k49GPtlX7PVV/D5r3QifDlKXaYSnxjw0ELs2OhooShl2W7bq7nCKo
         Tk9bQWQC/gcj8B+/Bg/4iOsxeKLSaqcVRxeeJSvmsxihHuBbe9BRDFxLvpuztoRswmFT
         dCtr0qobkeyx5pKE/uVk7SAWmp0sunHKRS31vZPO3zcLHj3HKoZiBYSoc9I+rs+uHEk+
         llHsjo4GwWtCzBKcq3szTCUu0B2PmTVdzeh1XQqlxYvhbI7gsGKui7O1H7bwHJZSRhBA
         cZZ1PJEgKjTpWthC+HIiWq+RZ08SXgJiG/7QR/8nbGcv+gc651/wnb6gVYb73uQsnHZZ
         Ovhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d3si43367lfq.1.2019.10.29.22.27.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 22:27:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,246,1569276000"; 
   d="scan'208";a="325073474"
Received: from ppp-seco11pareq2-46-193-149-47.wb.wifirst.net (HELO hadrien) ([46.193.149.47])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2019 06:27:47 +0100
Date: Wed, 30 Oct 2019 06:27:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
cc: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org, 
    linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org, 
    trivial@kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: sm750fb: Fix typo in
 comment
In-Reply-To: <20191029232207.4113-2-gabrielabittencourt00@gmail.com>
Message-ID: <alpine.DEB.2.21.1910300627330.2471@hadrien>
References: <20191029232207.4113-1-gabrielabittencourt00@gmail.com> <20191029232207.4113-2-gabrielabittencourt00@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 29 Oct 2019, Gabriela Bittencourt wrote:

> Fixing typo in word 'and'.
>
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/sm750fb/sm750_accel.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
> index 645813a87490..5925d7c7d464 100644
> --- a/drivers/staging/sm750fb/sm750_accel.c
> +++ b/drivers/staging/sm750fb/sm750_accel.c
> @@ -224,7 +224,7 @@ int sm750_hw_copyarea(struct lynx_accel *accel,
>
>  	/*
>  	 * Note:
> -	 * DE_FOREGROUND are DE_BACKGROUND are don't care.
> +	 * DE_FOREGROUND and DE_BACKGROUND are don't care.
>  	 * DE_COLOR_COMPARE and DE_COLOR_COMPARE_MAKS
>  	 * are set by set deSetTransparency().
>  	 */
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191029232207.4113-2-gabrielabittencourt00%40gmail.com.
>

