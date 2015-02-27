X-GM-THRID: 4501080637440
X-Received: by 10.194.178.234 with SMTP id db10mr2114695wjc.2.1425048137301;
        Fri, 27 Feb 2015 06:42:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.161 with SMTP id dd1ls137652wib.49.canary; Fri, 27 Feb
 2015 06:42:16 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr2114693wjc.2.1425048136980;
        Fri, 27 Feb 2015 06:42:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id by11si147019wib.1.2015.02.27.06.42.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 06:42:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,660,1418079600"; 
   d="scan'208";a="101553345"
Received: from ip209.messe-nbg.customer.bisping.net (HELO hadrien.local) ([62.91.19.209])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 15:42:16 +0100
Date: Fri, 27 Feb 2015 15:42:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Cleanup code to
 increase readability
In-Reply-To: <20150227125330.GA15425@gmail.com>
Message-ID: <alpine.DEB.2.10.1502271541170.2670@hadrien>
References: <20150227125330.GA15425@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 27 Feb 2015, Vatika Harlalka wrote:

> Code cleanup includes removing unneeded variables and replacing ternary
> operators with existing macro to increase readability and make it more
> compact.
>
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/phy.c | 35 +++++++++++------------------------
>  1 file changed, 11 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index 006b723..17edbd7 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -1024,47 +1024,34 @@ static void pi_mode_switch(struct adapter *adapt, bool pi_mode)
>  static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
>  			       u8 c1, u8 c2)
>  {
> -	u32 i, j, diff, sim_bitmap, bound = 0;
> +	u32 i, j, diff, sim_bitmap = 0, bound;
>  	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
>  	struct odm_dm_struct *dm_odm = &hal_data->odmpriv;
>  	u8 final_candidate[2] = {0xFF, 0xFF};	/* for path A and path B */
>  	bool result = true;
> -	bool is2t;
> -	s32 tmp1 = 0, tmp2 = 0;
> +	s32 tmp1, tmp2;
>
>  	if ((dm_odm->RFType == ODM_2T2R) || (dm_odm->RFType == ODM_2T3R) ||
> -	    (dm_odm->RFType == ODM_2T4R))
> -		is2t = true;
> -	else
> -		is2t = false;
> -
> -	if (is2t)
> +	    (dm_odm->RFType == ODM_2T4R)) {
>  		bound = 8;
> -	else
> +	} else{

Missing space before {

The changes seem to follow different reasoning.  It may be better to break
them up, so that you can explain the reasoning in each case.

julia

>  		bound = 4;
> -
> -	sim_bitmap = 0;
> +	}
>
>  	for (i = 0; i < bound; i++) {
> -		if ((i == 1) || (i == 3) || (i == 5) || (i == 7)) {
> +		tmp1 = resulta[c1][i];
> +		tmp2 = resulta[c2][i];
> +
> +		if (i%2) {
>  			if ((resulta[c1][i] & 0x00000200) != 0)
>  				tmp1 = resulta[c1][i] | 0xFFFFFC00;
> -			else
> -				tmp1 = resulta[c1][i];
> -
>  			if ((resulta[c2][i] & 0x00000200) != 0)
>  				tmp2 = resulta[c2][i] | 0xFFFFFC00;
> -			else
> -				tmp2 = resulta[c2][i];
> -		} else {
> -			tmp1 = resulta[c1][i];
> -			tmp2 = resulta[c2][i];
>  		}
>
> -		diff = (tmp1 > tmp2) ? (tmp1 - tmp2) : (tmp2 - tmp1);
> -
> +		diff = abs(tmp1 - tmp2);
>  		if (diff > MAX_TOLERANCE) {
> -			if ((i == 2 || i == 6) && !sim_bitmap) {
> +			if (i == 2 || i == 6) {
>  				if (resulta[c1][i] + resulta[c1][i+1] == 0)
>  					final_candidate[(i/4)] = c2;
>  				else if (resulta[c2][i] + resulta[c2][i+1] == 0)
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150227125330.GA15425%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

