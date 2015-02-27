X-GM-THRID: 4714696540160
X-Received: by 10.180.11.34 with SMTP id n2mr676621wib.2.1425060873838;
        Fri, 27 Feb 2015 10:14:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.10 with SMTP id s10ls207984lal.81.gmail; Fri, 27 Feb
 2015 10:14:33 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr2242515lbc.3.1425060873356;
        Fri, 27 Feb 2015 10:14:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew5si170931wid.1.2015.02.27.10.14.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 10:14:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,661,1418079600"; 
   d="scan'208";a="101578487"
Received: from unknown (HELO hadrien.local) ([88.128.80.16])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 19:14:32 +0100
Date: Fri, 27 Feb 2015 19:14:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Refactor loop to
 increase compactness
In-Reply-To: <20150227180728.GA22813@gmail.com>
Message-ID: <alpine.DEB.2.10.1502271913560.3793@hadrien>
References: <20150227180728.GA22813@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 27 Feb 2015, Vatika Harlalka wrote:

> The variables tmp1 and tmp2 are assigned the same values
> in the nested else and the outer else. They can be
> assigned without nesting to increase readability.
>
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/phy.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index 3d0e447..05379be 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -1039,18 +1039,12 @@ static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
>
>  	for (i = 0; i < bound; i++) {
>  		if (i%2 == 1) {
> +			tmp1 = resulta[c1][i];
> +			tmp2 = resulta[c2][i];

I find this confusing.  There is an assignment that is just there to be
written over in one case.

julia

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
>  		diff = (tmp1 > tmp2) ? (tmp1 - tmp2) : (tmp2 - tmp1);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150227180728.GA22813%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

