X-GM-THRID: 6674542859228545024
X-Received: by 2002:a9d:193:: with SMTP id e19mr4722266ote.12.1554043339326;
        Sun, 31 Mar 2019 07:42:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:eb8c:: with SMTP id j134ls1369943oih.0.gmail; Sun, 31
 Mar 2019 07:42:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzAZwts5usKSxFNBfrndW2w/D+H1C5TlJ/ZM6fbK8LckEoqkI7NxZjYRqoOO0aWfK3BMd9b
X-Received: by 2002:aca:57d5:: with SMTP id l204mr5720508oib.14.1554043338739;
        Sun, 31 Mar 2019 07:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554043338; cv=none;
        d=google.com; s=arc-20160816;
        b=ac9Exh70Rie0CnDHljS/iRQPEVo5XkuOUlqFvKRhRBuVhqVXJ9OkJ9z/W53ciA1fAJ
         wPXwFE1Rj2nLvXuVLW012JjdGyQU2/hv4Cm+EW5cfOUZaIcr8U/+c24DD3Z5IAsYr0vs
         5+aafNJXVfuqYCWH6PB7DVqtX/E+275XS+ZVll/m5FHFA12e20WkGHoKRkyFd9C5z1M0
         yjpM/n3av7IVhob+b0TNMWWYA/37itMjlmYRAY68RmIEXpIrXNHelpD0GvapYuzrY+Gw
         ZpcJZNXQAuSiG9p2hs/kZzr9wY54hrvx6BafVcy7OmnJmPF/d3vwkIUWFdc6F0kR8OGG
         LesQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=cabqKOX6SSVtAbOHdU+g5pvEbOe6y9bswchhoEpnJXk=;
        b=HIvCJcrGWl3SfNPAQogqjTd6bhGWop47CxPowyOXWdk+Mo/VgLJ2w4JR2Yejk6lUGN
         K0TtHP/1N6rsNPjUJ4QC+pmGWXRULYe4pWMiRruoYNhIj2iLGsQIPLy9MRMRXI9xKRu6
         91JPXWHwcC6oieugNZR8l2KpiW3BxWwAt6TI5g0dQSldXfZbZU3069etfx7Ur8dV9Rv/
         3Nu9VwKyapacGPBUNj+Z++a4pgCWKtdKkiXV05WDMDX7K+8m2qFIqD1J5JTTFXsQ7zeS
         xvBGZsiO9i3g+pFRzn6LvUfaiDewLt0TLuySssn5Ypmp6uFs9xJTlDXV/JdHini0QrE7
         MF8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YRUZixv1;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c13si348248oto.3.2019.03.31.07.42.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 07:42:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YRUZixv1;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id r15so3247265pfn.9
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 07:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=cabqKOX6SSVtAbOHdU+g5pvEbOe6y9bswchhoEpnJXk=;
        b=YRUZixv1zDXvU6ny5ht4PZsaPLl5Xsuq3SqLY10PKDUmcyo5Lo37366vhfvyduE5CQ
         sfrtBRIegn/2walLlTYRl1siz2hrN8b3KLPPiwFUturRD9P8CgvRG5gAA2+9B/x2z0QR
         +T/qneVz5bzNdJEaNGPG7d50ivdscAzrzSgeV/+zi0ITaoFsnacaBtV5dLdExq463BuH
         Yi9Ukx0UZletS6vHaInv3kUlHgJyryZ9XeSemR5nSCJa/UcnTK4Pt7Tp7A9DuIsRJYHC
         RcnVVDWRRk5I5t/xIYinE06+gYfu/hJnFRd3vDaizkxpsmy3KCITRhbT522uywZ/Z1J7
         Powg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=cabqKOX6SSVtAbOHdU+g5pvEbOe6y9bswchhoEpnJXk=;
        b=sRY0te62wxvi/3lqYapWtuZjv3dtNKcz9s11AGZ5eaarF7TryOOpkCGub2l6W4rhNL
         0KkYYdW1cgLfsYGZA728JGv+p0tXGVm3RV1gujayK35xzPjI1ajRDcUG2ulmZ34tXb63
         5iNpuEOA8zxiLyX+Z1f8+6em+0b27Jfg+iU6O9/HsqfzKCQD9Popq3UK+25ZWkuOF793
         j1u4/bAZXhyjMgpmZb/23jOH66rCDMZ49Q8a6HbJFuUPW84Fpv5lg6WjkCTo8oL1fDU7
         CMxk2WppkxeT8MbVgveSIL1o3VH3Ao9hRvSNSlmAEIs5j1KVD/dqEO6PcAktQdtY21tR
         2nSw==
X-Gm-Message-State: APjAAAUAU9nGaZ97eAKJww9P1p5TTiAvvrqJfSgw0Myl8FR+ALrRn5SH
	HnPQcwQ4r1MFvMJWYZE+dBneIeU5
X-Received: by 2002:aa7:9095:: with SMTP id i21mr35705377pfa.134.1554043337809;
        Sun, 31 Mar 2019 07:42:17 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g67sm12397858pfg.94.2019.03.31.07.42.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 07:42:17 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 7/7] staging: rtlwifi: halmac: halmac_api.c: Compress two lines into one line
Date: Sun, 31 Mar 2019 20:11:34 +0530
Message-Id: <9ef9ffab54ad8e599b3430eb21f4a62c07805c9b.1554042597.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Compresses two lines into one line and remove unnecessary variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/halmac/halmac_api.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtlwifi/halmac/halmac_api.c b/drivers/staging/rtlwifi/halmac/halmac_api.c
index e75eb42..be75731 100644
--- a/drivers/staging/rtlwifi/halmac/halmac_api.c
+++ b/drivers/staging/rtlwifi/halmac/halmac_api.c
@@ -133,7 +133,6 @@ platform_reg_read_8_sdio(void *driver_adapter,
 			 struct halmac_platform_api *halmac_platform_api,
 			 u32 offset)
 {
-	u8 value8;
 	u32 halmac_offset = offset;
 	enum halmac_ret_status status = HALMAC_RET_SUCCESS;
 
@@ -146,10 +145,8 @@ platform_reg_read_8_sdio(void *driver_adapter,
 		return status;
 	}
 
-	value8 = halmac_platform_api->SDIO_CMD52_READ(driver_adapter,
-						      halmac_offset);
-
-	return value8;
+	return halmac_platform_api->SDIO_CMD52_READ(driver_adapter,
+						    halmac_offset);
 }
 
 static enum halmac_ret_status
-- 
2.7.4


