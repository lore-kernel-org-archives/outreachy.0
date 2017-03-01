X-GM-THRID: 6392612605640310784
X-Received: by 10.28.148.132 with SMTP id w126mr186579wmd.10.1488398294349;
        Wed, 01 Mar 2017 11:58:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.77.141 with SMTP id a135ls90693lfb.3.gmail; Wed, 01 Mar
 2017 11:58:13 -0800 (PST)
X-Received: by 10.25.72.216 with SMTP id v207mr1141236lfa.7.1488398293501;
        Wed, 01 Mar 2017 11:58:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h62si1025848wme.2.2017.03.01.11.58.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 11:58:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,227,1484002800"; 
   d="scan'208";a="262698419"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2017 20:58:12 +0100
Date: Wed, 1 Mar 2017 20:58:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, Chris Brannon <chris@the-brannons.com>, 
    Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Comparison to NULL
 could be written
In-Reply-To: <20170301192140.GA30680@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1703012055460.2401@hadrien>
References: <20170301192140.GA30680@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Mar 2017, Arushi Singhal wrote:

> Fixed coding style for null comparisons in speakup driver to be more
> consistant with the rest of the kernel coding style.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/fakekey.c  |  2 +-
>  drivers/staging/speakup/kobjects.c |  2 +-
>  drivers/staging/speakup/main.c     | 38 +++++++++++++++++++-------------------
>  3 files changed, 21 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/staging/speakup/fakekey.c b/drivers/staging/speakup/fakekey.c
> index d76da0a1382c..294c74b47224 100644
> --- a/drivers/staging/speakup/fakekey.c
> +++ b/drivers/staging/speakup/fakekey.c
> @@ -56,7 +56,7 @@ int speakup_add_virtual_keyboard(void)
>
>  void speakup_remove_virtual_keyboard(void)
>  {
> -	if (virt_keyboard != NULL) {
> +	if (virt_keyboard) {
>  		input_unregister_device(virt_keyboard);
>  		virt_keyboard = NULL;
>  	}
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 5d871ec3693c..fdd6e4b33951 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -391,7 +391,7 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
>  		len--;
>  	new_synth_name[len] = '\0';
>  	spk_strlwr(new_synth_name);
> -	if ((synth != NULL) && (!strcmp(new_synth_name, synth->name))) {
> +	if ((synth) && (!strcmp(new_synth_name, synth->name))) {

A variable reference should not have parentheses around it.  The negated
function call doesn't need them either.

>  		pr_warn("%s already in use\n", new_synth_name);
>  	} else if (synth_init(new_synth_name) != 0) {
>  		pr_warn("failed to init synth %s\n", new_synth_name);
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index c2f70ef5b9b3..3d3d62c7a5ef 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -299,7 +299,7 @@ static void speakup_shut_up(struct vc_data *vc)
>  	spk_shut_up |= 0x01;
>  	spk_parked &= 0xfe;
>  	speakup_date(vc);
> -	if (synth != NULL)
> +	if (synth)
>  		spk_do_flush();
>  }
>
> @@ -441,7 +441,7 @@ static void speak_char(u_char ch)
>  			synth_printf("%s", spk_str_caps_stop);
>  		return;
>  	}
> -	if (cp == NULL) {
> +	if (!cp) {
>  		pr_info("speak_char: cp == NULL!\n");
>  		return;
>  	}
> @@ -1157,7 +1157,7 @@ static void do_handle_shift(struct vc_data *vc, u_char value, char up_flag)
>  {
>  	unsigned long flags;
>
> -	if (synth == NULL || up_flag || spk_killed)
> +	if (!synth || up_flag || spk_killed)
>  		return;
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
>  	if (cursor_track == read_all_mode) {
> @@ -1195,7 +1195,7 @@ static void do_handle_latin(struct vc_data *vc, u_char value, char up_flag)
>  		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
>  		return;
>  	}
> -	if (synth == NULL || spk_killed) {
> +	if (!synth || spk_killed) {
>  		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
>  		return;
>  	}
> @@ -1279,7 +1279,7 @@ void spk_reset_default_chars(void)
>
>  	/* First, free any non-default */
>  	for (i = 0; i < 256; i++) {
> -		if ((spk_characters[i] != NULL)
> +		if ((spk_characters[i])

An array reference also doesn't need parentheses around it.

>  		    && (spk_characters[i] != spk_default_chars[i]))

These parentheses are also not needed.

>  			kfree(spk_characters[i]);
>  	}
> @@ -1321,10 +1321,10 @@ static int speakup_allocate(struct vc_data *vc)
>  	int vc_num;
>
>  	vc_num = vc->vc_num;
> -	if (speakup_console[vc_num] == NULL) {
> +	if (!speakup_console[vc_num]) {
>  		speakup_console[vc_num] = kzalloc(sizeof(*speakup_console[0]),
>  						  GFP_ATOMIC);
> -		if (speakup_console[vc_num] == NULL)
> +		if (!speakup_console[vc_num])
>  			return -ENOMEM;
>  		speakup_date(vc);
>  	} else if (!spk_parked)
> @@ -1373,7 +1373,7 @@ static void kbd_fakekey2(struct vc_data *vc, int command)
>
>  static void read_all_doc(struct vc_data *vc)
>  {
> -	if ((vc->vc_num != fg_console) || synth == NULL || spk_shut_up)
> +	if ((vc->vc_num != fg_console) || !synth || spk_shut_up)
>  		return;
>  	if (!synth_supports_indexing())
>  		return;
> @@ -1487,7 +1487,7 @@ static int pre_handle_cursor(struct vc_data *vc, u_char value, char up_flag)
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
>  	if (cursor_track == read_all_mode) {
>  		spk_parked &= 0xfe;
> -		if (synth == NULL || up_flag || spk_shut_up) {
> +		if (!synth || up_flag || spk_shut_up) {
>  			spin_unlock_irqrestore(&speakup_info.spinlock, flags);
>  			return NOTIFY_STOP;
>  		}
> @@ -1509,7 +1509,7 @@ static void do_handle_cursor(struct vc_data *vc, u_char value, char up_flag)
>
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
>  	spk_parked &= 0xfe;
> -	if (synth == NULL || up_flag || spk_shut_up || cursor_track == CT_Off) {
> +	if (!synth || up_flag || spk_shut_up || cursor_track == CT_Off) {
>  		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
>  		return;
>  	}
> @@ -1705,7 +1705,7 @@ static void speakup_bs(struct vc_data *vc)
>  		return;
>  	if (!spk_parked)
>  		speakup_date(vc);
> -	if (spk_shut_up || synth == NULL) {
> +	if (spk_shut_up || !synth ) {
>  		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
>  		return;
>  	}
> @@ -1722,7 +1722,7 @@ static void speakup_con_write(struct vc_data *vc, const char *str, int len)
>  {
>  	unsigned long flags;
>
> -	if ((vc->vc_num != fg_console) || spk_shut_up || synth == NULL)
> +	if ((vc->vc_num != fg_console) || spk_shut_up || !synth )
>  		return;
>  	if (!spin_trylock_irqsave(&speakup_info.spinlock, flags))
>  		/* Speakup output, discard */
> @@ -1751,7 +1751,7 @@ static void speakup_con_update(struct vc_data *vc)
>  {
>  	unsigned long flags;
>
> -	if (speakup_console[vc->vc_num] == NULL || spk_parked)
> +	if (!speakup_console[vc->vc_num] || spk_parked)
>  		return;
>  	if (!spin_trylock_irqsave(&speakup_info.spinlock, flags))
>  		/* Speakup output, discard */
> @@ -1766,7 +1766,7 @@ static void do_handle_spec(struct vc_data *vc, u_char value, char up_flag)
>  	int on_off = 2;
>  	char *label;
>
> -	if (synth == NULL || up_flag || spk_killed)
> +	if (!synth || up_flag || spk_killed)
>  		return;
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
>  	spk_shut_up &= 0xfe;
> @@ -1810,7 +1810,7 @@ static int inc_dec_var(u_char value)
>
>  	var_id = var_id / 2 + FIRST_SET_VAR;
>  	p_header = spk_get_var_header(var_id);
> -	if (p_header == NULL)
> +	if (!p_header )

Extra space.

>  		return -1;
>  	if (p_header->var_type != VAR_NUM)
>  		return -1;
> @@ -1893,7 +1893,7 @@ static void speakup_bits(struct vc_data *vc)
>  {
>  	int val = this_speakup_key - (FIRST_EDIT_BITS - 1);
>
> -	if (spk_special_handler != NULL || val < 1 || val > 6) {
> +	if (spk_special_handler || val < 1 || val > 6) {
>  		synth_printf("%s\n", spk_msg_get(MSG_ERROR));
>  		return;
>  	}
> @@ -1984,7 +1984,7 @@ static int handle_goto(struct vc_data *vc, u_char type, u_char ch, u_short key)
>
>  static void speakup_goto(struct vc_data *vc)
>  {
> -	if (spk_special_handler != NULL) {
> +	if (spk_special_handler) {
>  		synth_printf("%s\n", spk_msg_get(MSG_ERROR));
>  		return;
>  	}
> @@ -2065,7 +2065,7 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
>  	u_char shift_info, offset;
>  	int ret = 0;
>
> -	if (synth == NULL)
> +	if (!synth )

Extra space.

julia

>  		return 0;
>
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
> @@ -2135,7 +2135,7 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
>  		}
>  	}
>  no_map:
> -	if (type == KT_SPKUP && spk_special_handler == NULL) {
> +	if (type == KT_SPKUP && !spk_special_handler) {
>  		do_spkup(vc, new_key);
>  		spk_close_press = 0;
>  		ret = 1;
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170301192140.GA30680%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

