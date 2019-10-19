X-GM-THRID: 6749590937101402112
X-Received: by 2002:adf:edcc:: with SMTP id v12mr1356859wro.158.1571511873899;
        Sat, 19 Oct 2019 12:04:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:45c5:: with SMTP id b5ls3855643wrs.12.gmail; Sat, 19 Oct
 2019 12:04:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzzKDwdnUu53V0Na1+sEdyn+8/YcfzTDcuI8EXDOwt01Iwz/JoxmPmjFNXiB2/LtsKxLWwm
X-Received: by 2002:adf:f686:: with SMTP id v6mr13697831wrp.141.1571511872973;
        Sat, 19 Oct 2019 12:04:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571511872; cv=none;
        d=google.com; s=arc-20160816;
        b=O6dXELgQ+yEpS+hIxBO5BpgAa5sf3UH4aUSWM4CWQF6w+uCOJkGsjnv+uRT7wrLMKV
         +IysJobNmwvKMwTQSJAfNQP0R3sNQAhVQ2uYzw0BexO51hux9cHXmih6RfdBbj7es0P+
         2sJNW0hmy7SfqGNMlINps0tyTvZ/Oj1h9z//4h6zgJao3AKkLRSDsnGDt+W/DQ7T15Gu
         4KjLCzatbNqsxGBPpd6b3/5NYi9nHdOL4hnC6STefaNjCFAxjVOxTRF7K87SB+xeb2uk
         lTzHX2qYseX1rY3sQW4OhxSO6Eiy3ziYmbZv9X9r+WHyiL0xQ5ZJWKgEQ6xMRug3yhea
         2tvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8s7hH2oq67USPr3c3KTYDwTXtKzu1IZRS8T0+ID15JY=;
        b=Vf1GoSDGoWoxGJsQik/sgdC7clxr/eJUkNtA+pJwEAisiBvOCJC2Wcno/G2TFAhyDX
         KiClBFwCeFgJkIZguBYVAhUHMyIwyWv37Mp/4qrTPZhrMurfpMtkhF0AshJJ3UGlUwxZ
         3U8gkped/zNtDymWtiTwsDBNj38B8l5Cv/p3NxNq/Hm7wYSGsrjq46tpgw9mCWEQP+WU
         XOu8icTpdFYny9Ygl9wV3uxrtw8wM9juEUzM9ams8avScmr+hE/vQBpWvvVARFU/D4qm
         znXfA0LUfHgNqThubrF1Suv+PoNZ/Q2Zj6Da+EmcwiD8gO5fazLvxqIA4ncTyfTbVozJ
         ET+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e17si429150wre.3.2019.10.19.12.04.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Oct 2019 12:04:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,316,1566856800"; 
   d="scan'208";a="323314015"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Oct 2019 21:04:31 +0200
Date: Sat, 19 Oct 2019 21:04:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wambui Karuga <wambui@karuga.xyz>
cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
    airlied@linux.ie, daniel@ffwll.ch, sean@poorly.run, mripard@kernel.org, 
    maarten.lankhorst@linux.intel.com, outreachy-kernel@googlegroups.com, 
    Wambui Karuga <wambui.karugax@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drm: remove unnecessary return
 variable
In-Reply-To: <20191019071840.16877-1-wambui@karuga.xyz>
Message-ID: <alpine.DEB.2.21.1910192102410.5888@hadrien>
References: <20191019071840.16877-1-wambui@karuga.xyz>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 19 Oct 2019, Wambui Karuga wrote:

> From: Wambui Karuga <wambui.karugax@gmail.com>
>
> Remove unnecessary variable `ret` in drm_dp_atomic_find_vcpi_slots()
> only used to hold the function return value and have the function
> return the value directly.

This patch applies for me, but with a huge offset.  What tree are you
using?

Also, Greg won't apply this, because it's not targeting staging.  Is this
for a specific outreachy project?

julia


> Issue found by coccinelle:
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
>
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> ---
>  drivers/gpu/drm/drm_dp_mst_topology.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
> index 9cccc5e63309..b854a422a523 100644
> --- a/drivers/gpu/drm/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/drm_dp_mst_topology.c
> @@ -3540,7 +3540,7 @@ int drm_dp_atomic_find_vcpi_slots(struct drm_atomic_state *state,
>  {
>  	struct drm_dp_mst_topology_state *topology_state;
>  	struct drm_dp_vcpi_allocation *pos, *vcpi = NULL;
> -	int prev_slots, req_slots, ret;
> +	int prev_slots, req_slots;
>
>  	topology_state = drm_atomic_get_mst_topology_state(state, mgr);
>  	if (IS_ERR(topology_state))
> @@ -3587,8 +3587,7 @@ int drm_dp_atomic_find_vcpi_slots(struct drm_atomic_state *state,
>  	}
>  	vcpi->vcpi = req_slots;
>
> -	ret = req_slots;
> -	return ret;
> +	return req_slots;
>  }
>  EXPORT_SYMBOL(drm_dp_atomic_find_vcpi_slots);
>
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191019071840.16877-1-wambui%40karuga.xyz.
>

