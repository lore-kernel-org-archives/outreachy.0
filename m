X-GM-THRID: 6392612605640310784
X-Received: by 10.159.34.69 with SMTP id 63mr2506634uad.22.1488396107014;
        Wed, 01 Mar 2017 11:21:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.129 with SMTP id c1ls5676264ote.14.gmail; Wed, 01 Mar
 2017 11:21:46 -0800 (PST)
X-Received: by 10.129.52.17 with SMTP id b17mr3397489ywa.107.1488396106605;
        Wed, 01 Mar 2017 11:21:46 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id c123si943136pfa.4.2017.03.01.11.21.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 11:21:46 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so6749675pgb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 11:21:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+6SntVBne+glZwtiZeAOhD28xx0Csc9Sb28F2EiGdB4=;
        b=E+H8+jwdQCYsvQgX4xMtZU0aKOmD9D72qFZ8iZn9o0i7Bh/wEa9lO9Wl/0Niqz3B8l
         UK+5ffhZfcF/YOUa1VSU6XvQQAsqoRGIdxYWVgCTn6mxXQwOZI2LK44l3dRtqvEfI/tD
         8vff7qQIjijUSYrNOew/7+wLyZGTDZVy+1GcBWy0NNQiAbGrLOncAJpScT59Qj+Snb0V
         DQRXg5tB0bDMw6LbHCq+ONXI3L0IJF4FDGWdQejHN3T5i8OFc9HpM/mZhHrZ3S3MtR+r
         vDLlEKPhx9v1xDLhXpMbbx3uNJGY7OaY2xy+4b9LOMtXwIXvLpxgu6maI4MRMNUaSxO8
         AAFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+6SntVBne+glZwtiZeAOhD28xx0Csc9Sb28F2EiGdB4=;
        b=Y7+crzM+nYjzuxcFDUuznoy7fE1btkK5kpghgs0dkhRBl9HVanbT3nnDBcFcX1suSd
         c+jV/x8mluiZ/1Bok6zppxv8W1UOldvBxdZbbKvLya1/CzSe4oyRR9DxrpuYLaVCgPvP
         KAfQQPqhC71+1NCHrCGLe8hmKxfARHXU/bxpN/rCAZciiAQUiLHyHCrEiILwKPN7sJ/C
         TV+O/UC8jOXmDjq9bv74dwmBLb0aRDefndmJPVYy5bZJ71o59lS9RN3UepUhBJucVST/
         c+nYP8R49WG6z7t+QnL48bEgkZn8dZfeIWgcKG38XaidtA/d82Xmtc+lsWTURBvfldin
         zrxQ==
X-Gm-Message-State: AMke39nJgyPblaIUZJsmOiqJ81eQ9tQHXfnwzgFkfhLpgm4jlo0mC0r7SXqhnbF94y8TCQ==
X-Received: by 10.98.112.134 with SMTP id l128mr10574328pfc.81.1488396105783;
        Wed, 01 Mar 2017 11:21:45 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k184sm12177063pgc.23.2017.03.01.11.21.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 11:21:44 -0800 (PST)
Date: Thu, 2 Mar 2017 00:51:40 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Comparison to NULL could be written
Message-ID: <20170301192140.GA30680@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed coding style for null comparisons in speakup driver to be more
consistant with the rest of the kernel coding style.

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
index 5d871ec3693c..fdd6e4b33951 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -391,7 +391,7 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
 		len--;
 	new_synth_name[len] = '\0';
 	spk_strlwr(new_synth_name);
-	if ((synth != NULL) && (!strcmp(new_synth_name, synth->name))) {
+	if ((synth) && (!strcmp(new_synth_name, synth->name))) {
 		pr_warn("%s already in use\n", new_synth_name);
 	} else if (synth_init(new_synth_name) != 0) {
 		pr_warn("failed to init synth %s\n", new_synth_name);
diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index c2f70ef5b9b3..3d3d62c7a5ef 100644
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
+		if ((spk_characters[i])
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
+	if (spk_shut_up || !synth ) {
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
@@ -1722,7 +1722,7 @@ static void speakup_con_write(struct vc_data *vc, const char *str, int len)
 {
 	unsigned long flags;
 
-	if ((vc->vc_num != fg_console) || spk_shut_up || synth == NULL)
+	if ((vc->vc_num != fg_console) || spk_shut_up || !synth )
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
+	if (!p_header )
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
+	if (!synth )
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


