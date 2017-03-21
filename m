X-GM-THRID: 6399916000486096896
X-Received: by 10.99.125.11 with SMTP id y11mr17254010pgc.10.1490096581954;
        Tue, 21 Mar 2017 04:43:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.35 with SMTP id 32ls3406149otp.21.gmail; Tue, 21 Mar
 2017 04:43:01 -0700 (PDT)
X-Received: by 10.129.131.133 with SMTP id t127mr16950382ywf.171.1490096581606;
        Tue, 21 Mar 2017 04:43:01 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id s67si1117041pfs.4.2017.03.21.04.43.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 04:43:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id r137so17782722pfr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 04:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=nBX5X4WfHJTvaROWTfkkjcI1L7bQtmMEWf4aJknyifY=;
        b=UrfTxrWbHoLiKQEt2lxNslCahErF6/PBbrBcBZGc3muoq2lZWDHE+1RAfmY5pj1KDz
         nL/3IoKa1Q10sozhoV0+6UmOeiQCaTXHRVewHkHC5mwIxYBQ1s5awLBLW4VtYI6zQ/wo
         crCAKztvziygIXQc5UvQPluSfRbYBup47Rx+wqcy6Hn91stYV0rx8ZP1IiLRGrM7KxtE
         DkNvEPa/BlL5JziyR+oKKfoNcrW3gWOZ1O/RfdaFL5j09asS66UKg5STfRogmoSZ6ibg
         o4oxIZ6te72LkLW+4KReMhSZWAUNwGigPy98Mo6s6ncUmGsHHJq6HijFZgtpKq1y+0iF
         LsgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=nBX5X4WfHJTvaROWTfkkjcI1L7bQtmMEWf4aJknyifY=;
        b=CdxDTq/sqVc4aN8WRyqCkApAjD9UYyZ9z35ijOgQqFdV6/5p4vAnDf20c+Dh9GNruB
         npq/SaxWHlUEqUAAkq1Y87H3PpEccRWMyC2rLNbg+2b7DRMjP9bItEOx2SSV5kVsQSOR
         dyjivVGIWeyEdC7cOuxSH3kJo09cwZ+9Fz1l/iPa2klS+O0xP4In4hfYYwr+nTozF1np
         fXvOAe11WuyUWjHSg+EQnSFyj7iP+6m3ITeywJsMiS76jpUgUB3FnmbfpJHb8JN+FqgX
         7E+8Cj24HKMFL5l/lf+DekflKUKw/RdGbvTYZ62KIkWAcNmTkbApnAzKvEIFYpbWhyWZ
         eNbQ==
X-Gm-Message-State: AFeK/H33HmJ3P2BIXIshQMOg1pdrfpkbvpYySt7RRFNFO8rTf5jwWTuXphR12JnUNgUTOQ==
X-Received: by 10.84.224.207 with SMTP id k15mr3027705pln.15.1490096581293;
        Tue, 21 Mar 2017 04:43:01 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w14sm39412284pgo.37.2017.03.21.04.42.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 04:43:00 -0700 (PDT)
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
Subject: [PATCH 04/11] staging: speakup: fixes braces {} should be used on all arms of this statement
Date: Tue, 21 Mar 2017 17:12:28 +0530
Message-Id: <20170321114235.1638-5-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>

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


