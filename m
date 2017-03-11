X-GM-THRID: 6396244306305220608
X-Received: by 10.25.17.102 with SMTP id g99mr3182693lfi.6.1489243999181;
        Sat, 11 Mar 2017 06:53:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.66 with SMTP id h63ls1260779ljh.5.gmail; Sat, 11 Mar
 2017 06:53:18 -0800 (PST)
X-Received: by 10.46.22.16 with SMTP id w16mr47259ljd.18.1489243998355;
        Sat, 11 Mar 2017 06:53:18 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si223369wmg.3.2017.03.11.06.53.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:53:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,147,1486422000"; 
   d="scan'208";a="264138804"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2017 15:53:18 +0100
Date: Sat, 11 Mar 2017 15:53:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove multiple
 assignments
In-Reply-To: <1489241530-11540-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703111552350.3127@hadrien>
References: <1489241530-11540-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 11 Mar 2017, Gargi Sharma wrote:

> This patch removes multiple assignments by factorizing them.
>
> This was done with Coccinelle.
>
> @ r1 @
> identifier i1,i2;
> constant c;
> @@
> - i1=i2=c;
> + i1=c;
> + i2=c;
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_dm.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
> index 9209aad..ccd19be 100644
> --- a/drivers/staging/rtl8192u/r8192U_dm.c
> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> @@ -725,8 +725,10 @@ static void dm_TXPowerTrackingCallback_ThermalMeter(struct net_device *dev)
>  	} else {
>  		tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
>
> -		if (tmpval >= 6) /* higher temperature */
> -			tmpOFDMindex = tmpCCK20Mindex = 0; /* max to +6dB */
> +		if (tmpval >= 6) /* higher temperature */ {
> +			tmpOFDMindex = 0;
> +			tmpCCK20Mindex = 0;
> +		} /* max to +6dB */
>  		else
>  			tmpOFDMindex = tmpCCK20Mindex = 6 - tmpval;

This one also has an else branch that you can modify.  In any case, the
else branch needs {}.

julia

>  		tmpCCK40Mindex = 0;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489241530-11540-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

