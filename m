X-GM-THRID: 6749203732717633536
X-Received: by 2002:a2e:858d:: with SMTP id b13mr6250507lji.71.1571421570924;
        Fri, 18 Oct 2019 10:59:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:95d4:: with SMTP id y20ls847694ljh.15.gmail; Fri, 18 Oct
 2019 10:59:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxUP1gNQ5VC4UQYIHyo545X9K/VWe5foQ4VULsF4GK1AzGI0zLJAC99Yb7VZvBW6nM2eom4
X-Received: by 2002:a2e:9e4c:: with SMTP id g12mr7142853ljk.62.1571421570043;
        Fri, 18 Oct 2019 10:59:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571421570; cv=none;
        d=google.com; s=arc-20160816;
        b=b0HB51BlmjXG4x31G9paMSWQed3ZITLvRR9CX3CakHgOyW1218RniDc2ilbS4VEycu
         sHweadwy6X94zjszTPxSW6W024dL7FazNF1rUz8OZkik9HFVcHwBR2++sA4hr3C5tckv
         adQfAlLxKF0hsPGRt5zfONrGvL6B7iBLM7FPMEmT6JNdWgbiQq11a5Kbq7S7F6wAIDv0
         r9ldBhQ1gItYDYRxCwP360DIy5o0AV/yC19WCG8yS//rsfouIKvTTolP0P6mVpAPx6Rr
         Hs8uuSBpNQTecHC7tu6Nb1gbxE0NEbjk81fAM4b1ImQj1y1a477zgPbpGccnlIsJYdxY
         GiUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=n8+ZpAclFSkLH5GYrlS9QspsgeJOjOsXemZSMop2BCk=;
        b=ccVgE98bkPuX9v0tW7CuS9DS8Jm7BIYdPaktRLBfH17T1ljpWoSdgrvOl/wjhXRHld
         ImBaXFQZWW3DWklVhD8ajC3Udpvsr3+zAA/JyiFrz9koKTDiSRwTmEJJLXucZx9xsWYk
         1w6Rold/yhZR8UDcqihpMVmSa0PacobJUDwV5gSrtEbX4buc5PfT8Dt6WLWrF2uLoRli
         VOsObOdnSGFYBGfqS0UTEjNRHrU9RcJRSW6gCz5SOIy7jS+UhPP5GwsmchMw/tSNEcVK
         opA+txMcQFOQIX+DZisg+A+aa/lLrG9Qhf3mNsYIG4ONJ0idv4hUwnewDYCqoaU5jlAc
         qHzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z4si484044lfe.4.2019.10.18.10.59.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:59:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,312,1566856800"; 
   d="scan'208";a="406882950"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2019 19:59:29 +0200
Date: Fri, 18 Oct 2019 19:59:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Evan Chime <chime.evan.dri.devel@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: Netlogic: Fix grammatical
 error
In-Reply-To: <20191018175725.GA8274@ik-ubuntu>
Message-ID: <alpine.DEB.2.21.1910181958590.3697@hadrien>
References: <20191018175725.GA8274@ik-ubuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 18 Oct 2019, Evan Chime wrote:

> Change "in to" in "Changing comments in to linux standred format" on
> line 3 to "into"
>
> Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> ---
>  drivers/staging/netlogic/TODO | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/netlogic/TODO b/drivers/staging/netlogic/TODO
> index 8f172b017b94..de8fb8009ce3 100644
> --- a/drivers/staging/netlogic/TODO
> +++ b/drivers/staging/netlogic/TODO
> @@ -1,6 +1,6 @@
>  * Implementing 64bit stat counter in software
>  * All memory allocation should be changed to DMA allocations
> -* Changing comments in to linux standred format
> +* Changing comments into linux standred format

You could count it as a spelling mistake and then fix up "standred" at the
same time.

julia

>
>  Please send patches
>  To:
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191018175725.GA8274%40ik-ubuntu.
>

