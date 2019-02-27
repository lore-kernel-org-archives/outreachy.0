X-GM-THRID: 6662701472934789120
X-Received: by 2002:a37:9a4c:: with SMTP id c73mr835255qke.50.1551281072033;
        Wed, 27 Feb 2019 07:24:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6394:: with SMTP id x142ls835220qkb.7.gmail; Wed, 27 Feb
 2019 07:24:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqwWBAlsCPiLOx7nonYxXGT/4SItwiZxQ67HsSRyA3HwerWKMuuBRNmWP0OMLSjcEVs4YeNr
X-Received: by 2002:a37:ef19:: with SMTP id j25mr803908qkk.5.1551281071422;
        Wed, 27 Feb 2019 07:24:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551281071; cv=none;
        d=google.com; s=arc-20160816;
        b=k6bczGMQhiI+fP1NYANvVZjEtXg/jZ1yuSOGF2rQB74lxEq5ZPo2ylu1iCrLQTpjLZ
         FIZkyBpQGat/rPih7GBD0gwtq57q6UBovA5R/L3I5ewvKhxz/XQJw2Xq9tT9FSt8th4s
         HAc2KeoiFyGuhekSod2956UKCYr3kXbDe2A6XXtDrbBAcu+MHOguSM9mt61u5jOthwqi
         P6jVJ/YIh7Q4/IuGW4+afDKpjae4/WzErUzEnP+IDxMxctKtqcO0Qf4x9fq/hRqj2g57
         y9JOad/SwFPHBiuTZOuHSE01nk4IFQ/s/Pjvr9RJxjqGYksQEICfB1z5FCzNn1VuD8av
         ogZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ekh86GCK3i2FoaWrhfY1aTpAIUZTEs0eGndl7slfSls=;
        b=TIAMCtLBBjbnGKX9IFzKMYyoW4xOuLE8JYlZII3SJ2Kt/DMxbiT6ylnTf3QlI4lgkP
         RXO/qWmXE0PbAFeiIcl+FcKr+aSuHEw9uWMS+4KXAaqF8p7Y8QvvloU96bRM6Fr9VPLQ
         /guyBZLSVt/FIIp9/S5OW5HhgZn7/4B74POQ/wQgXVJJX+5sYyIXyS4zZYSDtv8LOU2V
         h0hObKbIcyQZWvLpH/wo40HKzo0fEL9boN+7ZtqwStG8OewoiUEiimdaEHDEBG/gwq63
         Vu5Z4/aNwK3qx7MaXyjZCsWM1JepoIi3RS7gaz6qt7JGIDl5cN3dctoCNmxh3BQQY5/9
         1pGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IFAOuO8R;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id m1si1096979qtc.2.2019.02.27.07.24.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 07:24:31 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IFAOuO8R;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id e17so6072762pgd.2
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 07:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ekh86GCK3i2FoaWrhfY1aTpAIUZTEs0eGndl7slfSls=;
        b=IFAOuO8Ra/mW8dTGFN6Ow5PG0t8czmzaJClDTw60JpX778OHE9iShYsMUwtPkCxWK5
         1jhzooatvD1DD4/5+M91bx9Y6YLjnTCC7kazT+DtyGWV/EcJ0ebp+b5U0NE/JujizpWM
         CwG1vuXfRjMhCddqqeLwajvg6iKriMgx1ieoTdosK7mJmca8msInwpNlt7WJqXTdIs6C
         shvfPU3reDbpDSW4LEJZcaMHKsFUO4tcfJh19K99ITGAacXXdm5aF7reKPVF4u7vtpOa
         JZIE3MpFLy2UX4BxQ0x+TcXMo66pBQYyNzeKYuWiRiSKNec9jsGnX580wJDVqotNFjHo
         QrPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ekh86GCK3i2FoaWrhfY1aTpAIUZTEs0eGndl7slfSls=;
        b=t+OT7Nu5CYAaiNp4s6G5tnGva33LDB5Bsrl02ka8bYtY6JRbRb3z6CD0utLmou1YF5
         uW/wK5dgEtiUxU80rhO9TP/zb0I3F7P2M9CyIeVhR3P9wj6uAbDUysNdAmx5FS1i585R
         a9p1EbqaNnv+CkNDOPG4e9SJf+DJDZ56LE9pbh24jY0Kkx20rd7/e3BiDPCRPXZyUdYx
         Jg8Dyl7qpCxWL4hFyLwr96xrjI7csSysnqoHjnMP02lChEAF/njtMKhS5+Hsnuzu3o2X
         UgrhnP9BUqyrf0tyJxSeKD0jmeQbFCv+fsKzRAinht+eXWrVNpBU3rAQvBISA0XvWQj7
         mzdw==
X-Gm-Message-State: AHQUAubqhJGcUDGtNrB/kXyn1d34AFNbG78rLDmOT10MZbIdD62BfL5j
	BrqTIhQlrAwYb4nYV37l8Brgh0NE
X-Received: by 2002:a65:51c3:: with SMTP id i3mr3430648pgq.45.1551281070042;
        Wed, 27 Feb 2019 07:24:30 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2513:287d:109c:a9b1:9a72:e62])
        by smtp.gmail.com with ESMTPSA id y6sm20458961pfy.87.2019.02.27.07.24.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 27 Feb 2019 07:24:29 -0800 (PST)
Date: Wed, 27 Feb 2019 20:54:22 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: speakup: line over 80 characters.
Message-ID: <20190227152422.GA4547@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/speakup/main.c             | 14 ++++++++------
 drivers/staging/speakup/speakup_decext.c   |  3 ++-
 drivers/staging/speakup/speakup_dectlk.c   |  3 ++-
 drivers/staging/speakup/speakup_soft.c     |  3 ++-
 drivers/staging/speakup/spk_priv_keyinfo.h |  6 ++++--
 drivers/staging/speakup/spk_ttyio.c        | 20 ++++++++++++--------
 drivers/staging/speakup/varhandlers.c      |  3 ++-
 7 files changed, 32 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 869f40e..778bbde 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -901,8 +901,8 @@ static int get_sentence_buf(struct vc_data *vc, int read_punc)
 	while (start < end) {
 		sentbuf[bn][i] = get_char(vc, (u_short *)start, &tmp);
 		if (i > 0) {
-			if (sentbuf[bn][i] == SPACE && sentbuf[bn][i - 1] == '.' &&
-			    numsentences[bn] < 9) {
+			if (sentbuf[bn][i] == SPACE && sentbuf[bn][i - 1] ==
+					'.' && numsentences[bn] < 9) {
 				/* Sentence Marker */
 				numsentences[bn]++;
 				sentmarks[bn][numsentences[bn]] =
@@ -1235,7 +1235,8 @@ int spk_set_key_info(const u_char *key_info, u_char *k_buffer)
 	key_data_len = (states + 1) * (num_keys + 1);
 	if (key_data_len + SHIFT_TBL_SIZE + 4 >= sizeof(spk_key_buf)) {
 		pr_debug("too many key_infos (%d over %u)\n",
-			 key_data_len + SHIFT_TBL_SIZE + 4, (unsigned int)(sizeof(spk_key_buf)));
+			 key_data_len + SHIFT_TBL_SIZE + 4,
+			 (unsigned int)(sizeof(spk_key_buf)));
 		return -EINVAL;
 	}
 	memset(k_buffer, 0, SHIFT_TBL_SIZE);
@@ -1249,8 +1250,8 @@ int spk_set_key_info(const u_char *key_info, u_char *k_buffer)
 	for (i = 1; i <= states; i++) {
 		ch = *cp1++;
 		if (ch >= SHIFT_TBL_SIZE) {
-			pr_debug("(%d) not valid shift state (max_allowed = %d)\n", ch,
-				 SHIFT_TBL_SIZE);
+			pr_debug("(%d) not valid shift state (max_allowed = %d)\n",
+				 ch, SHIFT_TBL_SIZE);
 			return -EINVAL;
 		}
 		spk_shift_table[ch] = i;
@@ -1258,7 +1259,8 @@ int spk_set_key_info(const u_char *key_info, u_char *k_buffer)
 	keymap_flags = *cp1++;
 	while ((ch = *cp1)) {
 		if (ch >= MAX_KEY) {
-			pr_debug("(%d), not valid key, (max_allowed = %d)\n", ch, MAX_KEY);
+			pr_debug("(%d), not valid key, (max_allowed = %d)\n",
+				 ch, MAX_KEY);
 			return -EINVAL;
 		}
 		spk_our_keys[ch] = cp1;
diff --git a/drivers/staging/speakup/speakup_decext.c b/drivers/staging/speakup/speakup_decext.c
index 3741c0f..ddbb7e9 100644
--- a/drivers/staging/speakup/speakup_decext.c
+++ b/drivers/staging/speakup/speakup_decext.c
@@ -192,7 +192,8 @@ static void do_catch_up(struct spk_synth *synth)
 				synth->io_ops->synth_out(synth, PROCSPEECH);
 			if (time_after_eq(jiffies, jiff_max)) {
 				if (!in_escape)
-					synth->io_ops->synth_out(synth, PROCSPEECH);
+					synth->io_ops->synth_out(synth,
+								 PROCSPEECH);
 				spin_lock_irqsave(&speakup_info.spinlock,
 						  flags);
 				jiffy_delta_val = jiffy_delta->u.n.value;
diff --git a/drivers/staging/speakup/speakup_dectlk.c b/drivers/staging/speakup/speakup_dectlk.c
index a144f28..dccb4ea 100644
--- a/drivers/staging/speakup/speakup_dectlk.c
+++ b/drivers/staging/speakup/speakup_dectlk.c
@@ -260,7 +260,8 @@ static void do_catch_up(struct spk_synth *synth)
 				synth->io_ops->synth_out(synth, PROCSPEECH);
 			if (time_after_eq(jiffies, jiff_max)) {
 				if (!in_escape)
-					synth->io_ops->synth_out(synth, PROCSPEECH);
+					synth->io_ops->synth_out(synth,
+								 PROCSPEECH);
 				spin_lock_irqsave(&speakup_info.spinlock,
 						  flags);
 				jiffy_delta_val = jiffy_delta->u.n.value;
diff --git a/drivers/staging/speakup/speakup_soft.c b/drivers/staging/speakup/speakup_soft.c
index 947c795..ec88be8 100644
--- a/drivers/staging/speakup/speakup_soft.c
+++ b/drivers/staging/speakup/speakup_soft.c
@@ -12,7 +12,8 @@
 #include <linux/unistd.h>
 #include <linux/miscdevice.h>	/* for misc_register, and SYNTH_MINOR */
 #include <linux/poll.h>		/* for poll_wait() */
-#include <linux/sched/signal.h> /* schedule(), signal_pending(), TASK_INTERRUPTIBLE */
+#include <linux/sched/signal.h>
+/* schedule(), signal_pending(), TASK_INTERRUPTIBLE */
 
 #include "spk_priv.h"
 #include "speakup.h"
diff --git a/drivers/staging/speakup/spk_priv_keyinfo.h b/drivers/staging/speakup/spk_priv_keyinfo.h
index cc99fcd..09995bc 100644
--- a/drivers/staging/speakup/spk_priv_keyinfo.h
+++ b/drivers/staging/speakup/spk_priv_keyinfo.h
@@ -61,11 +61,13 @@
 #define SPEAKUP_HELP		0x2d
 #define TOGGLE_CURSORING	0x2e
 #define READ_ALL_DOC		0x2f
-#define SPKUP_MAX_FUNC		0x30 /* one greater than the last func handler */
+#define SPKUP_MAX_FUNC		0x30
+/* one greater than the last func handler */
 #define SPK_KEY		0x80
 #define FIRST_EDIT_BITS	0x22
 #define FIRST_SET_VAR SPELL_DELAY
-#define VAR_START		0x40 /* increase if adding more than 0x3f functions */
+#define VAR_START 0x40
+/* increase if adding more than 0x3f functions */
 
 /* keys for setting variables, must be ordered same as the enum for var_ids */
 /* with dec being even and inc being 1 greater */
diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
index 005de00..8d73e6d 100644
--- a/drivers/staging/speakup/spk_ttyio.c
+++ b/drivers/staging/speakup/spk_ttyio.c
@@ -128,7 +128,8 @@ struct spk_io_ops spk_ttyio_ops = {
 };
 EXPORT_SYMBOL_GPL(spk_ttyio_ops);
 
-static inline void get_termios(struct tty_struct *tty, struct ktermios *out_termios)
+static inline void get_termios(struct tty_struct *tty,
+			       struct ktermios *out_termios)
 {
 	down_read(&tty->termios_rwsem);
 	*out_termios = tty->termios;
@@ -167,8 +168,9 @@ static int spk_ttyio_initialise_ldisc(struct spk_synth *synth)
 		tmp_termios.c_cflag |= CRTSCTS;
 		tty_set_termios(tty, &tmp_termios);
 		/*
-		 * check c_cflag to see if it's updated as tty_set_termios may not return
-		 * error even when no tty bits are changed by the request.
+		 * check c_cflag to see if it's updated as tty_set_termios
+		 * may not return error even when no tty bits are
+		 * changed by the request.
 		 */
 		get_termios(tty, &tmp_termios);
 		if (!(tmp_termios.c_cflag & CRTSCTS))
@@ -207,10 +209,11 @@ static int spk_ttyio_out(struct spk_synth *in_synth, const char ch)
 			/* No room */
 			return 0;
 		if (ret < 0) {
-			pr_warn("%s: I/O error, deactivating speakup\n", in_synth->long_name);
-			/* No synth any more, so nobody will restart TTYs, and we thus
-			 * need to do it ourselves.  Now that there is no synth we can
-			 * let application flood anyway
+			pr_warn("%s: I/O error, deactivating speakup\n",
+				in_synth->long_name);
+			/* No synth any more, so nobody will restart TTYs,
+			 * and we thus need to do it ourselves. Now that
+			 * there is no synth we can let application flood anyway
 			 */
 			in_synth->alive = 0;
 			speakup_start_ttys();
@@ -371,7 +374,8 @@ const char *spk_ttyio_synth_immediate(struct spk_synth *synth, const char *buff)
 	while ((ch = *buff)) {
 		if (ch == '\n')
 			ch = synth->procspeech;
-		if (tty_write_room(speakup_tty) < 1 || !synth->io_ops->synth_out(synth, ch))
+		if (tty_write_room(speakup_tty) <
+		    1 || !synth->io_ops->synth_out(synth, ch))
 			return buff;
 		buff++;
 	}
diff --git a/drivers/staging/speakup/varhandlers.c b/drivers/staging/speakup/varhandlers.c
index 1b54515..73d8d4c 100644
--- a/drivers/staging/speakup/varhandlers.c
+++ b/drivers/staging/speakup/varhandlers.c
@@ -238,7 +238,8 @@ int spk_set_num_var(int input, struct st_var_header *var, int how)
 	if (!var_data->u.n.out_str)
 		sprintf(cp, var_data->u.n.synth_fmt, (int)val);
 	else
-		sprintf(cp, var_data->u.n.synth_fmt, var_data->u.n.out_str[val]);
+		sprintf(cp, var_data->u.n.synth_fmt,
+			var_data->u.n.out_str[val]);
 	synth_printf("%s", cp);
 	return 0;
 }
-- 
2.7.4


