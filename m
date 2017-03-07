X-GM-THRID: 6394866566201081856
X-Received: by 10.25.104.21 with SMTP id d21mr426692lfc.31.1488920898518;
        Tue, 07 Mar 2017 13:08:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.1 with SMTP id 1ls194479ljh.31.gmail; Tue, 07 Mar 2017
 13:08:17 -0800 (PST)
X-Received: by 10.46.71.15 with SMTP id u15mr512572lja.9.1488920897960;
        Tue, 07 Mar 2017 13:08:17 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id p144si169415wme.2.2017.03.07.13.08.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 13:08:17 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id v190so3029488wme.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 13:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7+gRigC4hpMXPrmP6u0pvt+qbEQd3FyS6UUpaiSO+Hk=;
        b=R/SOcYwummh76zQJZL2mGM69bh41tYzs/LW9PGDYyL89Ccq3aeiLk3bgByPqQ38VxX
         HxrQua3Ls56XanhTAMVu1NZz4RuVg+kNuP3UzL+T1uN6SwJfxmzDSeH9N2y269OIgbtt
         mSY+4yf5vQlxBwCWymfC3qcmIv15oPIfzOTX7vlSVhzGJ+9RxGW9K/QOHB8Z0Z6NnZfd
         ApCcxMMXkeBbc5B11fW9oaZZVscHVlzAXc+LxMySQEu5SIDWDf2W7LlGVelsGKFhA82U
         q6u5Yx9fJ2gelM69pOZQPyOIWLplcXYDqt5C4KJPDEZ/XpAcNcxeQzu2sDdNxn2hRSWb
         JfGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7+gRigC4hpMXPrmP6u0pvt+qbEQd3FyS6UUpaiSO+Hk=;
        b=CKXzCApUp2+qoEMZDIwEbotU1JaRdlHOb8Z4l8NFc32mXUEDwlEyVZE01mSqUREKLv
         mVxfa3unyZSGiakfcfvy4qpaUZHLAO9YSIamUpEu0kPXA13CpWcmo/W6xwcQ/E+MihzJ
         rFdUgvMfxlUI49K75Xww1doDQqMK9PPq/RfRnHJpZ17snT1W8ax4LKF585AzRRuUrC9C
         MVfPgUKGXKwupQj8s4OC2YVzh7cGS/IXJUSzyGV+qWJW9TnMMYddvS+Gnoq5fkgOKH2H
         +oOGTqnTst5IqGzWSpK2VQWlGNFuuV169oehuKuwcXLAatFTSxQsXsGeFCEAKj487Eaa
         qEMw==
X-Gm-Message-State: AMke39nMlMfDie9LIxv+fw9gXvoc6w/QnE2wTsZ2uM/bmMZDQYJlwd2bL+DfC4UFSiTUlg==
X-Received: by 10.28.170.4 with SMTP id t4mr2668020wme.89.1488920897758;
        Tue, 07 Mar 2017 13:08:17 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:8168:a9b6:7cd0:c4cf])
        by smtp.gmail.com with ESMTPSA id b63sm1442740wrd.15.2017.03.07.13.08.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 13:08:16 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: wilc1000/coreconfigurator: Remove CamelCase
Date: Tue,  7 Mar 2017 23:08:09 +0200
Message-Id: <20170307210809.3730-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Change the name of variables to remove the checkpath.pl issue:
CHECK: Avoid CamelCase.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index cff1698..77f9e70 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -70,9 +70,9 @@ enum connect_status {
 	CONNECT_STS_FORCE_16_BIT = 0xFFFF
 };
 
-struct tstrRSSI {
-	u8 u8Full;
-	u8 u8Index;
+struct RSSI {
+	u8 full;
+	u8 index;
 	s8 as8RSSI[NUM_RSSI];
 };
 
@@ -124,8 +124,8 @@ s32 wilc_parse_network_info(u8 *msg_buffer,
 			    struct network_info **ret_network_info);
 s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
 			       struct connect_resp_info **ret_connect_resp_info);
-void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
-				 u32 u32Length);
+void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
+				 u32 length);
 void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
 				u32 u32Length);
 void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
-- 
2.9.3


