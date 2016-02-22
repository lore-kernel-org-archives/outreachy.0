X-GM-THRID: 6254254394304364544
X-Received: by 10.28.172.194 with SMTP id v185mr1525268wme.5.1456182076006;
        Mon, 22 Feb 2016 15:01:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.131 with SMTP id q125ls407383lfe.69.gmail; Mon, 22 Feb
 2016 15:01:15 -0800 (PST)
X-Received: by 10.112.29.69 with SMTP id i5mr3657868lbh.15.1456182075257;
        Mon, 22 Feb 2016 15:01:15 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x229.google.com (mail-wm0-x229.google.com. [2a00:1450:400c:c09::229])
        by gmr-mx.google.com with ESMTPS id s141si1282921wmd.1.2016.02.22.15.01.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 15:01:15 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) client-ip=2a00:1450:400c:c09::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x229.google.com with SMTP id g62so196419423wme.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 15:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=d1KZmWnONJJa5LvP4KIs/aa+INj3vyHZhCfyyKR3zOo=;
        b=zxADO5u4q4G/VEJyhAFzq621ZC8aS42BR7GEo6JwSRmGyprgPouZ2UrfuBOCBeMRte
         f6mojTAPK5XgKznCkoXyPkExZU3RQZWm6wZYY2nKb2nVW6NT3xuSD5C6nOo7SnlHsrzG
         1L9WJ/RWAS7U+waRD6VvC/Q4LpaLCFXDRHSLtCQGTc1hULuOX9CaQVG/stUDRvkqv+b4
         kjKJsedtwvbbcyR1NA+HaGcTSc1z1DX8zq5zkBigwzcIiYepDF5pzVFoEkn5K3TS2HaF
         Eph5vrVmq+sNwUcnosHqiebyFkbdzJv5sICbS8W2hq6gQbKjbJ1iwRwum4fm0qpU///+
         EN+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=d1KZmWnONJJa5LvP4KIs/aa+INj3vyHZhCfyyKR3zOo=;
        b=lGG+MVRmyM2J8yuwVCNF024oaEs0RarJ5qplrrrIZk7MX/nQ3LHck6gItBa/uL0QzF
         Poefpujb4hWg8tWDv4uNh6bPN2eniRJZnIRl5H0lmfN0a74dAMlaMTHudC6434hqMkR2
         rsmRqluPF2obWCkHwmIo5ZV3X4hwmLpSXRu3CUyxW6KYMnGfwSBIusP0tmg+K8XI+rHz
         W44QgjAZbVhfbe9BDIt5Fye00eaMZUy3FcvpO2KUb33eNF9rh7qu9HlCj9yNJMCl8CKj
         FETgdsQZer/w/b0jEJGEz/Xh4KurgyxOnkkC/mROfq6/Ssb/DGMlE57Raz9jBYMcIBaE
         fYBA==
X-Gm-Message-State: AG10YORDB3kb7gm62PTmyKEPlNVjSDjnrmtqySSo80GgTk4tyyuCyYWca5bBdAhQle/lLw==
X-Received: by 10.28.1.9 with SMTP id 9mr14119566wmb.97.1456182075123;
        Mon, 22 Feb 2016 15:01:15 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.228.232])
        by smtp.gmail.com with ESMTPSA id d9sm26671674wjf.43.2016.02.22.15.01.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 15:01:14 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: ste_rmi4: Add space around '/'
Date: Tue, 23 Feb 2016 01:01:07 +0200
Message-Id: <1456182067-6264-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '/'. Problem found using checkpatch.pl
CHECK: spaces preferred around that '/' (ctx:VxV)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
index 824d460..0d8b689 100644
--- a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
+++ b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
@@ -334,7 +334,7 @@ static int synpatics_rmi4_touchpad_report(struct synaptics_rmi4_data *pdata,
 	 *	10 = finger present but data may not be accurate,
 	 *	11 = reserved for product use.
 	 */
-	finger_registers	= (fingers_supported + 3)/4;
+	finger_registers	= (fingers_supported + 3) / 4;
 	data_base_addr		= rfi->fn_desc.data_base_addr;
 	retval = synaptics_rmi4_i2c_block_read(pdata, data_base_addr, values,
 							finger_registers);
@@ -350,7 +350,7 @@ static int synpatics_rmi4_touchpad_report(struct synaptics_rmi4_data *pdata,
 	data_reg_blk_size = rfi->size_of_data_register_block;
 	for (finger = 0; finger < fingers_supported; finger++) {
 		/* determine which data byte the finger status is in */
-		reg = finger/4;
+		reg = finger / 4;
 		/* bit shift to get finger's status */
 		finger_shift	= (finger % 4) * 2;
 		finger_status	= (values[reg] >> finger_shift) & 3;
@@ -566,7 +566,7 @@ static int synpatics_rmi4_touchpad_detect(struct synaptics_rmi4_data *pdata,
 	}
 	pdata->fingers_supported = rfi->num_of_data_points;
 	/* Need to get interrupt info for handling interrupts */
-	rfi->index_to_intr_reg = (interruptcount + 7)/8;
+	rfi->index_to_intr_reg = (interruptcount + 7) / 8;
 	if (rfi->index_to_intr_reg != 0)
 		rfi->index_to_intr_reg -= 1;
 	/*
-- 
1.9.1


