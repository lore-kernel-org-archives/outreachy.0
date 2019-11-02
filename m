X-GM-THRID: 6754497626903674880
X-Received: by 2002:a0d:dd09:: with SMTP id g9mr10082011ywe.95.1572654030481;
        Fri, 01 Nov 2019 17:20:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:ad26:: with SMTP id l38ls1048348ywh.6.gmail; Fri, 01 Nov
 2019 17:20:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw7kwGttOjUiz/6sZMQIlMA8U2KDKiHTLUnGABIn/8aS5UGLdV3azVxeTRUyeZWPI7nEKYJ
X-Received: by 2002:a0d:c802:: with SMTP id k2mr10978680ywd.358.1572654029294;
        Fri, 01 Nov 2019 17:20:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572654029; cv=none;
        d=google.com; s=arc-20160816;
        b=dYf6xOcMDGcPfqAUIIx+T7ihDOxES0r0X33XwUkTMB6D6jkLkkqqllt0hbxQ0/EqLd
         SXrtAjHlLXxSDzkxkj4pIcJFqNdioGvcNa5XIjfQbqXfyucNV3MyPy5RSLs01Ekoat+p
         kH/S7H4DMutd4rMLuFLEWGSXmWUDgd6nOPc3OaHwSDCKQLULOEACGzFbZMJeOOn24/O9
         1l5vHJLRFaukiuKqpS2nxMlBVElhorJrI9knIkv3DC+X3en7aRxdch1JmF0PPgd6Q3cR
         /HCmggNVFnHFWsvfr7IPv+QGgTQDLVwFUUdY9xaQjIFylpX4KddPJl4hcx4SINX8m10k
         jehQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0M0FA1unlp8F1Z996jxzOlmlSaGicPhBII8CqVqj8hA=;
        b=BT9sYzyUiCkKkJ+YEx0nKAqpqV1eHQSoP0sRTc25XCh8IsXKvmIC58IlErFIPERbF2
         Ws0h75QtZ//MbpJ6I5JEiJlSfbJzDaSMkhOBW1kuqIUz96MAjq2Vvyfc35j2wtXlJWoF
         Ls9pYtQQBhu1irDSeJVmaorj6B5Lv2o1zGingZTAfo8RcXj3T/QoRTFXmVZXb7Asace0
         dZrPCgKQgH3O78nMJREPlEuO+layG3KGk6Uwh6KJXctDG8kZBUR/U3tcWpJR29ju281a
         2Cny0b/iC7OD1zq/HvW1gpGy8mQiITDrwCDbyZW/XrG4mvTsx5msszAVRzgPdqEWxzMx
         MPKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mKROfTSm;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id j136si387879ybj.3.2019.11.01.17.20.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 17:20:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mKROfTSm;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id l24so7428703pgh.10
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 17:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=0M0FA1unlp8F1Z996jxzOlmlSaGicPhBII8CqVqj8hA=;
        b=mKROfTSm4QhHWPC91kQBTj8+azGrVUnmq41zLleJvFxlDTbC59zZV1DNX046pLmimn
         f/XlJZbBO82uFaLyfTOqxAr6OdSDeEGk62d9/2pLTU3WIW1/L8Fy+AjpKTufTfaYH+Sx
         7m5Cx2K7z+ijfkkJW+gsb+6Feq8X8pY1ZLueVQUXFE9NYexoEKJ9cW3Zp9nUemNbAWyC
         A5soLEHMQsWKMUJ4CT0+b8X/pzx5BmqzI2yq2/QJJIdBcqmhoyimsZ1/wmojlVkh/dZ7
         vB64jUqhpQf4KOFARU9RCTVUbDnwU3vsQWxDGvZOkn2RQzFFS45QCuz0H8AExOug0kPw
         5P3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=0M0FA1unlp8F1Z996jxzOlmlSaGicPhBII8CqVqj8hA=;
        b=D6c1R7+3HVQP8xDsUE+LpBL8EaAo/AqHNWXHRRRlIV6PX2LLSDRFdztmVxqYj7tjQR
         U4k0XcyNVfr2iNDNBDxYASBOCiliBgfdHbxePDxnLECHITZduxGFUsO3arIU2LTuOb5E
         BvlzB0rSRSD2iyT6ATzyaM4gluyjDgcHYAQxo2LQmnUxpH6S9E5xfXpFzemxKjKMQ+O6
         1AVAmlgjKn9j+wjxnR/R0hKiNZZlKIuuq1dTmW0/XOxxDbXtfRRn8Tjyz1rNFx+9Mziv
         lkB2I5hWiq3DJsJuDrXBzUA3rOt9Yea61KHfebxTSa9vzC/SzVuj3yoTPCJ+0ibz+BVG
         H2oA==
X-Gm-Message-State: APjAAAXV2lZaP9k65qLvtt7Gz175M7GdhnhXzGl18Mzti9JE/9nLA5XF
	ZdN6MSGLQav3asYhMKc/RUCS//LzewI=
X-Received: by 2002:a63:541e:: with SMTP id i30mr16390004pgb.130.1572654028523;
        Fri, 01 Nov 2019 17:20:28 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id n62sm14782144pjc.6.2019.11.01.17.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 17:20:28 -0700 (PDT)
Date: Fri, 1 Nov 2019 19:20:25 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Fix incorrect type in argument warnings
Message-ID: <20191102002025.jsdzln5mzuftbqoq@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Fix incorrect type in declarations to solve the 'incorrect
type in argument 3' warnings in the rtw_get_ie function calls.
Issue found by Sparse.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index db6528a01229..bb63295e8d4e 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -83,7 +83,7 @@ static char *translate_scan(struct adapter *padapter,
 {
 	struct iw_event iwe;
 	u16 cap;
-	u32 ht_ielen = 0;
+	sint ht_ielen = 0;
 	char *custom = NULL;
 	char *p;
 	u16 max_rate = 0, rate, ht_cap =false, vht_cap = false;
@@ -760,7 +760,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 			     union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
-	u32 ht_ielen = 0;
+	sint ht_ielen = 0;
 	char *p;
 	u8 ht_cap =false, vht_cap =false;
 	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
-- 
2.20.1


