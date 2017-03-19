X-GM-THRID: 6399067042986590208
X-Received: by 10.129.94.215 with SMTP id s206mr12237845ywb.1.1489898898032;
        Sat, 18 Mar 2017 21:48:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.83 with SMTP id t19ls11272046ott.28.gmail; Sat, 18 Mar
 2017 21:48:17 -0700 (PDT)
X-Received: by 10.129.181.8 with SMTP id t8mr2125976ywh.12.1489898897529;
        Sat, 18 Mar 2017 21:48:17 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si2112254pfx.8.2017.03.18.21.48.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 21:48:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p189so7552609pfp.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 21:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nBX5X4WfHJTvaROWTfkkjcI1L7bQtmMEWf4aJknyifY=;
        b=Kx9SR/RzT1UOXbn0C4Qdp5HAqYySVNP9uW5Rjt4hBtDYbVyhljuwDFP0Bsh8TxWKmJ
         p4Pfuw92uOFyM0aMhxiwE4bka12tXEygNNUzrWeBYN7D4Kwv4RrppxOVax73GV3vBuRT
         BEUf8Tgg7qVEdw5R8gu9bMvKnOKzX6T/UuqrpY24S7lPCYzWb4rO0aEg/21v/gFbvbdI
         C4dNGFFH34iV2xLq6cQgDKbsMxbIpxMfb/0fN0/sJN8a1k5EUZomRx67FGjRwReW2VKQ
         1sMGwZwOUBQbAjF+bxRhi11pD2AZn8kJDkc0u5TXz0JAqxJOv+7RLl49ttcALGENLzY0
         PKdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nBX5X4WfHJTvaROWTfkkjcI1L7bQtmMEWf4aJknyifY=;
        b=rVemX1aJZLHqFPX+Mp3RkUSkjrJs0vDln5EiF2RloIGDHZ2Y0214MGBju7C9loPGMU
         hRsNmI/OUzDZCE2W/yBwQCIkK60o22UmslsCSyQBtgizL+96gVxQHlRaQVpdaF9ZmCxY
         rWWVrIJKkinm7pmHBkmDxVD0Ub7ZYpc0Pxuth9z0tNetJtQaFaLGwDF2iEbMQrvorUjH
         9V8j7UTNM6XI0l8SsDqDq88b+xfqKsv/p2u6vIxMEo1QnNZCgoDTzIXgCdSdaadIP+Zt
         Yc4wDMl1qdx97VFByhJNFxrGOH6eEePPzp3dVbgB3LowKmbEWQqw/1onTnz4mGc3+jjw
         lq5A==
X-Gm-Message-State: AFeK/H2pdpxtyoe7ZOlpAn0hWfRcXQpU5J3pK2AUShDonCC5QjHYTe6u9Q9+ingSxAqUsg==
X-Received: by 10.84.212.136 with SMTP id e8mr31266435pli.140.1489898897203;
        Sat, 18 Mar 2017 21:48:17 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g29sm25321860pfg.37.2017.03.18.21.48.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 21:48:16 -0700 (PDT)
Date: Sun, 19 Mar 2017 10:18:13 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: fix: braces {} should used on all arms of
 statement
Message-ID: <20170319044813.GA13706@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checks reported by checkpatch.pl
for braces {} should be used on all arms of this statement.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/main.c           | 35 +++++++++++++++++++-------------
 drivers/staging/speakup/speakup_decext.c |  6 +++---
 drivers/staging/speakup/speakup_decpc.c  |  6 +++---
 drivers/staging/speakup/speakup_dectlk.c |  6 +++---
 drivers/staging/speakup/varhandlers.c    | 12 ++++++-----
 5 files changed, 37 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index f8fccc8bf6b2..21e76b031449 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -409,8 +409,9 @@ static void say_attributes(struct vc_data *vc)
 	if (bg > 7) {
 		synth_printf(" %s ", spk_msg_get(MSG_ON_BLINKING));
 		bg -= 8;
-	} else
+	} else {
 		synth_printf(" %s ", spk_msg_get(MSG_ON));
+	}
 	synth_printf("%s\n", spk_msg_get(MSG_COLORS_START + bg));
 }
 
@@ -643,8 +644,9 @@ static void say_prev_word(struct vc_data *vc)
 				break;
 			spk_y--;
 			spk_x = vc->vc_cols - 1;
-		} else
+		} else {
 			spk_x--;
+		}
 		spk_pos -= 2;
 		ch = get_char(vc, (u_short *)spk_pos, &temp);
 		if (ch == SPACE || ch == 0)
@@ -697,8 +699,9 @@ static void say_next_word(struct vc_data *vc)
 			spk_y++;
 			spk_x = 0;
 			edge_said = edge_right;
-		} else
+		} else {
 			spk_x++;
+		}
 		spk_pos += 2;
 		last_state = state;
 	}
@@ -729,8 +732,9 @@ static void spell_word(struct vc_data *vc)
 				spk_pitch_shift++;
 			else	/* synth has no pitch */
 				last_cap = spk_str_caps_stop;
-		} else
+		} else {
 			str_cap = spk_str_caps_stop;
+		}
 		if (str_cap != last_cap) {
 			synth_printf("%s", str_cap);
 			last_cap = str_cap;
@@ -1343,8 +1347,9 @@ static int speakup_allocate(struct vc_data *vc)
 		if (!speakup_console[vc_num])
 			return -ENOMEM;
 		speakup_date(vc);
-	} else if (!spk_parked)
+	} else if (!spk_parked) {
 		speakup_date(vc);
+	}
 
 	return 0;
 }
@@ -1397,9 +1402,9 @@ static void read_all_doc(struct vc_data *vc)
 		prev_cursor_track = cursor_track;
 	cursor_track = read_all_mode;
 	spk_reset_index_count(0);
-	if (get_sentence_buf(vc, 0) == -1)
+	if (get_sentence_buf(vc, 0) == -1) {
 		kbd_fakekey2(vc, RA_DOWN_ARROW);
-	else {
+	} else {
 		say_sentence_num(0, 0);
 		synth_insert_next_index(0);
 		start_read_all_timer(vc, RA_TIMER);
@@ -1446,8 +1451,9 @@ static void handle_cursor_read_all(struct vc_data *vc, int command)
 			if (!say_sentence_num(sentcount + 1, 1)) {
 				sn = 1;
 				spk_reset_index_count(sn);
-			} else
+			} else {
 				synth_insert_next_index(0);
+			}
 			if (!say_sentence_num(sn, 0)) {
 				kbd_fakekey2(vc, RA_FIND_NEXT_SENT);
 				return;
@@ -1476,9 +1482,9 @@ static void handle_cursor_read_all(struct vc_data *vc, int command)
 		rv = get_sentence_buf(vc, 0);
 		if (rv == -1)
 			read_all_doc(vc);
-		if (rv == 0)
+		if (rv == 0) {
 			kbd_fakekey2(vc, RA_FIND_NEXT_SENT);
-		else {
+		} else {
 			say_sentence_num(1, 0);
 			synth_insert_next_index(0);
 			start_read_all_timer(vc, RA_TIMER);
@@ -2177,10 +2183,11 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 		if (type == KT_SPEC && value == 1) {
 			value = '\n';
 			type = KT_LATIN;
-		} else if (type == KT_LETTER)
+		} else if (type == KT_LETTER) {
 			type = KT_LATIN;
-		else if (value == 0x7f)
+		} else if (value == 0x7f) {
 			value = 8;	/* make del = backspace */
+		}
 		ret = (*spk_special_handler) (vc, type, value, keycode);
 		spk_close_press = 0;
 		if (ret < 0)
@@ -2274,9 +2281,9 @@ static int vt_notifier_call(struct notifier_block *nb,
 		speakup_deallocate(vc);
 		break;
 	case VT_WRITE:
-		if (param->c == '\b')
+		if (param->c == '\b') {
 			speakup_bs(vc);
-		else {
+		} else {
 			u16 d = param->c;
 			speakup_con_write(vc, &d, 1);
 		}
diff --git a/drivers/staging/speakup/speakup_decext.c b/drivers/staging/speakup/speakup_decext.c
index fdbf330cae4e..929a28d618dc 100644
--- a/drivers/staging/speakup/speakup_decext.c
+++ b/drivers/staging/speakup/speakup_decext.c
@@ -195,11 +195,11 @@ static void do_catch_up(struct spk_synth *synth)
 		spin_lock_irqsave(&speakup_info.spinlock, flags);
 		synth_buffer_getc();
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
-		if (ch == '[')
+		if (ch == '[') {
 			in_escape = 1;
-		else if (ch == ']')
+		} else if (ch == ']') {
 			in_escape = 0;
-		else if (ch <= SPACE) {
+		} else if (ch <= SPACE) {
 			if (!in_escape && strchr(",.!?;:", last))
 				synth->io_ops->synth_out(synth, PROCSPEECH);
 			if (time_after_eq(jiffies, jiff_max)) {
diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
index 2a738be19789..5e35d7e11361 100644
--- a/drivers/staging/speakup/speakup_decpc.c
+++ b/drivers/staging/speakup/speakup_decpc.c
@@ -410,11 +410,11 @@ static void do_catch_up(struct spk_synth *synth)
 		spin_lock_irqsave(&speakup_info.spinlock, flags);
 		synth_buffer_getc();
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
-		if (ch == '[')
+		if (ch == '[') {
 			in_escape = 1;
-		else if (ch == ']')
+		} else if (ch == ']') {
 			in_escape = 0;
-		else if (ch <= SPACE) {
+		} else if (ch <= SPACE) {
 			if (!in_escape && strchr(",.!?;:", last))
 				dt_sendchar(PROCSPEECH);
 			if (time_after_eq(jiffies, jiff_max)) {
diff --git a/drivers/staging/speakup/speakup_dectlk.c b/drivers/staging/speakup/speakup_dectlk.c
index 386ac9d87af6..0cdbd5e9b36b 100644
--- a/drivers/staging/speakup/speakup_dectlk.c
+++ b/drivers/staging/speakup/speakup_dectlk.c
@@ -260,11 +260,11 @@ static void do_catch_up(struct spk_synth *synth)
 		spin_lock_irqsave(&speakup_info.spinlock, flags);
 		synth_buffer_getc();
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
-		if (ch == '[')
+		if (ch == '[') {
 			in_escape = 1;
-		else if (ch == ']')
+		} else if (ch == ']') {
 			in_escape = 0;
-		else if (ch <= SPACE) {
+		} else if (ch <= SPACE) {
 			if (!in_escape && strchr(",.!?;:", last))
 				synth->io_ops->synth_out(synth, PROCSPEECH);
 			if (time_after_eq(jiffies, jiff_max)) {
diff --git a/drivers/staging/speakup/varhandlers.c b/drivers/staging/speakup/varhandlers.c
index 5910fe0b1365..d37d24e26641 100644
--- a/drivers/staging/speakup/varhandlers.c
+++ b/drivers/staging/speakup/varhandlers.c
@@ -258,10 +258,11 @@ int spk_set_string_var(const char *page, struct st_var_header *var, int len)
 		if (var->p_val != var_data->u.s.default_val)
 			strcpy((char *)var->p_val, var_data->u.s.default_val);
 		return -ERESTART;
-	} else if (var->p_val)
+	} else if (var->p_val) {
 		strcpy((char *)var->p_val, page);
-	else
+	} else {
 		return -E2BIG;
+	}
 	return 0;
 }
 
@@ -281,17 +282,18 @@ int spk_set_mask_bits(const char *input, const int which, const int how)
 			spk_chartab[*cp] &= ~mask;
 	}
 	cp = (u_char *)input;
-	if (!cp)
+	if (!cp) {
 		cp = spk_punc_info[which].value;
-	else {
+	} else {
 		for (; *cp; cp++) {
 			if (*cp < SPACE)
 				break;
 			if (mask < PUNC) {
 				if (!(spk_chartab[*cp] & PUNC))
 					break;
-			} else if (spk_chartab[*cp] & B_NUM)
+			} else if (spk_chartab[*cp] & B_NUM) {
 				break;
+			}
 		}
 		if (*cp)
 			return -EINVAL;
-- 
2.11.0


