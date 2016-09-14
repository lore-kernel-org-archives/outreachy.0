X-GM-THRID: 6330303746353922048
X-Received: by 10.66.158.10 with SMTP id wq10mr3788345pab.35.1473888696186;
        Wed, 14 Sep 2016 14:31:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.117 with SMTP id p108ls2101747ota.42.gmail; Wed, 14 Sep
 2016 14:31:35 -0700 (PDT)
X-Received: by 10.157.56.142 with SMTP id p14mr3809934otc.4.1473888695842;
        Wed, 14 Sep 2016 14:31:35 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id um12si32555pab.2.2016.09.14.14.31.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 14:31:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so1274812pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 14:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CbarsrTaswuBtbMCtZkCk6P39TUe0qdh2y38+KPcLJE=;
        b=SfhumGpk3L+Ta+SfK8fuMWxgKJMQ4kbDriah4nxj+EXwiG630mYnpwItD8a40lqdPC
         fZUb+eDgr57yqVYV8m6blf6MQxLbtdv4v5Umc7iCA9Mv62b8mtWowItALwQkxVQ3GLIw
         Lpgt2On0fcBzjBPM+C8QowMW4qMdzQl9fnjO477iXQ3sWmvfuL2vmjf5sASMFXU2q+Fc
         bI+MGyQYbO9IKvyebNQEe9D64fizaukN4Lwow9HCHlImbo2jEz2FV0g0S/VzyUvWKupn
         AXuNlpL60o4kUGGMPDUtJNbDtDiugsmghe3m3hPQ0vrY5JqSSX3ypDqlsuTCxL1KZwlo
         EINg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=CbarsrTaswuBtbMCtZkCk6P39TUe0qdh2y38+KPcLJE=;
        b=BkGC+KsqUfX/+AJs8vT8C3dmOSMdk+qRUSNXCzShc8x/LF2a/dZ9b2F942CCBh4KR5
         jPAJUDLCGqA9q0dG2csXuX8Ng5YmI4jfqOguobxO2w9ofqsnbuOwG+7ptpKOEjsELWhB
         eBs/H8NOCJ305NdRSLPgAAwmbmGZSA7wsFc18ZW2HGRougRwedfb0WZzUzwnRvi7rOJz
         3qNSlCx656c7alJFWu16UQugZXtuzMZyoPb6TLrvXTXWQ19f9RYqgDCclMcHEWIzKWYF
         7qrTO4tmYPgicVMvureN61++p7N3s6Lh+OgMJrWrFkGXK7UgP/UuNcxJpXFVOFyYTOAo
         DO4w==
X-Gm-Message-State: AE9vXwMy8Y1SLRJh7Ko1OixMHuyL9LRpPnkSV9SGf/fnfYDVEoPuu2acg+OtA1gmQgdjnQ==
X-Received: by 10.98.192.130 with SMTP id g2mr8428059pfk.54.1473888695481;
        Wed, 14 Sep 2016 14:31:35 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id i78sm7889970pfj.67.2016.09.14.14.31.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 14:31:34 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v3 1/6] staging: xgifb: move AND operator for logical continuation
Date: Thu, 15 Sep 2016 03:00:38 +0530
Message-Id: <42b98d5b0d8d96eba29fd9d5e8f4c39e24b48cd0.1473888416.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473888416.git.gs051095@gmail.com>
References: <cover.1473888416.git.gs051095@gmail.com>
In-Reply-To: <cover.1473888416.git.gs051095@gmail.com>
References: <cover.1473888416.git.gs051095@gmail.com>

Move && up to the previous line, to fix the checkpatch issue Logical
continuations should be on the previous line.

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


