X-GM-THRID: 6399262354058510336
X-Received: by 10.129.153.65 with SMTP id q62mr13797519ywg.23.1489944372396;
        Sun, 19 Mar 2017 10:26:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.216 with SMTP id p85ls3196580ioi.40.gmail; Sun, 19 Mar
 2017 10:26:11 -0700 (PDT)
X-Received: by 10.99.39.6 with SMTP id n6mr12572173pgn.98.1489944371554;
        Sun, 19 Mar 2017 10:26:11 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si2266534pfb.2.2017.03.19.10.26.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 10:26:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 79so7729370pgf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 10:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=LWYWLZj3SjTkpbBMHRwRN4VL0lUSikq0VyTFGIwYGLU=;
        b=T56Jlnt1NXTpGJONIkW8dEmLiKkpFTiLPjA8wuU+7nP0zLONxpMhnBBMkLXU0HIpEr
         QA17CBTs+MtxY+TT7CdkZSLrWDsOL+4HNITsUvlSFzP5NxQp0iwaQTMA4+EH12pLvsPB
         H+VmMtNxhWBqSOuQIDKkyZq3yi9lyByO0wB9Azp0a4mVI+AgBHylOyf4QqLGjWOusxf/
         bJAZhhjfcqo1BM4EqwyQzLr0hQXF/l62vIS+XfQp1wYlp7Qd8JZTQWKPsrsBxViMBQFS
         K13PBchZa+RIZBHp2NCRMB1riPo8l0HnWU8o086UHC+t33E9vRNjOHo1JPEBKNIp9YvB
         ePVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=LWYWLZj3SjTkpbBMHRwRN4VL0lUSikq0VyTFGIwYGLU=;
        b=bEp1l1vGpv/zSbYdbrV/9px4/6hOSaW44BZZMie8jUzfLmbyyq2Qfu3NdlWjqvvM6Q
         7+EopmargXeyjfom9Xstf3iHNOJA/Hyc0vTxCy8TVg+Yv7xCzVFZijuC2teI+2k4K4FF
         h4sZQdXWqXHDi7UhYPG0sGZhtJnbItMK+wPo3hG6nY8UtLYi/gi6a9obpxxg5JRylYay
         5IKw6DtUqUx/6ZDkhbQTkVl4Hqwp2dr5Y2wGuluk08zGgH25S3EJ8rdG+bu6KcB4KeFg
         vdDIzLHx6cWZCVc++41324ihcpzjndAoUBp1QeLD0hM6S/VuDk8EYusgHagYzl+CcjOp
         XSeA==
X-Gm-Message-State: AFeK/H1cfuUig60XkM5Is6k08/vbjHZGPvj9mJsdjj4X7C/442EcpS3JHGJZlrW0m8zB2A==
X-Received: by 10.98.113.74 with SMTP id m71mr28550856pfc.231.1489944371185;
        Sun, 19 Mar 2017 10:26:11 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w28sm10658557pge.25.2017.03.19.10.26.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 10:26:09 -0700 (PDT)
Date: Sun, 19 Mar 2017 22:56:06 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Simplify the NULL comparisons
Message-ID: <20170319172606.GA20823@arushi-HP-Pavilion-Notebook>
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


