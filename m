X-GM-THRID: 6806824358191824896
X-Received: by 2002:adf:ec4f:: with SMTP id w15mr22474026wrn.106.1584863992821;
        Sun, 22 Mar 2020 00:59:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls549310wrp.6.gmail; Sun, 22 Mar
 2020 00:59:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt37U31WznhCb6nxl25q5iPbUUo5zGPbEOOcicLdwAdR0DAknRC31+L7cF+hBgx9eRGUhKr
X-Received: by 2002:adf:e78e:: with SMTP id n14mr23245769wrm.363.1584863991759;
        Sun, 22 Mar 2020 00:59:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584863991; cv=none;
        d=google.com; s=arc-20160816;
        b=o/YHb7V4fJPmZlfUAK/td+vqhKzkKzzV9umxhlLyFXB60ut5tUsrfHav/9sfhqScm1
         j74iplJBY04V3R2M+GnU0y3oDbJcrZ3vh3NntNLMCQ5dygyXuUArEE0zclI8fZQNUOvx
         pMpOQtl2fEjuIW9vGg6CCnPcZiSRjnvM6BT3ZH6BZdLzohV5ji9FTLRMitRRYn79/W4P
         8uPHME5ebH3Xa062eexx31Bhghj9cSCqN5tXdFdmOZALJ+mMik8swwhasEqNz5jXmt0O
         SDlz6RjPFGeHWvFRsle+TcVAiWN9o5cLR5tYUfIFOKina5JjRRshQ8edhbOzzkIZeaPY
         xyOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=vPLWfKDeiHkY/fRCVxbusprII95CP7ZKLo1QbeaQmtY=;
        b=DjbNkYJ9sHLOTZAt9Q90Yx46iLcLIhYpgy6vKstq9MoWQ4fsVn5zFfVxtBrHjJ/cUP
         YtcACZn6jgtEtTg13VyxBAJswMAJV49qkyfKQ4RviFRUDa89l9ZEfrPgfyK1AUg8esW3
         OjwuOvccDtWM6CjfCfiTjt9u755FKPfu55ua4HV0G7SYr6x4Wrgps+YDlLX97gEfUnMB
         bU1nHifx8fNOMW/A8m2+uMVaDW6W3POc3ShZhunVR+UlQzVtMqsnqefN/Qx5cGlbP66E
         ZhHkBMweVl/YlNzVe676s0BzmU5ujWS72Y9LA+0/Pk4o8gPv2fjilR+ooBWHQkXvegW7
         D78Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i19si596418wml.0.2020.03.22.00.59.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 00:59:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,291,1580770800"; 
   d="scan'208";a="343187880"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 08:59:39 +0100
Date: Sun, 22 Mar 2020 08:59:39 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: hp100: Remove unnecessary
 braces
In-Reply-To: <20200322003441.GA847@siyah2>
Message-ID: <alpine.DEB.2.21.2003220859210.3006@hadrien>
References: <20200322003441.GA847@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 22 Mar 2020, Gokce Kuler wrote:

> Remove unnecessary braces for single statement block
>
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index 6041043..61b891d 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -2788,9 +2788,9 @@ void hp100_RegisterDump(struct net_device *dev)
>  		outw(Page, ioaddr + 0x02);
>  		for (Register = 0x8; Register < 0x22; Register += 2) {
>  			/* Display Register contents except data port */
> -			if (((Register != 0x10) && (Register != 0x12)) || (Page > 0)) {
> +			if (((Register != 0x10) && (Register != 0x12)) || (Page > 0))
>  				printk("0x%.2x = 0x%.4x\n", Register, inw(ioaddr + Register));
> -			}
> +

There is no need to add a blank line here.

julia

>  		}
>  	}
>  	hp100_page(PERFORMANCE);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322003441.GA847%40siyah2.
>

