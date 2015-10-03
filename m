X-GM-THRID: 6201180955724480512
X-Received: by 10.112.202.165 with SMTP id kj5mr3323535lbc.5.1443852756241;
        Fri, 02 Oct 2015 23:12:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.130 with SMTP id jg2ls501260wid.8.gmail; Fri, 02 Oct
 2015 23:12:35 -0700 (PDT)
X-Received: by 10.180.210.71 with SMTP id ms7mr254031wic.4.1443852755868;
        Fri, 02 Oct 2015 23:12:35 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c1si60755wiv.3.2015.10.02.23.12.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 23:12:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,627,1437429600"; 
   d="scan'208";a="180809631"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Oct 2015 08:12:35 +0200
Date: Sat, 3 Oct 2015 08:12:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Aybuke Ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: panel: Replace NULL
 comparison.
In-Reply-To: <1443824937-23444-1-git-send-email-aybuke.147@gmail.com>
Message-ID: <alpine.DEB.2.02.1510030811200.2022@localhost6.localdomain6>
References: <1443824937-23444-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 3 Oct 2015, Aybuke Ozdemir wrote:

> This patch using NULL checks instead of "!" operator in panel.c

The comment seems to be backwards.  It seems that you "Use ! operating 
instead of NULL checks".  You don't need to include the file name in the 
commit message.  That can be seen just below in the diffstat.

> Addresses checkpatch.pl check:
> CHECK: Comparison to NULL could be written *.

Not clear what the * means.

julia

> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/panel/panel.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/panel/panel.c b/drivers/staging/panel/panel.c
> index 498d623..a7e3875 100644
> --- a/drivers/staging/panel/panel.c
> +++ b/drivers/staging/panel/panel.c
> @@ -920,7 +920,7 @@ static void lcd_gotoxy(void)
>  static void lcd_print(char c)
>  {
>  	if (lcd.addr.x < lcd.bwidth) {
> -		if (lcd_char_conv != NULL)
> +		if (lcd_char_conv)
>  			c = lcd_char_conv[(unsigned char)c];
>  		lcd_write_data(c);
>  		lcd.addr.x++;
> @@ -1118,7 +1118,7 @@ static inline int handle_lcd_special_code(void)
>  		break;
>  	case '*':
>  		/* flash back light using the keypad timer */
> -		if (scan_timer.function != NULL) {
> +		if (scan_timer.function) {
>  			if (lcd.light_tempo == 0
>  					&& ((lcd.flags & LCD_FLAG_L) == 0))
>  				lcd_backlight(1);
> @@ -1200,7 +1200,7 @@ static inline int handle_lcd_special_code(void)
>  		char value;
>  		int addr;
>  
> -		if (strchr(esc, ';') == NULL)
> +		if (!strchr(esc, ';'))
>  			break;
>  
>  		esc++;
> @@ -1246,7 +1246,7 @@ static inline int handle_lcd_special_code(void)
>  	}
>  	case 'x':	/* gotoxy : LxXXX[yYYY]; */
>  	case 'y':	/* gotoxy : LyYYY[xXXX]; */
> -		if (strchr(esc, ';') == NULL)
> +		if (!strchr(esc, ';'))
>  			break;
>  
>  		while (*esc) {
> @@ -1844,7 +1844,7 @@ static inline int input_state_high(struct logical_input *input)
>  		if ((input->type == INPUT_TYPE_STD) &&
>  		    (input->high_timer == 0)) {
>  			input->high_timer++;
> -			if (input->u.std.press_fct != NULL)
> +			if (input->u.std.press_fct)
>  				input->u.std.press_fct(input->u.std.press_data);
>  		} else if (input->type == INPUT_TYPE_KBD) {
>  			/* will turn on the light */
> @@ -1924,7 +1924,7 @@ static inline void input_state_falling(struct logical_input *input)
>  		if (input->type == INPUT_TYPE_STD) {
>  			void (*release_fct)(int) = input->u.std.release_fct;
>  
> -			if (release_fct != NULL)
> +			if (release_fct)
>  				release_fct(input->u.std.release_data);
>  		} else if (input->type == INPUT_TYPE_KBD) {
>  			char *release_str = input->u.kbd.release_str;
> @@ -2025,7 +2025,7 @@ static void panel_scan_timer(void)
>  
>  static void init_scan_timer(void)
>  {
> -	if (scan_timer.function != NULL)
> +	if (scan_timer.function)
>  		return;		/* already started */
>  
>  	setup_timer(&scan_timer, (void *)&panel_scan_timer, 0);
> @@ -2229,7 +2229,7 @@ static void panel_attach(struct parport *port)
>  	/* panel_cb.flags = 0 should be PARPORT_DEV_EXCL? */
>  
>  	pprt = parport_register_dev_model(port, "panel", &panel_cb, 0);
> -	if (pprt == NULL) {
> +	if (!pprt) {
>  		pr_err("%s: port->number=%d parport=%d, parport_register_device() failed\n",
>  		       __func__, port->number, parport);
>  		return;
> @@ -2276,10 +2276,10 @@ static void panel_detach(struct parport *port)
>  		       __func__, port->number, parport);
>  		return;
>  	}
> -	if (scan_timer.function != NULL)
> +	if (scan_timer.function)
>  		del_timer_sync(&scan_timer);
>  
> -	if (pprt != NULL) {
> +	if (pprt) {
>  		if (keypad.enabled) {
>  			misc_deregister(&keypad_dev);
>  			keypad_initialized = 0;
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443824937-23444-1-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

