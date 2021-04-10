X-GM-THRID: 6949457058068430848
X-Received: by 2002:adf:f80c:: with SMTP id s12mr10700381wrp.115.1618046578399;
        Sat, 10 Apr 2021 02:22:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:3544:: with SMTP id i4ls5376833wmq.2.canary-gmail;
 Sat, 10 Apr 2021 02:22:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxbKkyQYxdCBc+kF61RFdaV8ho0D2AbFIj8N97ABfbtlqOAeH9c24zX1Wg06qeYbZ73Oga1
X-Received: by 2002:a7b:c24e:: with SMTP id b14mr17464951wmj.73.1618046577059;
        Sat, 10 Apr 2021 02:22:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618046577; cv=none;
        d=google.com; s=arc-20160816;
        b=aZjxD1MueZ6bh8bTR5dmbUtAEsjikIT6gAVYRRe9UA4PAS54AD6GCD5+FWmy5Ev1zI
         Ab5CwH4AoOK6PtIRMSCqvp9qRMgCGGpXmH5/rC291jMrePr/QXSptJ2DjYg82AoMNwDc
         5USNrf5X61gdonq+xxuHslDFzRn8KzhrWZeHwFGN3dsbeZzvSr2fKlQGoOKl3cWQ0E72
         awPFvZxNqbefjcwKQpvbvYjShcf3L7W9iZXiujHitjzq+mqTXpj0g6SH9N85GTF+VfAL
         npmNrTKarmkzKJntDEx3Lx7ErA+hefrtXNUzCUnSlI7P9JGj7czH7SZUkdyApP5FwpL0
         99KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZSnOFIesKBCVdD0WKupHufVEiQpga/uUTH6Sx1Oc/oc=;
        b=bnfbaYLpOziGN9AHQkRyC7WyRygfoQiTblRrbrN8YTAaHymOSOwLu1xJvVHYYn1Jeo
         u9kHtsCJlO/bD+hkqfLtJeES60EH6fYOnhrtT8uYmrxZKhZ9c5AjJj8BttAswbp6ai60
         NJWqoNjeaY1P420QzSR6suhxzZVUHRkXDjGH8OtDepGBt/pQt8BCdmkEJ53ICRAc8pjY
         6geJpwHvu53RKN4N69g8LJJqDsrxGEmoKB94hzo/3BrFWWCxvF0CNehYHcvIz+zhK/ZA
         7639/SsNhMDO18UezwiHEggZkV0LxRa62G8e7OrkAU7J1iemUzcIfsSQh6eulqHFnJt7
         Y0JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="X5RFo/3G";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com. [2a00:1450:4864:20::631])
        by gmr-mx.google.com with ESMTPS id b5si478130wmc.2.2021.04.10.02.22.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 02:22:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) client-ip=2a00:1450:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="X5RFo/3G";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x631.google.com with SMTP id r9so12317124ejj.3
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 02:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZSnOFIesKBCVdD0WKupHufVEiQpga/uUTH6Sx1Oc/oc=;
        b=X5RFo/3GVWmXIAANlMsEGxClbqtDEvC6CCQpZgHR/1hHEnFzQYYYOJlDyMr2YMS3mL
         2MyA4DVWfY19rAuM76nUaCBmr7H6WL9+FrRR+u/caHi2yZ8rmg4Qe9H5fnSRGNTvlKMX
         pzt0fiJNNBdQaeYDMnIDArz5w6eGZN6WwOmAZL023xpxVOYew+fNv2IRj5xANvz3lz6F
         RYEHb3bGpP7ZhG8OeDB2UMNjh3p6yyuoOFHX4qS5A8A6078ZvKJTNvUH9vyY+H07Osi3
         tQ5BLQ+jBt/FmkpkqmuitZt/Agp+n9i1AD2RnGPUx4LB6akfDbYgSVuIwRSXjVX93sMf
         loRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZSnOFIesKBCVdD0WKupHufVEiQpga/uUTH6Sx1Oc/oc=;
        b=LObsf1DmKUX51B0wNiYxvmC5dUaLjvo9liL3ngYY6mLnBfi83P/AjvnXDc1CnE05TF
         f3BfzqlTsSGHf5+VhB66mWS8aO0UMEnUe0XaWQ84oNpTAGBdJ2vEXQNRpm9qh2u2L5qb
         b0+0b7M4OEYEA216hZ2cfVfvcO1SCpA7p1atOMBhT6dsyJ54vcBm4hQ/O0Uvy90aEJwF
         5HR8oGvPtr5O8d7LBJqdAhECphPm7ar5ntHHTv5lRP1o6hLu+AYVql7JD/PKg/aLgxxL
         hCPvfFKtgP0+yPlFHAc26uhFI3qI5rv6rRWvU+9V84QTCkjj4kWcZTp9bP5tQFKYxjZe
         wslQ==
X-Gm-Message-State: AOAM533ax9/ZkGvs/9sZs8Dk/wcu7wFgdJPvGNxqN3MfmPPs8pzlfnca
	02KqIqLrqJ5EjEiyhVmT+K0=
X-Received: by 2002:a17:907:d09:: with SMTP id gn9mr18916239ejc.538.1618046576868;
        Sat, 10 Apr 2021 02:22:56 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id a22sm2801624edu.14.2021.04.10.02.22.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 02:22:56 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH 3/4] staging: rtl8723bs: core: Remove an unused variable
Date: Sat, 10 Apr 2021 11:22:31 +0200
Message-Id: <20210410092232.15155-4-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210410092232.15155-1-fmdefrancesco@gmail.com>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Delete local variable "u8 sec_idx" because it is declared and
initialised, but never used.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 2af66a18200d..3fd8a4261ea2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -628,7 +628,7 @@ int rtw_get_wapi_ie(u8 *in_ie, uint in_len, u8 *wapi_ie, u16 *wapi_len)
 
 void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie, u16 *wpa_len)
 {
-	u8 authmode, sec_idx;
+	u8 authmode;
 	u8 wpa_oui[4] = {0x0, 0x50, 0xf2, 0x01};
 	uint	cnt;
 
@@ -636,8 +636,6 @@ void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie
 
 	cnt = (_TIMESTAMP_ + _BEACON_ITERVAL_ + _CAPABILITY_);
 
-	sec_idx = 0;
-
 	while (cnt < in_len) {
 		authmode = in_ie[cnt];
 
-- 
2.31.1


