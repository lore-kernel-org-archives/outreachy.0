X-GM-THRID: 7022901752311578624
X-Received: by 2002:a17:903:244c:b0:140:4b4d:bf7a with SMTP id l12-20020a170903244c00b001404b4dbf7amr6244300pls.45.1635146735895;
        Mon, 25 Oct 2021 00:25:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:f546:: with SMTP id h6ls867365plf.10.gmail; Mon, 25
 Oct 2021 00:25:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyE36+zGhxOh9aWXiHP7G6/qtXRY8s1J4Fl6lM3IfxNT0RriRHoMcxeRUURiAT4npkLdzNX
X-Received: by 2002:a17:90a:5642:: with SMTP id d2mr33438211pji.200.1635146734343;
        Mon, 25 Oct 2021 00:25:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635146734; cv=none;
        d=google.com; s=arc-20160816;
        b=FXy2qlzudku7JYywuNZQ2NEJNhWlwX57JkCxy+Dk/nNQRtb1xaQv0YlEGm6q2GfTmJ
         +vrBSHE8JpP221e8/DpH+3wPNKm+A9WyzIxFhiYGB4bCmJaj8KwzIpgP8ubRgHnMYxW0
         cEqQvyc1+//I/6BOoPdYbxOOb+ySTqLwB5/VRtxaaV6BtVm12i0gq2PiMLwIuiZkTF4D
         CrJDFDEQd+3TXuiQiX7j6SeRKimTyQiM0CzEUA0y4eTkJIJEki9JvGVPe82hMxVcjuUX
         LvFlr6RJ1KlYdMkYsO1j3mutzOM0lSU7EoHchHLj/oWApU96EU4Dg+3+x6H8f/gnnL3Z
         aX8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=6NvuoX+y/aQP32R25dGmgeemawZN8QxRAfe7RYJ9bLY=;
        b=d2c9p3ob2o146aY7uw4VIf1FnrRagb4cIPKt6yV5bZRh8h60BH7zSQbOkgU0p48C8c
         896GYVDN97qjUn0931lPmYAxzHfcJDIIOZgSjtdXtsylIaUiq+xG3leO1aE7p+p2FmlE
         daqvpSa70tY3BqR7fI2rbcmxmD6Xl6oDf4Jba71o05ZRLTq+18AHTU+FmGt9FhUI/6Ae
         dSqED9rd/kvqDZFO3ai+qO9Bqgkt6cE+z3gDMCHPAsqI6dgsMtN1bFlCEP5tg/2Twwft
         t0ik+KbVeUbBtyqdNleQwGSrrMC5mHFAW0YPXOwvaAqMOnZzWexUd3XEyhzK24mnReH1
         H4aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=CydAgOUg;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id o17si1070632pfu.5.2021.10.25.00.25.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 00:25:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=CydAgOUg;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52c.google.com with SMTP id 75so10058434pga.3
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 00:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6NvuoX+y/aQP32R25dGmgeemawZN8QxRAfe7RYJ9bLY=;
        b=CydAgOUgtPZGUtp64KxNowVTwE9xzIhDYtnfLHwLFgLPJGlaHRBQhyFuQuu+C2b0t3
         /IDYmxsL55PUP2AC42nn74+1ids3M9K1vWqw3XCwmlaLC8JMftq1xM6H+u61lVOfM6qZ
         TQj4sOgN9mAWUZButvAw68x2JsiuhqOZI2ooV1mPjlwObgFUbTLjwTVM2TuQG324HaAJ
         68SYuy/uojXjtupMmVn63X4Q+q7YIvqsPtTOHSGFPowROWjZQR1h8gQwjCc8wHZGhh1U
         xOu4AWQ2XClVGlexMlggx5aFaDlT20kJ/tAYzBbPtagUzs9A62CrrUZPxU3HRSUr9nwp
         xhXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6NvuoX+y/aQP32R25dGmgeemawZN8QxRAfe7RYJ9bLY=;
        b=qW2MB23dZ1tP2ld7Lta674g4qljTDh8r+VnQ2BRx4mxZX4/NIgI7cr5/rAKc7P0aHn
         sImEGa8TEDuMjX2bhidcwN9xRaAHJ6K2fj9+HvnbiWJSumC4aVWbH7Tlj6R3EMhN+pyd
         VVcgs1uVc6XTVnUtqtQEqQb003C4gL8Jl8rxjaGDZjP7RAT5D1pdkLh26s80Uq2jGFck
         /YcAgX3i66oa7pG9wbp0ZIswemAu+pM3UfVJEWIJJWU96bSisqGYW74XGCw6A7jPOkCd
         tkRgfDOHxkxabvF/Qo7K20/dsZzVe0w7Y+DuCHRj1KoU/ShFmWW6vWkRHMj9kZxZ51Gx
         OkKA==
X-Gm-Message-State: AOAM531MlF1Kp+WRYyJr7ThDMYNsTbRehygbI5onJo5+5rU93iU5mMbH
	yR8MKJscwLFKH+tRIyZVOPA=
X-Received: by 2002:a63:6e03:: with SMTP id j3mr12359099pgc.465.1635146733963;
        Mon, 25 Oct 2021 00:25:33 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from kushal ([115.96.219.235])
        by smtp.gmail.com with ESMTPSA id mp16sm17576256pjb.1.2021.10.25.00.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 00:25:33 -0700 (PDT)
From: Kushal Kothari <kushalkothari285@gmail.com>
To: gregkh@linuxfoundation.org,
	fabioaiuto83@gmail.com,
	ross.schm.dev@gmail.com,
	hdegoede@redhat.com,
	marcocesati@gmail.com,
	fmdefrancesco@gmail.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	mike.rapoport@gmail.com,
	kushalkothari2850@gmail.com
Cc: Kushal Kothari <kushalkothari285@gmail.com>
Subject: [PATCH] staging: rtl8723bs: core: Refactor nested if-else
Date: Mon, 25 Oct 2021 12:55:28 +0530
Message-Id: <20211025072528.152028-1-kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Refactor nested if else by combining nested if into a single if condition and removing unnecessary else conditionals which leads to removing unnecessary tabs .There is no change in logic of new code.
checkpatch warning : Too many leading tabs - consider code refactoring

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 65 ++++++++-----------
 1 file changed, 26 insertions(+), 39 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 0f82f5031c43..eb10b6f85426 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1192,46 +1192,33 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		p = pframe + WLAN_HDR_A3_LEN + ie_offset; ie_len = 0;
 		for (;;) {
 			p = rtw_get_ie(p, WLAN_EID_VENDOR_SPECIFIC, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
-			if (p) {
-				if (!memcmp(p+2, WMM_IE, 6)) {
-
-					pstat->flags |= WLAN_STA_WME;
-
-					pstat->qos_option = 1;
-					pstat->qos_info = *(p+8);
-
-					pstat->max_sp_len = (pstat->qos_info>>5)&0x3;
-
-					if ((pstat->qos_info&0xf) != 0xf)
-						pstat->has_legacy_ac = true;
-					else
-						pstat->has_legacy_ac = false;
-
-					if (pstat->qos_info&0xf) {
-						if (pstat->qos_info&BIT(0))
-							pstat->uapsd_vo = BIT(0)|BIT(1);
-						else
-							pstat->uapsd_vo = 0;
-
-						if (pstat->qos_info&BIT(1))
-							pstat->uapsd_vi = BIT(0)|BIT(1);
-						else
-							pstat->uapsd_vi = 0;
-
-						if (pstat->qos_info&BIT(2))
-							pstat->uapsd_bk = BIT(0)|BIT(1);
-						else
-							pstat->uapsd_bk = 0;
-
-						if (pstat->qos_info&BIT(3))
-							pstat->uapsd_be = BIT(0)|BIT(1);
-						else
-							pstat->uapsd_be = 0;
-
-					}
-
-					break;
+			if (p && !memcmp(p+2, WMM_IE, 6)) {
+				pstat->flags |= WLAN_STA_WME;
+				pstat->qos_option = 1;
+				pstat->qos_info = *(p+8);
+				pstat->max_sp_len = (pstat->qos_info>>5)&0x3;
+				pstat->has_legacy_ac = false;
+				if ((pstat->qos_info&0xf) != 0xf)
+					pstat->has_legacy_ac = true;
+
+				pstat->uapsd_vo = 0;
+				if (pstat->qos_info&0xf) {
+					if (pstat->qos_info&BIT(0))
+						pstat->uapsd_vo = BIT(0)|BIT(1);
+
+					pstat->uapsd_vi = 0;
+					if (pstat->qos_info&BIT(1))
+						pstat->uapsd_vi = BIT(0)|BIT(1);
+
+					pstat->uapsd_bk = 0;
+					if (pstat->qos_info&BIT(2))
+						pstat->uapsd_bk = BIT(0)|BIT(1);
+
+					pstat->uapsd_be = 0;
+					if (pstat->qos_info&BIT(3))
+						pstat->uapsd_be = BIT(0)|BIT(1);
 				}
+				break;
 			} else {
 				break;
 			}
-- 
2.25.1


