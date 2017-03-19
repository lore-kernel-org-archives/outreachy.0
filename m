X-GM-THRID: 6398937623266590720
X-Received: by 10.129.79.19 with SMTP id d19mr12109092ywb.19.1489900817990;
        Sat, 18 Mar 2017 22:20:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.52.145 with SMTP id b139ls2636238ioa.38.gmail; Sat, 18 Mar
 2017 22:20:17 -0700 (PDT)
X-Received: by 10.99.115.87 with SMTP id d23mr4982057pgn.112.1489900817125;
        Sat, 18 Mar 2017 22:20:17 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si2118301pfx.8.2017.03.18.22.20.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 22:20:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so7123211pgh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 22:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mY7CO5so1dTcNWZPB15HD73exm/GTDvwVK6fUw6i7CA=;
        b=TBF6mg4RizfukijLlCx2lBj7erCo5SfEjC78sp98xvwAc2eX/GVV03QvXlYCN+uldg
         vYWy/h7nEpadJMNV7M2I22GRNK7nvwrghQzZTCDnGlsJAiaINb1yZSQqzgYCSZXPHs0X
         CGcTsGNLKMcZAqyazxoSZl5uBq0RApnwt5EvGQcK8BjxCQRv41Qx6M6Cn+ZCH4Doduvr
         uVoqVESlHDSziastvi0C3G0ZytDZcVz8rhmlrDVjBlDm1nHXuV/xM6284a1ycPJ9wTTw
         TN86h+i31gv/4531TFGb/4m4l2m71VoX0KzESr0e1M+Kr8WOIiPjWREURy8Lrn3TA/JH
         LE7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mY7CO5so1dTcNWZPB15HD73exm/GTDvwVK6fUw6i7CA=;
        b=kjp/UkbtjlTQWhy4NARyQbZi8D0VNQXgAGE94X6j290K9UsMVEU1GCWR/siGd76nxl
         ib0W4cJivsoCeBEKSMovRlnWEKVFKhxYa+pJ2qu51YVRkQIIO7pDCOEAW7UV2OJbRsMl
         EDCibL19jFTXXRfSGD55Bwp41ypj3RuUlij+cIHHJ8HeMcPD5Uqcs5vYWQ4dW3YreRly
         Zrnbk6oklo72NKgSFpM4VmTfefFgQmjvr82O1m6GypSq3GJcfJSK/NWLEYRBeQwjYddo
         IQyGeyGIDnGQUUi6ZMdlWyWquDmWQ4tCQeq82N9QI0fkr664S/ezOP3clIxY5ErqqSpA
         GeQA==
X-Gm-Message-State: AFeK/H00JhhWn2i+nsvb6Kh2tDcpeq3y9Gok3YK6XUTXoxlWHwO3a5jNQS9zyBKAIn8SHw==
X-Received: by 10.84.238.22 with SMTP id u22mr17369817plk.137.1489900816927;
        Sat, 18 Mar 2017 22:20:16 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v9sm25389247pfg.133.2017.03.18.22.20.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 22:20:15 -0700 (PDT)
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
Subject: [PATCH v2 3/3] staging: speakup: Simplify "NULL" comparisons
Date: Sun, 19 Mar 2017 10:49:50 +0530
Message-Id: <20170319051950.14650-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170319051950.14650-1-arushisinghal19971997@gmail.com>
References: <20170319051950.14650-1-arushisinghal19971997@gmail.com>

Fixed coding style for null comparisons in speakup driver to be more
consistant with the rest of the kernel coding style.
Replaced 'x != NULL' with 'x' and 'x = NULL' with '!x'.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
 - no change

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


