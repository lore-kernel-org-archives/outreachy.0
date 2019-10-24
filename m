X-GM-THRID: 6751406799078817792
X-Received: by 2002:a05:600c:1150:: with SMTP id z16mr241184wmz.153.1571950493701;
        Thu, 24 Oct 2019 13:54:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a90c:: with SMTP id s12ls5407985wme.4.canary-gmail; Thu,
 24 Oct 2019 13:54:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxl5zCOhsV2uUOtOHRH+MbgjAzuTDl+LQfnM8hIA2Fh0qjmPB0+E+vWodtf50VpOynpHh3P
X-Received: by 2002:a7b:c753:: with SMTP id w19mr275141wmk.25.1571950492853;
        Thu, 24 Oct 2019 13:54:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571950492; cv=none;
        d=google.com; s=arc-20160816;
        b=JOV/iUX+cCQ68dJlX19lkumycDDn4BYScKAQgmw9PR+xW/EdhRBa13mxGLlumm2HVl
         YoZcaP/fuSL9ewFYXbyY54KjYpcONIkwFOZ/28zd96roBY4eQRXNqrKMemhURw5NBieX
         PGBlgYxG+uV4DTxOsOgGvV3+yuFRia0CEJH3aehf2VsKd1pvyjLO+0NB45fo4OvcoOvR
         2MJjBkkjOTUdqqRQhY6kQ3Og+mqn9BeGs9oz3TMa+ngC08V2lUrIZGDgpSs74sPljAth
         pvYfLqWxq7jFrpLs7wN8C1i9D2d3OywfG1SRe1xt/1BQ8x7IZmYa30eiu3YfMP7Z0A6S
         i6nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=6EsLIKDrEsCZQ2upAKCOjUYz7/ls+rDkoRJPMxe/U2c=;
        b=HgoKTV7ErhIc/IsYxrVzWJlPDAF5H/Kr2awkTfP2Sf/fhkEt4g+63OPGgu9QNEE2OY
         iSNke1HtInmm32dGoWT5UL8Xb7f1To9MV112cx7rYvBEo9jI1ufiEcx/guYjZ3mtQ5wy
         8QRS7/+Ob7cO4DO7yHf4hIC4fM2jRjwtNXdhvIuEofspht5G3DKHO69tJDJsiyDKENrQ
         I9hMOOhlZFrjdOoZ455rG5qAAU2Ehj0UsiE2AirN4TKqlL/pTD12Vem5L4cm3BE9kU2T
         BEJDLo4//jjoMtHVrZ0X7zFDLzkRnSEOU5JTu4Z2ScvLysQd/FhdKCUQVY2cykYM8dre
         i17A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a14si1030320wrm.1.2019.10.24.13.54.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 13:54:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,226,1569276000"; 
   d="scan'208";a="324196422"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Oct 2019 22:54:52 +0200
Date: Thu, 24 Oct 2019 22:54:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nachammai Karuppiah <nachukannan@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Remove
 typecast in call to kfree
In-Reply-To: <1571934370-39013-1-git-send-email-nachukannan@gmail.com>
Message-ID: <alpine.DEB.2.21.1910242254130.2621@hadrien>
References: <1571934370-39013-1-git-send-email-nachukannan@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 24 Oct 2019, Nachammai Karuppiah wrote:

> Remove typecast in the call to kfree as it is not needed.
> Issue found using coccinelle.
>
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/sdio_ops.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
> index 301d327..5645658 100644
> --- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
> +++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
> @@ -1029,7 +1029,7 @@ void sd_int_dpc(struct adapter *adapter)
>  				if (c2h_id_filter_ccx_8723b((u8 *)c2h_evt)) {
>  					/* Handle CCX report here */
>  					rtw_hal_c2h_handler(adapter, (u8 *)c2h_evt);
> -					kfree((u8 *)c2h_evt);
> +					kfree(c2h_evt);

Is your kernel up to date?  For me, the patch applied with a large offset.

It could be good to look into whether the other casts are really needed.

julia

>  				} else {
>  					rtw_c2h_wk_cmd(adapter, (u8 *)c2h_evt);
>  				}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1571934370-39013-1-git-send-email-nachukannan%40gmail.com.
>

