X-GM-THRID: 6802949681377705984
X-Received: by 2002:a05:6638:2b6:: with SMTP id d22mr3180343jaq.59.1583935153265;
        Wed, 11 Mar 2020 06:59:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ab47:: with SMTP id u68ls449724ioe.2.gmail; Wed, 11 Mar
 2020 06:59:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvIFZTtZQdy85oVVMdaFqEQU2s4G+2CvHaKr/0HJI+CbivicLECJrmeA4ht2cb9bnkTlCdg
X-Received: by 2002:a5d:9bc1:: with SMTP id d1mr3043196ion.6.1583935151452;
        Wed, 11 Mar 2020 06:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583935151; cv=none;
        d=google.com; s=arc-20160816;
        b=D8L3t4vqB6rixWfJyF9Gow2Rvj3R68c4REq1OtLaM3zHiS0SH6KTwvG9RyHOgpd+AF
         J2KHlN4t272Ew7JC09DxHYPbI7MTEJJxYctav85f8sTBfplwsQO3MGWVbrQj8JN2B3X5
         J6BkNiLqUlgliSD1IMl1IDADfUeoF2a54GAASWrkDaKWcAoMW3Zj/OvDWevcgI4L4L86
         l0DLwBWIJkKTiCGfXvWPcvjv/ATB3t/p0fcWD30Gww3I4LUL3MU7XjTA8PvnkU+UEg0C
         GXDiaTKySpvlz3gtvQi1Iml5il8pwi623A6A/cLmBUkNDNajFvktyi44buLi3W9dq++m
         kVIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=Rsh1wp6Fd0Yl2sa4e9abEs0k+S0Of//VtbBDH+QzLew=;
        b=m2cSGSmQ0vepfAJWo9zwPzHT61LftXfd584yF2IcTQ3H7lcU/YDNzwdVoi1JJ+wChp
         xwusrIMDFbYGKVNcKRFfjHu9LHGdOKnFLx39QlAic/cltUDBwr6aSkcz3hgURtgN7VOZ
         rLxF8E8Ior65D6SdSC/R6Aqd8nivbgcgZKCB/GsO+tDzitPovPL6/GjjNjcmZ6/74/6e
         YjtM6OjjxTJ9xCOo3bI7X/Sw91RaEmXkmUq9ybq17qsqlK/ZNVfU3Dujg+xMHeanvHXF
         Gg8Wvl20miyCyQz5zxoyWPrp7zmkXRW01Z8TMPmLWNmpxqSsJwz0ZjF06Y4v0Z5V/zKh
         SmJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZMg/4Ose";
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id v13si49235ilg.4.2020.03.11.06.59.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 06:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZMg/4Ose";
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id b72so1378190pfb.11
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 06:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=Rsh1wp6Fd0Yl2sa4e9abEs0k+S0Of//VtbBDH+QzLew=;
        b=ZMg/4OseM+M79oricWCYBpDoxsS2CVvN4cPMGCEe8P3CGHaPQ0w7BTSAkx274h4QJy
         +8yaIiFu0l5ahpzCUGJsrPJIIbm4POb1T75sMToETl85JplEDp0glnC61nH58DoykVZy
         +Tn5OCaCkGz4aqcAGCmadxrFeFBIf/k98brvePZLxpqZZyKO1e9bHE0CEsvcHcK8lnDX
         nUoKoHQGFQmF4aYwItlXO2UWvcaqVTwAJR2Bg1nq7npwmiEl3RA0SnjMwavfQjK1Mpxj
         D6khngidz4Q8aTQnmZm1XshHCvhTzf+44UJsjQx2MwnHDxHqcDZs/44mxarwMROEjBle
         vcBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=Rsh1wp6Fd0Yl2sa4e9abEs0k+S0Of//VtbBDH+QzLew=;
        b=kn1t/hG/hQbG8twGRGQFO5QfGjEHCFwXeeoPM2SntyS0pb2SnWS3VZj9KArZSY36i9
         H35PfVpREyNi6oDZinqtOoCJXSb6WEf7sYihcapmWvL8I+V4kOXsFjJt6yWv3Y+t9H+T
         ctfeuI/5AUGZjJJx4Ef7gozHhzEpx9B9jyfzjhoNIYyZthTgNRZByUmgXM0EUYKPy/Dk
         L+yluVV+zoDxrJk0hLqb6rPjWfbPWq8pd3myONYH3dbguJfXPCkGxyFviSqsyny2KvY6
         rTe/B875DkuYJC+s5QErjnSkH0HSDDBv2NRBjwZ5v81UNlnvv3IS6UdAP9Pz9PWhAjs/
         IW6Q==
X-Gm-Message-State: ANhLgQ32yC5JkcIvVTp1MywgmnH+i8Uu65kcz/aNR2JafLlc4XT2ji9q
	oJl6bhDDzLg3fyCnO1ayDCI=
X-Received: by 2002:aa7:914b:: with SMTP id 11mr3101406pfi.69.1583935150671;
        Wed, 11 Mar 2020 06:59:10 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([2405:204:287:fb4d:18bc:a849:c699:3914])
        by smtp.gmail.com with ESMTPSA id b11sm5799287pjc.27.2020.03.11.06.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 06:59:10 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	daniel.baluta@gmail.com,
	nramas@linux.microsoft.com,
	hverkuil@xs4all.nl,
	shreeya.patel23498@gmail.com,
	Larry.Finger@lwfinger.net
Subject: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove unnecessary conditions
Date: Wed, 11 Mar 2020 19:28:59 +0530
Message-Id: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary if and else conditions since both are leading to the
initialization of "phtpriv->ampdu_enable" with the same value.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 71fcb466019a..48e9faf27321 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2772,13 +2772,9 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 
 	/* maybe needs check if ap supports rx ampdu. */
 	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) {
-		if (pregistrypriv->wifi_spec == 1) {
-			/* remove this part because testbed AP should disable RX AMPDU */
-			/* phtpriv->ampdu_enable = false; */
-			phtpriv->ampdu_enable = true;
-		} else {
-			phtpriv->ampdu_enable = true;
-		}
+		/* remove this part because testbed AP should disable RX AMPDU */
+		/* phtpriv->ampdu_enable = false; */
+		phtpriv->ampdu_enable = true;
 	} else if (pregistrypriv->ampdu_enable == 2) {
 		/* remove this part because testbed AP should disable RX AMPDU */
 		/* phtpriv->ampdu_enable = true; */
-- 
2.17.1


