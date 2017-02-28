X-GM-THRID: 6392227712888471552
X-Received: by 10.25.196.68 with SMTP id u65mr478030lff.0.1488307181628;
        Tue, 28 Feb 2017 10:39:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.22 with SMTP id e22ls210724ljb.12.gmail; Tue, 28 Feb
 2017 10:39:41 -0800 (PST)
X-Received: by 10.25.196.68 with SMTP id u65mr478021lff.0.1488307181137;
        Tue, 28 Feb 2017 10:39:41 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b186si148472wme.1.2017.02.28.10.39.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:39:41 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,220,1484002800"; 
   d="scan'208";a="262495194"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 19:39:40 +0100
Date: Tue, 28 Feb 2017 19:39:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 5/5] emoved redundant code.
In-Reply-To: <20170228182809.26734-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1702281939010.2171@hadrien>
References: <20170228182809.26734-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

In addition to what the patch-bot said, you should used the imperative
(remove) rather than the past tense (removed).

julia

On Tue, 28 Feb 2017, Tamara Diaconita wrote:

> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/media/cxd2099/cxd2099.c | 67 +--------------------------------
>  1 file changed, 1 insertion(+), 66 deletions(-)
>
> diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
> index 43b0507..0d25849 100644
> --- a/drivers/staging/media/cxd2099/cxd2099.c
> +++ b/drivers/staging/media/cxd2099/cxd2099.c
> @@ -180,33 +180,6 @@ static int write_io(struct cxd *ci, u16 address, u8 val)
>  	return status;
>  }
>
> -#if 0
> -static int read_io_data(struct cxd *ci, u8 *data, u8 n)
> -{
> -	int status;
> -	u8 addr[3] = { 2, 0, 0 };
> -
> -	status = i2c_write(ci->i2c, ci->cfg.adr, addr, 3);
> -	if (!status)
> -		status = i2c_read(ci->i2c, ci->cfg.adr, 3, data, n);
> -	return 0;
> -}
> -
> -static int write_io_data(struct cxd *ci, u8 *data, u8 n)
> -{
> -	int status;
> -	u8 addr[3] = {2, 0, 0};
> -
> -	status = i2c_write(ci->i2c, ci->cfg.adr, addr, 3);
> -	if (!status) {
> -		u8 buf[256] = {3};
> -
> -		memcpy(buf + 1, data, n);
> -		status = i2c_write(ci->i2c, ci->cfg.adr, buf, n + 1);
> -	}
> -	return 0;
> -}
> -#endif
>
>  static int write_regm(struct cxd *ci, u8 reg, u8 val, u8 mask)
>  {
> @@ -326,12 +299,7 @@ static int init(struct cxd *ci)
>  		if (status < 0)
>  			break;
>
> -#if 0
>  		/* Input Mode C, BYPass Serial, TIVAL = low, MSB */
> -		status = write_reg(ci, 0x09, 0x4D);
> -		if (status < 0)
> -			break;
> -#endif
>  		/* TOSTRT = 8, Mode B (gated clock), falling Edge,
>  		 * Serial, POL=HIGH, MSB
>  		 */
> @@ -429,23 +397,7 @@ static int read_attribute_mem(struct dvb_ca_en50221 *ca,
>  			      int slot, int address)
>  {
>  	struct cxd *ci = ca->data;
> -#if 0
> -	if (ci->amem_read) {
> -		if (address <= 0 || address > 1024)
> -			return -EIO;
> -		return ci->amem[address];
> -	}
>
> -	mutex_lock(&ci->lock);
> -	write_regm(ci, 0x06, 0x00, 0x05);
> -	read_pccard(ci, 0, &ci->amem[0], 128);
> -	read_pccard(ci, 128, &ci->amem[0], 128);
> -	read_pccard(ci, 256, &ci->amem[0], 128);
> -	read_pccard(ci, 384, &ci->amem[0], 128);
> -	write_regm(ci, 0x06, 0x05, 0x05);
> -	mutex_unlock(&ci->lock);
> -	return ci->amem[address];
> -#else
>  	u8 val;
>
>  	mutex_lock(&ci->lock);
> @@ -499,15 +451,6 @@ static int slot_reset(struct dvb_ca_en50221 *ca, int slot)
>  	struct cxd *ci = ca->data;
>
>  	mutex_lock(&ci->lock);
> -#if 0
> -	write_reg(ci, 0x00, 0x21);
> -	write_reg(ci, 0x06, 0x1F);
> -	write_reg(ci, 0x00, 0x31);
> -#else
> -#if 0
> -	write_reg(ci, 0x06, 0x1F);
> -	write_reg(ci, 0x06, 0x2F);
> -#else
>  	cam_mode(ci, 0);
>  	write_reg(ci, 0x00, 0x21);
>  	write_reg(ci, 0x06, 0x1F);
> @@ -520,17 +463,9 @@ static int slot_reset(struct dvb_ca_en50221 *ca, int slot)
>  	ci->mode = -1;
>  	{
>  		int i;
> -#if 0
> -		u8 val;
> -#endif
> +
>  		for (i = 0; i < 100; i++) {
>  			usleep_range(10000, 11000);
> -#if 0
> -			read_reg(ci, 0x06, &val);
> -			dev_info(&ci->i2c->dev, "%d:%02x\n", i, val);
> -			if (!(val & 0x10))
> -				break;
> -#else
>  			if (ci->ready)
>  				break;
>  #endif
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170228182809.26734-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

