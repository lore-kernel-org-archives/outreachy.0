X-GM-THRID: 6399916000486096896
X-Received: by 10.13.228.196 with SMTP id n187mr9306232ywe.87.1490096576273;
        Tue, 21 Mar 2017 04:42:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls2498979ote.1.gmail; Tue, 21 Mar 2017
 04:42:55 -0700 (PDT)
X-Received: by 10.157.16.114 with SMTP id o47mr15289010oto.50.1490096575929;
        Tue, 21 Mar 2017 04:42:55 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a3si3336157pfb.2.2017.03.21.04.42.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 04:42:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p189so16063419pfp.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 04:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZM/Y7+8tmrwzIrcHdPXAn6EkVnWpfM6G247QpBLNSIw=;
        b=ItwIpJ0sHApiPI5SFCxQzL8dV0Fh/lYSkuGFCUDokaE5AhS178hXQPauzW4UQ3LwEi
         6O6Zpy9YBPGfSTHCujQzG3DhWBg/LSMyCOpB3ffsZSCZ4nJjHGfGIXHLXn9HWmfQlNFm
         8jOZJ6t2etASX1CNV4X533k3V/XElRLCOekH9aDqCKbs7ZaQja74h6j8ALsj/6TsE63B
         RKr5q6kM7EL0H6E46oWTe5fs4tjllaUcFPKOxAAeDkAG7k40rjBJqghVzFm5P/LiM9z+
         nXdrIYjeogXaaBXzOkY+C1yqwKR2PD6SQBl/9eGW5s0iUAwUn6BYaydEeZ/wl19VpZoP
         vZ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ZM/Y7+8tmrwzIrcHdPXAn6EkVnWpfM6G247QpBLNSIw=;
        b=gj6IxPhTdnbVhD9QXjw/8P2g/GOU3wIGxaQ5z39XwyIm8P77pU6t6wxV1pTX4Lwatr
         +Q0YXuiywAIVWZTGE/U6qggxXdvIbWaL0KmNWmjPeHNWuy0CNq5DbYM/BGP6kEn+zDU6
         E35Vq803A2br7bKmsFPj7zTQZJWJ+ID5O+HXJ92na7689oACk6vXStj1Z3mMft6tKBwn
         60YlNAIiWz8piyA/J3Sb1W6BUBF7ZRKxQeuBBL8CDWP7BagjgJI8WwXh8cFg4HoF15EQ
         ZNuUCJuxvmTXPA39s8KqxIriMv8723lWQhqNUSV93mN4QrljrqoDtzIx2KyrdIBEp4va
         xOrw==
X-Gm-Message-State: AFeK/H3tJODdwdtGAI6n4r0u9orHJsVZT8yUCpZHo35eh4QAQdyA6uBxmIs3hzBCbWGDVg==
X-Received: by 10.99.247.83 with SMTP id f19mr3688343pgk.158.1490096575685;
        Tue, 21 Mar 2017 04:42:55 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x21sm39186816pfa.71.2017.03.21.04.42.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 04:42:54 -0700 (PDT)
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
Subject: [PATCH 03/11] staging: speakup: Simplify "NULL" comparisons
Date: Tue, 21 Mar 2017 17:12:27 +0530
Message-Id: <20170321114235.1638-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>

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


