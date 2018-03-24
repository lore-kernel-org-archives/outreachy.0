X-GM-THRID: 6536488278592323584
X-Received: by 10.28.207.134 with SMTP id f128mr1211164wmg.11.1521900906712;
        Sat, 24 Mar 2018 07:15:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.26.147 with SMTP id a141ls761844wma.0.canary-gmail; Sat, 24
 Mar 2018 07:15:05 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuYr67mFvImaz2Nj7X191ipa/dla2+PctbFcVHb0ki2YGBpQ/aBAqFfjIAxSPkVrXYUN8yO
X-Received: by 10.28.52.142 with SMTP id b136mr1431751wma.13.1521900905607;
        Sat, 24 Mar 2018 07:15:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521900905; cv=none;
        d=google.com; s=arc-20160816;
        b=wapHhjisaYVcnyFN++juANQbjQ22xpkpM/1poxaJx8S92s6IVhNMklHwj1YbKNwjzq
         Qqe9cYfE8IVKT8fsglZjCynWcLL88gwtsGhNu5xNeW4F6YKhV4zOQAYJa0FMkwI3kSBJ
         wRGY4lUuF2w21kIhhxv8z7QV1ePf8Ht9BD2KUW64htLZK1OxLCqHIWtO1Gb+A9XX4KYz
         R6xtB3GHBQjGmuJt0qZhHQaBPcec0HFYxP62cX6cViGGiH2uJWH1VtltKUSCP0u4URSg
         f4uwROYGhAOjU2gJUziB84yv5AeOLYBZ2Bvm30zB99T9fDG2GdiHeWGPFTcrndyqVXuA
         gWcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=LRVKC3ltLQdbbd1Ej5AdwzkObUW0BiakRWOV6PKuWX0=;
        b=DnTbNgrtDog5/hXJNS4j09XoFN5kaFe2/Lqh+BrevEJtqmyXGqiXDvGVk0BoUjoIcV
         uMw3neMwQROO71g1DG/24XbgfsMcCdqqIMLNtLHARl74l2P/JQb5eJ9wqODgXH7y/cFG
         T0pm3f0wsgaqumWXtf+t6x92BxbNfyBO5eAIbnk38oiOd1ZRYxP2HslxNa4puOe2D842
         d3hhf/DLuFbdI4qSRMkulhWvhqea6ldgyfL9wKNA97kGV+xO1UF6NsytZaUnE54l+Lrm
         h/V5oo+qI4rdaAH1OpVHEVoyQmAhKoJwSc2ZRr3CejpgJcudL8IKnVtlBEcA076XWP1o
         c9AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 51si405108wrw.0.2018.03.24.07.15.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 07:15:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,355,1517871600"; 
   d="scan'208";a="259665381"
Received: from unknown (HELO [10.71.3.76]) ([209.118.33.125])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2018 15:15:04 +0100
Date: Sat, 24 Mar 2018 10:15:02 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: media: davinci_vpfe:
 Remove explicit function name
In-Reply-To: <1521894759-28450-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803241014100.2323@hadrien>
References: <1521894759-28450-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Indeed, the subject lines were already the same before.

If you want to make specific patches for each file, then you should
incorporate the file name into the subject line.  Another possibility is
to just make a single patch for all cases.

julia

On Sat, 24 Mar 2018, Nishka Dasgupta wrote:

> Replace explicit function name in string with %s..., __func__.
> Issue found with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 7d3349b..0f94b8e 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -703,7 +703,7 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
>  	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
>
>  	if (!gamma->bypass_g && !gamma_param->table_g) {
> -		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
> +		dev_err(dev, "%s: table ptr empty for G\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_g, gamma->table_g,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521894759-28450-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

