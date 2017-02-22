X-GM-THRID: 6389890697918414848
X-Received: by 10.129.48.147 with SMTP id w141mr7406796yww.47.1487762364839;
        Wed, 22 Feb 2017 03:19:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls419846otd.12.gmail; Wed, 22 Feb
 2017 03:19:24 -0800 (PST)
X-Received: by 10.129.70.133 with SMTP id t127mr11446082ywa.146.1487762364521;
        Wed, 22 Feb 2017 03:19:24 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si186275pfd.3.2017.02.22.03.19.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 03:19:24 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id z128so1944386pgb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 03:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wDyM6TO8tbSTxYFqN6MWE7rf1gaXwIYGmjqCJ0zSJhM=;
        b=LcBWXm7Ts+986a8BWCH2ER6QBBQEihyZRaCw0/8a6Hen1g1IYafC9ZdLz7gIMqQtZ7
         SpDkjIKcxh9zG6SQIimrOqvvowaCKGinO8EjBOVnOZgxuRgOTSvmm+Dj2Zc6bd3ByIyB
         vuSSodh34xOCuriFMdlAntXM9vADfkpEI8WsYVYPUDNno47P7QcLR7sRhmjtno2u3HID
         nmKPQWtGgjGngppW/PLR7duIRE5oeVzgYAaYhkB/MIX/28DZb+ke/6XUMVpjdutHjMeV
         UTYamD/uvXsQ9VRQneR2Xc7Sj1QWT1jRg53QMmA/ki4936Ebl/eKRleDNtpxTpBR/cuV
         NC1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wDyM6TO8tbSTxYFqN6MWE7rf1gaXwIYGmjqCJ0zSJhM=;
        b=bU2mXJAIpsuSx3pazlHgQulzr3pG7ve7TBgqrp7zUdEJUhZHC9wn7aBGJn30ieaw7n
         iF0qnuNdziB3/dxPeAjHuMI0U1SfzroIHyTn6eJZx8bCH1UKXs8y0RIG9iYFYW1V5UgJ
         HxsS6ez+OMHJF7e+Yva20A0mmtYF9xU9Q7VtnIg6PVSfs1mzk2Hc3KiZeSbZa2dfq9MG
         talphzC7e3imaV80MBENWR/XOiLZXK2SawnRbnwiOvSGlwvr0MP27IlPGRLhI5/YzHEw
         ySjD+Zjw6JlHEQYDq5Ymj6jMKkchztgMPm74ZFVuzyY41Jkm5BLIVo+Ga6fp5KDXRcE0
         e0MA==
X-Gm-Message-State: AMke39mrVVDAjVg2yiHjolI0K4FuqQiubNtBPRWeC9stD7dmCF0XpUDAaxpS/vC/svHOWQ==
X-Received: by 10.99.110.74 with SMTP id j71mr40656376pgc.134.1487762363829;
        Wed, 22 Feb 2017 03:19:23 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t22sm3071134pfa.114.2017.02.22.03.19.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Feb 2017 03:19:22 -0800 (PST)
Date: Wed, 22 Feb 2017 16:49:19 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: xgifb: function prototype argument should have an
 identifier name
Message-ID: <20170222111918.GA25063@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

function prototype arguments like 'struct vb_device_info *','unsigned
long' etc. should have an identifier name.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
Changes in v3:
  - By mistake one irrelevant line was added which is removed in this
    patch.
  - write the changes done in previous version in correct format.
  - make the commit subject more relevant and accurate.
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


