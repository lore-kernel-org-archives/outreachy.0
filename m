X-GM-THRID: 6254829692131475456
X-Received: by 10.194.216.3 with SMTP id om3mr4771214wjc.7.1456316231256;
        Wed, 24 Feb 2016 04:17:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.3.213 with SMTP id 204ls496488lfd.27.gmail; Wed, 24 Feb
 2016 04:17:10 -0800 (PST)
X-Received: by 10.25.170.7 with SMTP id t7mr4779290lfe.2.1456316230529;
        Wed, 24 Feb 2016 04:17:10 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c143si137260wmd.1.2016.02.24.04.17.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 04:17:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,493,1449529200"; 
   d="scan'208";a="165823772"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 13:17:09 +0100
Date: Wed, 24 Feb 2016 07:17:08 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lustre: Remove
 unnecessary pair of braces {}
In-Reply-To: <20160224121357.GA3368@life-desktop>
Message-ID: <alpine.DEB.2.10.1602240716490.2904@hadrien>
References: <20160224121357.GA3368@life-desktop>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 24 Feb 2016, Anchal Jain wrote:

> For single statment of if not required
> a braces {}.
>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lov/lov_obd.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
> index dcaa5a1..4119d3a 100644
> --- a/drivers/staging/lustre/lustre/lov/lov_obd.c
> +++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
> @@ -1547,9 +1547,9 @@ static int lov_iocontrol(unsigned int cmd, struct obd_export *exp, int len,
>  			osc_obd->obd_force = obddev->obd_force;
>  			err = obd_iocontrol(cmd, lov->lov_tgts[i]->ltd_exp,
>  					    len, karg, uarg);
> -			if (err == -ENODATA && cmd == OBD_IOC_POLL_QUOTACHECK) {
> +			if (err == -ENODATA && cmd == OBD_IOC_POLL_QUOTACHECK)
>  				return err;
> -			}
> +

You don't need to add a blank line.

julia

>  			if (err) {
>  				if (lov->lov_tgts[i]->ltd_active) {
>  					CDEBUG(err == -ENOTTY ?
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160224121357.GA3368%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.
>

