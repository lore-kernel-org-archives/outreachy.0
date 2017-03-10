X-GM-THRID: 6394528999032225792
X-Received: by 10.99.156.18 with SMTP id f18mr8170975pge.41.1489178532557;
        Fri, 10 Mar 2017 12:42:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.3 with SMTP id f3ls9469961otc.32.gmail; Fri, 10 Mar
 2017 12:42:12 -0800 (PST)
X-Received: by 10.13.236.12 with SMTP id v12mr8662470ywe.49.1489178532227;
        Fri, 10 Mar 2017 12:42:12 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si1940333pfa.6.2017.03.10.12.42.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 12:42:12 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so6930541pge.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 12:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CGZ7N7pIu6pmauunvNYrpTE9dEVVyYogxHZWq8Jsba0=;
        b=N5U14g74CE8d99FmVqcUJyLDDu8EPpTllYUOVtlbsgiBKbD9OsD8cOPK+3+o5nESd0
         rvNtIAz4OvepbcxxytfOAi3hgaMAvk7lUhw8ecibGaVuOcZMeKfuyfVv6/NYc2K4TqAk
         v4gA7Dcz7J4wVFTYIX/TMmu+uzVsHEo8X8EAPEwHfZXKuxwQpBLi2rd9vHgQ8kTMr2Gp
         TdRvZB6M518s1gKXUkflBJLlih5/+mpNK5fRowVXzWG40MMYZQQ3Vr/rWMbrRYxPMAdY
         d1XygckcVYqHIQuUkU7BVRd6i7HtUizMTOxOtYkehdzbViGdQFK5POeOAgpmbTwHMKXk
         IRjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CGZ7N7pIu6pmauunvNYrpTE9dEVVyYogxHZWq8Jsba0=;
        b=SDeX7iS760wWHRNvxKGWxmsQAD3/zXCZfpezHy78+zQD9ATz6zEtXlKe6k+BcA15+O
         MBFJGosb8ORrl2OWLUNdpBBOy2n/O0nKFaEsuG/s4QBC/JUKqgiXTtZdBEFBDlbX/RtD
         KeZSEcLfdbraB3TcGN2x5DsJqBV8tsIV5qI+cHgzG0toS6aEnzJVdc0vE8UPY7gxgTi6
         gGiv64Hi7ITzUZlfBONE5zEe2DZxrgomp+IZmfrLaAeVdi0AdDxlBURlGQBRVSR/ME4e
         beyrapOoUS9dmWDyl3Q1jMFD5expZYrCI7NQ799qp9ygA3ROy3aEM0VLOAcyfVVAf0YA
         pZsw==
X-Gm-Message-State: AMke39kQ99tCavTgvtj7TTF5d7o0cl9bIleqnQuyqOqtSNmfIrbpTZIlqxOc4jqR97MQ0Q==
X-Received: by 10.84.195.129 with SMTP id j1mr27714875pld.88.1489178531971;
        Fri, 10 Mar 2017 12:42:11 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u82sm20317455pfd.7.2017.03.10.12.42.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 12:42:10 -0800 (PST)
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
Subject: [PATCH 2/2] staging: speakup: fixes braces {} should be used on all arms of this statement
Date: Sat, 11 Mar 2017 02:11:55 +0530
Message-Id: <20170310204155.6367-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170310204155.6367-1-arushisinghal19971997@gmail.com>
References: <20170310204155.6367-1-arushisinghal19971997@gmail.com>

This patch fixes the checks reported by checkpatch.pl
for braces {} should be used on all arms of this statement.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/main.c           |  3 ++-
 drivers/staging/speakup/speakup_decext.c |  6 +++---
 drivers/staging/speakup/speakup_decpc.c  |  6 +++---
 drivers/staging/speakup/speakup_dectlk.c |  6 +++---
 drivers/staging/speakup/varhandlers.c    | 12 +++++++-----
 5 files changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 3ecf2e41bf1f..6786cfab7460 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -405,8 +405,9 @@ static void say_attributes(struct vc_data *vc)
 	if (bg > 7) {
 		synth_printf(" %s ", spk_msg_get(MSG_ON_BLINKING));
 		bg -= 8;
-	} else
+	} else {
 		synth_printf(" %s ", spk_msg_get(MSG_ON));
+	}
 	synth_printf("%s\n", spk_msg_get(MSG_COLORS_START + bg));
 }
 
diff --git a/drivers/staging/speakup/speakup_decext.c b/drivers/staging/speakup/speakup_decext.c
index 34e03c6b1ae5..77a935658af5 100644
--- a/drivers/staging/speakup/speakup_decext.c
+++ b/drivers/staging/speakup/speakup_decext.c
@@ -194,11 +194,11 @@ static void do_catch_up(struct spk_synth *synth)
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
 				spk_serial_out(PROCSPEECH);
 			if (time_after_eq(jiffies, jiff_max)) {
diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
index afe2da34a3f7..100c65b38860 100644
--- a/drivers/staging/speakup/speakup_decpc.c
+++ b/drivers/staging/speakup/speakup_decpc.c
@@ -409,11 +409,11 @@ static void do_catch_up(struct spk_synth *synth)
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
index e0f2d6121890..d7d5e0e6e297 100644
--- a/drivers/staging/speakup/speakup_dectlk.c
+++ b/drivers/staging/speakup/speakup_dectlk.c
@@ -259,11 +259,11 @@ static void do_catch_up(struct spk_synth *synth)
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
 				spk_serial_out(PROCSPEECH);
 			if (time_after_eq(jiffies, jiff_max)) {
diff --git a/drivers/staging/speakup/varhandlers.c b/drivers/staging/speakup/varhandlers.c
index cc984196020f..066f8461f4d3 100644
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


