X-GM-THRID: 6330303746353922048
X-Received: by 10.157.14.134 with SMTP id 6mr7486966otj.35.1473966529013;
        Thu, 15 Sep 2016 12:08:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.74 with SMTP id u10ls4306018otd.30.gmail; Thu, 15 Sep
 2016 12:08:48 -0700 (PDT)
X-Received: by 10.13.204.204 with SMTP id o195mr655018ywd.53.1473966528481;
        Thu, 15 Sep 2016 12:08:48 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si1481647pab.2.2016.09.15.12.08.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:08:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 21so1127571pfy.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=znMcXsmUiNKyx524JtSNrRre1ZOkettAG7YLw3ndpuI=;
        b=MfjEo1aLDkbGi9pUBYcBa3f9rHgpfYnDVtcjDy0GKszzHCibbWH54JnDPpIwQ1EMPg
         eaE70xOq/y6ow7QV7dK+tRVuKPLT15cLzuQ2CGtM4CQHWYELBGKzKP2BCmy9qKT1PYUD
         lF2Plypt8vfvU5/amxbmICUUkP3CvE2bTuSEiTX82VJq4qEZ5qS84d3PbhCEyOk0vxrK
         FxNEC+L1/+Dy//g+/ZGdAFUtlMBbgxVfvMT1XK0IlzCwXWygYhXs8V6Py+poTFYQwER/
         hsyTTQAxpIjZ7WwnsqJKpfBK+a12jj0R9ZRA+AZ6IbGSILIAES6j3p7QCvX7kfIZ+bwf
         7TXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=znMcXsmUiNKyx524JtSNrRre1ZOkettAG7YLw3ndpuI=;
        b=A46zFl5PCUCD2hZ9Wy/XKmPpY/A8hUkvOV2P2OEkaCJNEqTRGga04C4M+yxZc6B6gp
         a1w1/GymtUnbAlH0MUCWUv1YPxkrW/2iCOFQSQoIzOWwNOi8BtoIeRoA4yg1i2SoDjMo
         Fol5KQ9zCXETAej8R9H/sbSWBjY+Px14j5mrJTYfq8s97rEi1Nu8nQPFOMp76FgwH+kK
         mbdDixc6BV7/3XFTbhWRVMutA3Ex2IKAb9j9fc/rdFcsYahW2Jc6udAb8GGBIknBD9CV
         jX3rpoYaTA6/M9fCbbz0Y/VX4xG8ChDtNftRHd83wGVeHcG6+YtvsfH0F1bEZl6VbDjV
         Lq3g==
X-Gm-Message-State: AE9vXwMt8nd9wtWQh/+fEY5iaw4nV1pdM2jfoVj4YkDiv62Xddk+ozBhIgje4+iRxCngFg==
X-Received: by 10.98.156.212 with SMTP id u81mr17197832pfk.44.1473966528289;
        Thu, 15 Sep 2016 12:08:48 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id vy9sm6795538pab.22.2016.09.15.12.08.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 12:08:47 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v5 5/6] staging: xgifb: remove blank line before closing brace
Date: Fri, 16 Sep 2016 00:37:13 +0530
Message-Id: <99ead35d5f2ad74ccb8c7cb4286d0b5fb7b5066a.1473965827.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473965826.git.gs051095@gmail.com>
References: <cover.1473965826.git.gs051095@gmail.com>
In-Reply-To: <cover.1473965826.git.gs051095@gmail.com>
References: <cover.1473965826.git.gs051095@gmail.com>

delete blank line before '}' to fix the checkpatch issue Blank lines
aren't necessary before a closing brace '}'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index b0ec981..8488612 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1677,7 +1677,6 @@ static unsigned char XGI_GetVCLKPtr(unsigned short RefreshRateTableIndex,
 					if (!(modeflag & Charx8Dot))
 						tempal = TVCLKBASE_315 +
 								HiTVTextVCLK;
-
 				}
 				return tempal;
 			}
@@ -2244,7 +2243,6 @@ static void XGI_XG21BLSignalVDD(unsigned short tempbh, unsigned short tempbl,
 
 		/* CR B4[1] */
 		xgifb_reg_and_or(pVBInfo->P3d4, 0xB4, ~0x02, temp);
-
 	}
 
 	temp = xgifb_reg_get(pVBInfo->P3d4, 0x48);
@@ -2273,7 +2271,6 @@ static void XGI_XG27BLSignalVDD(unsigned short tempbh, unsigned short tempbl,
 
 		/* CR B4[1] */
 		xgifb_reg_and_or(pVBInfo->P3d4, 0xB4, ~0x02, temp);
-
 	}
 	xgifb_reg_and_or(pVBInfo->P3d4, 0xB4, ~tempbh0, tempbl0);
 
@@ -2308,7 +2305,6 @@ static void XGI_DisplayOn(struct xgifb_video_info *xgifb_info,
 			/* DVO/DVI signal on */
 			XGI_XG21BLSignalVDD(0x20, 0x20, pVBInfo);
 		}
-
 	}
 
 	if (pXGIHWDE->jChipType == XG27) {
@@ -2328,7 +2324,6 @@ static void XGI_DisplayOn(struct xgifb_video_info *xgifb_info,
 			/* DVO/DVI signal on */
 			XGI_XG27BLSignalVDD(0x20, 0x20, pVBInfo);
 		}
-
 	}
 }
 
@@ -4128,7 +4123,6 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
 		if (pVBInfo->VBInfo & (SetCRT2ToTV | SetCRT2ToHiVision)) {
 			if (pVBInfo->VGAHDE > 800)
 				xgifb_reg_or(pVBInfo->Part4Port, 0x1E, 0x08);
-
 		}
 		temp = 0x0036;
 
@@ -4404,7 +4398,6 @@ static void xgifb_set_lvds(struct xgifb_video_info *xgifb_info,
 
 		inb(pVBInfo->P3da); /* reset 3da */
 	}
-
 }
 
 /* --------------------------------------------------------------------- */
-- 
2.9.2


