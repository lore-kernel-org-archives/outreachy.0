X-GM-THRID: 6674814656588021760
X-Received: by 2002:a65:43cb:: with SMTP id n11mr770832pgp.54.1554118580903;
        Mon, 01 Apr 2019 04:36:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:227:: with SMTP id 36ls4502552plc.8.gmail; Mon, 01
 Apr 2019 04:36:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyBDmQku1uwbgvNEW67JRCcNEKcEw1+rd5/aYcIYCmc/lQa40U39lv8x0trGKskF0yLB8U/
X-Received: by 2002:a17:902:b60f:: with SMTP id b15mr732278pls.84.1554118580024;
        Mon, 01 Apr 2019 04:36:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554118580; cv=none;
        d=google.com; s=arc-20160816;
        b=jP2NJ3n4OSFymk1ph/rbZiorsMmThXQCh2Qlp69ywoUgPRqUlEa4iyEopiYc7ajuSN
         ChW2rleM2PAJY0G5P2MWOdk8Nz7H5sjSbsPFBFZ21/JzzQwreDCVr5rEHDpIT5mLdBKb
         yZCanb6VL9pko/gMiZ1CD2qTSUDgvlGeW+YQb2F3OcHWVwQ19Mcv5y4YCRLikrVvRMum
         WhuRA7kI6h+RPuP98XlQ56MZ9BAMviry04fOTt3eVwLScKOoz344+4Hgkxv6j/1Aa6Fn
         jEoti+oM2F9Ee32Osc3LU7m8dvg4DSlreaVNwpfuK79HRwXTqExXsBHuewqBK5ZlboIA
         qCOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=TTp5PBXaRtE0FCXyqlOnwfIwDmPuR/Mk+YeoUuFbpLg=;
        b=GwzeUnqFWPdfcKEA8C/4+eRkhFmUj5T1saZm/JtOTVuuszAJtDgIIG990O4fBOIGpw
         IVbJ38HMqNhNezNkpfxQF5QdPj6Q4PcoR/YQCXd8pQbSaUg4w2VQ3OnDFzd7nUSaQonj
         yWryvJnCXRwl76F+Lep+NuJtI9guYXdpROGWeeimoHznL00XDLXyo1/rOwKEw84dEGqv
         yLuFlJjgxL6M+lj/4uHfC7cZz0tne7c9TJkVbevTjDze3ChpemT1I6S0Xpd5LVSYq6DT
         5Kb9Lv6M71Y9XtA7PIREC8eT73ZHIrmAdsrV9AdVMhomtpIpjB5e/Jm9zfqUuqbLFKAG
         6oMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R4Cq7NgL;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id t136si665264pgc.5.2019.04.01.04.36.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 04:36:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R4Cq7NgL;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62f.google.com with SMTP id y6so4379748plt.1
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 04:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=TTp5PBXaRtE0FCXyqlOnwfIwDmPuR/Mk+YeoUuFbpLg=;
        b=R4Cq7NgLn6/13hSdSR28mPhp+2/s7MmjCWX9SkhyFNOMYrx/2Dy1yl1V4JJ71Wkzko
         +ht60BMpFpkzDKV9uBOf3qw4CyvYzWE9MqpsMJC4nRr8P06GZtjcsaCL8TfAHaDBbh9Y
         bv/GXoqM07bD54GfHwgD1oB2YVpeOCGOs6MrRC4yXOB3w8Lg4ezgLGqcb5JFuby1vTpf
         qS5UDyUxVc6oU9NHpDHKRwshX2MBUFghLQETC6Zn35PA7gjuZiAzW4o+UNJNOO58eRsY
         dMDySHrb4fALMrb3O3Mhm3UMTsfgofS9CWAHy20dltXFSIvY7DupfxPuYNa86A9gfbLh
         St6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TTp5PBXaRtE0FCXyqlOnwfIwDmPuR/Mk+YeoUuFbpLg=;
        b=Mb73mYXNaNK8oD9mhZxE1VD93xSvNdX60TtsFJdNxCBX0d0hYOsrnxXULmGNe7EvvF
         kcL3ENcjxwuSHNLZ4mPLN9R2XvvXVE98VLKJlWCJIGCE2P6m6TfmNSUpjJIwHh1/q8tt
         QfTuGtTMCl23lxRKLTo2QLj2PFSroOLDnvLhwS1qIl/nqStKoYQuRgRkuZQo11zaxXwV
         SHmuVxh70SuVN5YeyjRXW6Sa9nrS/Nq1MYxjjUzHSF2sFiasVcjQETJIoStByfrdca7y
         vWj3XPmUfLiUwDmsn6xDkFjF9uRfnc05uvVXdh1KuFYAHW2RNroQaQuok2UjKHkpiG82
         eKvw==
X-Gm-Message-State: APjAAAWFKqOsCxV22YD6/SblGQD+5d/DScRkpUt+ssEM9Q9wB1K/Y1ZM
	HQ0C0SxOzboOq5v7lrqqJ/PBIAXj
X-Received: by 2002:a17:902:be0a:: with SMTP id r10mr49772116pls.4.1554118579480;
        Mon, 01 Apr 2019 04:36:19 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.95.98])
        by smtp.gmail.com with ESMTPSA id b15sm13919511pgg.90.2019.04.01.04.36.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 01 Apr 2019 04:36:18 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Remove print statements for error messages.
Date: Mon,  1 Apr 2019 17:06:01 +0530
Message-Id: <1554118561-3261-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Remove prints of error message, it is not needed to print error
messages and remove unnecessary curly-braces.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
Changes in v2:
	-Remove unnecessary curly-braces.

 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
index 1094454..b1ab8a4 100644
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
@@ -205,10 +203,9 @@ static struct sk_buff *ieee80211_DELBA(
 	DelbaParamSet.field.tid	= pBA->param_set.field.tid;
 
 	skb = dev_alloc_skb(len + sizeof(struct rtl_80211_hdr_3addr)); //need to add something others? FIXME
-	if (!skb) {
-		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc skb for ADDBA_REQ\n");
+	if (!skb)
 		return NULL;
-	}
+
 //	memset(skb->data, 0, len+sizeof( struct rtl_80211_hdr_3addr));
 	skb_reserve(skb, ieee->tx_headroom);
 
-- 
2.7.4


