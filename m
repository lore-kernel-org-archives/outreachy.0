X-GM-THRID: 6663027370941743104
X-Received: by 2002:a5b:cce:: with SMTP id e14mr3797548ybr.73.1551356951538;
        Thu, 28 Feb 2019 04:29:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e6cd:: with SMTP id d196ls1444632ybh.9.gmail; Thu, 28
 Feb 2019 04:29:10 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ib92Sf7aWJj8WpjUsxguRMUxobicZ/Yba1U8H1ll0tLl8SP4p7m40BE75imEGqgm1HOOzlX
X-Received: by 2002:a25:4e86:: with SMTP id c128mr3619328ybb.12.1551356950612;
        Thu, 28 Feb 2019 04:29:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551356950; cv=none;
        d=google.com; s=arc-20160816;
        b=OFgLYLD+UnkBFpeBQSGKdqIKH72tTtWr/VsMqCaDyRiUe1z3AlnwnS5rhQNcNFBN2w
         kiN6xN26MKj+Qdkqr0HfmtUWUF+fTX1hbX5mxqaebyUhrZFN9TcAEHkxxu6LrdcK5psi
         FyePqpKY0fb0sevQs2l/2WiGsNhHOmjItYW8rUCIehpsOFtSMQkJCIzb9qo2rDVxl5eB
         PwqDN1BAJZj3bTyxzNazXjFjRys3I7Xq1c9SUjCZAB8zTGQG/4KeHjfPkobjw1XM3nSV
         ITQlS/u9FCWv3RdCeiKWvcpCNShb+HdsHso0Y2OjtPxSa9A+OUMMKTTMjeBDuJENz5qZ
         WCiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=A/4I6QplAHtKEfW7Ml46uP7W596ETDjylQeDd7CcYE0=;
        b=mFHfuM7khziItbDbzen0OV0BGhc2zC+s1+//J2Vr6K8CMUQW9Dyoo7fa8oD3mr6ta4
         k9T+zWlim9iGuTDhNvD3u52HtGCYTUk2AtoiAujH9JBxbUc9C4ryGVIvSRx2Liv0ZCiI
         OZr29reGh3eTEW9hSHh9+O7RqyUr6ZvjI/Fx5cgmIB4pNQQs3wXEzq0PYiZR+hgKpt3n
         YHbPNzUZAkrOS1eeY0DtD7oJWcmUBR3eynAfk0y2F3UWuQ/xFF8eH7OyDBCxQtVBXv26
         G2peRBKnWBy6BGw6yCRIjvGRWE4aAB/zJmJPb+qn/HKj/pKpVyHr5AbWzJLipeYOCzm9
         BwBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pK+2P9Li;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x37si157789ybh.0.2019.02.28.04.29.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 04:29:10 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pK+2P9Li;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id q17so9656255pfh.10
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 04:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=A/4I6QplAHtKEfW7Ml46uP7W596ETDjylQeDd7CcYE0=;
        b=pK+2P9LidbgDqk4d9aC1FEoelqA7uJK/W0cys25QPdbyvpNACkjtNBvjdNB/FJi72+
         bOrcwIizJwU8VwbrQNTo2xgo3UHu8xe7pweXnTmjT8Ff3xolU1mAcaT2A/szhMyhGnuN
         +UPwfeJ58HsdWYiuMEbuQddBWMLey8ONFmFMjxZHPVU9lZKLFeD2WFSsk4G80UVolOGG
         u4mGULJR+UtMTDdsXSY25Ziki5E1FFcv47jAKXd0Xn0YbVEkwiMSuKerAADA9dtjG+jb
         P6gbR2LrY8WtXqkcydKpDJR/8nqY/8xCHp5jV4f2XPaubjZVqW68N1RolQ/5YIrc2wdC
         qvGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=A/4I6QplAHtKEfW7Ml46uP7W596ETDjylQeDd7CcYE0=;
        b=DkK0NStssD6PwzjSQhC21EZdEStWEqwWF/mpC8ndQM9vXLebTdFtLGvF3NhXMwGSKF
         M0duVhQ6aMelKI8hWHkMlPiBDFrI4Jx32OFSlRsoU73tJtf4a24zCoBDXGMYrHF/BB0G
         rlsE45IUJrI7iP1IR9R4W8iG8hitYkli7jsXCPYnW3B2Bwm/8SDI1ogt7e2V0XrnPxsX
         qCC8SurouHycua2svjLGJoa20EF3OPylBbsFhsSPSPamfCzT5M2oF5Jb6a1dZxn7AyPI
         jRR/qnmV7IUYEKgWYIPo9uvyVXlXZZs+JlDXS2IW5fKKrFdnk2OZH14hEoGHDv3yV21P
         iAbg==
X-Gm-Message-State: AHQUAubsBK7a07An2f1i5B1t87ml4yVDgxSQkMAiglHnu/7O9MS8b3pg
	Owm6zV+/wpsHWPNedXq1tE0=
X-Received: by 2002:a62:3990:: with SMTP id u16mr7199504pfj.80.1551356949681;
        Thu, 28 Feb 2019 04:29:09 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2392:f7f6:bc93:393b:1b98:4598])
        by smtp.gmail.com with ESMTPSA id h63sm48951038pfd.148.2019.02.28.04.29.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Feb 2019 04:29:09 -0800 (PST)
Date: Thu, 28 Feb 2019 17:59:04 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	Michael Kelley <mikelley@microsoft.com>,
	Bhagyashri Dighole <digholebhagyashri@gmail.com>
Subject: [PATCH v2 1/1] staging: speakup: fix line over 80 characters.
Message-ID: <20190228122904.GA16782@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v2:
  - Make the code more readable.

 drivers/staging/speakup/main.c             | 13 ++++++++-----
 drivers/staging/speakup/speakup_decext.c   |  3 ++-
 drivers/staging/speakup/speakup_dectlk.c   |  3 ++-
 drivers/staging/speakup/speakup_soft.c     |  4 +++-
 drivers/staging/speakup/spk_priv_keyinfo.h |  9 +++++++--
 drivers/staging/speakup/spk_ttyio.c        | 20 ++++++++++++--------
 drivers/staging/speakup/varhandlers.c      |  3 ++-
 7 files changed, 36 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 869f40e..57ce444 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -901,7 +901,8 @@ static int get_sentence_buf(struct vc_data *vc, int read_punc)
 	while (start < end) {
 		sentbuf[bn][i] = get_char(vc, (u_short *)start, &tmp);
 		if (i > 0) {
-			if (sentbuf[bn][i] == SPACE && sentbuf[bn][i - 1] == '.' &&
+			if (sentbuf[bn][i] == SPACE &&
+			    sentbuf[bn][i - 1] == '.' &&
 			    numsentences[bn] < 9) {
 				/* Sentence Marker */
 				numsentences[bn]++;
@@ -1235,7 +1236,8 @@ int spk_set_key_info(const u_char *key_info, u_char *k_buffer)
 	key_data_len = (states + 1) * (num_keys + 1);
 	if (key_data_len + SHIFT_TBL_SIZE + 4 >= sizeof(spk_key_buf)) {
 		pr_debug("too many key_infos (%d over %u)\n",
-			 key_data_len + SHIFT_TBL_SIZE + 4, (unsigned int)(sizeof(spk_key_buf)));
+			 key_data_len + SHIFT_TBL_SIZE + 4,
+			 (unsigned int)(sizeof(spk_key_buf)));
 		return -EINVAL;
 	}
 	memset(k_buffer, 0, SHIFT_TBL_SIZE);
@@ -1249,8 +1251,8 @@ int spk_set_key_info(const u_char *key_info, u_char *k_buffer)
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
@@ -1258,7 +1260,8 @@ int spk_set_key_info(const u_char *key_info, u_char *k_buffer)
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
index 947c795..edff6ce 100644
--- a/drivers/staging/speakup/speakup_soft.c
+++ b/drivers/staging/speakup/speakup_soft.c
@@ -12,7 +12,9 @@
 #include <linux/unistd.h>
 #include <linux/miscdevice.h>	/* for misc_register, and SYNTH_MINOR */
 #include <linux/poll.h>		/* for poll_wait() */
-#include <linux/sched/signal.h> /* schedule(), signal_pending(), TASK_INTERRUPTIBLE */
+
+/* schedule(), signal_pending(), TASK_INTERRUPTIBLE */
+#include <linux/sched/signal.h>
 
 #include "spk_priv.h"
 #include "speakup.h"
diff --git a/drivers/staging/speakup/spk_priv_keyinfo.h b/drivers/staging/speakup/spk_priv_keyinfo.h
index cc99fcd..1f789bd 100644
--- a/drivers/staging/speakup/spk_priv_keyinfo.h
+++ b/drivers/staging/speakup/spk_priv_keyinfo.h
@@ -61,11 +61,16 @@
 #define SPEAKUP_HELP		0x2d
 #define TOGGLE_CURSORING	0x2e
 #define READ_ALL_DOC		0x2f
-#define SPKUP_MAX_FUNC		0x30 /* one greater than the last func handler */
+
+/* one greater than the last func handler */
+#define SPKUP_MAX_FUNC		0x30
+
 #define SPK_KEY		0x80
 #define FIRST_EDIT_BITS	0x22
 #define FIRST_SET_VAR SPELL_DELAY
-#define VAR_START		0x40 /* increase if adding more than 0x3f functions */
+
+/* increase if adding more than 0x3f functions */
+#define VAR_START		0x40
 
 /* keys for setting variables, must be ordered same as the enum for var_ids */
 /* with dec being even and inc being 1 greater */
diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
index 005de00..0057eb9 100644
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
+			 * and we thus need to do it ourselves.  Now that there
+			 * is no synth we can let application flood anyway
 			 */
 			in_synth->alive = 0;
 			speakup_start_ttys();
@@ -371,7 +374,8 @@ const char *spk_ttyio_synth_immediate(struct spk_synth *synth, const char *buff)
 	while ((ch = *buff)) {
 		if (ch == '\n')
 			ch = synth->procspeech;
-		if (tty_write_room(speakup_tty) < 1 || !synth->io_ops->synth_out(synth, ch))
+		if (tty_write_room(speakup_tty) < 1 ||
+		    !synth->io_ops->synth_out(synth, ch))
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


