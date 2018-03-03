X-GM-THRID: 6528798605512278016
X-Received: by 10.28.124.10 with SMTP id x10mr611723wmc.20.1520105533124;
        Sat, 03 Mar 2018 11:32:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.12.195 with SMTP id 186ls823495wmm.8.canary-gmail; Sat, 03
 Mar 2018 11:32:11 -0800 (PST)
X-Google-Smtp-Source: AG47ELsGximRh3LcGcivwVAK4Armu8iJBOgU4j7pEJjtzpconmpb3QH6ciu3pu6bNIH5u+ycausm
X-Received: by 10.28.11.65 with SMTP id 62mr497600wml.19.1520105531537;
        Sat, 03 Mar 2018 11:32:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520105531; cv=none;
        d=google.com; s=arc-20160816;
        b=C8jU/l3Fh+byN3rqPGkS45Cj71UFuO3AVH+ONA4c9kCMyhEbAgbfIWn+ATyoefgHLz
         LSj3NFeP+MM0j3ZTISDniwXy1lQY6PRIoP8ljFCzic64sv8bLMXBsWdsI079AvXYBn/i
         RiJ+TWmn/zxswElQ6G+pk/SGIwmWoz8vloWWKtSw7ZmBUduDJSkVohMyM2jO8NwhAXEy
         Y2D0630fH3SVzZ5hTDZREtKuUVZNY0cXNnla34iGg4cltIvyACD8am3vJ7Pzv9HzdWeS
         765RVnilcMyZ5biuVAUIgkC8sUWi5HpNzr68D/uI43CU06PUDNwn1bR3mkYpspDsmEJ5
         ZKQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=bZvj0kqD61EmgGXSYyLokf44g6FKg31u9fcLykILgSc=;
        b=0zxdWVY7zd8DtCZNBh+O5vUk+/4Sw1PDOTeGMkYOZ507QzFUaTp5AWOMsd5Wgn2+Nf
         yNvKv4QQaB9DshdpFkgZWeWhsLsplQU7FsP/bW4oIG910JSSzdN9nHF5IPHrcij2u6V9
         7Oyk0FRRkQlkdvuLUqDbd7VkOuG5Mfs3hL7hw2Q550bIfrrOXwubZTPOISkHdZi2MYrJ
         z+jsVhFwI4RPpgXwkq0EnEVi+J6bKNMxquOp8jSAFgAF7sXn06k8ykIRd5kJntTGu5bC
         +64erVUHG7UsT74YiNQ6UzYl/G35yGxL6dRI40xRv/Kbvo46MHeo8lr+5EcpyfKxV8IG
         k5rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a72si124793wme.1.2018.03.03.11.32.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 11:32:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,419,1515452400"; 
   d="scan'208";a="316234896"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 20:32:10 +0100
Date: Sat, 3 Mar 2018 20:32:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    eric@anholt.net, stefan.wahren@i2se.com, f.fainelli@gmail.com, 
    rjui@broadcom.com, sbranden@broadcom.com, 
    bcm-kernel-feedback-list@broadcom.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: bcm2835-audio:
 Change to unsigned int *
In-Reply-To: <1520104364-24339-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803032031540.9544@hadrien>
References: <1520104364-24339-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Mar 2018, Nishka Dasgupta wrote:

> Change 'unsigned *' to 'unsigned int *'. Issue found with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> index 0630040..8359cf8 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> @@ -414,7 +414,7 @@ static int snd_bcm2835_pcm_lib_ioctl(struct snd_pcm_substream *substream,
>  	int ret = snd_pcm_lib_ioctl(substream, cmd, arg);
>
>  	audio_info(" .. substream=%p, cmd=%d, arg=%p (%x) ret=%d\n", substream,
> -		cmd, arg, arg ? *(unsigned *) arg : 0, ret);
> +		cmd, arg, arg ? *(unsigned int *)arg : 0, ret);
>  	return ret;
>  }
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1520104364-24339-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

