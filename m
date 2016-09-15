X-GM-THRID: 6330303746353922048
X-Received: by 10.157.29.38 with SMTP id m35mr1631406otm.7.1473966517996;
        Thu, 15 Sep 2016 12:08:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.207 with SMTP id w73ls4057705ota.8.gmail; Thu, 15 Sep
 2016 12:08:37 -0700 (PDT)
X-Received: by 10.129.165.14 with SMTP id c14mr7669745ywh.48.1473966517369;
        Thu, 15 Sep 2016 12:08:37 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si3049658pfe.0.2016.09.15.12.08.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:08:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so2438869pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CbarsrTaswuBtbMCtZkCk6P39TUe0qdh2y38+KPcLJE=;
        b=tYM0PUxp2nHZvA33oDsNz0oUh7WhNU+WlPKhRaT/QpEMpB8TRw9ChFGMjiSOKTQtwl
         j+kB4RJ6VvDtdsvoKD9vGhZoOHj+kv8FBwuA49oahlOwuEoiXhxpCkfwnOf5GCVrsOJS
         Tt1tZK11sNg/bZxgjl98CMDfdMPjeIRIjwf0zYHImGWHj2zw8+gBKiduXKRkLCbKrDcw
         MIvRe6GjOaBU5NwwsxeIbYxUDSrXB6PAF15w5LetDDgQq5fd4kOXqvnXyeXjcJt8jFOP
         LlKiHXSgrdIHVI/rIxjKyuZ1uHEGdP0aNb0VdnzE9BORcEzq1pqUY+SrIBaDv3oc5TxY
         5n8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=CbarsrTaswuBtbMCtZkCk6P39TUe0qdh2y38+KPcLJE=;
        b=Cukds3jvW1C0lKvtCJE/YeiF/Tg8jVgibZKUNkJ2xmZNhK4V1zUmAE6tFxbwKOQtHY
         30vBdHF+FzJmc601YzJQfTLTR1APA/8uNiDSQqZ1mxLEbZknG9cu9e7UOcC2lUcQ1Y3Y
         mYhGSB6xczhegSpLdDOQi4LAUgzPVIjSQyUE/3TJXe5VCoeFGtjt+aZqhAbEY0WfcDtQ
         Jqp7vTirlt5ZwCxYo2oNSoIL2Sws0AkwJNAwOhCdG5eIS/4ctUCHPExbRHHNYf1Sa4um
         PjEKrH2xGuc06afLxw8cEIeGJ1YZbKaYni3yUyh0AqUnR34iVgismBKLrog2WSFlYXb+
         i2mw==
X-Gm-Message-State: AE9vXwOHZEMU9Om/N0/fOCc1CGrA9BJmNgMlCWqWiBQzB7DHqy7+Pfkm5nHF6FtdJ1M/HA==
X-Received: by 10.66.126.46 with SMTP id mv14mr3255478pab.166.1473966517059;
        Thu, 15 Sep 2016 12:08:37 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id vy9sm6795538pab.22.2016.09.15.12.08.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 12:08:36 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v5 1/6] staging: xgifb: move AND operator for logical continuation
Date: Fri, 16 Sep 2016 00:37:09 +0530
Message-Id: <693727493edd2b8b4094e4436f881f70ec775e9b.1473965826.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473965826.git.gs051095@gmail.com>
References: <cover.1473965826.git.gs051095@gmail.com>
In-Reply-To: <cover.1473965826.git.gs051095@gmail.com>
References: <cover.1473965826.git.gs051095@gmail.com>

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


