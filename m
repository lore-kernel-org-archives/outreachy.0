X-GM-THRID: 6395587044045750272
X-Received: by 10.99.55.4 with SMTP id e4mr7035306pga.156.1489088648743;
        Thu, 09 Mar 2017 11:44:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.145.4 with SMTP id t4ls2004075iod.44.gmail; Thu, 09 Mar
 2017 11:44:07 -0800 (PST)
X-Received: by 10.99.114.20 with SMTP id n20mr6296220pgc.97.1489088647862;
        Thu, 09 Mar 2017 11:44:07 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u12si1392434pfd.3.2017.03.09.11.44.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:44:07 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id v190so8264385pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=dahHbRAqNbhU/ynFwusZ1Umn6UWr+JbJSCNJqx9N56o=;
        b=XfEfPSUYyA/1xMTNsrpTgJ32igd8Mdt8UeuhQly0N6vtLK0+Nc2kup1vwrRnej1aVa
         86UPiLliSdkqjwk5C6pz/n4eYthhxyYSYLWa+q4milX3ByWou/paJiTTcBFgE+eWDbw/
         RnmnnTsR1pQjJIgpSB/Lpa8qAk2+T07tXWhF6y/zM4KZCIusUNT/L9owfDoNPcdFF16c
         scJKt60Q+j6P9OYHpPoVWl3Uz9B/h85TKgi5xVVZYONjHEcGfe3ScK76sfP1Ju+ZucHK
         28OfwRtqnVvM0Ph1WopF76iVYJY90OaTeE25WhVzrAT8fCHrtGAGFkEZ15qFcRLQM3U2
         zWDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dahHbRAqNbhU/ynFwusZ1Umn6UWr+JbJSCNJqx9N56o=;
        b=dbSRsMXCcIMswlpMRVtCYe/fGfUhY+w+it3lQ24uGLmhVi1yk62tqC/IyxJMV9NJ/7
         ynF3sBM83aAKf5kWO2jLk0e9DFK8mhxUZ4Gm45MqZ8fk2e8Sa4vMxk5EIe3iohJU6r+6
         WM5Xlj25DkmB8GJgF63wv3bMMx+AgL6UEBgisP/CLR1l3jQKDGyUGOnSflgLrxXxAs+o
         Bho7oEYCZrwAnD1tU1MITwzi9o1T1xQov1PYwn+w+IixN1kF9DX8fFLR/8xeXQ7xn8an
         0XDA1WdNFk9NSBqT4Ha/4b+W0nFNaLAEoarezKYTavvAzedKsFqicBQwY3KbO/5KK3nQ
         Aitg==
X-Gm-Message-State: AMke39mErzgvqZto+a/0s5K46PVPimnUYhmOFwcdLPHWsadsJeseHNJdROgsCGO1oVlyXg==
X-Received: by 10.84.232.5 with SMTP id h5mr19376434plk.134.1489088647539;
        Thu, 09 Mar 2017 11:44:07 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q7sm13998128pfb.98.2017.03.09.11.44.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 11:44:06 -0800 (PST)
Date: Fri, 10 Mar 2017 01:14:04 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Simplify "NULL" comparisons
Message-ID: <20170309194403.GA28328@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed coding style for null comparisons in speakup driver to be more
consistant with the rest of the kernel coding style.
Replaced 'x != NULL' with 'x' and 'x = NULL' with '!x'.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/fakekey.c |  2 +-
 drivers/staging/speakup/main.c    | 36 ++++++++++++++++++------------------
 2 files changed, 19 insertions(+), 19 deletions(-)

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
index fb8bef991cdf..6d9c9c858c75 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -300,7 +300,7 @@ static void speakup_shut_up(struct vc_data *vc)
 	spk_shut_up |= 0x01;
 	spk_parked &= 0xfe;
 	speakup_date(vc);
-	if (synth != NULL)
+	if (synth)
 		spk_do_flush();
 }
 
@@ -446,7 +446,7 @@ static void speak_char(u16 ch)
 	if (ch >= 0x100)
 		return;
 	cp = spk_characters[ch];
-	if (cp == NULL) {
+	if (!cp) {
 		pr_info("speak_char: cp == NULL!\n");
 		return;
 	}
@@ -1169,7 +1169,7 @@ static void do_handle_shift(struct vc_data *vc, u_char value, char up_flag)
 {
 	unsigned long flags;
 
-	if (synth == NULL || up_flag || spk_killed)
+	if (!synth || up_flag || spk_killed)
 		return;
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	if (cursor_track == read_all_mode) {
@@ -1207,7 +1207,7 @@ static void do_handle_latin(struct vc_data *vc, u_char value, char up_flag)
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
-	if (synth == NULL || spk_killed) {
+	if (!synth || spk_killed) {
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
@@ -1291,8 +1291,8 @@ void spk_reset_default_chars(void)
 
 	/* First, free any non-default */
 	for (i = 0; i < 256; i++) {
-		if ((spk_characters[i] != NULL)
-		    && (spk_characters[i] != spk_default_chars[i]))
+		if (spk_characters[i] &&
+		    (spk_characters[i] != spk_default_chars[i]))
 			kfree(spk_characters[i]);
 	}
 
@@ -1333,7 +1333,7 @@ static int speakup_allocate(struct vc_data *vc)
 	int vc_num;
 
 	vc_num = vc->vc_num;
-	if (speakup_console[vc_num] == NULL) {
+	if (!speakup_console[vc_num]) {
 		speakup_console[vc_num] = kzalloc(sizeof(*speakup_console[0]),
 						  GFP_ATOMIC);
 		if (!speakup_console[vc_num])
@@ -1385,7 +1385,7 @@ static void kbd_fakekey2(struct vc_data *vc, int command)
 
 static void read_all_doc(struct vc_data *vc)
 {
-	if ((vc->vc_num != fg_console) || synth == NULL || spk_shut_up)
+	if ((vc->vc_num != fg_console) || !synth || spk_shut_up)
 		return;
 	if (!synth_supports_indexing())
 		return;
@@ -1499,7 +1499,7 @@ static int pre_handle_cursor(struct vc_data *vc, u_char value, char up_flag)
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	if (cursor_track == read_all_mode) {
 		spk_parked &= 0xfe;
-		if (synth == NULL || up_flag || spk_shut_up) {
+		if (!synth || up_flag || spk_shut_up) {
 			spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 			return NOTIFY_STOP;
 		}
@@ -1521,7 +1521,7 @@ static void do_handle_cursor(struct vc_data *vc, u_char value, char up_flag)
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	spk_parked &= 0xfe;
-	if (synth == NULL || up_flag || spk_shut_up || cursor_track == CT_Off) {
+	if (!synth || up_flag || spk_shut_up || cursor_track == CT_Off) {
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
@@ -1717,7 +1717,7 @@ static void speakup_bs(struct vc_data *vc)
 		return;
 	if (!spk_parked)
 		speakup_date(vc);
-	if (spk_shut_up || synth == NULL) {
+	if (spk_shut_up || !synth) {
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
@@ -1763,7 +1763,7 @@ static void speakup_con_update(struct vc_data *vc)
 {
 	unsigned long flags;
 
-	if (speakup_console[vc->vc_num] == NULL || spk_parked)
+	if (!speakup_console[vc->vc_num] || spk_parked)
 		return;
 	if (!spin_trylock_irqsave(&speakup_info.spinlock, flags))
 		/* Speakup output, discard */
@@ -1778,7 +1778,7 @@ static void do_handle_spec(struct vc_data *vc, u_char value, char up_flag)
 	int on_off = 2;
 	char *label;
 
-	if (synth == NULL || up_flag || spk_killed)
+	if (!synth || up_flag || spk_killed)
 		return;
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	spk_shut_up &= 0xfe;
@@ -1822,7 +1822,7 @@ static int inc_dec_var(u_char value)
 
 	var_id = var_id / 2 + FIRST_SET_VAR;
 	p_header = spk_get_var_header(var_id);
-	if (p_header == NULL)
+	if (!p_header)
 		return -1;
 	if (p_header->var_type != VAR_NUM)
 		return -1;
@@ -1905,7 +1905,7 @@ static void speakup_bits(struct vc_data *vc)
 {
 	int val = this_speakup_key - (FIRST_EDIT_BITS - 1);
 
-	if (spk_special_handler != NULL || val < 1 || val > 6) {
+	if (spk_special_handler || val < 1 || val > 6) {
 		synth_printf("%s\n", spk_msg_get(MSG_ERROR));
 		return;
 	}
@@ -1999,7 +1999,7 @@ static int handle_goto(struct vc_data *vc, u_char type, u_char ch, u_short key)
 
 static void speakup_goto(struct vc_data *vc)
 {
-	if (spk_special_handler != NULL) {
+	if (spk_special_handler) {
 		synth_printf("%s\n", spk_msg_get(MSG_ERROR));
 		return;
 	}
@@ -2080,7 +2080,7 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 	u_char shift_info, offset;
 	int ret = 0;
 
-	if (synth == NULL)
+	if (!synth)
 		return 0;
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
@@ -2150,7 +2150,7 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
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


