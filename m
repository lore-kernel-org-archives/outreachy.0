X-GM-THRID: 6329968789142110208
X-Received: by 10.200.37.20 with SMTP id 20mr2893412qtm.17.1473810708694;
        Tue, 13 Sep 2016 16:51:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.41 with SMTP id g38ls2430132ote.34.gmail; Tue, 13 Sep
 2016 16:51:48 -0700 (PDT)
X-Received: by 10.157.19.17 with SMTP id f17mr23015325ote.33.1473810708375;
        Tue, 13 Sep 2016 16:51:48 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h124si268185pfe.0.2016.09.13.16.51.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 16:51:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id g202so219663pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 16:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=4Fmx8xyeDEpAcYukytjwkTwrWtiL1IwfQF5600nchKE=;
        b=xkXRljaNtD0g0xDqkmQQV/K5wE2tvbsYS/RmmJVoZ4EQ36EdA9kXQJPCBvFRUyunc4
         sHhIXKLyb1e9w2anL0HeaiQsWLCP88n6418+OYI8ImkracYEqUGBkas3bX+22sWilL+k
         g8ZCtm60z4Dt6ZFcm7Edz7NRJS2bEqCxCsiwsZ6pa7uk/NQCvSJVWz1MwtakumCm0EPs
         RmKdReS8gdwECA59KfYcwhaVneBRi1eWS6l9uRSHbGwWCzvELzwQTSfT3gxkZm6e5AvU
         fMJvhlkvfB0FYY6v17Bw7gcKDoPfA8M90efGjznP5G8a9xhk5dssTpMkWVRFfZjJNHut
         15JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=4Fmx8xyeDEpAcYukytjwkTwrWtiL1IwfQF5600nchKE=;
        b=WVTdlOB/5dD7lW7ks++DsQZTJKJqOW/IKvyO4JXzS+z5hdehBF0x3T7ygHgQbyKe0m
         LnxrsXdbcybhrGF9MSxS2skNqmgeZ4Ookg9uxrtuW67Bg/pcGixJHdPrYE8uWEMPrUyv
         nWwPxgc31aVXU9UMQoPkoPxDoMDZw0mAdmua5gt+5B4NAuF0AUEIAKjxhuFi1wEIKQHp
         LWroLS8CafoyP3yRDuunsHTsJg7vMH/6NOgnoyY0MDtKfYnbfUm4jW4alCPTKFZlCkF6
         b04nuOSnh8QWO9bq11cniLrtMUXw88bLXQ8tp/3cTGq3Bs/VwqVeN8heZwkrkAYB9ZcV
         5uRA==
X-Gm-Message-State: AE9vXwMHah+8mXiPBCpEfXdaWUn3IPtpmkW0fVGZHz38FbSHn46gQgMOnBVPMKx8UA4b8g==
X-Received: by 10.98.144.153 with SMTP id q25mr6059571pfk.24.1473810708194;
        Tue, 13 Sep 2016 16:51:48 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id d5sm33439090pfa.44.2016.09.13.16.51.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 16:51:47 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 1/6] staging: xgifb: move AND operator for logical continuation
Date: Wed, 14 Sep 2016 05:21:00 +0530
Message-Id: <d24ac86a8d9d2a7b7cb677f29a8bd920027322b1.1473809551.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473809550.git.gs051095@gmail.com>
References: <cover.1473809550.git.gs051095@gmail.com>
In-Reply-To: <cover.1473809550.git.gs051095@gmail.com>
References: <cover.1473809550.git.gs051095@gmail.com>

Fixes the checkpatch issue Logical continuations should be on the
previous line.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 50c8ea4..316209f 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1741,8 +1741,8 @@ static void XGI_SetCRT2ECLK(unsigned short ModeIdIndex,
 	for (i = 0; i < 4; i++) {
 		xgifb_reg_and_or(pVBInfo->P3d4, 0x31, ~0x30,
 				(unsigned short) (0x10 * i));
-		if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA))
-				&& (!(pVBInfo->VBInfo & SetInSlaveMode))) {
+		if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA)) &&
+				(!(pVBInfo->VBInfo & SetInSlaveMode))) {
 			xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
 			xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
 		} else {
@@ -4141,8 +4141,8 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
 					| TVSetYPbPr525p | TVSetYPbPr750p
 					| TVSetHiVision))) {
 				temp |= 0x0001;
-				if ((pVBInfo->VBInfo & SetInSlaveMode)
-						&& (!(pVBInfo->TVInfo
+				if ((pVBInfo->VBInfo & SetInSlaveMode) &&
+						(!(pVBInfo->TVInfo
 								& TVSimuMode)))
 					temp &= (~0x0001);
 			}
-- 
2.9.2


