X-GM-THRID: 6812465234894127104
X-Received: by 2002:ac2:4191:: with SMTP id z17mr13410975lfh.73.1586187750255;
        Mon, 06 Apr 2020 08:42:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5456:: with SMTP id d22ls391923lfn.6.gmail; Mon, 06 Apr
 2020 08:42:28 -0700 (PDT)
X-Google-Smtp-Source: APiQypKHjJuga8Oswkr9IJVpkr8po6b7GZFPbg6ysWSxCFLc8nkwnxL6Z0d112cWuw7QX+xHyJFD
X-Received: by 2002:ac2:4143:: with SMTP id c3mr6966013lfi.131.1586187748916;
        Mon, 06 Apr 2020 08:42:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586187748; cv=none;
        d=google.com; s=arc-20160816;
        b=CJ4KVAxxFasywCcWWnpslpuObLqQaiMaMScB3ghVqLchwngp+PNLUSKWT9lvtVgUeH
         iCTfkGlig4T+o6pSqBqfa2ABRahf4g14BAfvbahSFpTMKbZ4kIqv58T70muc9qD5nNlG
         kI2RYrjUckZ4mz2461CSpsqWPw0xYgLBwhj8twUPOGIFmsnweAPZTcRqERIYNru3osBn
         JXYVFKWbSpF0BWA42lfXTYjQ9FQW3r78kh5eZrVZQYGDl54eGBkMS5U4qGn1BXvne4zY
         uaSLcs+52hgJOF6RsLKAXK/v0frcm1P3Qhjry/MUJX3pSOsLfEOqEBhTIvoETsKRq0l/
         9gVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=3K8gMiM36SipYWEdlD64ct9CixQlJ38O0AGLqASDY28=;
        b=0TCPm9VHf1m2A36jxpRqfkqfURjpy/gU5bSKq4FgVOOQn0STZ1FTT9dSkyP1+kM7mo
         DBAid3JJBfBWH15B8ewGQxVAECQtHmWOxVAmWMpPFbKFSW/KxLWplWymBt5+7VKvw/tQ
         X6tBbsafLoTeEh8fe+X5IZD+n4PwoJnxmApZTdYabgvCqOJl8YqP/xeA3QqGmlTNLqVe
         bEFQRmnzAIQc8x5Cz550q3nkJbo3Uiz/EAscc9Ed47eta8LV2kY0r+KJxeUm49kg6ar8
         E3fRSYX2oBUAVVNUlKzujv39GspVn5s/e6T1sYM++rqXY2NdFd9gXnk2xPKp7hVKFZLZ
         ojPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id h8si2457lfm.5.2020.04.06.08.42.28
        for <outreachy-kernel@googlegroups.com>;
        Mon, 06 Apr 2020 08:42:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 889 invoked from network); 6 Apr 2020 15:42:25 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.219.218.209)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 6 Apr 2020 15:42:25 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 3/3] staging: rtl8723bs: hal: Correct misspelled symbolic name
Date: Mon,  6 Apr 2020 21:11:26 +0530
Message-Id: <b893adc31b71722df63d0756f0d360e27f896e51.1586187304.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1586187304.git.vkor@vkten.in>
References: <cover.1586187304.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct misspelled symbolic name.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/odm_RegDefine11N.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_RegDefine11N.h b/drivers/staging/rtl8723bs/hal/odm_RegDefine11N.h
index f2c0707aad4c..1c6c08000e27 100644
--- a/drivers/staging/rtl8723bs/hal/odm_RegDefine11N.h
+++ b/drivers/staging/rtl8723bs/hal/odm_RegDefine11N.h
@@ -31,8 +31,8 @@
 #define	ODM_REG_TX_ANT_CTRL_11N			0x80C
 #define	ODM_REG_BB_PWR_SAV5_11N		0x818
 #define	ODM_REG_CCK_RPT_FORMAT_11N		0x824
-#define	ODM_REG_RX_DEFUALT_A_11N		0x858
-#define	ODM_REG_RX_DEFUALT_B_11N		0x85A
+#define	ODM_REG_RX_DEFAULT_A_11N		0x858
+#define	ODM_REG_RX_DEFAULT_B_11N		0x85A
 #define	ODM_REG_BB_PWR_SAV3_11N		0x85C
 #define	ODM_REG_ANTSEL_CTRL_11N			0x860
 #define	ODM_REG_RX_ANT_CTRL_11N			0x864
-- 
2.20.1


