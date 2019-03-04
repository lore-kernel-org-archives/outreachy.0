X-GM-THRID: 6664067951305424896
X-Received: by 2002:a2e:85cd:: with SMTP id h13mr842151ljj.8.1551686326139;
        Sun, 03 Mar 2019 23:58:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:6547:: with SMTP id z68ls1816140ljb.5.gmail; Sun, 03 Mar
 2019 23:58:45 -0800 (PST)
X-Google-Smtp-Source: APXvYqwd1XSWMNemUfZiq4UFDf3Jqq45qaNLs3nO+5WuD+vioiE6/Xkke2eyts2D8fZCMqbKWw9Z
X-Received: by 2002:a2e:290:: with SMTP id y16mr891203lje.20.1551686325352;
        Sun, 03 Mar 2019 23:58:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551686325; cv=none;
        d=google.com; s=arc-20160816;
        b=rY3s/OaYNuKEt54/xQ8O8r3EDoHWT/q1r2+vd6x+UZXHiVNWNdbdPFd6z4Ml5BzPC9
         sCw4au054fw/Ys89bNnu8vzdaoyoHTSgWhh5IgFt4SPZvLWMpoTQVMJPr8BM9U3U7j2J
         WH6d3GS2DIJxan0w4MSA+wDPrfLMtQv2SrqU31aST7SK0AMBqtm17lZ3wRFiwdpwtECK
         vs3N32Wruzng/7Owk6hRgkM0bdlPc7wV5P9qXuUlOZekYTQE1Yc9iVwJa9xKFJMtFKvJ
         ql6Ej6SEhAO1dWtklBUd9O7IdRD3T2DEyJw5TyA0+jD0S8VC8M9MkMw0jjMRC4JJZYp8
         q64Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+sfd6plNS5rP03ndXLEFO8J9qf+4eDRLXUa0UUA9Q1c=;
        b=GP9OReEuDArFz4mMlVY9vo4qnGEa364AlcQ/hj2TFnLxgTOPF0RVy3iNVKi3oRPDag
         NzzKtuK/VQCtKhyTXro5CWSpw3GVCFsWeev+3ChnQqY3ecdWNAPK9g+naPKjEtuemim4
         +i4xLIeO2ySl6yOmYpvMLmlsFN9SMifAbSkxAcyit9TX42Xut0Q15Wp7DBDtiJbX/H2p
         rmUSqIe0Oivk+a6vD1L28Y+twJr4pe6kzw6TYfhXqubf6s9lF9oHbhwZsdWNQ7llglaN
         Dt/vZC9tAB4Pi6ne4Bqlveok38llUfdq/gu9R2lbhHv0bU5Fhhpr1EZcl7hxUrC5OyGn
         h6Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 19si215333lje.4.2019.03.03.23.58.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 23:58:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,439,1544482800"; 
   d="scan'208";a="297963745"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2019 08:58:44 +0100
Date: Mon, 4 Mar 2019 08:58:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Debleena Sen <idebleenasen@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: pi433: Fix line over 80
 characters issue
In-Reply-To: <1551679530-2635-1-git-send-email-idebleenasen@gmail.com>
Message-ID: <alpine.DEB.2.21.1903040857480.2559@hadrien>
References: <1551679530-2635-1-git-send-email-idebleenasen@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Mar 2019, Debleena Sen wrote:

> Delete extra whitespace and tab space to remove
> checkpatch.pl warning:
> WARNING: line over 80 characters
>
> Signed-off-by: Debleena Sen <idebleenasen@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/pi433/pi433_if.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
> index b231463..53928af 100644
> --- a/drivers/staging/pi433/pi433_if.c
> +++ b/drivers/staging/pi433/pi433_if.c
> @@ -45,10 +45,10 @@
>  #include "pi433_if.h"
>  #include "rf69.h"
>
> -#define N_PI433_MINORS			BIT(MINORBITS) /*32*/	/* ... up to 256 */
> -#define MAX_MSG_SIZE			900	/* min: FIFO_SIZE! */
> -#define MSG_FIFO_SIZE			65536   /* 65536 = 2^16  */
> -#define NUM_DIO				2
> +#define N_PI433_MINORS		BIT(MINORBITS) /*32*/	/* ... up to 256 */
> +#define MAX_MSG_SIZE		900	/* min: FIFO_SIZE! */
> +#define MSG_FIFO_SIZE		65536   /* 65536 = 2^16  */
> +#define NUM_DIO			2
>
>  static dev_t pi433_dev;
>  static DEFINE_IDR(pi433_idr);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551679530-2635-1-git-send-email-idebleenasen%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

