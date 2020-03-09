X-GM-THRID: 6801912764487958528
X-Received: by 2002:a63:5712:: with SMTP id l18mr17561122pgb.246.1583772328380;
        Mon, 09 Mar 2020 09:45:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9a81:: with SMTP id w1ls4568059plp.2.gmail; Mon, 09
 Mar 2020 09:45:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtUkshM9V8SYxfgiYFvvCesYpLVHWOwAb+eGS3ERX00OJTtf8LcJr/QgwRXBta2uWS/YuaQ
X-Received: by 2002:a17:90a:e012:: with SMTP id u18mr139700pjy.190.1583772326982;
        Mon, 09 Mar 2020 09:45:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583772326; cv=none;
        d=google.com; s=arc-20160816;
        b=gLryoRT95Ve/w6+Gb9w35pnG/7mZWNIpLMEGx7nA1lpQ7rLXakao8ASFMZZiZKUS+B
         +7Dv7+m+BjybbkyLXVfp4wzGD5IIPw1DHWrIrbnQVCfZlQ8ipJIIs5jvMio6R9+5iC05
         NUXvtehzZfnuwYTYOCW9JXhGhMwIEZFo/KcwQbG9JPCalPWfuBwEfwXv66hYXrwjVmey
         bgSS3MzJm4lsVyzMXnHI0CDhckI2+2LjeGg/nm1iVT9ml+RFDFMXRtNRvY8pHwH7lBQD
         DnpV8i2KQmnd+F/l4DhQx1a/rgE/H7pkHqn1E79F3+R6/R3R7Q8Lr0Ber4xieDoWpxRO
         cchQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=2ul3uFAdkxq2D1qeSnk639xCPeLad7nU0DGZikUorW8=;
        b=EapWQi951xh3wxdm6+GZfP04T+qaAZgqZbvp9g0RJaQczS0ehhuBTOV72WfWQVewyY
         VWaZAjHZGwqtn2oB7mw6GKfBhdS35P5CI7tHJXR67p6aZzPt8qb6CT17DiogkaF+dxar
         dJLITbiSVjSD1QVRXqKJGNUbgAA+dE1ytuFIByVH1wDqUHE8Ey6YrII/B2jPniZ3ccJx
         tstIVDqsHiuU4+U11P31zIoGDTPmduyhH3TpaX5m+j0EHBvzTaMoDH+TkfX77JQ063x9
         dQUs+n1QbhaYzkLIuMiH/rGx7fu6eeUdCbtjGsN368EOtVuFrCljeOtYfWa6N5I6bRVm
         Udaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=imJA4uzb;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id h10si2431pju.1.2020.03.09.09.45.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 09:45:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=imJA4uzb;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id b22so4197418pls.12
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 09:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=2ul3uFAdkxq2D1qeSnk639xCPeLad7nU0DGZikUorW8=;
        b=imJA4uzbInmey0feiN6+S305zzZBWyljkvn4X3aV0F7wmx6UwMRGIRZx+sPTh2nznj
         XriOwGVqBxzGo5A/RFa2wMSFiy4/4fmMTIoLFALgZAbF8OVQ4O6afjstxs5Xrl8TU0Ms
         xhoHLHkuYIjYcUWheq0F0s/St86wh6kIa4GAVIfeNnrJFAyCLnGjZLFflJlsA/P8JhzC
         KxUBxme7nNGuYWe7oTJieUhvsmw8tVeR7Gp8CPTuwL2csvuthYsmKRSWeUK9Et1hueZw
         j+9nT4jB7jwWuAc4gNhu+94n9f6YIWcUnaNihqQjxXv0LGcmu0fdqjcOCS+DEVyyUKyu
         MRKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2ul3uFAdkxq2D1qeSnk639xCPeLad7nU0DGZikUorW8=;
        b=ug/NiNgK02eqZSoMMao1LzKbqrGSxb2ZHHqr2DoPOiIAdtlwyZJJ+omSLwCbi5y2MA
         nwI4i5miJ7IOKVLd0lL7TpIxXlgJYimTPyiRx8Ly+OB177nnfZiEcjnE+bGBZo/Qwz9o
         jAvCSE5a0+pUdyMsjd7BnxHJiVXXxQiKoGo5d1ip+KdRPtS9pUrOufifORQmwuG4kgdL
         5gOuu8TNEJTtP6jB5C/S5dwMWQSpPJum0Z+5oz7lwtXLQW02/PHw83HKsUKH6tyjsSFN
         +277iltcbB7qox7D60Q6E/jVocq9H6CqbyXBu4DBZs9GALFVJI6rR4RFK1/IXsx39BDY
         S6aw==
X-Gm-Message-State: ANhLgQ0j0k+k4XqZ4bUb65HwYCmHtHYJTC6OoH58TPeSARaRfJ0BmUNc
	eC+R1OW2W3Mbq9hi6pmtpc8=
X-Received: by 2002:a17:90a:bd96:: with SMTP id z22mr203711pjr.172.1583772326530;
        Mon, 09 Mar 2020 09:45:26 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.178.183])
        by smtp.gmail.com with ESMTPSA id z20sm16293593pge.62.2020.03.09.09.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 09:45:25 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: jerome.pouiller@silabs.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: wfx: alignment should match open parenthesis
Date: Mon,  9 Mar 2020 22:15:15 +0530
Message-Id: <20200309164515.4880-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Align code to open parenthesis.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/wfx/data_tx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 8b0c52392319..0038dc7666cf 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -301,8 +301,8 @@ static void wfx_tx_manage_pm(struct wfx_vif *wvif, struct ieee80211_hdr *hdr,
 }
 
 static u8 wfx_tx_get_raw_link_id(struct wfx_vif *wvif,
-				      struct ieee80211_sta *sta,
-				      struct ieee80211_hdr *hdr)
+				 struct ieee80211_sta *sta,
+				 struct ieee80211_hdr *hdr)
 {
 	struct wfx_sta_priv *sta_priv =
 		sta ? (struct wfx_sta_priv *) &sta->drv_priv : NULL;
@@ -369,7 +369,7 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_rate *rates)
 }
 
 static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,
-				  struct ieee80211_tx_info *tx_info)
+			     struct ieee80211_tx_info *tx_info)
 {
 	bool tx_policy_renew = false;
 	u8 rate_id;
-- 
2.17.1


