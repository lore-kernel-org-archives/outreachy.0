X-GM-THRID: 6393222666299375616
X-Received: by 10.223.153.33 with SMTP id x30mr19580wrb.10.1488538758013;
        Fri, 03 Mar 2017 02:59:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.71 with SMTP id 68ls904630ljf.34.gmail; Fri, 03 Mar 2017
 02:59:17 -0800 (PST)
X-Received: by 10.25.193.213 with SMTP id r204mr275512lff.24.1488538757333;
        Fri, 03 Mar 2017 02:59:17 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si154869wmg.3.2017.03.03.02.59.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 02:59:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,236,1484002800"; 
   d="scan'208";a="215438255"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 11:59:16 +0100
Date: Fri, 3 Mar 2017 11:59:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    Teddy Wang <teddy.wang@siliconmotion.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Removed unnecessary
 parentheses.
In-Reply-To: <58b94a22.0910620a.79513.e66a@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703031158000.3490@hadrien>
References: <58b94a22.0910620a.79513.e66a@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 3 Mar 2017, Varsha Rao wrote:

> Removed parentheses on the right hand side of assignment, as they are
> not required. The following coccinelle script was used to fix this
> issue:
>
> @@
> local idexpression id;
> expression e;
> @@
>
> id =
> -(
> e
> -)
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c  | 2 +-
>  drivers/staging/sm750fb/ddk750_hwi2c.c | 2 +-
>  drivers/staging/sm750fb/sm750_accel.c  | 2 +-
>  drivers/staging/sm750fb/sm750_cursor.c | 4 ++--
>  4 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 9e49298..5e4bfb6 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -352,7 +352,7 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig, struct pll_value *p
>  		RN = N * request;
>  		quo = RN / input;
>  		rem = RN % input;/* rem always small than 14318181 */
> -		fl_quo = (rem * 10000 / input);
> +		fl_quo = rem * 10000 / input;
>
>  		for (d = max_d; d >= 0; d--) {
>  			X = BIT(d);
> diff --git a/drivers/staging/sm750fb/ddk750_hwi2c.c b/drivers/staging/sm750fb/ddk750_hwi2c.c
> index 68716ef..fe814e4 100644
> --- a/drivers/staging/sm750fb/ddk750_hwi2c.c
> +++ b/drivers/staging/sm750fb/ddk750_hwi2c.c
> @@ -217,7 +217,7 @@ unsigned char sm750_hw_i2c_read_reg(
>  	unsigned char reg
>  )
>  {
> -	unsigned char value = (0xFF);
> +	unsigned char value = 0xFF;
>
>  	if (hw_i2c_write_data(addr, 1, &reg) == 1)
>  		hw_i2c_read_data(addr, 1, &value);
> diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
> index 9548863..6db9b90 100644
> --- a/drivers/staging/sm750fb/sm750_accel.c
> +++ b/drivers/staging/sm750fb/sm750_accel.c
> @@ -212,7 +212,7 @@ unsigned int rop2)   /* ROP value */
>  		sy += height - 1;
>  		dx += width - 1;
>  		dy += height - 1;
> -		opSign = (-1);
> +		opSign = -1;
>  	}
>
>  	/*
> diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
> index aa232c3..401b916 100644
> --- a/drivers/staging/sm750fb/sm750_cursor.c
> +++ b/drivers/staging/sm750fb/sm750_cursor.c
> @@ -70,8 +70,8 @@ void sm750_hw_cursor_setPos(struct lynx_cursor *cursor,
>  {
>  	u32 reg;
>
> -	reg = (((y << HWC_LOCATION_Y_SHIFT) & HWC_LOCATION_Y_MASK) |
> -		(x & HWC_LOCATION_X_MASK));
> +	reg = ((y << HWC_LOCATION_Y_SHIFT) & HWC_LOCATION_Y_MASK) |
> +		(x & HWC_LOCATION_X_MASK);

There should be one less space in front of the last line, to line the
parnthesis to the left of x with the parenthesis immediately to the left
of y.  Otherwise,

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

>  	poke32(HWC_LOCATION, reg);
>  }
>  void sm750_hw_cursor_setColor(struct lynx_cursor *cursor,
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58b94a22.0910620a.79513.e66a%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

