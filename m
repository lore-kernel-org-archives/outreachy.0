X-GM-THRID: 6155043602432
X-Received: by 10.112.189.227 with SMTP id gl3mr4560278lbc.2.1425385372608;
        Tue, 03 Mar 2015 04:22:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.73.103 with SMTP id k7ls103759wiv.5.gmail; Tue, 03 Mar
 2015 04:22:51 -0800 (PST)
X-Received: by 10.180.160.176 with SMTP id xl16mr2925618wib.6.1425385371363;
        Tue, 03 Mar 2015 04:22:51 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id by11si906015wib.1.2015.03.03.04.22.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 04:22:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,681,1418079600"; 
   d="scan'208";a="101934262"
Received: from unknown (HELO hadrien.local) ([207.96.227.9])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Mar 2015 13:22:50 +0100
Date: Tue, 3 Mar 2015 07:22:49 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Fix duplicate
 conditional branch
In-Reply-To: <1bdb9ff234b262793c0537cc9e11cf087202e61a.1425367678.git.vthakkar1994@gmail.com>
Message-ID: <alpine.DEB.2.10.1503030722380.2723@hadrien>
References: <cover.1425367678.git.vthakkar1994@gmail.com> <1bdb9ff234b262793c0537cc9e11cf087202e61a.1425367678.git.vthakkar1994@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 3 Mar 2015, Vaishali Thakkar wrote:

> Replace duplicate branch with correct value. This branch
> is supposed to work for low thresh value.

How did you find the problem?

julia

> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_dm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
> index 7199616..5a01b7d 100644
> --- a/drivers/staging/rtl8192u/r8192U_dm.c
> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> @@ -1628,8 +1628,8 @@ void dm_change_dynamic_initgain_thresh(struct net_device *dev, u32 dm_type,
>  		dm_digtable.rssi_low_thresh = dm_value;
>  	} else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_HIGH) {
>  		dm_digtable.rssi_high_power_highthresh = dm_value;
> -	} else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_HIGH) {
> -		dm_digtable.rssi_high_power_highthresh = dm_value;
> +	} else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_LOW) {
> +		dm_digtable.rssi_high_power_lowthresh = dm_value;
>  	} else if (dm_type == DIG_TYPE_ENABLE) {
>  		dm_digtable.dig_state		= DM_STA_DIG_MAX;
>  		dm_digtable.dig_enable_flag	= true;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1bdb9ff234b262793c0537cc9e11cf087202e61a.1425367678.git.vthakkar1994%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

