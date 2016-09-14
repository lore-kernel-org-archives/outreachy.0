X-GM-THRID: 6330303746353922048
X-Received: by 10.107.53.135 with SMTP id k7mr4190354ioo.13.1473888707509;
        Wed, 14 Sep 2016 14:31:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.18 with SMTP id h18ls1912756ote.41.gmail; Wed, 14 Sep
 2016 14:31:47 -0700 (PDT)
X-Received: by 10.237.38.226 with SMTP id q89mr3841628qtd.16.1473888707162;
        Wed, 14 Sep 2016 14:31:47 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id um12si32555pab.2.2016.09.14.14.31.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 14:31:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so1274812pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 14:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Rpk3qj6yhP1UV79iAyYbpQLXzy5dNC6YtQ2MTN6GMik=;
        b=i6eeN7+4A4Dwlm9BZw5u9yQ0yTex2tbY7pDNS/MP6JE31pHy0AmIme++UoD8xnbt75
         tXLtP4Y+jvP6bbSRce/QXnAEbTQ40WrQM6hhc4DIZNGB949bA5ToituC1iaaDdCoZpKV
         z+gXDAhvTbjNT6emG54nDR3VkuCNG7k0gL2IxAQNBojygj9fNvbF2X3lQC49+fL1V151
         3xkT4iE2c8gmU8hOMhrbU+eNJ21R6x1/QDtPexTpnR+uXeFE5BNKp0EWFURXS1NwBCv8
         FpZ4/n60hCyousGSp75yV+iz9g96w1M7c1o/hcISdudoqBZhXEHg/Eu0MqkUrXdv9djL
         BX+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Rpk3qj6yhP1UV79iAyYbpQLXzy5dNC6YtQ2MTN6GMik=;
        b=b3VShwtKZFp2lK6UBM0ZbQOYCIDCX7pi6TkBt935Ccp7+HeDkFHAcDpqrRDUdUcwgd
         BO/DzhH1fD5fXPqR3OAGaDORh48unA3L/sN18wSiJDidzbRVxkhXpA8m6emMupCHYHPM
         gdnk2LTBr09O7wObfywmbxGPUv49Wudy5nPhf6W2hzm3ayNEHFStov7f8UQ++r7oBAqW
         72WK1TlXAZpBGee0dy2V0suBjciaBBYGQ/5Qzn9hHydr1sCaOOZyKi43s8qe9+zsLxGl
         WedjttomLuKZsgXD2Ue0pR0crfKUwnO+8W4EM4kwbnRpkBl/EMfRBgDUcoGD/fmqPyHG
         U0ig==
X-Gm-Message-State: AE9vXwMui0pAenqIGOcluUj58bfQgevpPB/PF397Bc3DHIeGs5T3jUIjadI09PcPC7TZIw==
X-Received: by 10.98.211.193 with SMTP id z62mr8512099pfk.124.1473888706972;
        Wed, 14 Sep 2016 14:31:46 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id i78sm7889970pfj.67.2016.09.14.14.31.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 14:31:46 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v3 5/6] staging: xgifb: remove blank line before closing brace
Date: Thu, 15 Sep 2016 03:00:42 +0530
Message-Id: <197d584fbdce72b6bcdcb969c9dfc963db31035e.1473888417.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473888416.git.gs051095@gmail.com>
References: <cover.1473888416.git.gs051095@gmail.com>
In-Reply-To: <cover.1473888416.git.gs051095@gmail.com>
References: <cover.1473888416.git.gs051095@gmail.com>

delete blank line before '}' to fix the checkpatch issue Blank lines aren't necessary before a close
brace '}'.

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


