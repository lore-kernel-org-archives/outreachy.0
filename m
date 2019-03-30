X-GM-THRID: 6673442126229929984
X-Received: by 2002:a02:4e46:: with SMTP id r67mr6441694jaa.8.1553965958092;
        Sat, 30 Mar 2019 10:12:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls2021737ioc.3.gmail; Sat, 30 Mar
 2019 10:12:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxPKi9ZC0j1cMIwqM6xWncspSLXqGf7rfrdXvvWyR1fMaEqGIlAvYxDMxwV6kGbFhiAR/6O
X-Received: by 2002:a6b:251:: with SMTP id 78mr7452610ioc.39.1553965957437;
        Sat, 30 Mar 2019 10:12:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965957; cv=none;
        d=google.com; s=arc-20160816;
        b=rffwr87RdwQ6MF/2Wua25Z5FoAqTQhJJXwaVE+Xoaw0NK3K+pqcSS6CpLeUv/fAwaD
         lwpmd/JM3YHJvJUMQIiSOKNj/oyRcgEnvzaImHCYwa2Y0hejgl64MBZQp7D4F0QKym42
         IXDVq8QWQDmZGzy03QYmdV5+bGPPUGLSx3daUjrCK+0ROcisiyFzc5cB9BGQqejdun4Z
         gXpkITGBoZ4j/sc5dC1GOt9joxX3hsRD2OBx8zTjGGxn9vV9tnvgygEY6kzmTgrXppgq
         uZnGIK9eKkwbFIA0wxuHKs97v/4EgZbWF0xGpBoGIKk4YIt939QANhag/FpkiCJf2Swa
         98fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=1npeB7eWWNTBV+rW6hGkkjkgY8JByfEzY6vk9jJQyFU=;
        b=xjDm4dMGzzDwyPT2x6DyosnAU2C13pD4U30a/kNi9zMye0Kgo6rbEykscS3LdMgP14
         p2yHY7UOA2R69Mh3vVcoTvHB/COAaxpCBqGZw1j2c5FO/rbW4VyK7ueLSexaGkKPSPYm
         knSatTmvCZ6ZIBRK+dA2BDBJtfy4aiyaSYrQ5AcFwgR1WcXI9ySPkAa0UHGpPRfCUCSN
         gEm6JcPivg1ji+5serfBn0j4lVeBeSrYaZfXdPTBRU6lZFCwm+Y+/sPFrtTpzR+JBB0A
         As8iLimZCqfWcReNUyGEOPHkYRZGtrMlqkc51lLdBB8MeSCqp8YQ8RIJxvdRdtKE/y7H
         QOOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fpry7JWM;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id q130si278709itb.1.2019.03.30.10.12.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:12:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fpry7JWM;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id v12so2692446pgq.1
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=1npeB7eWWNTBV+rW6hGkkjkgY8JByfEzY6vk9jJQyFU=;
        b=Fpry7JWM9ugd4i9SLkIEF5WUgsPCKh2cycXZJiWOmmmVuflpKGJuqyZNQLmBGQnMkk
         DN9jNxG2560La6pmLBQ93cJicCx28pk6ZyrQlTYbWeOVlJ6jmjUvfNoC2jAqKJY+Q1im
         DfyghE0Z+MPOIImDwzvPKZmlUf14M/E8eN1u/dhfYwLeIM1FQnqNlE3Q0l7ObCSRiHFG
         RjHNKNfpuotM7Y5SZAl0+OjHRzc4ZKdk+XyqCugMj4epVFUmFh2D7so22/adFcLeN9dF
         4NEvYJYolFxloRCFkzskML/IKDRz4cDv6HJuTDygYIHWXcpDyksq7kCPKi1oI8reFgZG
         M97A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=1npeB7eWWNTBV+rW6hGkkjkgY8JByfEzY6vk9jJQyFU=;
        b=kEdqO8sLCiyfV/h6tNnDc86QipZPMVCGBWAPl7kSRw9ZrV/1e5qCfbMbk1mMjdmrlf
         F6Jv/i8zcLM4GNaVRD+tjIuO/JcjctYWM+YSoO6h8cNG8o/7TVT6scePEMFx2Pw+mwwF
         wPPDJiQZH3ql0DZINtNWVpglnbwkq5t440vhulnYhZ1Sfa+P01qjDpdZTXwkF/u7iI/h
         NgC9zvPQOHl7C72zXOV3MK//Qg6Nxi04DkIB3nbbFnG+EAnlJYV+dOmPumctPABBQ881
         WJdL/itMLOdc9fZlbnCqAVPaTerBcHkVw6vfqoDq/sjg34SBFN//GDYlxuDVPeBIRv4c
         rOMA==
X-Gm-Message-State: APjAAAWVXDhPU90as8qXwVWtbdORJNCebkCyWoR9mRk0TBuMp1wxQwHT
	FDmAKSUnSV4WPptEQlB0Ft3IwAId
X-Received: by 2002:a63:ef09:: with SMTP id u9mr28983502pgh.126.1553965956391;
        Sat, 30 Mar 2019 10:12:36 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id j4sm7539607pfn.132.2019.03.30.10.12.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 10:12:35 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 5/9] staging: rtl8723bs: core: rtw_mlme.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 22:41:52 +0530
Message-Id: <c21ab121b0e9de5dfa2eac556950fb753cb04c04.1553964404.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around expressions.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 406e313..12661d7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -332,7 +332,7 @@ void rtw_generate_random_ibss(u8 *pibss)
 
 u8 *rtw_get_capability_from_ie(u8 *ie)
 {
-	return (ie + 8 + 2);
+	return ie + 8 + 2;
 }
 
 
@@ -347,7 +347,7 @@ u16 rtw_get_capability(struct wlan_bssid_ex *bss)
 
 u8 *rtw_get_beacon_interval_from_ie(u8 *ie)
 {
-	return (ie + 8);
+	return ie + 8;
 }
 
 
@@ -451,14 +451,14 @@ int is_same_network(struct wlan_bssid_ex *src, struct wlan_bssid_ex *dst, u8 fea
 	s_cap = le16_to_cpu(tmps);
 	d_cap = le16_to_cpu(tmpd);
 
-	return ((src->Ssid.SsidLength == dst->Ssid.SsidLength) &&
+	return (src->Ssid.SsidLength == dst->Ssid.SsidLength) &&
 		/* 	(src->Configuration.DSConfig == dst->Configuration.DSConfig) && */
 			((!memcmp(src->MacAddress, dst->MacAddress, ETH_ALEN))) &&
 			((!memcmp(src->Ssid.Ssid, dst->Ssid.Ssid, src->Ssid.SsidLength))) &&
 			((s_cap & WLAN_CAPABILITY_IBSS) ==
 			(d_cap & WLAN_CAPABILITY_IBSS)) &&
 			((s_cap & WLAN_CAPABILITY_BSS) ==
-			(d_cap & WLAN_CAPABILITY_BSS)));
+			(d_cap & WLAN_CAPABILITY_BSS));
 
 }
 
-- 
2.7.4


