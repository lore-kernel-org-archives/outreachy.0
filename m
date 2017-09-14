X-GM-THRID: 6465542343215808512
X-Received: by 10.28.154.68 with SMTP id c65mr177115wme.5.1505388374100;
        Thu, 14 Sep 2017 04:26:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.207 with SMTP id v198ls1425402wmv.10.gmail; Thu, 14 Sep
 2017 04:26:12 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBEvnAXl51oLV8CikLhuxkIuw9HQqUpKSXtZBgl6Cj15J4UQ+R86eRrf4c5A4YkM9E/9jIn
X-Received: by 10.28.230.79 with SMTP id d76mr180673wmh.12.1505388372818;
        Thu, 14 Sep 2017 04:26:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505388372; cv=none;
        d=google.com; s=arc-20160816;
        b=ecFog7348ZmtKy5b89iExzL9z0p6F4jeh+pgbuaXlYcjkKFUJRf9iGtMTeHVgfYl1I
         uZNMAumXqE1gXPO01SvGe0pnMpLYsqejqiw0hpxkZhJqjdFUxHVGAJ6e3KObcaP5ozsc
         b85ESVS69L3vq6ILOEH1aaFpUGoDhcs1kJLiGDMTogmDCSjwqETP6JoDrlAFy9nDlkCH
         Ec5mts7YrrHmEnyGosfNH/98bQUdNFL0bqpbSxLJ47MkSjcwBbLueW9Xm397jt42vdzj
         Giy/4TcAoH5uM6kuQ8UI+iOLnITd1kpUultE25+VK2vzE9yG/n129J5Pbb2CGAg+o0b7
         Ua0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=i/XX2v5mITmh0F5/LvU2DhddT3YWR/HjZtQYqJO72Ag=;
        b=gk+xCEPKHipDAhkKjmylRFyzKDW0m+1IPzP3ABQHzOfhNPbJWCMwMyAR+S7ggBLK3r
         JXDLPDCZUe32h+okmz60h8dLYIkWZHvlngJXwsTrJXYDJU0W1fRDhyynt3sESLPAYaei
         g2ORIz1DKgZ7aSj9cocmQjVd0jA8xTej12+QuTXHr2WL0ldL0h5ZQ0xEkSALPKic1vYL
         RlYFh14XN1iV179A/Gona9YGdmZY1atJkrsZnFNrA0pGLrqCDROVeA6Selzstff21shF
         dxuf9p1t4AFHg93OakpLG4ZwCH7XBlFGSd1lsDZXCm0owKgKcJ6dQobfQy3Y/gctqkRK
         jKLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p200si85491wmg.4.2017.09.14.04.26.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 04:26:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,392,1500933600"; 
   d="scan'208";a="237474856"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 13:26:12 +0200
Date: Thu, 14 Sep 2017 13:25:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Jani Nikula <jani.nikula@linux.intel.com>, dri-devel@lists.freedesktop.org
Subject: Re: [Outreachy kernel] [PATCH v3 4/4] drm/agpsupport: Remove extra
 blank line
In-Reply-To: <9cfc7e7535908f3fe3b1df706f2999687c90d4e7.1505376068.git.meghana.madhyastha@gmail.com>
Message-ID: <alpine.DEB.2.20.1709141325020.3185@hadrien>
References: <cover.1505376068.git.meghana.madhyastha@gmail.com> <9cfc7e7535908f3fe3b1df706f2999687c90d4e7.1505376068.git.meghana.madhyastha@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Sep 2017, Meghana Madhyastha wrote:

> Remove extra blank line to adhere to standard coding style.
> Found by checkpath.pl..
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v3:
>  -This was part of another commit in v2 and v1.
>   Now made this a separate commit
>
>  drivers/gpu/drm/drm_agpsupport.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
> index a0510557..737f028 100644
> --- a/drivers/gpu/drm/drm_agpsupport.c
> +++ b/drivers/gpu/drm/drm_agpsupport.c
> @@ -373,7 +373,6 @@ int drm_agp_free(struct drm_device *dev, struct drm_agp_buffer *request)
>  EXPORT_SYMBOL(drm_agp_free);
>
>
> -

This looks better.

But you got some Reviewed-by: annotations from Sean. You should preserve
them on the next version.

julia

>  int drm_agp_free_ioctl(struct drm_device *dev, void *data,
>  		       struct drm_file *file_priv)
>  {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9cfc7e7535908f3fe3b1df706f2999687c90d4e7.1505376068.git.meghana.madhyastha%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

