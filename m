X-GM-THRID: 6209936175528935424
X-Received: by 10.180.211.207 with SMTP id ne15mr3087347wic.1.1445864828561;
        Mon, 26 Oct 2015 06:07:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.154.17 with SMTP id c17ls626373lfe.52.gmail; Mon, 26 Oct
 2015 06:07:07 -0700 (PDT)
X-Received: by 10.112.144.105 with SMTP id sl9mr8252611lbb.3.1445864827758;
        Mon, 26 Oct 2015 06:07:07 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w9si309118wiz.1.2015.10.26.06.07.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 06:07:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,201,1444687200"; 
   d="scan'208";a="184479777"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Oct 2015 14:07:07 +0100
Date: Mon, 26 Oct 2015 14:06:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Swetha <theonly.ultimate@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: panel: Fix the checkpatch.pl
 issues
In-Reply-To: <20151026124356.GA5629@swetha>
Message-ID: <alpine.DEB.2.10.1510261406120.2521@hadrien>
References: <20151026124356.GA5629@swetha>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 26 Oct 2015, Swetha wrote:

> Fix checkpatch.pl issue:
>
> CHECK: Please don't use multiple blank lines
>
> Remove multiple blank lines
>
> CHECK: usleep_range is preferred over udelay; see
>        Documentation/timers/timers-howto.txt
>
> Replace the udelay() with usleep_range() with a reasonable upper limit.
>
> CHECK: No space is necessary after a cast
>
> Remove the space.
>
> CHECK: Logical continuations should be on the previous line
>
> Fixed it.

These are all different changes.  You should put them in a series.

julia

> Signed-off-by: Swetha <theonly.ultimate@gmail.com>
> ---
>  drivers/staging/panel/panel.c | 54 +++++++++++++++++++++++--------------------
>  1 file changed, 29 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/staging/panel/panel.c b/drivers/staging/panel/panel.c
> index a7e3875..4b50a8a 100644
> --- a/drivers/staging/panel/panel.c
> +++ b/drivers/staging/panel/panel.c
> @@ -71,7 +71,7 @@
>  #define KEYPAD_BUFFER		64
>
>  /* poll the keyboard this every second */
> -#define INPUT_POLL_TIME		(HZ/50)
> +#define INPUT_POLL_TIME		(HZ / 50)
>  /* a key starts to repeat after this times INPUT_POLL_TIME */
>  #define KEYPAD_REP_START	(10)
>  /* a key repeats this times INPUT_POLL_TIME */
> @@ -576,7 +576,6 @@ static int keypad_enabled = NOT_SET;
>  module_param(keypad_enabled, int, 0000);
>  MODULE_PARM_DESC(keypad_enabled, "Deprecated option, use keypad_type instead");
>
> -
>  static const unsigned char *lcd_char_conv;
>
>  /* for some LCD drivers (ks0074) we need a charset conversion table. */
> @@ -826,7 +825,8 @@ static void lcd_write_cmd_s(int cmd)
>  	lcd_send_serial(0x1F);	/* R/W=W, RS=0 */
>  	lcd_send_serial(cmd & 0x0F);
>  	lcd_send_serial((cmd >> 4) & 0x0F);
> -	udelay(40);		/* the shortest command takes at least 40 us */
> +	/* the shortest command takes at least 40 us */
> +	usleep_range(40, 100);
>  	spin_unlock_irq(&pprt_lock);
>  }
>
> @@ -837,7 +837,8 @@ static void lcd_write_data_s(int data)
>  	lcd_send_serial(0x5F);	/* R/W=W, RS=1 */
>  	lcd_send_serial(data & 0x0F);
>  	lcd_send_serial((data >> 4) & 0x0F);
> -	udelay(40);		/* the shortest data takes at least 40 us */
> +	/* the shortest data takes at least 40 us */
> +	usleep_range(40, 100);
>  	spin_unlock_irq(&pprt_lock);
>  }
>
> @@ -847,19 +848,20 @@ static void lcd_write_cmd_p8(int cmd)
>  	spin_lock_irq(&pprt_lock);
>  	/* present the data to the data port */
>  	w_dtr(pprt, cmd);
> -	udelay(20);	/* maintain the data during 20 us before the strobe */
> +	/* maintain the data during 20 us before the strobe */
> +	usleep_range(20, 100);
>
>  	bits.e = BIT_SET;
>  	bits.rs = BIT_CLR;
>  	bits.rw = BIT_CLR;
>  	set_ctrl_bits();
>
> -	udelay(40);	/* maintain the strobe during 40 us */
> +	usleep_range(40, 100);	/* maintain the strobe during 40 us */
>
>  	bits.e = BIT_CLR;
>  	set_ctrl_bits();
>
> -	udelay(120);	/* the shortest command takes at least 120 us */
> +	usleep_range(120, 500);	/* the shortest command takes at least 120 us */
>  	spin_unlock_irq(&pprt_lock);
>  }
>
> @@ -869,19 +871,20 @@ static void lcd_write_data_p8(int data)
>  	spin_lock_irq(&pprt_lock);
>  	/* present the data to the data port */
>  	w_dtr(pprt, data);
> -	udelay(20);	/* maintain the data during 20 us before the strobe */
> +	/* maintain the data during 20 us before the strobe */
> +	usleep_range(20, 100);
>
>  	bits.e = BIT_SET;
>  	bits.rs = BIT_SET;
>  	bits.rw = BIT_CLR;
>  	set_ctrl_bits();
>
> -	udelay(40);	/* maintain the strobe during 40 us */
> +	usleep_range(40, 100);	/* maintain the strobe during 40 us */
>
>  	bits.e = BIT_CLR;
>  	set_ctrl_bits();
>
> -	udelay(45);	/* the shortest data takes at least 45 us */
> +	usleep_range(45, 100);	/* the shortest data takes at least 45 us */
>  	spin_unlock_irq(&pprt_lock);
>  }
>
> @@ -891,7 +894,7 @@ static void lcd_write_cmd_tilcd(int cmd)
>  	spin_lock_irq(&pprt_lock);
>  	/* present the data to the control port */
>  	w_ctr(pprt, cmd);
> -	udelay(60);
> +	usleep_range(60, 120);
>  	spin_unlock_irq(&pprt_lock);
>  }
>
> @@ -901,7 +904,7 @@ static void lcd_write_data_tilcd(int data)
>  	spin_lock_irq(&pprt_lock);
>  	/* present the data to the data port */
>  	w_dtr(pprt, data);
> -	udelay(60);
> +	usleep_range(60, 120);
>  	spin_unlock_irq(&pprt_lock);
>  }
>
> @@ -944,7 +947,8 @@ static void lcd_clear_fast_s(void)
>  		lcd_send_serial(0x5F);	/* R/W=W, RS=1 */
>  		lcd_send_serial(' ' & 0x0F);
>  		lcd_send_serial((' ' >> 4) & 0x0F);
> -		udelay(40);	/* the shortest data takes at least 40 us */
> +		/* the shortest data takes at least 40 us */
> +		usleep_range(40, 100);
>  	}
>  	spin_unlock_irq(&pprt_lock);
>
> @@ -968,7 +972,7 @@ static void lcd_clear_fast_p8(void)
>  		w_dtr(pprt, ' ');
>
>  		/* maintain the data during 20 us before the strobe */
> -		udelay(20);
> +		usleep_range(20, 100);
>
>  		bits.e = BIT_SET;
>  		bits.rs = BIT_SET;
> @@ -976,13 +980,13 @@ static void lcd_clear_fast_p8(void)
>  		set_ctrl_bits();
>
>  		/* maintain the strobe during 40 us */
> -		udelay(40);
> +		usleep_range(40, 100);
>
>  		bits.e = BIT_CLR;
>  		set_ctrl_bits();
>
>  		/* the shortest data takes at least 45 us */
> -		udelay(45);
> +		usleep_range(45, 100);
>  	}
>  	spin_unlock_irq(&pprt_lock);
>
> @@ -1004,7 +1008,7 @@ static void lcd_clear_fast_tilcd(void)
>  	for (pos = 0; pos < lcd.height * lcd.hwidth; pos++) {
>  		/* present the data to the data port */
>  		w_dtr(pprt, ' ');
> -		udelay(60);
> +		usleep_range(60, 120);
>  	}
>
>  	spin_unlock_irq(&pprt_lock);
> @@ -1119,8 +1123,8 @@ static inline int handle_lcd_special_code(void)
>  	case '*':
>  		/* flash back light using the keypad timer */
>  		if (scan_timer.function) {
> -			if (lcd.light_tempo == 0
> -					&& ((lcd.flags & LCD_FLAG_L) == 0))
> +			if (lcd.light_tempo == 0 &&
> +			    ((lcd.flags & LCD_FLAG_L) == 0))
>  				lcd_backlight(1);
>  			lcd.light_tempo = FLASH_LIGHT_TEMPO;
>  		}
> @@ -1785,7 +1789,7 @@ static void phys_scan_contacts(void)
>  	gndmask = PNL_PINPUT(r_str(pprt)) & scan_mask_i;
>
>  	/* grounded inputs are signals 40-44 */
> -	phys_read |= (pmask_t) gndmask << 40;
> +	phys_read |= (pmask_t)gndmask << 40;
>
>  	if (bitmask != gndmask) {
>  		/*
> @@ -1801,7 +1805,7 @@ static void phys_scan_contacts(void)
>
>  			w_dtr(pprt, oldval & ~bitval);	/* enable this output */
>  			bitmask = PNL_PINPUT(r_str(pprt)) & ~gndmask;
> -			phys_read |= (pmask_t) bitmask << (5 * bit);
> +			phys_read |= (pmask_t)bitmask << (5 * bit);
>  		}
>  		w_dtr(pprt, oldval);	/* disable all outputs */
>  	}
> @@ -2008,14 +2012,14 @@ static void panel_scan_timer(void)
>
>  	if (lcd.enabled && lcd.initialized) {
>  		if (keypressed) {
> -			if (lcd.light_tempo == 0
> -					&& ((lcd.flags & LCD_FLAG_L) == 0))
> +			if (lcd.light_tempo == 0 &&
> +			    ((lcd.flags & LCD_FLAG_L) == 0))
>  				lcd_backlight(1);
>  			lcd.light_tempo = FLASH_LIGHT_TEMPO;
>  		} else if (lcd.light_tempo > 0) {
>  			lcd.light_tempo--;
> -			if (lcd.light_tempo == 0
> -					&& ((lcd.flags & LCD_FLAG_L) == 0))
> +			if (lcd.light_tempo == 0 &&
> +			    ((lcd.flags & LCD_FLAG_L) == 0))
>  				lcd_backlight(0);
>  		}
>  	}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151026124356.GA5629%40swetha.
> For more options, visit https://groups.google.com/d/optout.
>

