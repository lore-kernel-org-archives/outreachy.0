X-GM-THRID: 6395538220161957888
X-Received: by 10.99.147.16 with SMTP id b16mr5947332pge.22.1489077286526;
        Thu, 09 Mar 2017 08:34:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.194 with SMTP id 185ls1971217iof.19.gmail; Thu, 09 Mar
 2017 08:34:45 -0800 (PST)
X-Received: by 10.107.29.207 with SMTP id d198mr4491069iod.28.1489077285612;
        Thu, 09 Mar 2017 08:34:45 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si1274001pfb.7.2017.03.09.08.34.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 08:34:45 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so7341011pgg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 08:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=VnE6Iwbmz7roCQL2ily0NXizrwXY0pNrIgXaN+u56iM=;
        b=BfN0rF4oadevSkc/plDF3OluFr56V6pXa8MNunRsVVzBupGZBJuoDX7ZPiYGqyDS+1
         AFZmrnRzqtVnKQG1HxAe4IUg1VGBKZQ8nErHThiVfMsiWAqkJ9gek89gRF/O48YrMTdy
         r2oUor58YLfdrlOvCTzpOJiNXQOjSoAskrGAbbmKPn0tqJcHLtFBVnkJgzOOZXybYG+x
         h119O0U23cc+bBiomTpwSjDhyozn26BDiL8gTnbIIzBu2sFoFqydD1qnh3d7Wlal3Mns
         jdTBEa2rLrwsj60Gqa1Sb8xo4Hoa/64dgvYtxns5haYtOlAfupcl5Rc+Z2a8JmmwYdK3
         S4Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=VnE6Iwbmz7roCQL2ily0NXizrwXY0pNrIgXaN+u56iM=;
        b=JFEs8GZ0E7geZX/OEfo3E/ylwd9PrHw4lVxChSAM36sT1nnat5nSLtSGo3hFuSw1KW
         z+G24udHjqo/8MljyrcQgGhKna2S53zumrUL0pvfKUMTv5f7qA+6luJH/0TSehes77nB
         VgbauxUPomOAWD5qFDdc2apBIMmtn/1lCrcBg1Cw7ixVlvJa7gVd7useOGupeCZuGOu+
         lmNTf7FzDSmE8OwsTIa0C7PFDs3aqiSH4FWFSrn+cuRAOPehUiJdsIKbbO1UAVMk8Lg7
         jq4DYnysigrcJqy9F6jS/m3FOrckc5g6yC258Rwe2OYRTckBQoZj3fJPCw7cVHwjBRFi
         b3ZA==
X-Gm-Message-State: AMke39nJrKkNsxgL3SJ8MDbMCRzR7v6L70c56ScbRVQcnNt7kKnGGNZuDEZkEeAGKZBk1Q==
X-Received: by 10.99.229.5 with SMTP id r5mr14789301pgh.206.1489077285250;
        Thu, 09 Mar 2017 08:34:45 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 197sm13513080pfv.19.2017.03.09.08.34.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 08:34:43 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/4] staging: speakup: Comparison to NULL could be written
Date: Thu,  9 Mar 2017 22:04:30 +0530
Message-Id: <20170309163433.19462-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170309163433.19462-1-arushisinghal19971997@gmail.com>
References: <20170309163433.19462-1-arushisinghal19971997@gmail.com>

Fixed coding style for null comparisons in speakup driver to be more
consistant with the rest of the kernel coding style.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v2
 - fixed coding style error and upto the coding style.
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


