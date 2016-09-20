X-GM-THRID: 6332315370185031680
X-Received: by 10.129.5.216 with SMTP id 207mr16145297ywf.6.1474357258369;
        Tue, 20 Sep 2016 00:40:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.107.207 with SMTP id v198ls3219463itc.12.gmail; Tue, 20 Sep
 2016 00:40:58 -0700 (PDT)
X-Received: by 10.66.158.131 with SMTP id wu3mr1407955pab.39.1474357258000;
        Tue, 20 Sep 2016 00:40:58 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si5963141pfw.1.2016.09.20.00.40.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:40:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so568704pfj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 00:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wkDCxbA5yMZCMswdBdCYlQYBI4plD+wTywU6eNc3qd4=;
        b=toh5xW+40L3hmK8KMTEN/IchySMMP01qdqg6n7LTDS4QvpytUAGybGW6pbb0QmPo6+
         LEE8PXQogo9+8YT21OlOZvZb+qtxaSSoKg7b5T4YoOfPnc+G20TVQooU3bgtYXWjxeau
         OGU/EsQhrJ5PgH769we/DXpMcjmr6wqyCSXrjdxUtfgfy5sxH49ftrY9xgujxkk1Pnf+
         fhGVXePctFLW5wDfvM/k9FUk2bh5aj4fgKhrp5K7HSwJ9H3V1NEXTUUQSdSao9/SXTlQ
         ajceVzaRfTH7/disgjVZlc7rC2o4nkXhCeyZhJ0ab6rmsK6uUJ2Zqz4MRxF2o1ZvmIK3
         ztSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wkDCxbA5yMZCMswdBdCYlQYBI4plD+wTywU6eNc3qd4=;
        b=iG57mYKea2/da3eXWy7u3tmeU2XhLH/JkEGc9j/OSs9vBBEDE6+YTowY9G9374NMaf
         x66kjkBMWxKXVl3EyMlT+JKdtpKYAgV4UlK/ZzOR4bKMRKS/CTMUNgFWGIu5ErerAI2Q
         F0LnzZkzMjZn3z2My8P/Wnm04sb2LOA0mqiPtnjrDpIaU1FrL5hbyj6B7V2Tize9GKwJ
         2URkAy+uMYWmcrLLDoEuPdEU5uK0OBhB37fRGXGrwtI4QZ9wL+LkWP25LYyTEzN8ypu8
         BLJv+Ygk8zHP3px/oEiDbMzWZP6U1b+vb8ie9jLxnGH80UegAZtxyCeIimFYkBNOXAC+
         PtGQ==
X-Gm-Message-State: AE9vXwMJMMNtbQEpImtNAOzqcbb0LYWSmVAnJBEnOvVTs9Nkwfu0SVK1W5FY3pYVRDOaSw==
X-Received: by 10.98.196.206 with SMTP id h75mr45720362pfk.156.1474357257638;
        Tue, 20 Sep 2016 00:40:57 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.179.109])
        by smtp.gmail.com with ESMTPSA id q14sm57376998pfg.63.2016.09.20.00.40.55
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 00:40:57 -0700 (PDT)
Date: Tue, 20 Sep 2016 13:11:39 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] Staging: ks7010: michael_mic: Use "foo *bar" instead of
 "foo * bar".
Message-ID: <fbc008892c6fa8bf4c40bbe7c37c50263f1073bd.1474355964.git.bankarsandhya512@gmail.com>
References: <cover.1474355964.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474355964.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/ks7010/michael_mic.c |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/ks7010/michael_mic.c b/drivers/staging/ks7010/michael_mic.c
index d332678..78ae2b8 100644
--- a/drivers/staging/ks7010/michael_mic.c
+++ b/drivers/staging/ks7010/michael_mic.c
@@ -37,7 +37,7 @@ do {					\
 } while (0)
 
 static
-void MichaelInitializeFunction(struct michel_mic_t *Mic, uint8_t * key)
+void MichaelInitializeFunction(struct michel_mic_t *Mic, uint8_t *key)
 {
 	// Set the key
 	Mic->K0 = getUInt32(key, 0);
@@ -60,7 +60,7 @@ do{								\
 }while(0)
 
 static
-void MichaelAppend(struct michel_mic_t *Mic, uint8_t * src, int nBytes)
+void MichaelAppend(struct michel_mic_t *Mic, uint8_t *src, int nBytes)
 {
 	int addlen;
 	if (Mic->nBytesInM) {
@@ -94,7 +94,7 @@ void MichaelAppend(struct michel_mic_t *Mic, uint8_t * src, int nBytes)
 }
 
 static
-void MichaelGetMIC(struct michel_mic_t *Mic, uint8_t * dst)
+void MichaelGetMIC(struct michel_mic_t *Mic, uint8_t *dst)
 {
 	uint8_t *data = Mic->M;
 	switch (Mic->nBytesInM) {
@@ -122,9 +122,9 @@ void MichaelGetMIC(struct michel_mic_t *Mic, uint8_t * dst)
 	MichaelClear(Mic);
 }
 
-void MichaelMICFunction(struct michel_mic_t *Mic, uint8_t * Key,
-			uint8_t * Data, int Len, uint8_t priority,
-			uint8_t * Result)
+void MichaelMICFunction(struct michel_mic_t *Mic, uint8_t *Key,
+			uint8_t *Data, int Len, uint8_t priority,
+			uint8_t *Result)
 {
 	uint8_t pad_data[4] = { priority, 0, 0, 0 };
 	// Compute the MIC value
-- 
1.7.1


