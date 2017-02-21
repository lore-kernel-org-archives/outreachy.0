X-GM-THRID: 6389625158217236480
X-Received: by 10.107.9.216 with SMTP id 85mr9653421ioj.28.1487700538520;
        Tue, 21 Feb 2017 10:08:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.80.147 with SMTP id m141ls1438506itb.19.canary-gmail; Tue,
 21 Feb 2017 10:08:57 -0800 (PST)
X-Received: by 10.99.36.131 with SMTP id k125mr9693753pgk.25.1487700537728;
        Tue, 21 Feb 2017 10:08:57 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id s64si2482391pfk.0.2017.02.21.10.08.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 10:08:57 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 5so19370796pgj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 10:08:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NiJfDk67LNNYUNmIEFjygZeFjf9gJSQ+yc3GogbP7HI=;
        b=tfmGOdxFiKh0YoXvkwJH0hqIzJnFFohfmk2yifXyAi+TDqf+Ra41INLJUoOmyGack6
         ET2ebqmSzTb/Nyudl4jVbDay/b8fr4Y9Hj6n3Gd7+p2tp/3PJJ/0AuDxtnvZRlwvj9O0
         npjVVNCQFfP4yLu94a1Un2JGcVg2xL8pdfb9BhWm1xJv3EQRbSnf6c3+K8fxKM23awVC
         zyDUmUi0KcDoM8cVE1aJ27lTUB8Aq0TiXLHQGzUOZ3HSo4jJWVpkQUC//Dayb82a7VqW
         rroQu2TPgTjr1TKpu0KloLRwROl/rJmCCy1qVeorfD4owshk4M9e42roxaoD7k3tt87T
         1YJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NiJfDk67LNNYUNmIEFjygZeFjf9gJSQ+yc3GogbP7HI=;
        b=kpO2s424Ov3c0rv/UVqbdkGoIrLDoO3s3id+ilMcCo4dDyl5+U+K7xudm9hWIA281H
         QRC//x+9B6JEzZht2c7UsCYnelwTgDWcsV+fXnf2S/Lp5bMpuGvakuCCAK3YWSBF0PLs
         8u1Dqo/KneTJgKk7icmsxnUeXNnnOQPGmnzX6w7LsVr048aNZ9GT+/zq2QtCVL/qZuhF
         p3Q+LZIYcDIQCd2PTG2kxUXrzIU3mIy5Ng8VgfHLCbMumdexI205lT59NNb0zfuUALvr
         F5DeVs5xYvgnPOvwiFWlzrh9D9ex4eCM9IDIWgJelCDp8le3SKLxKwd887/LzfsAB1nD
         FacQ==
X-Gm-Message-State: AMke39lAGw4Wd61leVg5mUhZo+ev83EC90EqrOGBPMfTFxhMEVKHBdpcp3P360J+6Zq/mA==
X-Received: by 10.99.243.21 with SMTP id l21mr36214371pgh.37.1487700537454;
        Tue, 21 Feb 2017 10:08:57 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p66sm42296654pfb.88.2017.02.21.10.08.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 10:08:56 -0800 (PST)
Date: Tue, 21 Feb 2017 23:38:53 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: xgifb: function definition argument should have an
 identifier name
Message-ID: <20170221180852.GA19723@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

function definition argument like 'struct vb_device_info *','unsigned
long' etc. should have an identifier name.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.h | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.h b/drivers/staging/xgifb/vb_setmode.h
index 6f082a7a5a4a..e4cf9a633676 100644
--- a/drivers/staging/xgifb/vb_setmode.h
+++ b/drivers/staging/xgifb/vb_setmode.h
@@ -1,14 +1,15 @@
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
+ 		pVBInfo->VBInfo = DisableCRT2Display;
+void XGI_SenseCRT1(struct vb_device_info *pVBInfo);
 unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
 			    struct xgi_hw_device_info *HwDeviceExtension,
 			    unsigned short ModeNo);
@@ -18,6 +19,6 @@ unsigned char XGI_SearchModeID(unsigned short ModeNo,
 unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
 				  unsigned short ModeNo,
 				  unsigned short ModeIdIndex,
-				  struct vb_device_info *);
+				  struct vb_device_info *pVBInfo);
 
 #endif
-- 
2.11.0


