X-GM-THRID: 6802842925013139456
X-Received: by 2002:a37:85c2:: with SMTP id h185mr1426763qkd.446.1583910296821;
        Wed, 11 Mar 2020 00:04:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b8b:: with SMTP id 133ls616814qkl.0.gmail; Wed, 11 Mar
 2020 00:04:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vswz4pzLgMtnM5/m3iO4kXLziAV+MZP6eSSxJprkaw8MrJWoamJQAWATlv/iyZxUwTwQ4gz
X-Received: by 2002:a37:648:: with SMTP id 69mr1458820qkg.353.1583910295632;
        Wed, 11 Mar 2020 00:04:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583910295; cv=none;
        d=google.com; s=arc-20160816;
        b=VoO0Yxd9M9LTZag9Xq7o034RLEh7020ssJnEHe/cCCNqPnvS6Z+uNdEYhZlMdbLgMg
         U8zxjF7fSy69SoQE1rhgDg6MEtpSPsPT58VX9IPVEckbp8LhIKg/mf3rorTqToUK9IBC
         i6xU2H6x+A3uR3/OiZEuEON09PoLdjz38UDGL/XMl+BIlrFLhwZz1zg/JSw9mHG9Tb0Q
         OHJ9sUK2+BgOgnKOrSHN4LveQsO2muFRIfhgHX+Ji83wsJl0hZ5Lu0cDqaDtJNlSwDP4
         GfB/HnAHPnzLoAQTN5rvw3KnNe9TdA/NyLpzMwS56tTQtI+7K82yxkKGtQEpYg49kqh1
         xXuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=7s2uLhs4I05xEO5DZ65sykEUUwR9TT8tkO+4T3BAsDE=;
        b=BbIAc+7fBsvoF7T2OGeDniv5dj4Ai9QmyjupmilJEt3DnNt3FJk++YNDzt1NhLxs+i
         cg1noB1oKVsG0etTJQMgLQZwVvcEMtg2TwnPbbarf36wp8uRuJmwbkxG2KgNrQBnFCpT
         BHwZKCieRE2P9Sl/IaJBgEMTc7Zgup42hUgZTs5owzJhxVmbIhjxChT8NofkCAv0WegW
         Mow3aDjPHPIYm1+3pE680Y8fao76MQTMIYX9x4rM61qSMrLzfdztBK8e1c4Rwpgz9YUh
         JC0dt4XberxhtFk7fdp6MeUPojcgw9iz+qA1ipmYmGtebd8Xi7zn3vA+/JabZEeZH65F
         OARg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g8cFq0LA;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id d193si49660qke.1.2020.03.11.00.04.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 00:04:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g8cFq0LA;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id u12so653401pgb.10
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 00:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7s2uLhs4I05xEO5DZ65sykEUUwR9TT8tkO+4T3BAsDE=;
        b=g8cFq0LA300tFTmjb0wOjBJ9W8KRjslYcjhT9Q4VFmkif+di//LNThWRmP3Pzufjgt
         /y/AA70XbnCFiElnKw6SEaNjFUyc8yW+MqRIqUJAZNm4fcUX5x4uXRpfMvdLCDtM7/Ev
         R0iLrYr2RM0PZF5K0ZAgnmBeas9rf8qiAPegGptvz/LYi1pBzCo+qq4n5z7pVVlecnRE
         WACqTj1Lte1N/hXrYYdnSu20Li9Pv/vXkzbAY9g5XJ8uQ/NT6bVWhgXn6cki14Jd+pBE
         hqhfBQge66pIfuKQ6poX7NJTypbu3zklEC6uT+We6+xEZqBCyxacwQJFbu8LIJPZvEeS
         fKWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7s2uLhs4I05xEO5DZ65sykEUUwR9TT8tkO+4T3BAsDE=;
        b=h+tqKFDAFS2xi4e6Uo4p5ppG68hQBI4pUZwFwO0EonzRFHxmTUJ2jqi0K3gkQgMaka
         3cvuncWnOkh6fCRCE23WJ8ObQQP5gjdU98/K59Is6M1sFIRkQ6I/Rnk0P0XVbVN6DvPy
         tyIWAm2vA46FchC0wX4XxUihUExnvxpr3SxYL1bkIGhwoYum+XPeOO76E3C09XOd0ZHr
         d4yBwEzXV+Gmym1UEl66TQoSgjY4oOSrILYcYovDwuvfwDFPgIEMnf8/aIDU6CietFGa
         s+0vvtL0X3+txrjJQ+FyJXQV2VxneCnNmwgcFahBpgu5oyGSOOm916SOeMP1jLji1lWN
         YBlQ==
X-Gm-Message-State: ANhLgQ0j69n5bdG4A2PlKUgH2fNdyWuSouJx1A85hlJJvaQuq1lpKYth
	sPivC/4VEGZRiI1MhiOhg/Q=
X-Received: by 2002:a62:8202:: with SMTP id w2mr1482179pfd.117.1583910294572;
        Wed, 11 Mar 2020 00:04:54 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([49.35.84.144])
        by smtp.gmail.com with ESMTPSA id j5sm9801622pfe.32.2020.03.11.00.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 00:04:53 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: rtl8188eu: hal: compress two lines into one line
Date: Wed, 11 Mar 2020 12:34:47 +0530
Message-Id: <20200311070447.6909-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle, compress two lines into one line and remove unnecessary variable.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 16a57b31a439..aa6354b9ffa2 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -40,8 +40,6 @@ static void _ConfigNormalChipOutEP_8188E(struct adapter *adapt, u8 NumOutPipe)
 
 static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt, u8 NumInPipe, u8 NumOutPipe)
 {
-	bool			result		= false;
-
 	_ConfigNormalChipOutEP_8188E(adapt, NumOutPipe);
 
 	/*  Normal chip with one IN and one OUT doesn't have interrupt IN EP. */
@@ -52,9 +50,7 @@ static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt, u8 NumInPip
 
 	/*  All config other than above support one Bulk IN and one Interrupt IN. */
 
-	result = hal_mapping_out_pipe(adapt, NumOutPipe);
-
-	return result;
+	return hal_mapping_out_pipe(adapt, NumOutPipe);
 }
 
 void rtw_hal_chip_configure(struct adapter *adapt)
-- 
2.17.1


