X-GM-THRID: 6395557609672278016
X-Received: by 10.157.68.229 with SMTP id p37mr5221433otg.29.1489081794596;
        Thu, 09 Mar 2017 09:49:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.218 with SMTP id i26ls701404ote.48.gmail; Thu, 09 Mar
 2017 09:49:54 -0800 (PST)
X-Received: by 10.13.248.198 with SMTP id i189mr6411591ywf.156.1489081794163;
        Thu, 09 Mar 2017 09:49:54 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si965017pfb.0.2017.03.09.09.49.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 09:49:54 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so7515706pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 09:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=45LFhdZgZ6ZN1GXQ+2wuCvgDRuvpfK2h73dBz4abCw8=;
        b=tyY5cpTrsCzyIZvgPy+JNviFsaDwlQBnLeBbbi1cfuWlYHMWqfPI4D/K0ta4gTS8J6
         /2gVjAN3jL/JCi5UQgXbpWnoqz2g7z398Yd4cRT0tmKq/JEWMIlTwvgya5GQUGQMX7eb
         qU9YmiH6Onm7deHcyO32yNpEBHPiKlGbVeQHYoM1WNFhSem8cNZAdL6Qv7stW4xKxhLe
         /Cc3nSEcpNeTAHSwVg6dYXZVGlBWLntjhP/cO0W+gwqWXerC/7i3aLsi8vIcYwPGehTn
         MHhvWBk1AA64NfCEdsPtaq0+qjTW/etxIlfWM0XGvN+SwnP9TmhBEfzJvtUqpfnjOwtw
         /taQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=45LFhdZgZ6ZN1GXQ+2wuCvgDRuvpfK2h73dBz4abCw8=;
        b=Sryn73XxG3BLrBjNv6VN0u1OfU2P84GtOYWVkF66mVItMknYN7CQGvbwFxflynr1tS
         2DVPVciA+YPOeiuUGdJSVI0zwn0BXwagyb9heUTDYAT90PHX2qI9habMnlnscUxCfOa3
         c8LGmEyNpX9bMf+9m7dB7l/tj++fRlqdWiTt2Jhvl2ZhVtG8Y0CqaB+WynPV34cv1NO6
         R8J0L2zFUh0aWdHFiJgR2lwPKrUE1TL8T5paPNVzCkvCuUR1oADYEA8JtGPx0+92WIfx
         71BmHV6NiwNP/esa1a+izmE4LkKUnlo6FgmRHxc0kLRRe+1RtY6leXTpzfr5Uy7ost9N
         bVEQ==
X-Gm-Message-State: AMke39mSA/sQzzLDjzv6MPMRid3Rf5yVLcp5R+7/EXKC7rgHQkXIXst7sSBaWzPeIOZJVQ==
X-Received: by 10.99.174.71 with SMTP id e7mr15091321pgp.3.1489081793776;
        Thu, 09 Mar 2017 09:49:53 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q194sm13747547pfq.43.2017.03.09.09.49.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 09:49:52 -0800 (PST)
Date: Thu, 9 Mar 2017 23:19:49 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Simplify NULL comparisons
Message-ID: <20170309174949.GA23928@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed coding style for null comparisons in speakup driver to be more
consistant with the rest of the kernel coding style.
Replaced 'x != NULL' with 'x' and 'x = NULL' with '!x'.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/fakekey.c  |  2 +-
 drivers/staging/speakup/kobjects.c |  2 +-
 drivers/staging/speakup/main.c     | 38 +++++++++++++++++++-------------------
 3 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/speakup/fakekey.c b/drivers/staging/speakup/fakekey.c
index d76da0a1382c..294c74b47224 100644
--- a/drivers/staging/speakup/fakekey.c
+++ b/drivers/staging/speakup/fakekey.c
@@ -56,7 +56,7 @@ int speakup_add_virtual_keyboard(void)
 
 void speakup_remove_virtual_keyboard(void)
 {
-	if (virt_keyboard != NULL) {
+	if (virt_keyboard) {
 		input_unregister_device(virt_keyboard);
 		virt_keyboard = NULL;
 	}
diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 5d871ec3693c..2fef55569bfd 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -391,7 +391,7 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
 		len--;
 	new_synth_name[len] = '\0';
 	spk_strlwr(new_synth_name);
-	if ((synth != NULL) && (!strcmp(new_synth_name, synth->name))) {
+	if (synth && !strcmp(new_synth_name, synth->name)) {
 		pr_warn("%s already in use\n", new_synth_name);
 	} else if (synth_init(new_synth_name) != 0) {
 		pr_warn("failed to init synth %s\n", new_synth_name);
diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index c2f70ef5b9b3..a12ec2b061fe 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -299,7 +299,7 @@ static void speakup_shut_up(struct vc_data *vc)
 	spk_shut_up |= 0x01;
 	spk_parked &= 0xfe;
 	speakup_date(vc);
-	if (synth != NULL)
+	if (synth)
 		spk_do_flush();
 }
 
@@ -441,7 +441,7 @@ static void speak_char(u_char ch)
 			synth_printf("%s", spk_str_caps_stop);
 		return;
 	}
-	if (cp == NULL) {
+	if (!cp) {
 		pr_info("speak_char: cp == NULL!\n");
 		return;
 	}
@@ -1157,7 +1157,7 @@ static void do_handle_shift(struct vc_data *vc, u_char value, char up_flag)
 {
 	unsigned long flags;
 
-	if (synth == NULL || up_flag || spk_killed)
+	if (!synth || up_flag || spk_killed)
 		return;
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	if (cursor_track == read_all_mode) {
@@ -1195,7 +1195,7 @@ static void do_handle_latin(struct vc_data *vc, u_char value, char up_flag)
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
-	if (synth == NULL || spk_killed) {
+	if (!synth || spk_killed) {
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
@@ -1279,7 +1279,7 @@ void spk_reset_default_chars(void)
 
 	/* First, free any non-default */
 	for (i = 0; i < 256; i++) {
-		if ((spk_characters[i] != NULL)
+		if (spk_characters[i]
 		    && (spk_characters[i] != spk_default_chars[i]))
 			kfree(spk_characters[i]);
 	}
@@ -1321,10 +1321,10 @@ static int speakup_allocate(struct vc_data *vc)
 	int vc_num;
 
 	vc_num = vc->vc_num;
-	if (speakup_console[vc_num] == NULL) {
+	if (!speakup_console[vc_num]) {
 		speakup_console[vc_num] = kzalloc(sizeof(*speakup_console[0]),
 						  GFP_ATOMIC);
-		if (speakup_console[vc_num] == NULL)
+		if (!speakup_console[vc_num])
 			return -ENOMEM;
 		speakup_date(vc);
 	} else if (!spk_parked)
@@ -1373,7 +1373,7 @@ static void kbd_fakekey2(struct vc_data *vc, int command)
 
 static void read_all_doc(struct vc_data *vc)
 {
-	if ((vc->vc_num != fg_console) || synth == NULL || spk_shut_up)
+	if ((vc->vc_num != fg_console) || !synth || spk_shut_up)
 		return;
 	if (!synth_supports_indexing())
 		return;
@@ -1487,7 +1487,7 @@ static int pre_handle_cursor(struct vc_data *vc, u_char value, char up_flag)
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	if (cursor_track == read_all_mode) {
 		spk_parked &= 0xfe;
-		if (synth == NULL || up_flag || spk_shut_up) {
+		if (!synth || up_flag || spk_shut_up) {
 			spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 			return NOTIFY_STOP;
 		}
@@ -1509,7 +1509,7 @@ static void do_handle_cursor(struct vc_data *vc, u_char value, char up_flag)
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	spk_parked &= 0xfe;
-	if (synth == NULL || up_flag || spk_shut_up || cursor_track == CT_Off) {
+	if (!synth || up_flag || spk_shut_up || cursor_track == CT_Off) {
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
@@ -1705,7 +1705,7 @@ static void speakup_bs(struct vc_data *vc)
 		return;
 	if (!spk_parked)
 		speakup_date(vc);
-	if (spk_shut_up || synth == NULL) {
+	if (spk_shut_up || !synth) {
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
@@ -1722,7 +1722,7 @@ static void speakup_con_write(struct vc_data *vc, const char *str, int len)
 {
 	unsigned long flags;
 
-	if ((vc->vc_num != fg_console) || spk_shut_up || synth == NULL)
+	if ((vc->vc_num != fg_console) || spk_shut_up || !synth)
 		return;
 	if (!spin_trylock_irqsave(&speakup_info.spinlock, flags))
 		/* Speakup output, discard */
@@ -1751,7 +1751,7 @@ static void speakup_con_update(struct vc_data *vc)
 {
 	unsigned long flags;
 
-	if (speakup_console[vc->vc_num] == NULL || spk_parked)
+	if (!speakup_console[vc->vc_num] || spk_parked)
 		return;
 	if (!spin_trylock_irqsave(&speakup_info.spinlock, flags))
 		/* Speakup output, discard */
@@ -1766,7 +1766,7 @@ static void do_handle_spec(struct vc_data *vc, u_char value, char up_flag)
 	int on_off = 2;
 	char *label;
 
-	if (synth == NULL || up_flag || spk_killed)
+	if (!synth || up_flag || spk_killed)
 		return;
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	spk_shut_up &= 0xfe;
@@ -1810,7 +1810,7 @@ static int inc_dec_var(u_char value)
 
 	var_id = var_id / 2 + FIRST_SET_VAR;
 	p_header = spk_get_var_header(var_id);
-	if (p_header == NULL)
+	if (!p_header)
 		return -1;
 	if (p_header->var_type != VAR_NUM)
 		return -1;
@@ -1893,7 +1893,7 @@ static void speakup_bits(struct vc_data *vc)
 {
 	int val = this_speakup_key - (FIRST_EDIT_BITS - 1);
 
-	if (spk_special_handler != NULL || val < 1 || val > 6) {
+	if (spk_special_handler || val < 1 || val > 6) {
 		synth_printf("%s\n", spk_msg_get(MSG_ERROR));
 		return;
 	}
@@ -1984,7 +1984,7 @@ static int handle_goto(struct vc_data *vc, u_char type, u_char ch, u_short key)
 
 static void speakup_goto(struct vc_data *vc)
 {
-	if (spk_special_handler != NULL) {
+	if (spk_special_handler) {
 		synth_printf("%s\n", spk_msg_get(MSG_ERROR));
 		return;
 	}
@@ -2065,7 +2065,7 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 	u_char shift_info, offset;
 	int ret = 0;
 
-	if (synth == NULL)
+	if (!synth)
 		return 0;
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
@@ -2135,7 +2135,7 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 		}
 	}
 no_map:
-	if (type == KT_SPKUP && spk_special_handler == NULL) {
+	if (type == KT_SPKUP && !spk_special_handler) {
 		do_spkup(vc, new_key);
 		spk_close_press = 0;
 		ret = 1;
-- 
2.11.0


