X-GM-THRID: 6673477267526516736
X-Received: by 2002:aca:cf05:: with SMTP id f5mr4086913oig.46.1553878534582;
        Fri, 29 Mar 2019 09:55:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ac8c:: with SMTP id v134ls231977oie.6.gmail; Fri, 29 Mar
 2019 09:55:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyvx8KgCOb6zc6cHo8/6hHGK2IMKCkcpE/yZ6P4izFBuR0WT7VHGnb87s9p8o7jt5he2gdH
X-Received: by 2002:aca:ec46:: with SMTP id k67mr2943243oih.38.1553878533448;
        Fri, 29 Mar 2019 09:55:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553878533; cv=none;
        d=google.com; s=arc-20160816;
        b=E93K6HjkzUIwTyIXe5/ORTOgT69leRihSAAF2wQs2L5ydnhsvjQKJoFbwg4ClVyiMz
         zRzthGoPkHASGS8reLC9M//vCj7opJtY8a9vP5JhpVaTmo/o56XfpInJT7P5Z1Y6ZOuj
         ypNfJBypQ2TSJ+f5URnX99qGr131Hugcvze9nvmntUkmJacuOI0QemsFog2PSWYaoP+x
         aCY0jXsynCRTr9r7px2nDB1gcUbQT34xpC+MePhw6QHoEkq4q8imP0Wsbu6vgil1qZAc
         uypBOwzrduJcaVSmQYoMnSnikO/rE3xUqwMzvcjUMEG8BlSubHL+RRPCTsYQTjr1vZoR
         Vqrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wHx1US8sLyMoPw0sVVt5s5w243SNsYV6XHYzoYMEkEE=;
        b=TM/LwwYFNSviw7TjhgLCGiTPPMJDsoEKG7pzmnC9fuh+hq0SayAfoZ2mlN0v1+fWLX
         OmXu2fcgfTf0Z5HxIT7ilJd1RB0YM5Vca7zAXNmVg5xcRNzeuQKqiIrJXyPL7Xpp9S/v
         a+q61Fojhcouso9fsFisH1uT+Co0bk8US3qYs0/jdz3V0bYZa7LHTpwajIL2Cx4BG639
         Vs7JgdwiR2oWVHoLKeL6QCY2GZZJI2lpzpO4P+SeXEUxkyqKGLlNtQbBUGjl0TJii26/
         N57+QPAHneRtA0E7wDxg+bQ8yHLnoAgjKIOHsMkO669aPOgZYThE6buet+zeEMGJiejr
         PttQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bHSct4on;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com. [2607:f8b0:4864:20::232])
        by gmr-mx.google.com with ESMTPS id x31si187651otb.1.2019.03.29.09.55.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:55:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) client-ip=2607:f8b0:4864:20::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bHSct4on;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::232 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x232.google.com with SMTP id j132so2208090oib.2
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 09:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wHx1US8sLyMoPw0sVVt5s5w243SNsYV6XHYzoYMEkEE=;
        b=bHSct4onhTewMO6izxXYzRDnT+bN9nW57Y+NIhYBPRzlR4NEhS6qDGlP3O9grgX60J
         ETgU/wON8CTo0k5CRBqRwbWfl2k5XL7R/TFB2PzwaZGHH/mrnJqwwqQbHCdtY1nuj27b
         3Fwy7UyEPmwPGCBKbevm1Q03VAU1KxIA0o4b4b4iBmn1psQTtz+B01xokk95fHfy4wm0
         7OEP/LQwt+v1GU/r6x4hvSf8PXBf6ljqzKdhXkJ1vlqRjvr7M1faYVgYqBWrGu+Z2KYJ
         o7bkaso4Xqqx9N6P4lLkn+7d8U4ZnS6Ih9ebfD7NAYm2gFfgi9wrKTgPBV+Thg8rxMsK
         HDfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wHx1US8sLyMoPw0sVVt5s5w243SNsYV6XHYzoYMEkEE=;
        b=Y2uh0vKgmS0HjQ7bvqjbK611SWrAS0COgokb2OQZG04P1pbZldk+1rK92EWwWLQqzU
         olS9oMm17fZZfaiwQ8vfw1hmx6JJHYhP1rCBKjLMGjFHv/mCp5jkaoeT+GJjDLelUmEx
         u7RwRm3icLXqyFvVlTohO6KVJjCLwgpuHDsGByCheA2NlzAM2i6P/fYhBBFLdOQpTHEA
         zh2GVatRtjAPAiwTfRb+5pPqaMHTQoouY8aM5eCq6krQ314v/GrpnY60LCQ7ZR/nkCBo
         beo9gyaYmF5Uda9yvBf8QymKz1oXuRq7RId1Mhgpz5OzN9Uj2eeGFv1RypL5+Ha+oxZl
         M+ww==
X-Gm-Message-State: APjAAAUQ+Q1E3bcOvqonKcZ2tV0W0uru2Vllme93LgWjh0LNzTxBMh+E
	dUFkqbtrVPm4IBjyzuyMNFY=
X-Received: by 2002:aca:b943:: with SMTP id j64mr4365349oif.18.1553878533134;
        Fri, 29 Mar 2019 09:55:33 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:88a:2f6f:3d5a:23bf])
        by smtp.gmail.com with ESMTPSA id h3sm959710otl.32.2019.03.29.09.55.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 29 Mar 2019 09:55:32 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: rtl8192u: ieee80211: Remove custom macro IEEE80211_DEBUG
Date: Fri, 29 Mar 2019 11:55:29 -0500
Message-Id: <20190329165529.9379-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove the custom macro IEEE80211_DEBUG for printing message in
dev_alloc_skb in order to maintain Linux kernel coding style based on
which kernel does not print failure warning.

Issue suggested by Coccinelle

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v2:
- Removed the unnecessary braces
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
index 109445407cec..af396c53a929 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
@@ -118,10 +118,8 @@ static struct sk_buff *ieee80211_ADDBA(struct ieee80211_device *ieee, u8 *Dst, s
 		return NULL;
 	}
 	skb = dev_alloc_skb(len + sizeof(struct rtl_80211_hdr_3addr)); //need to add something others? FIXME
-	if (!skb) {
-		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc skb for ADDBA_REQ\n");
+	if (!skb)
 		return NULL;
-	}
 
 	memset(skb->data, 0, sizeof(struct rtl_80211_hdr_3addr));	//I wonder whether it's necessary. Apparently kernel will not do it when alloc a skb.
 	skb_reserve(skb, ieee->tx_headroom);
@@ -205,10 +203,8 @@ static struct sk_buff *ieee80211_DELBA(
 	DelbaParamSet.field.tid	= pBA->param_set.field.tid;
 
 	skb = dev_alloc_skb(len + sizeof(struct rtl_80211_hdr_3addr)); //need to add something others? FIXME
-	if (!skb) {
-		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc skb for ADDBA_REQ\n");
+	if (!skb)
 		return NULL;
-	}
 //	memset(skb->data, 0, len+sizeof( struct rtl_80211_hdr_3addr));
 	skb_reserve(skb, ieee->tx_headroom);
 
-- 
2.17.1


