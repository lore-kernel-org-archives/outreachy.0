X-GM-THRID: 6389759037525721088
X-Received: by 10.107.40.10 with SMTP id o10mr9549532ioo.63.1487731709840;
        Tue, 21 Feb 2017 18:48:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.15 with SMTP id p15ls7548505ota.27.gmail; Tue, 21 Feb
 2017 18:48:29 -0800 (PST)
X-Received: by 10.237.41.65 with SMTP id s59mr1268186qtd.83.1487731709467;
        Tue, 21 Feb 2017 18:48:29 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id f7si3417313pfk.5.2017.02.21.18.48.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 18:48:29 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so10706096pgb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 18:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JqO0tXhjJf/4QYVdWufeiHu8DXMrMoNZIeJXeZJhHag=;
        b=Y0oga+gzBMa8J6aX4tn7lE+IAvdU75up5khAd1NcZphPtRabmFkGd9RvR6kVtxMrhZ
         HdqE390D81+864R7WHp3sKBMEPX0hMGnEjNTCja8p9+S2Wb0aWmdqxdcnyKDsEppbU/P
         dTgioE+ovqUxNmQYlvFUabvPJBM/iItGQO6f5A54RyXZe79p0wmIfqvm1GFDGeRpQg+B
         NePb7QZsrFIiuk2n+izFeOsqI6dLmgYuDJLn95lPjh6WQJex7wTN91ywbr+N7JOjJpRq
         rwiAEIOdrOpJ5SoHgxOktCngkOysA8nWy+gETnTmqRclIvtxmx88FxF4TvYbwe2sXLet
         7dmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JqO0tXhjJf/4QYVdWufeiHu8DXMrMoNZIeJXeZJhHag=;
        b=lMdt3uoHz1F0v15Da4BCUmgUsEIJTdEkXCWML8vUVHARKps2e2qY/y7sHLeFxOXI8k
         Y9TgZn1gqd+ZpIq24HarkVxmhKy+i113++uzkhmrYxWs7tVfAgA2OXwU9HcBcd9rVxKN
         +r341s2Kzbcdh0O54oX07GQSdlGtDUO1b0CiftOJ4V2cJoqaI5rUQYCYDuc9ZN2d7rE2
         AIjk8ayIFc9OVtcBi04KM+3KwpVQ365ZU7bSjXbYwUrLsZBw1VR1y+ZimBxoG7RzWoZh
         UnnS8CMmDHLLXFDbwfM8bh42uBsQCxgv9nPRb6gGCT1UGBZ3FwPJ6imNptSDiVK/ed83
         d0FA==
X-Gm-Message-State: AMke39l/PTwBbk1BekO6WTsjVFEwTuvU82Fo5wFfdgoc3oE2OsSMLJpzHtRHkkrL4I07Pw==
X-Received: by 10.99.39.71 with SMTP id n68mr38494210pgn.85.1487731709128;
        Tue, 21 Feb 2017 18:48:29 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s64sm43410135pfe.27.2017.02.21.18.48.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 18:48:28 -0800 (PST)
Date: Wed, 22 Feb 2017 08:18:23 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: xgifb: function definition argument should also
 have an identifier name
Message-ID: <20170222024823.GA25104@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

function definition argument like 'struct vb_device_info *','unsigned
long' etc. should also have an identifier name.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
Changes in v2:
  - By mistake one irrelevant line was added which is removed in this
    patch.
  - write the changes done in previous version in correct format.
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


