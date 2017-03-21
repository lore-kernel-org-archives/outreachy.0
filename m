X-GM-THRID: 6399861794390671360
X-Received: by 10.99.113.13 with SMTP id m13mr19217930pgc.162.1490083955020;
        Tue, 21 Mar 2017 01:12:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.73.132 with SMTP id g4ls7796481otf.39.gmail; Tue, 21 Mar
 2017 01:12:34 -0700 (PDT)
X-Received: by 10.129.162.10 with SMTP id z10mr15965695ywg.167.1490083954627;
        Tue, 21 Mar 2017 01:12:34 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 190si1860446pfv.3.2017.03.21.01.12.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:12:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 79so15333182pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZM/Y7+8tmrwzIrcHdPXAn6EkVnWpfM6G247QpBLNSIw=;
        b=lSkRBMjhqbR9TRDNDfSfJUoYFAU30U1d7NYE/mT9NRwk7VO4xiNRgaTF1x92cfGv0B
         3k02vv61CM2CxqHaB19HEc5FUKvAhy894b6OVuWCmzbDdmzp995CW6+++f740EIkJ40C
         +aDqTSip5hFnmf4g0qJDWDn1fQS6LNhvdVqx6SNi0maoXYZF3ESCYS54ZD0KD/Xr770O
         VQ1tgK6NVdepK1/tWvv4GlvdcAy5qZ57Wiypr1HNQpDSdyY9fdzE+SO3ixp7v9B1MNR/
         6e3LfI3IuWNuGNKdXmmmEPsLLSKxsBXAJvcYltDzsKeqzhvzGupfe3ajKwotI0atEZbp
         xaOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ZM/Y7+8tmrwzIrcHdPXAn6EkVnWpfM6G247QpBLNSIw=;
        b=ppbdToxj7SOGzYFX4SY20RVw1HhlTCxBnQk3hnD+iYyzttIdcMdzWRwKANno73p9UJ
         qCH9N7HCEWtsjnN1ah2HdZBU/DXTCpRo/m2APWCtWz7qlNeYru6jLe3avS4Te9Ul1BZ5
         qfLJxa8RaKzYoS4nEKFeyICW5QA/R0JaLyVgpqdgkfFg3qsKKWJXhngaTAvnKlWrKOIk
         +nFBxH4kEmXLoID/W7fvhHzIuotFOZBX5Hqarx5GeI4CHk/oXnWWZ1f5+VEqvRaFNspi
         MKCWcMGjJxpk+QZsKxPjzJkWRkPlFsqwfpjbUdbVCg5FaoUkkBNIWApL4NaQNJvcRKF+
         tT4g==
X-Gm-Message-State: AFeK/H0qAUVn9BFGgfulI0X05i2er/VjjWJ3EdhpbXQ6SaXUxxeHvv7hHiLBdRGTkPzKgQ==
X-Received: by 10.99.225.5 with SMTP id z5mr35708380pgh.145.1490083954384;
        Tue, 21 Mar 2017 01:12:34 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h14sm38038344pgn.41.2017.03.21.01.12.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:12:33 -0700 (PDT)
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
Subject: [PATCH 3/7] staging: speakup: Simplify "NULL" comparisons
Date: Tue, 21 Mar 2017 13:42:10 +0530
Message-Id: <20170321081214.25231-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321081214.25231-1-arushisinghal19971997@gmail.com>
References: <20170321081214.25231-1-arushisinghal19971997@gmail.com>

Fixed coding style for null comparisons in speakup driver to be more
consistant with the rest of the kernel coding style.
Replaced 'x != NULL' with 'x' and 'x = NULL' with '!x'.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/selection.c   | 2 +-
 drivers/staging/speakup/varhandlers.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/selection.c b/drivers/staging/speakup/selection.c
index afd9a446a06f..4417c00e68a7 100644
--- a/drivers/staging/speakup/selection.c
+++ b/drivers/staging/speakup/selection.c
@@ -175,7 +175,7 @@ static struct speakup_paste_work speakup_paste_work = {
 
 int speakup_paste_selection(struct tty_struct *tty)
 {
-	if (cmpxchg(&speakup_paste_work.tty, NULL, tty) != NULL)
+	if (cmpxchg(&speakup_paste_work.tty, NULL, tty))
 		return -EBUSY;
 
 	tty_kref_get(tty);
diff --git a/drivers/staging/speakup/varhandlers.c b/drivers/staging/speakup/varhandlers.c
index cc984196020f..5910fe0b1365 100644
--- a/drivers/staging/speakup/varhandlers.c
+++ b/drivers/staging/speakup/varhandlers.c
@@ -98,7 +98,7 @@ void speakup_register_var(struct var_t *var)
 		}
 	}
 	p_header = var_ptrs[var->var_id];
-	if (p_header->data != NULL)
+	if (p_header->data)
 		return;
 	p_header->data = var;
 	switch (p_header->var_type) {
@@ -210,11 +210,11 @@ int spk_set_num_var(int input, struct st_var_header *var, int how)
 		return -ERANGE;
 
 	var_data->u.n.value = val;
-	if (var->var_type == VAR_TIME && p_val != NULL) {
+	if (var->var_type == VAR_TIME && p_val) {
 		*p_val = msecs_to_jiffies(val);
 		return 0;
 	}
-	if (p_val != NULL)
+	if (p_val)
 		*p_val = val;
 	if (var->var_id == PUNC_LEVEL) {
 		spk_punc_mask = spk_punc_masks[val];
-- 
2.11.0


