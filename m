X-GM-THRID: 6401026014423547904
X-Received: by 10.36.41.203 with SMTP id p194mr607786itp.12.1490355006992;
        Fri, 24 Mar 2017 04:30:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.66 with SMTP id 63ls353384ith.16.gmail; Fri, 24 Mar 2017
 04:30:06 -0700 (PDT)
X-Received: by 10.99.143.91 with SMTP id r27mr2516176pgn.132.1490355006171;
        Fri, 24 Mar 2017 04:30:06 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si405474pfx.8.2017.03.24.04.30.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 04:30:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so2242221pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Mar 2017 04:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xkAch3bdigUPPU302g5YIH186M/CGEoktBxUj3+a6hM=;
        b=hYMbK+6bNHu0yny2095yQ+Nsesor2zx2+TjDnM20nOKCEhTTxVfPEmn1JetgI47djD
         wUJYKZtL5ehlE1hXzV9DKljCnaE7hWKfKfrdhlHZuM89v+MoSvbv2+uGUmw1eW6SRaag
         +k4jlsXpCcFo9w5TGFcHcf7wr1mW3vsk0KapbW0zp430ldXsav2UYcA3TkksLY/7/mKS
         cPFy5e/IM2hMafbr+imk8J5edKH7mceLyZsJBLuqhtYOIaOeIAqKUr6G58DjB41mkz8w
         y6XEm6zblVN9QerELLQ7lXdnyhlPVLaoJHOrt5z6V3F9MNqXsba1nmw7xYc+IMoYqJdD
         om1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xkAch3bdigUPPU302g5YIH186M/CGEoktBxUj3+a6hM=;
        b=MBeRHd+0WYsLebqvzZWePqvOZT2WyJIwldcNqigFs3J2sFa7CKZ1EPC13fbuv+vc6F
         gX6kRvIuJGDhKYufg6+qwOBugAu7GBnhdtciO9WcmAHJLd7pA3Ay9bIVzLhTRtEy6dUD
         HGiaUb7tyRnGQj1xNb461GMHuAQ3o/NwVRWRwC+UTGfBu4wljigQAPb1xUdMJ9DmEfkf
         Lv9BTt8blk4tCaLorzpmbg7gnNIQOYKWHpH6Z9y7poL3CbenIPmnjAkjQOH5xJUt75Ah
         Sy2UV0+3hcncKF5+vjyDrNRis1Uo62laraCA/FReTWnoGbJPPFW4WDZOVjB2MYbF15rV
         LzCQ==
X-Gm-Message-State: AFeK/H3VDeQpRNsw15uj9+O+iYtqo2bu3/0aQCyYwiYATNcTmp+Tscfl30HtK5Xku/86/w==
X-Received: by 10.84.229.5 with SMTP id b5mr9678114plk.93.1490355005837;
        Fri, 24 Mar 2017 04:30:05 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r67sm4192577pfb.125.2017.03.24.04.30.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Mar 2017 04:30:04 -0700 (PDT)
Date: Fri, 24 Mar 2017 16:59:59 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: speakup: Remove the explicit NULL comparison
Message-ID: <20170324112959.GA31237@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed coding style for null comparisons in speakup driver to be more
consistant with the rest of the kernel coding style.
Replaced 'x != NULL' with 'x' and 'x = NULL' with '!x'.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v2
 - change the commit subject

 drivers/staging/speakup/fakekey.c |  2 +-
 drivers/staging/speakup/main.c    | 32 ++++++++++++++++----------------
 2 files changed, 17 insertions(+), 17 deletions(-)

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
diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index def1a36da9dd..7568e8149613 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -304,7 +304,7 @@ static void speakup_shut_up(struct vc_data *vc)
 	spk_shut_up |= 0x01;
 	spk_parked &= 0xfe;
 	speakup_date(vc);
-	if (synth != NULL)
+	if (synth)
 		spk_do_flush();
 }
 
@@ -449,7 +449,7 @@ static void speak_char(u16 ch)
 	}
 
 	cp = spk_characters[ch];
-	if (cp == NULL) {
+	if (!cp) {
 		pr_info("speak_char: cp == NULL!\n");
 		return;
 	}
@@ -1177,7 +1177,7 @@ static void do_handle_shift(struct vc_data *vc, u_char value, char up_flag)
 {
 	unsigned long flags;
 
-	if (synth == NULL || up_flag || spk_killed)
+	if (!synth || up_flag || spk_killed)
 		return;
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	if (cursor_track == read_all_mode) {
@@ -1215,7 +1215,7 @@ static void do_handle_latin(struct vc_data *vc, u_char value, char up_flag)
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
-	if (synth == NULL || spk_killed) {
+	if (!synth || spk_killed) {
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
@@ -1341,7 +1341,7 @@ static int speakup_allocate(struct vc_data *vc)
 	int vc_num;
 
 	vc_num = vc->vc_num;
-	if (speakup_console[vc_num] == NULL) {
+	if (!speakup_console[vc_num]) {
 		speakup_console[vc_num] = kzalloc(sizeof(*speakup_console[0]),
 						  GFP_ATOMIC);
 		if (!speakup_console[vc_num])
@@ -1394,7 +1394,7 @@ static void kbd_fakekey2(struct vc_data *vc, int command)
 
 static void read_all_doc(struct vc_data *vc)
 {
-	if ((vc->vc_num != fg_console) || synth == NULL || spk_shut_up)
+	if ((vc->vc_num != fg_console) || !synth || spk_shut_up)
 		return;
 	if (!synth_supports_indexing())
 		return;
@@ -1509,7 +1509,7 @@ static int pre_handle_cursor(struct vc_data *vc, u_char value, char up_flag)
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	if (cursor_track == read_all_mode) {
 		spk_parked &= 0xfe;
-		if (synth == NULL || up_flag || spk_shut_up) {
+		if (!synth || up_flag || spk_shut_up) {
 			spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 			return NOTIFY_STOP;
 		}
@@ -1531,7 +1531,7 @@ static void do_handle_cursor(struct vc_data *vc, u_char value, char up_flag)
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	spk_parked &= 0xfe;
-	if (synth == NULL || up_flag || spk_shut_up || cursor_track == CT_Off) {
+	if (!synth || up_flag || spk_shut_up || cursor_track == CT_Off) {
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
@@ -1730,7 +1730,7 @@ static void speakup_bs(struct vc_data *vc)
 		return;
 	if (!spk_parked)
 		speakup_date(vc);
-	if (spk_shut_up || synth == NULL) {
+	if (spk_shut_up || !synth) {
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
@@ -1747,7 +1747,7 @@ static void speakup_con_write(struct vc_data *vc, u16 *str, int len)
 {
 	unsigned long flags;
 
-	if ((vc->vc_num != fg_console) || spk_shut_up || synth == NULL)
+	if ((vc->vc_num != fg_console) || spk_shut_up || !synth)
 		return;
 	if (!spin_trylock_irqsave(&speakup_info.spinlock, flags))
 		/* Speakup output, discard */
@@ -1776,7 +1776,7 @@ static void speakup_con_update(struct vc_data *vc)
 {
 	unsigned long flags;
 
-	if (speakup_console[vc->vc_num] == NULL || spk_parked)
+	if (!speakup_console[vc->vc_num] || spk_parked)
 		return;
 	if (!spin_trylock_irqsave(&speakup_info.spinlock, flags))
 		/* Speakup output, discard */
@@ -1791,7 +1791,7 @@ static void do_handle_spec(struct vc_data *vc, u_char value, char up_flag)
 	int on_off = 2;
 	char *label;
 
-	if (synth == NULL || up_flag || spk_killed)
+	if (!synth || up_flag || spk_killed)
 		return;
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	spk_shut_up &= 0xfe;
@@ -1835,7 +1835,7 @@ static int inc_dec_var(u_char value)
 
 	var_id = var_id / 2 + FIRST_SET_VAR;
 	p_header = spk_get_var_header(var_id);
-	if (p_header == NULL)
+	if (!p_header)
 		return -1;
 	if (p_header->var_type != VAR_NUM)
 		return -1;
@@ -1918,7 +1918,7 @@ static void speakup_bits(struct vc_data *vc)
 {
 	int val = this_speakup_key - (FIRST_EDIT_BITS - 1);
 
-	if (spk_special_handler != NULL || val < 1 || val > 6) {
+	if (spk_special_handler || val < 1 || val > 6) {
 		synth_printf("%s\n", spk_msg_get(MSG_ERROR));
 		return;
 	}
@@ -2012,7 +2012,7 @@ static int handle_goto(struct vc_data *vc, u_char type, u_char ch, u_short key)
 
 static void speakup_goto(struct vc_data *vc)
 {
-	if (spk_special_handler != NULL) {
+	if (spk_special_handler) {
 		synth_printf("%s\n", spk_msg_get(MSG_ERROR));
 		return;
 	}
@@ -2164,7 +2164,7 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
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


