X-GM-THRID: 6532869391138160640
X-Received: by 10.223.134.9 with SMTP id 9mr711265wrv.22.1521062289054;
        Wed, 14 Mar 2018 14:18:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.14.148 with SMTP id 142ls607859wmo.11.gmail; Wed, 14 Mar
 2018 14:18:07 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt2MqD3WeYYFKBQ8LS3ng7oPwLHQ+v66i7gDwtbQP150NU1QykJ3e5Om4eZDDRdkac5incA
X-Received: by 10.28.94.210 with SMTP id s201mr391022wmb.6.1521062287802;
        Wed, 14 Mar 2018 14:18:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521062287; cv=none;
        d=google.com; s=arc-20160816;
        b=IRbRSQqpqD1kNTf2iAzqe+S+w1/TRs7N2I+RHfLi1vcArodYt2bWAcZV+qyB7zR+Fx
         6AgFiHLHjKLQKABanRrURwk5DmUFMH0PYXe6oqXqCV7Q/ML49bNmAMNBhYOPZWvFijxC
         qT3E9sCkNlByLFxF2DC1Q6UrylMLgR19XN0i9nlrnvGswzTvggkg4I+HZDDlj1hnfGES
         wcHodxBX05WnmSYxm6K1xWoG5DuKNnLSwD+fhnM5QXxGXLQSJ9t0KNyXuxP4wdY5NWoC
         kYm3HC67wEsJmkmRUii+R4xNNHse1/gbUxSIwUAwcMNy5bNM+hzeX3GkUz5SZ7aqXTQO
         2KEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=r46GhL9yWQljoUj0N+14DO7LQrgCMRiPVrhqSvmR1y0=;
        b=yunNO5SS0ZA11JwqocjSJRIXkysKuM2xgyA2YphnhZ9ARJrcRiL02PR+gZPE7ldHrc
         Md7UFIorL3XRG/OU3c6k7D30qYSp6RlunOILE+3Nf/wGKniudeY7+kqKHoPubiUpo1/O
         eNppZ8cHf6tEp7g19wFnQoADTp3DVewek5UfotBtdQCYov5NBI04xrtr1mkIRxLDpb1P
         MoxD4so+6ZmYjcB8dlYERhhTJMz25d7VgpmIK+IZEl1pQWrCUS6toKYZ3d3EFpI+um8o
         S5L0DbYTkfyBZXsrZ2KRn6hESXOsw5O8zH6bxINIugKM/1IYxRbI6nCyRDgUcEf/tuJD
         NVVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x16si108480wmc.1.2018.03.14.14.18.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Mar 2018 14:18:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,307,1517871600"; 
   d="scan'208";a="258324683"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2018 22:18:04 +0100
Date: Wed, 14 Mar 2018 22:18:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: Remove braces around
 single statement
In-Reply-To: <1521052170-27685-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803142217530.2326@hadrien>
References: <1521052170-27685-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 14 Mar 2018, Nishka Dasgupta wrote:

> Remove braces around single statement. Issue found with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/ks7010/ks_hostif.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index 05f7be4..c05102d 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -1385,9 +1385,8 @@ static __le16 ks_wlan_cap(struct ks_wlan_private *priv)
>  {
>  	u16 capability = 0x0000;
>
> -	if (priv->reg.preamble == SHORT_PREAMBLE) {
> +	if (priv->reg.preamble == SHORT_PREAMBLE)
>  		capability |= WLAN_CAPABILITY_SHORT_PREAMBLE;
> -	}
>
>  	capability &= ~(WLAN_CAPABILITY_PBCC);	/* pbcc not support */
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521052170-27685-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

