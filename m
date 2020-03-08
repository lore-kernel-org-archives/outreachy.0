X-GM-THRID: 6801912764487958528
X-Received: by 2002:a37:b084:: with SMTP id z126mr12373360qke.497.1583693727697;
        Sun, 08 Mar 2020 11:55:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:7358:: with SMTP id q24ls2382435qtp.4.gmail; Sun, 08 Mar
 2020 11:55:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsdRrqLa14ENG1qp08W5fSsHheaK0NX9Q1ZZ95i0dCPIMKw42TBiSgYyfF+U2ggLTd9/KTL
X-Received: by 2002:ac8:7501:: with SMTP id u1mr11866702qtq.149.1583693726642;
        Sun, 08 Mar 2020 11:55:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583693726; cv=none;
        d=google.com; s=arc-20160816;
        b=CXRPoeBSKfyeseOeBhRyQthF+KZ8StiVBh2Za5hK7jvlkqAoFMdjISPfRK2x+Nz93P
         INoSV2vWNlBveZUMpbwEMoshSqrjh5EVYS7EBMDsajfa6K5uxLigWXdpy+ysVjHa2oy0
         sjjuTZhlRzQlRIf/HjjZ/2Gm/CJ+RcOVJG8jT6lw9nRUqZjBZX8SyisnqIpmg761wRH3
         eClido/BFxdB3Q5Af1Ue1ZZaVyV00/cW/Npj83YpvJ+eB7GsV+jNkgvBGKTJAI1v2jcH
         ZTWnzuxCZhGF+5/CkCqc8ZMbgIdsBnfWpLxTX5tO86F/pRvVyfK3pfMO8z2WjDA2y48N
         YKCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=2ul3uFAdkxq2D1qeSnk639xCPeLad7nU0DGZikUorW8=;
        b=tWboXR2ad6wVv+yBzGEH4oc0szNb5UDUtHsaZu+g4+5hb7huXEEgLUYy10e0K3sHD2
         QQKbQ5Nvp32+Hvrmj7ssVOFGdL5lV5BgRKfe9vpd+cg7sBasVwDP/eHHz/AEvhOcvpjZ
         coUnuXonsGBSGdxX9vYvdzOypBRhNMFrlQleTYc/yriyuWZueuLdbBUhUWGcsoAK3sK1
         HamY/ljhbtj69Fi398YB8KnKUP/grJPSN+fXHL5MXmNvK1ZsDZ5UgZi9IngVbHrtCI1P
         MraxN0MuEdOa8kpr1XULC1JFOVqBELHlIUT3gcI8qeeHVFYPmo0bfR5hgd7qMetBKs3I
         Z+iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="LSnoyIm/";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id i26si410452qki.1.2020.03.08.11.55.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 11:55:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="LSnoyIm/";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id p14so3798261pfn.4
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 11:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=2ul3uFAdkxq2D1qeSnk639xCPeLad7nU0DGZikUorW8=;
        b=LSnoyIm/kRSevtyCzy/XnyAuM31ePSTQdHkDbGcUk55rY9FXuLVjJpDhI3vs6R1g3T
         DSUjtAs9+e7Y6xVUKYrC7LcIwfYEJWVRzcPWtxAeajlIzjm9mX2n7GKsodbSpbILOeKF
         6XYh115YMYKXlgB1SdfrCcc25d0yUkh75k3fT4p8XI6XimAf4gzJYr4OV33Vrxw4rjAK
         T8gZTb5OVkQOCMQ+nvTTDkFK6yFS6SkPixg6xSY8jjf5cf8JqAALBq5lhP1FfZHeD8MZ
         b3jh+RoTTxBl7LXpEzJ0WmWKEatEBBRq+Ts0rkwM8Nw8+1OI8x27+objjHy0YGKET6Z3
         UV1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2ul3uFAdkxq2D1qeSnk639xCPeLad7nU0DGZikUorW8=;
        b=VnwWRxoUyFkXsRNuzLnQulhC4+vSkRwdILsD8mlCovLW9mLMlVL/YBOW5AJw3XGs5X
         T3BWD+okqS9mk2KSMUJvk4WpG14Gx3jCym6v7MdYYzxhc8fupygwiGCK5G6PWtpJihVd
         zLTeUqRr+PLKKtLudfzc7VGa5fwBr38TUZBxji03iWi4jrGquf+7zIngIaVEyL1CAvIw
         acailo9F83WoM9HgLJbbedsBqrUdqZ76E2g3qYgKvLXx30vPMHaStmLy4hl++BUzX0aR
         0IzCVYkIGwG9jrzOtQfS4qKYtL9bqil50RNa9z9exjE7cvOHF8ek/R4O5sY8TJ6j1Vkr
         YbSQ==
X-Gm-Message-State: ANhLgQ292Oe7mJaQtIUhl69DsST9AT5BvIoDZrd041ftmatrYBauj1om
	n6Ab3LO/8NF+5ZNVA4CmsoYPTNKx
X-Received: by 2002:a63:f60e:: with SMTP id m14mr1767130pgh.342.1583693725755;
        Sun, 08 Mar 2020 11:55:25 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.184.119])
        by smtp.gmail.com with ESMTPSA id f127sm4644975pfa.9.2020.03.08.11.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 11:55:24 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: wfx: alignment should match open parenthesis
Date: Mon,  9 Mar 2020 00:25:18 +0530
Message-Id: <20200308185518.5838-1-payalskshirsagar1234@gmail.com>
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


