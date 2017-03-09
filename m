X-GM-THRID: 6395503303001636864
X-Received: by 10.46.21.79 with SMTP id 15mr17641ljv.8.1489069402783;
        Thu, 09 Mar 2017 06:23:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.71 with SMTP id 68ls697434ljf.34.gmail; Thu, 09 Mar 2017
 06:23:21 -0800 (PST)
X-Received: by 10.25.210.146 with SMTP id j140mr1814605lfg.10.1489069401433;
        Thu, 09 Mar 2017 06:23:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si790795wmg.3.2017.03.09.06.23.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 06:23:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,268,1486422000"; 
   d="scan'208";a="216168631"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 15:23:20 +0100
Date: Thu, 9 Mar 2017 15:23:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Ian Abbott <abbotti@mev.co.uk>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Remove useless
 cast.
In-Reply-To: <58c1645c.cf9b620a.9896c.d32c@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703091522450.3186@hadrien>
References: <58c1645c.cf9b620a.9896c.d32c@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2017, Varsha Rao wrote:

> Variable dac_data is already declared as of type u8. Again explicit type
> casting of dac_data to u8, is not required. Hence this patch removes it
> by using the following coccinelle script.
>
> @@
> type T;
> T *ptr;
> T p;
> @@
> (
> - (T *)(&p)
> + &p
> |
> - (T *)ptr
> + ptr
> |
> - (T *)(ptr)
> + ptr
> |
> - (T)(p)
> + p
> )
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/comedi/drivers/s626.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi/drivers/s626.c
> index 4523378..0b189c5 100644
> --- a/drivers/staging/comedi/drivers/s626.c
> +++ b/drivers/staging/comedi/drivers/s626.c
> @@ -599,7 +599,7 @@ static int s626_write_trim_dac(struct comedi_device *dev,
>  	 * Save the new setpoint in case the application needs to read it back
>  	 * later.
>  	 */
> -	devpriv->trim_setpoint[logical_chan] = (u8)dac_data;
> +	devpriv->trim_setpoint[logical_chan] = dac_data;
>
>  	/* Map logical channel number to physical channel number. */
>  	chan = s626_trimchan[logical_chan];
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58c1645c.cf9b620a.9896c.d32c%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

