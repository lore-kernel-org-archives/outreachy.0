X-GM-THRID: 6393222666299375616
X-Received: by 10.46.22.68 with SMTP id 4mr1232129ljw.14.1488636648461;
        Sat, 04 Mar 2017 06:10:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.199.147 with SMTP id x141ls29923lff.46.gmail; Sat, 04 Mar
 2017 06:10:47 -0800 (PST)
X-Received: by 10.25.196.68 with SMTP id u65mr1089809lff.0.1488636647713;
        Sat, 04 Mar 2017 06:10:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b186si596528wme.1.2017.03.04.06.10.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 06:10:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,242,1484002800"; 
   d="scan'208";a="215561351"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2017 15:10:46 +0100
Date: Sat, 4 Mar 2017 15:10:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: Removed unnecessary
 parentheses.
In-Reply-To: <58bab967.977d1c0a.81978.2abe@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703041510340.2072@hadrien>
References: <58bab967.977d1c0a.81978.2abe@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 4 Mar 2017, Varsha Rao wrote:

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

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
> - Maintain alignment of last line to as it was before changes.
>   (sm750_cursor.c)
>
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
> +	       (x & HWC_LOCATION_X_MASK);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58bab967.977d1c0a.81978.2abe%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

