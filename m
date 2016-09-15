X-GM-THRID: 6330303746353922048
X-Received: by 10.107.200.79 with SMTP id y76mr6557310iof.1.1473943230510;
        Thu, 15 Sep 2016 05:40:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.62.196 with SMTP id l187ls1018562ioa.51.gmail; Thu, 15 Sep
 2016 05:40:30 -0700 (PDT)
X-Received: by 10.66.16.135 with SMTP id g7mr6099809pad.27.1473943230084;
        Thu, 15 Sep 2016 05:40:30 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id f133si216099ita.1.2016.09.15.05.40.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:40:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id pp5so2100295pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=znMcXsmUiNKyx524JtSNrRre1ZOkettAG7YLw3ndpuI=;
        b=CMf/c9o5VF/2bjHqW1QUG5AjJ8KAu1PVLTi3yUCVJWCpfiL2XgcJKO2Eub9w4UNyVk
         Sag21ri9QND8HF+SC4hS5q9uuWR894gLk5DExEYnjdPu6QL6eMZQJVb1JNSbMp+xPU8o
         2zLO8ZJOLftu7yPSZFE3/zTBOYItdD0/0OXmTFMQWaHwyznUNw6zSsSqefkgmMK8OTR4
         m5vArYWiayZa29pe5N2XoJF1AdYPiNKHNKb4uIUvBpULylO5ghqzCK1iXCu3VJuCCNpQ
         mPZX8z9BU/1PINLMKz7+Fj/C24aRJDql6w72wx8mffSlVUk8gGcXnzcXxU8t7tDrGV4t
         Vazw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=znMcXsmUiNKyx524JtSNrRre1ZOkettAG7YLw3ndpuI=;
        b=fCH4o2tkt2QyrxsiFrdisX6kYpf2quhfuU+MK4zrtKiHn3sZx3dwgUmgK6NGJiGMkt
         +ahp9mfX/AN8pQ75y2P+yoquugEjHzwHAqUp/0vYK+iI8b4zPaxsGpeMvks6ioBa9I84
         VZMjzAEyRKaYOn5pXMrJvFs9QDt43q1f0mkSdZOk6iJp5FLh6DUm69ZsvVWqoBlLNrG3
         VQJMvQ1XLTwwzitYejQcRfmLDzrIC+lsOjao8wfbs7E8+QQmx/4hhRf0iPeZwAEjHVqW
         QSzzaf5wxcbGAc0AjdxAaxVWDC7ij7YtSUqh0SAKFyg+7bZt8tvjUThQuXf/JTZv3Mlx
         yCyg==
X-Gm-Message-State: AE9vXwP8zUiozgatZI838bsMPTS/aq4ljazZcnAGLQ8Ee7cbtCJWu323NBzzCtOP6mvDTQ==
X-Received: by 10.66.126.46 with SMTP id mv14mr434782pab.166.1473943229380;
        Thu, 15 Sep 2016 05:40:29 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h123sm45162289pfe.69.2016.09.15.05.40.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 05:40:28 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v4 5/6] staging: xgifb: remove blank line before closing brace
Date: Thu, 15 Sep 2016 18:09:18 +0530
Message-Id: <378dd029a9405d463a704aa5684fb64613ade16c.1473942527.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473942527.git.gs051095@gmail.com>
References: <cover.1473942527.git.gs051095@gmail.com>
In-Reply-To: <cover.1473942527.git.gs051095@gmail.com>
References: <cover.1473942527.git.gs051095@gmail.com>

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


