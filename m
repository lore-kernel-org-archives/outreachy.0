X-GM-THRID: 6464205911885873152
X-Received: by 10.107.169.31 with SMTP id s31mr4693274ioe.86.1505065223866;
        Sun, 10 Sep 2017 10:40:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.197 with SMTP id p188ls3131034iop.51.gmail; Sun, 10 Sep
 2017 10:40:23 -0700 (PDT)
X-Received: by 10.129.76.22 with SMTP id z22mr6104636ywa.82.1505065223012;
        Sun, 10 Sep 2017 10:40:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505065222; cv=none;
        d=google.com; s=arc-20160816;
        b=RZ8V58ER18J3ujiolDN1oB+OGqaH4m6wJ+9PDRjAD8jMYudBOxocwJzYX36OVb/II6
         0wm1F7taA7OLy0GTJwvFPYicZe3uQLHJC2k2nR9xvExdRBGwtOYaTvmjV6n7NRtjc8mB
         1FADL5zzJf3ArCVdohPDbZWFyBuBcnwmoa3WqW+aIAv9vwJztYZVr/uTL3KqAf0Duxev
         FS2jyDe8N+6KrJFZoZ6RWslAGalTXcNCu1r5juJxXu6RwKkU9UPX244kRXt/l0Dk6Yml
         y9gYFMGXaX8JYcwoBgUbZRLhbC3Xbk8ZXhNCWD5Qdnxa0qX0X0bYpTB9PkZfwGpwvG9F
         JjKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=3DKAQTU99deEOmyUSRqoPuPS8fdVLnPT+pmONrwJJvs=;
        b=pBqJZZHIPM64/o8h0R2jHOhfFcZJb2vfX4raE0FqERO5xlPsQgYHi3bTEB6/88JAnw
         k+Im21XA72O4SpOhZL1w5mHXOTWh35TbwWGyF3MIYc7BT4zSPkQUlu5ouHC8+0kwjN5F
         hsMCnhAnxxysqpsh7NI+B3UUl6kSQGNOSfUhcHDqwGBaR9doZuFtJKGGTvvUgpLn89Ed
         H3n3uPEsHQ/ZnEiOpuoSOl4h62k0CTUWWwq68uWX9M8zlukiZTv/AShe4D7dXtQsTEIh
         aL6QjEVfQCJhf/Lzbn0QK8D0byUc9I+MssNYbGI3orU+CTofCmnW7LDCD4lWS/WP5O/X
         3G8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bZapdiYX;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a12si669467pfd.2.2017.09.10.10.40.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 10:40:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bZapdiYX;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e69so2167417pfg.4
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 10:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=3DKAQTU99deEOmyUSRqoPuPS8fdVLnPT+pmONrwJJvs=;
        b=bZapdiYX/wuV7LJ7qZmmH0wU4uUoT6JhULyVLpEAMupkwbyKEvX1ZDp6IWLuL+j1Ow
         APIwRYoY+UxLGBRXKKdA3ZdOZFl5UADULrP7yglhhYagYF4LpJAAAN5wLMmiA/1sSmzj
         l7xS8tO2cedVe9FgDyRmyfQ4TlMzK/a+ApqBbrYkNzwqex7OgA3197KLQRYVFJOQImRv
         rFMAT8fF/xPqzZ2CgJ0DUDajHJLkj1JswdIBhFJuyj7zHuFM5WgFwyNBYGh5cjLPTCrN
         qObI7efRs86aHYkLt8VwpGUpFV1wQwObzbDUq4/vou8wK/ZT/2K1BTh5qa2/JL6MKN6j
         HpzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3DKAQTU99deEOmyUSRqoPuPS8fdVLnPT+pmONrwJJvs=;
        b=RRrvSQH2OfN8z0YvBiNwlDCUZSPX1N3aiat5PcYqiM/odFnAqE7L8hhsSYFmPuDde0
         BhR3P1yTalykZd1Rj8ccTtQZhDL+KC6REwklhzz0TCapXBF39d5olyoCu951WTFEoDK6
         w4f65HcymYyvnjNGPSSXYzMNXdjZlejBUC8P+fuDvEeKP8Lfgj4yKevl6mVXTpZKKrXo
         4dKBnU6jwHhAz0FeLmIi6LqE9Vfo8KXSZR2igXAfNkcsvkg0L6f073PnWSa6eVsKY/96
         u4vYAbRESYk2k28AuBLthLjKGVGJfWD5P8C4PsQZlbwOFW2XCq5poeArpKYld+JLF4nC
         KPtQ==
X-Gm-Message-State: AHPjjUit5/Yyuq1wdTeLravRBL7Fiisb8eKV5BNiDSbxvL8LGMeu4KQt
	VB5rXDPU7iGWUA==
X-Google-Smtp-Source: ADKCNb7MSOmwziiPgvWkh4nPc1+MhNan59/DkKqYVcjIhBwqCYD5xhTKJSt9F2joRB9e5rkjViZ/RQ==
X-Received: by 10.98.37.196 with SMTP id l187mr9261587pfl.161.1505065222597;
        Sun, 10 Sep 2017 10:40:22 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([182.77.47.123])
        by smtp.gmail.com with ESMTPSA id u12sm4760641pfg.146.2017.09.10.10.40.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 10:40:22 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Arnaud Patard <arnaud.patard@rtp-net.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] checkpatch cleanup
Date: Sun, 10 Sep 2017 23:09:40 +0530
Message-Id: <1505065180-4480-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index cea128b..5c86c84 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -73,7 +73,8 @@ static void XGI_SetSeqRegs(struct vb_device_info *pVBInfo)
 		/* Get SR1,2,3,4 from file */
 		/* SR1 is with screen off 0x20 */
 		SRdata = XGI330_StandTable.SR[i];
-		xgifb_reg_set(pVBInfo->P3c4, i + 1, SRdata); /* Set SR 1 2 3 4 */
+		/* Set SR 1 2 3 4 */
+		xgifb_reg_set(pVBInfo->P3c4, i + 1, SRdata);
 	}
 }
 
@@ -649,11 +650,10 @@ static void XGI_UpdateXG21CRTC(unsigned short ModeNo,
 
 	xgifb_reg_and(pVBInfo->P3d4, 0x11, 0x7F); /* Unlock CR0~7 */
 	if (ModeNo == 0x2E &&
-	    (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
-						      RES640x480x60))
+	    (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC == RES640x480x60))
 		index = 12;
-	else if (ModeNo == 0x2E && (XGI330_RefIndex[RefreshRateTableIndex].
-				Ext_CRT1CRTC == RES640x480x72))
+	else if (ModeNo == 0x2E &&
+		(XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC == RES640x480x72))
 		index = 13;
 	else if (ModeNo == 0x2F)
 		index = 14;
@@ -5479,9 +5479,7 @@ unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
 						   ModeIdIndex))
 				return 0;
 
-		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].
-						Ext_ModeFlag & ModeTypeMask;
-
+		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag & ModeTypeMask;
 		pVBInfo->SetFlag = 0;
 		pVBInfo->VBInfo = DisableCRT2Display;
 
-- 
2.7.4


