X-GM-THRID: 6745889659545452544
X-Received: by 2002:ac2:5c4b:: with SMTP id s11mr3330744lfp.37.1570654284829;
        Wed, 09 Oct 2019 13:51:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3101:: with SMTP id x1ls215446ljx.1.gmail; Wed, 09 Oct
 2019 13:51:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyG7h5u15JPf9nKgfP6Yfi11rIM5Sgb65sWpr0xIDP/41v2nk9GrVZZxh7wlRpiU59inZf7
X-Received: by 2002:a2e:9b02:: with SMTP id u2mr3775538lji.50.1570654283890;
        Wed, 09 Oct 2019 13:51:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570654283; cv=none;
        d=google.com; s=arc-20160816;
        b=uk/TIudZmrOyOhTBQeMFUDFAGJtd4UHY2mJLnnUekB2pnil2SO6gTiQgQeN9DJBsge
         Uzz+uGxYcD95f69kz8gKaStx2+81HS4aC7/W/7IF2WIMmbdeAPyQd/Pmsw3wtm9w7DpB
         Q0Fx7Hpt6ZdXqXm+BnUrixGsDiO6eK3Q7SSJOmR8VoBZmRt5catQwwB4wq2T4LIydtva
         Ct0XiPkUWYVbrnQRGYiMh1lJdFTbedexj2/lP7Doduhw6ozYyMjWXstg7dCpgWwo98Tr
         vqtwjxPUMUD8B8AZQxh/JDD3S6JU4dO5a+ZhIxK4Q2dMVIrISNDxDF36OVq0X4PV3FpY
         eJWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=gDIITzoxp8zQfUZYRqKFOGH4Z+GM21HJu5PNc6M81hw=;
        b=AxvJHlSrSJ7BiQjPqf8gJrAPTNywihE3pEMYAlKAYCIk2LSIx3WGOS6HQ6ZfceQ6g5
         NFxZ7M8S1PsIzb+w6+hrToXfuXUooacHE8rvtnt3MAxlmWaa8B/3yIaVaDaYqa4dVRtd
         /ot6AaVYssp5oJRMv+0Hjm+8BIgQMA49j8wgw64GlCBfpwl7jYaeGcQ666RMg6TFwcpI
         yCsUlgXGmQgx8rcZ01jilw8PgSgDF4ri6gxiisiHMeC+nnMuQsvJeN8lzOdzZMNaqwMJ
         pAQhZHOuN1oeS1/pJUC1MKXpWQkCa2MGG9Y2aQMEfLTGVIG++WwzLAO//9pRbm2qH0vg
         uctg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z4si245673lfe.4.2019.10.09.13.51.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:51:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,277,1566856800"; 
   d="scan'208";a="405491272"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 22:51:23 +0200
Date: Wed, 9 Oct 2019 22:51:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    GR-Linux-NIC-Dev@marvell.com, netdev@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: qlge: correct misspelled
 word
In-Reply-To: <20191009194115.5513-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1910092249300.2570@hadrien>
References: <20191009194115.5513-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 9 Oct 2019, Jules Irenge wrote:

> Correct misspelled word " check

Why is there a " in the above line?

You don't need to put a newline after check.

>  issued by checkpatch.pl tool:
> "CHECK: serveral may be misspelled - perhaps several?".

It's not reall necessary to give the checkpatch message in this case,
although it is good to acknowledge checkpatch.  You could say something
like:

Fix a misspelling of "several" detected by checkpatch.

julia

> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/qlge/qlge_dbg.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> index 086f067fd899..097fab7b4287 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -354,7 +354,7 @@ static int ql_get_xgmac_regs(struct ql_adapter *qdev, u32 *buf,
>
>  	for (i = PAUSE_SRC_LO; i < XGMAC_REGISTER_END; i += 4, buf++) {
>  		/* We're reading 400 xgmac registers, but we filter out
> -		 * serveral locations that are non-responsive to reads.
> +		 * several locations that are non-responsive to reads.
>  		 */
>  		if ((i == 0x00000114) ||
>  			(i == 0x00000118) ||
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191009194115.5513-1-jbi.octave%40gmail.com.
>

