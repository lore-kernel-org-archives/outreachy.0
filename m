X-GM-THRID: 6670815133562830848
X-Received: by 2002:a67:7e0f:: with SMTP id z15mr1004570vsc.24.1553170184334;
        Thu, 21 Mar 2019 05:09:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6805:: with SMTP id d5ls1186619vsc.4.gmail; Thu, 21 Mar
 2019 05:09:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw/VDkN43SGVjl20Jajq/OyEoiWFc/E36TSBuj7AfkC1kyi+Lay71YE7IXB/d/JomtxbvvZ
X-Received: by 2002:a67:7e0f:: with SMTP id z15mr1004565vsc.24.1553170183498;
        Thu, 21 Mar 2019 05:09:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553170183; cv=none;
        d=google.com; s=arc-20160816;
        b=NZroFRHkZnDPVWKgWK3w3au3rEYT9SMrDzOHmD0ByM+S0RRGIOoSaDCJAdjq3cbJyJ
         y+c/NYUhcfoIHlcdUP/r6O/1NE7tSkR5LOq++oBEHymuQt8mke4e3PfdcZ+zUrMvUOdr
         FiFJ6H0s1jws7eeHojJH1EHQDpTAl0sWtdVi5P0Kiq8wTEG4gb3jEp+8FszgdxX5ibXA
         KJ2aHGkYk+szooJJKOQZ0gpjLpdAXygta8BK22CRM2Bm/dgII1tOQdsk95ZjByqr7GTl
         Va/Pgw8hKxz7gUuGnFoHg6RNW2slnqETgW/aOebtj9uxVEBgn4OVDtcmlo0oiYU5VJFX
         XemA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=adSdqM3s4elKWKluvTCGMKqDHr/ejWpUziLQHUWwS+s=;
        b=pRg2p3oVwQcnnIv1ECfO4tqwy7iClKsILK6wGy6RWdBxRcpSiMvVenjTdbGhMVE+bB
         ZJyFqo80EN0XUvLEjHjfXdnvqqB5b8TYHhaB20iY8XaI/pq70TRSf2Vvya35rPVqIamJ
         9+q5U9p5tV0RlhRQ/1nwLNtPQhEkAqBYcyxVXZaEo4YH9OJz2rdftzxW8dDz6yjqeFGT
         81WGAZQM9Z8vvjYA8xka8p0IHhBSw4oKb7+1l/jQIL8jigJvMj/UcYa5sRBM/7iYJP9M
         h/H6C7SxHCYjZQ2iBiEUes8A0Y3khyNeDhbh8WB0G3yAAEmp+sXwYPf8nvbd1sENJ8qL
         qcyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BUc6htZ1;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l18si187068vke.3.2019.03.21.05.09.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:09:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BUc6htZ1;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id c207so4164894pfc.7
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 05:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=adSdqM3s4elKWKluvTCGMKqDHr/ejWpUziLQHUWwS+s=;
        b=BUc6htZ1WGnyXdzYEWr1ma204yz2ZNK98hyvYk6nIKp8OroBczbi9ajrKcVDwj2m+8
         8BWzr2HhuWPXkJMX5Pafi+HXzNcf+KfgUGKnAh+/XfwMoNVaU1gy5ze67YXKMJrmWa8C
         1c6S7Sw11OqBpp0pBj1r2yWKeA8uEgwrsxjNRmrHy9IUyovtai5jRg2U7KrgaczJLM9t
         xR05E1D8RW8/v9fb8DPZDM0Vfq9z+/gU1iVoa4DAxLF5Gt+QS21kW8mLPg9aQ1gBr00D
         R4Y+i8r+616inOhlUSRaX3PuQOtNAPwz1nJ/283APAjFOmCEjpiLrHHxh3MSmUpJ+aQJ
         ZMQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=adSdqM3s4elKWKluvTCGMKqDHr/ejWpUziLQHUWwS+s=;
        b=nv+Cic7/qjoK19ThUtnu/HXBLV1woghABJ00lcW91rAqjfgsVEYogFW1idrk3k9Pi4
         bVFHZCvkf4mHFpC2sxRKZt9FHI2V7GRXTj7v/11NCzXMdvEe/SS0mXj2uYu4UUGWXpm2
         bq0Tedp0S9yxuLcZq0jo+ClWE3BKYssinErFXjss1avGIQH1GJQBrzq/dLBsCMKyzxpi
         SntWF/r2nDtRPeVLRFEjp7pU17kNQCBCdCHS8jr+65sMd6Sgv0Xb7ZM5xScPTnKs+Wek
         lftQgBTiXqTIqPgBUjOqBqBr7XDmWMFF+BqK3Qj3MtPsXgEIDe/xYObVmOAenT8MYHaD
         LURQ==
X-Gm-Message-State: APjAAAV+shDEBXaupCFa4r63/O3eNNuYSgpReYNpAKFFol4djAnw0Jh4
	YPEgD320yPr4Yz7SNpjLkjw=
X-Received: by 2002:a17:902:7e46:: with SMTP id a6mr3239836pln.150.1553170182601;
        Thu, 21 Mar 2019 05:09:42 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.80.198])
        by smtp.gmail.com with ESMTPSA id c130sm6687518pfb.145.2019.03.21.05.09.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:09:41 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 1/5] staging: rtl8723bs: include: remove typedef for struct pno_nlo_info
Date: Thu, 21 Mar 2019 17:39:04 +0530
Message-Id: <20190321120908.43680-2-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190321120908.43680-1-himadri18.07@gmail.com>
References: <20190321120908.43680-1-himadri18.07@gmail.com>

Remove typedef for struct pno_nlo_info as the Linux kernel coding style
guidelines discourage the use of typedefs for struct types.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index e2a4c680125f..011a5685c2ff 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -159,7 +159,7 @@ enum PS_DENY_REASON {
 };
 
 #ifdef CONFIG_PNO_SUPPORT
-typedef struct pno_nlo_info
+struct pno_nlo_info
 {
 	u32 fast_scan_period;				/* Fast scan period */
 	u32 ssid_num;				/* number of entry */
@@ -168,7 +168,7 @@ typedef struct pno_nlo_info
 	u8 ssid_length[MAX_PNO_LIST_COUNT];	/* SSID Length Array */
 	u8 ssid_cipher_info[MAX_PNO_LIST_COUNT];	/* Cipher information for security */
 	u8 ssid_channel_info[MAX_PNO_LIST_COUNT];	/* channel information */
-}pno_nlo_info_t;
+};
 
 typedef struct pno_ssid {
 	u32 	SSID_len;
@@ -279,7 +279,7 @@ struct pwrctrl_priv
 #ifdef CONFIG_PNO_SUPPORT
 	u8 pno_in_resume;
 	u8 pno_inited;
-	pno_nlo_info_t	*pnlo_info;
+	struct pno_nlo_info	*pnlo_info;
 	pno_scan_info_t	*pscan_info;
 	pno_ssid_list_t	*pno_ssid_list;
 #endif
-- 
2.17.1


