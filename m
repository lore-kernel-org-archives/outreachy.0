X-GM-THRID: 6388438478115307520
X-Received: by 10.129.40.134 with SMTP id o128mr7403519ywo.82.1487705740361;
        Tue, 21 Feb 2017 11:35:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.110 with SMTP id 101ls7249413oti.43.gmail; Tue, 21 Feb
 2017 11:35:40 -0800 (PST)
X-Received: by 10.129.69.27 with SMTP id s27mr10378180ywa.147.1487705739991;
        Tue, 21 Feb 2017 11:35:39 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h130si3146957pfe.1.2017.02.21.11.35.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 11:35:39 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id z128so928749pgb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 11:35:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZpK231YQWg2Cs2YagcIT0nP3Az/PDBLn3O0/k7TsQ/Q=;
        b=sZJt0sYOv5+v5SwXOBFjcRfMXudHNZcUslENkwcpvjgQJj7rwirYxnBOwkgpZlPdTb
         kSNOzj5bMnC61aD0ZI9T8uaW7d3P1Hs09qClz1Erpm6ctgscbZXnlb3Z5Q5GM33N9Kmb
         Bui7oMAAEMCxB6+rwMUr2v06lJ+nPozUdNELutUu6p8e+iSylIGyol84uDbM6yUFzmHd
         h3QeUQfiv/9iAvoLgOdA9nGkQN8GNcLNKnJf4kdcka+nXyP5R8cD1yVBYkjQ1oyvxIK5
         CLN32gF3lD379tYS8XwusGLj8LirvdMTYgT8Plnon1rTojE1wInTouS4ItPLHqtbbYly
         Ma3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZpK231YQWg2Cs2YagcIT0nP3Az/PDBLn3O0/k7TsQ/Q=;
        b=NyuY3xejB5ggxne0CVSiSyZdYm1bDjQ9qlK2hV3y7xrFSgNBsLqGPQNyKX7cKqpRAA
         MH1VcZkf7ap3I21PZLnDfLT1WzVtgjvNeB0oCrU4+WmvMNLU1Iz7Owm7l7VSkxQgdp1C
         1vMfWcALXMY2Rr0gMx9cy/MVwSx7O+y8z0DmMNAVlm2mveeDsMzN0pQ52w8l1k1HN5Nu
         SK5L5E/6iFkB+lcOSWE1Jf2tSdoyLFRjAeKSUBL0gKBmEr2KUnc7pa910uUJXBhHYCgm
         lUGUipAQTi9NDnn45ozhf9GEruOBAigjm9/bD5+220nfqU0VJvHiRNbP2JcMFAz2RJ0+
         VzkA==
X-Gm-Message-State: AMke39liIzTj7AcKkXswmiYNWItKjLU5oED5B8cPR9PRvwX2foKUxN9WJEiqmMqC3vybAg==
X-Received: by 10.98.14.84 with SMTP id w81mr35192566pfi.168.1487705739742;
        Tue, 21 Feb 2017 11:35:39 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o12sm42573557pfg.15.2017.02.21.11.35.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 11:35:38 -0800 (PST)
Date: Wed, 22 Feb 2017 01:05:34 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: xgifb: function definition argument should also
 have an identifier name'
Message-ID: <20170221193534.GA23615@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

function definition argument like 'struct vb_device_info *','unsigned
long' etc. should also have an identifier name.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
Changes in v2:
  - By mistake one irrelevant line was added which is removed in this
    patch.
---
 drivers/staging/xgifb/vb_setmode.h | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.h b/drivers/staging/xgifb/vb_setmode.h
index 6f082a7a5a4a..c6317ab00474 100644
--- a/drivers/staging/xgifb/vb_setmode.h
+++ b/drivers/staging/xgifb/vb_setmode.h
@@ -1,14 +1,14 @@
 #ifndef _VBSETMODE_
 #define _VBSETMODE_
 
-void InitTo330Pointer(unsigned char, struct vb_device_info *);
-void XGI_UnLockCRT2(struct vb_device_info *);
-void XGI_LockCRT2(struct vb_device_info *);
-void XGI_DisplayOff(struct xgifb_video_info *,
-		    struct xgi_hw_device_info *,
-		    struct vb_device_info *);
-void XGI_GetVBType(struct vb_device_info *);
-void XGI_SenseCRT1(struct vb_device_info *);
+void InitTo330Pointer(unsigned char ChipType, struct vb_device_info *pVBInfo);
+void XGI_UnLockCRT2(struct vb_device_info *pVBInfo);
+void XGI_LockCRT2(struct vb_device_info *pVBInfo);
+void XGI_DisplayOff(struct xgifb_video_info *xgifb_info,
+		    struct xgi_hw_device_info *pXGIHWDE,
+		    struct vb_device_info *pVBInfo);
+void XGI_GetVBType(struct vb_device_info *pVBInfo);
+void XGI_SenseCRT1(struct vb_device_info *pVBInfo);
 unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
 			    struct xgi_hw_device_info *HwDeviceExtension,
 			    unsigned short ModeNo);
@@ -18,6 +18,6 @@ unsigned char XGI_SearchModeID(unsigned short ModeNo,
 unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
 				  unsigned short ModeNo,
 				  unsigned short ModeIdIndex,
-				  struct vb_device_info *);
+				  struct vb_device_info *pVBInfo);
 
 #endif
-- 
2.11.0


