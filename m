X-GM-THRID: 2788406853632
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,792ed37fed7a3e12
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.142.174 with SMTP id rx14mr1215750wjb.4.1424688725462;
        Mon, 23 Feb 2015 02:52:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.65 with SMTP id o1ls85681laj.67.gmail; Mon, 23 Feb 2015
 02:52:02 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr1207897lbc.3.1424688722787;
        Mon, 23 Feb 2015 02:52:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si651638wic.1.2015.02.23.02.52.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 02:52:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,630,1418079600"; 
   d="scan'208";a="100986953"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 11:52:02 +0100
Date: Mon, 23 Feb 2015 11:51:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove redundant
 if condition
In-Reply-To: <20150223104259.GA6583@gmail.com>
Message-ID: <alpine.DEB.2.10.1502231149570.2479@hadrien>
References: <20150223104259.GA6583@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Vatika Harlalka wrote:

> Remove redundant if condition as !result is always false.
>
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/phy.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index 341f0db..192d764 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -345,7 +345,6 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
>  {
>  	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
>  	u8 tmpchannel = hal_data->CurrentChannel;
> -	bool  result = true;
>
>  	if (hal_data->rf_chip == RF_PSEUDO_11N)
>  		return;
> @@ -358,9 +357,6 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
>  	if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved)) {
>  		phy_sw_chnl_callback(adapt, channel);
>
> -		if (!result)
> -			hal_data->CurrentChannel = tmpchannel;
> -

Good observation.  How did you find it?  One could suspect that someone at
some point expected phy_sw_chnl_callback to return a value, but that is a
void function.

Since you have gottten rid of this inner if, you have surely introduced a
checkpatch error about {} around single statement branches.  You could
clean up that too.

julia

>  	} else {
>  		hal_data->CurrentChannel = tmpchannel;
>  	}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150223104259.GA6583%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

