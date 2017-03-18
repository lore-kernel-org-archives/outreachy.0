X-GM-THRID: 6398937623266590720
X-Received: by 10.99.45.194 with SMTP id t185mr11254292pgt.114.1489868782879;
        Sat, 18 Mar 2017 13:26:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.184.8 with SMTP id i8ls2927260iof.24.gmail; Sat, 18 Mar
 2017 13:26:22 -0700 (PDT)
X-Received: by 10.99.95.3 with SMTP id t3mr1412556pgb.24.1489868782329;
        Sat, 18 Mar 2017 13:26:22 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id g82si1924853pfb.5.2017.03.18.13.26.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 13:26:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id p189so6845457pfp.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 13:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZM/Y7+8tmrwzIrcHdPXAn6EkVnWpfM6G247QpBLNSIw=;
        b=S+ztp5e9fsDAq0fAiV4Z9m2gZsCNBRn+oIS8ZQS8lRyZ9LqiB3FtW8NBrjaR7BTj7z
         UgVOzQXQfdR2Vy+bjP6eh/Nh1kXZv7bg0czDBuZghJD26KObsIs5HDDCKD4cywf9vp5q
         r2eET2tSU8YOUVS4nK6gCLcDOPwdATrtSFzreagt8xF6W0FlEtcLhcmSukfdmO/WRyEO
         IiW4aI5cB+aRAGXTf3jETL7bALYNviAuphR+fsYg313it/npIV7174ll4uIk5b0pGzYJ
         Xg2y31qQelJsttk0khkv83bkYuQy4xYChNaWlx0NMcrIYK2tXemzoKOucmitrLYWvlKN
         3qWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ZM/Y7+8tmrwzIrcHdPXAn6EkVnWpfM6G247QpBLNSIw=;
        b=kMlKE6HQdjjcc8MM9kk7O6GAetOzuwcX2At7IsqxQUhaNjUMfLniwhwMC9iad5+IOt
         wuCxdcv40OxLj2VLDuQaSB9ZNwXo1fJQcQv4xyGiKD/HvGZX4WNMvTm1cjOjb7rHCwZM
         QFtxtBWI8QwEl313p1yoUvOnZhULIg1hON9Jl4tUfuVQKIk0uoyFzYZ10K/+cERL8rPU
         PAJl/Q3Gh5u96QyjTDC4wzLI5/c6sRi/ZcsiQpLivRYuM83IJ1ykCgz6oVrXFJiaZ1jH
         mWlAkeXtlTNG6uSHOUv9q14Wf1gHaIP2liPLjSd/NSNpbbJRnxR76nUVEStq3x/jC4Do
         /A3g==
X-Gm-Message-State: AFeK/H1LwhzxzENvYUhzNm6uE++3vKbxLI5Tmvhot2gapdXDhQGp9exKrlYgm8ewBXKOoA==
X-Received: by 10.84.172.193 with SMTP id n59mr28869606plb.63.1489868782110;
        Sat, 18 Mar 2017 13:26:22 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x21sm24422470pgf.15.2017.03.18.13.26.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 13:26:20 -0700 (PDT)
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
Subject: [PATCH 3/3] staging: speakup: Simplify "NULL" comparisons
Date: Sun, 19 Mar 2017 01:55:59 +0530
Message-Id: <20170318202559.10886-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170318202559.10886-1-arushisinghal19971997@gmail.com>
References: <20170318202559.10886-1-arushisinghal19971997@gmail.com>

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


