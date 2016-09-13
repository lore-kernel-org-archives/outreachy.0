X-GM-THRID: 6329968789142110208
X-Received: by 10.107.44.11 with SMTP id s11mr100747ios.11.1473810718129;
        Tue, 13 Sep 2016 16:51:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.132 with SMTP id l126ls484669ioe.34.gmail; Tue, 13 Sep
 2016 16:51:57 -0700 (PDT)
X-Received: by 10.66.147.34 with SMTP id th2mr2961165pab.24.1473810717775;
        Tue, 13 Sep 2016 16:51:57 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id z4si278997pam.0.2016.09.13.16.51.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 16:51:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id z84so217023pfi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 16:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Ey22Kox2wDHdyFy4m7MNOCh01B7e9x09HNObJ4nsvEM=;
        b=r8Ln2Pz/wGWARz4ZmCkF4HBdHRQj2VA/VFQUEvAR1JVTcDqx/icRQJJLk8+yg7dQyH
         RtU+yRwIoZ1uTQ0Mfv3Eb9QiNThUDNAi1xKBb6yYdd1tkBGzjhKjGTjNE0gLss8rEsoI
         6ouY/UnvLkQjy35GIgJxaRCz/SZM+uxTjV45YKpatx4o2/mc/0fZ3u6hJzFx39TR632F
         CSMMr/WE0cebTeuPJSk8Uq1v92ITyUN1odPoCsCRbOOUpHpZJZ+YAN4rXylgCIVe6U3p
         fOOIasqCcewnq/o+237Ks0Ni/ChaQbhzxGdGTHAZpxxJ/dxTpDIIxODL7/BSISr+/yBl
         vxlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Ey22Kox2wDHdyFy4m7MNOCh01B7e9x09HNObJ4nsvEM=;
        b=KgslY4zJAZ4uZaoSr5YU2bmg19fAm1fBmo8fkslDdx3pSDOS5qSL39sdHDFroFgH3y
         H+yK/c6zJJNtIQwZSzKitWByN6qtHVY/Yvy/Enrel0oxRx7nFbwK8/6FWG1Vbl3VbSCZ
         ltSbFQaM4wnSVsD07GuBro2axGhMM52FlHbKFE5tHcJP0Jw5A8pZZg7N7+8BP+i26GkJ
         dGxp2EIqDQTTRWad5g/bS6l3O9xUSBn6Y6GsAeZntSP8206b7IeKxTfgUlW3fbb8DAqP
         qvSUnuHgUhXW+TrxqrzO/inlqu08IfemRElJ8dc2rPuAHatQWykSor8U89u1BddvD0Dy
         Ps/g==
X-Gm-Message-State: AE9vXwM+mVyLzDrQTYSRhgZsRs73TyVfyUYKm/i87WFyFr0nWeAWDk1wa+rfIKdQgqnTOg==
X-Received: by 10.98.88.131 with SMTP id m125mr5955182pfb.63.1473810717593;
        Tue, 13 Sep 2016 16:51:57 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id d5sm33439090pfa.44.2016.09.13.16.51.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 16:51:57 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 5/6] staging: xgifb: remove blank line before closing brace
Date: Wed, 14 Sep 2016 05:21:04 +0530
Message-Id: <efff890343544eff490bb558ebfcd062ceb845fb.1473809551.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473809550.git.gs051095@gmail.com>
References: <cover.1473809550.git.gs051095@gmail.com>
In-Reply-To: <cover.1473809550.git.gs051095@gmail.com>
References: <cover.1473809550.git.gs051095@gmail.com>

Fixes the checkpatch issue Blank lines aren't necessary before a close
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


