X-GM-THRID: 6392612605640310784
X-Received: by 10.99.122.25 with SMTP id v25mr5129246pgc.96.1488472644245;
        Thu, 02 Mar 2017 08:37:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls6654489otx.21.gmail; Thu, 02 Mar
 2017 08:37:23 -0800 (PST)
X-Received: by 10.13.192.193 with SMTP id b184mr1209164ywd.27.1488472643823;
        Thu, 02 Mar 2017 08:37:23 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id i189si3776816iti.0.2017.03.02.08.37.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 08:37:23 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so9828133pgy.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 08:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Me8/9rx5KlORvVjrXaIHl/fV7KM/z8hZGUDhTZVJ5JE=;
        b=aSmUAgs1RR1T2HP8vPAoAYBNKwKaYNE/hVN0h2COFDTeMFP2V6jWI761xgbd4m3muU
         5noxP/YeGYyg1DncqYLUEUdWZVCNeynAG78pkdMfiY5Ig74NA51JbxJsa1zzunyzXdyC
         c3cZerTMpUhAdm/0StRoBnqdz123djl1RTF/T/kJFsg7un8av/YDynYn/yA1DnQOLzy2
         HMpWNIbYt0VQCDs0K9AsPXlpZLQ1W3wLcRCB94c+eeWsFedWXvfvHZmTjm/j9Tt+preu
         eyQFXUICPinakNYGBqxKGQHOMcbOZFbYG0TenJBrlp2wNVTTQo8eJvD5z7yQPUJlvAEJ
         LDXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Me8/9rx5KlORvVjrXaIHl/fV7KM/z8hZGUDhTZVJ5JE=;
        b=XU8IL/rbPJyXI40+odSlwE10t9m9n6mZy19OCIf3kxWjw7cR3s+iOs2psrhUoc9lHd
         V5WgOFMhsq1+ZvoP+GKCGOEJCzX54gIcvVbEqKPkK355953Olj5ZD5rL56DHao0G3bXI
         Z26CL/QbMSRm2Hm8yrfIS6o2/dbGXvB8943s1mHyWCWefLSYqwRwOy+AFsdzZoe1/j0A
         cKLb495OOwjstRICy1Bm0FfCA4wjrPniarVc+Fy6QlqNvgrSTfoexsNiO6Yl1S24tHO1
         sutAhxfAoMZHYunepOEV3uu8TPcTfD9IV3sTdCLyvU6IgZ8T/lCYncNAth3jadlAyopV
         h94g==
X-Gm-Message-State: AMke39mHNfpum2rjk844Ebdzt+FxG23+l6uPYQ5lj4TRRxw0abNveouzo3B7ZysZYZ0l+g==
X-Received: by 10.99.125.68 with SMTP id m4mr16854305pgn.13.1488472643318;
        Thu, 02 Mar 2017 08:37:23 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id m3sm18119242pfc.66.2017.03.02.08.37.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 08:37:22 -0800 (PST)
Date: Thu, 2 Mar 2017 08:37:21 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: speakup: Comparison to
 NULL could be written
Message-ID: <20170302163720.GA2182@d830.WORKGROUP>
References: <20170302084302.GA4880@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170302084302.GA4880@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 02, 2017 at 02:13:02PM +0530, Arushi Singhal wrote:
> Fixed coding style for null comparisons in speakup driver to be more
> consistant with the rest of the kernel coding style.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  changes in v2
>  - fixed coding style error and upto the coding style.

Hi Arushi,

Take another look at Joe's message about checkpatch on the patch
file. Looks like you missed that.

Here's some tips on styling your commit and log messages:

You've probably seen feedback of putting the message into
the "imperative".  ie...it's as if you are directing/commanding
what is to happen. Best way I've found to get that to sink in
is to look at your predecessors...and look at more than one
because poor messages do sneak in occasionally.

For this one, I might do this:

> staging/speakup$ gitpretty *.c | grep NULL
> (my alias: alias gitpretty='git log --pretty=oneline --abbrev-commit')
> 
> d3da1cb staging: speakup: (coding style) Rewrite comparisons to NULL
> a90624c Staging: speakup: kobjects.c: Remove explicit NULL comparison
> 114885e Staging: speakup: serialio.c: Remove explicit NULL comparison
> 562c4798 Staging: speakup: devsynth.c: Remove explicit NULL comparison
> ff52fc3 Staging: speakup: varhandlers.c: Remove explicit NULL comparison
> 
Then, go further into one that looks like it might match your change:

> staging/speakup$ git log a90624c
> commit a90624cf253cc74e9464b42d54aa4825575edefe
> Author: Shraddha Barke <shraddha.6596@gmail.com>
> Date:   Fri Sep 11 11:32:28 2015 +0530
>  
> Staging: speakup: kobjects.c: Remove explicit NULL comparison
>  >        
> Remove explicit NULL comparison and write it in its simpler form.
> 
> 

This would give me confidence in the commit message and log.
And, since I tend toward the obsessive ;), if the next day I do this
fix in another directory, I would repeat this process on that directory
and file because styles can vary by driver/subsystem.  Perhaps not on
such a simple fix, but more so as you dive deeper.

alisons

> 
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
> index 5d871ec3693c..2fef55569bfd 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -391,7 +391,7 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
>  		len--;
>  	new_synth_name[len] = '\0';
>  	spk_strlwr(new_synth_name);
> -	if ((synth != NULL) && (!strcmp(new_synth_name, synth->name))) {
> +	if (synth && !strcmp(new_synth_name, synth->name)) {
>  		pr_warn("%s already in use\n", new_synth_name);
>  	} else if (synth_init(new_synth_name) != 0) {
>  		pr_warn("failed to init synth %s\n", new_synth_name);
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index c2f70ef5b9b3..a12ec2b061fe 100644
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
> +		if (spk_characters[i]
>  		    && (spk_characters[i] != spk_default_chars[i]))
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
> +	if (spk_shut_up || !synth) {
>  		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
>  		return;
>  	}
> @@ -1722,7 +1722,7 @@ static void speakup_con_write(struct vc_data *vc, const char *str, int len)
>  {
>  	unsigned long flags;
>  
> -	if ((vc->vc_num != fg_console) || spk_shut_up || synth == NULL)
> +	if ((vc->vc_num != fg_console) || spk_shut_up || !synth)
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
> +	if (!p_header)
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
> +	if (!synth)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170302084302.GA4880%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.

