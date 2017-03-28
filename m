X-GM-THRID: 6402618675117948928
X-Received: by 10.25.198.86 with SMTP id w83mr3939924lff.28.1490730677911;
        Tue, 28 Mar 2017 12:51:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.216.200 with SMTP id p191ls1991877wmg.2.canary-gmail; Tue,
 28 Mar 2017 12:51:16 -0700 (PDT)
X-Received: by 10.223.150.16 with SMTP id b16mr623289wra.20.1490730676958;
        Tue, 28 Mar 2017 12:51:16 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p144si325308wme.2.2017.03.28.12.51.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 12:51:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,238,1486422000"; 
   d="scan'208";a="218392092"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Mar 2017 21:51:15 +0200
Date: Tue, 28 Mar 2017 21:51:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: lgirdwood@gmail.com, broonie@kernel.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, corbet@lwn.net, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Regulator: core.c: Fix kerneldoc
 comments
In-Reply-To: <20170328183021.2683-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703282149260.2345@hadrien>
References: <20170328183021.2683-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 28 Mar 2017, Tamara Diaconita wrote:

> Remove the description for the non-existing 'ret' to fix the build warning:
> ./drivers/regulator/core.c:1467: warning:
> Excess function parameter 'ret' description in 'regulator_dev_lookup'.
> The description found for the return value is: @ret: 0 on success, -ENODEV
> if lookup fails permanently, -EPROBE_DEFER if lookup could succeed in the future.

Fine for this patch, but if you are finding more of these, I don't think
you need to quote the removed text in the commit log.  One can see it just
below in the patch.  Actually,

"Remove the description for the non-existent parameter ret.  Problem
detected using the kerneldoc build."

seems like it would be sufficient.

julia

>
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/regulator/core.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index 53d4fc7..219b665 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -1451,8 +1451,6 @@ static struct regulator_dev *regulator_lookup_by_name(const char *name)
>   * regulator_dev_lookup - lookup a regulator device.
>   * @dev: device for regulator "consumer".
>   * @supply: Supply name or regulator ID.
> - * @ret: 0 on success, -ENODEV if lookup fails permanently, -EPROBE_DEFER if
> - * lookup could succeed in the future.
>   *
>   * If successful, returns a struct regulator_dev that corresponds to the name
>   * @supply and with the embedded struct device refcount incremented by one.
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170328183021.2683-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

