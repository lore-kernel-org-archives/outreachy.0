X-GM-THRID: 6673477267526516736
X-Received: by 2002:a17:902:bb95:: with SMTP id m21mr534495pls.64.1553790007375;
        Thu, 28 Mar 2019 09:20:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:13:: with SMTP id 19ls585671pga.11.gmail; Thu, 28 Mar
 2019 09:20:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy9Og/1byumCINF1CHppIRuMDTqRdaFneEVjzdT6zjYDJuj5Oirl3rVT0Ha2Mq31FZcCyL+
X-Received: by 2002:aa7:9507:: with SMTP id b7mr409355pfp.113.1553790006420;
        Thu, 28 Mar 2019 09:20:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553790006; cv=none;
        d=google.com; s=arc-20160816;
        b=VyOcGJc/rmuCOgUHsHV7p3X2LP+YN6KRfrRTFj74a5X84ayNkTFp4BeNwnK0ZZ923J
         3QgJYE8+8sJMee8jbcSIUAbw5AS4MSfWMUTtXksjDpeaeQcBquZO45LcqYCX1uwFjy4x
         52FnsIVw7h8f5rhWl57J/qTc5uoy+Y6QbZX7WWYCvn4kpJTmkhVAC06XS8HQXSPa5QLk
         Eg36mS0kRvjR8777xQU6O7knXXge1ZXPGkzmUqfJmHBXM3X34RoJYo6H55Acwb0YK5Ep
         cBdH3N8dQ53ZVHBgw7oA6PY6kOjzhNyaTISMIMrRVaHO7XHomupBZufIYmmRXUhHMY5g
         XGAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=FiGjewxupXbgiHLJ5lFELv8cYUxi7JPCNJvYOU1LZf4=;
        b=QGOlJZw4UAGjwsVmjfI9PBIPvdzsF6Hzy3ZNSzyurVvE2cm0o0g+YZPhhCyGds5USP
         /QHJBciti636ix5xY1OPJo2Q6a7AuJnqS+iJyApX6pt6xVaAba1bSdoESS+e0OJqvok+
         +UYC/+IsexH8wy9/BsI45nTz1N1kxfNbbnY2Do+OFCPDR3DgIxkgQelpGrGQfz9/avRu
         ExQnkh73NOVb2XWN06ewp06aNGFeyat0Jp+zwt9a8DVakCh5rFy1OSvTWaQa8kzJUL3G
         68KUIChv1HVp1qPTSNUJzkhRqUzuk9Htdc+S2HRkFnMM1ofElAfXMUcbJUmYYa6bF7BD
         vzWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N8BoBdZg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com. [2607:f8b0:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id 141si70970pgb.1.2019.03.28.09.20.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 09:20:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) client-ip=2607:f8b0:4864:20::32b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N8BoBdZg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32b.google.com with SMTP id 103so18867877otd.9
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 09:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=FiGjewxupXbgiHLJ5lFELv8cYUxi7JPCNJvYOU1LZf4=;
        b=N8BoBdZgG1k3uuazIIoPMzyWBfrQCE5JTCdqip5/4fnsWiztF7AzKOJuRTDAzbta8W
         i37oycI/ifKQAM8DL9mpATwzjSb4E1dFQlxCqHG/K7jNBorLQ8iMc0kfXz804vhhuNtb
         +O+9aXjZgbm9lyVKgTFg8z2LeJIyLiaQWSLpX2n707Y8/vAHiXldyPDnOZN31CTGPSxy
         WT/2q/f+Z5MYSpcEQIgZ1Ar+BuIk1rQBprYJ4g8HtPAtYqadEL8w6faSp6rBdonDnRL+
         llvn/65zcI8uGw2iSO/PdeRDfnk2up4ot1ll99x8Hgr7hA5enZZSXpMAJYx7Acsp1T5B
         bdLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=FiGjewxupXbgiHLJ5lFELv8cYUxi7JPCNJvYOU1LZf4=;
        b=o8xyj6cWJimTwVUqQYH7KCHExin7YPlQvvqaNdsfW/y6gVxYRoxbRMW3yESbIOB8ms
         dZS8/O7f+iFULWv92T9u8wp+wN1E+eCQVO52LFgqQjvJ6Agq2wT5DcxI6b9qLguDOjcx
         pqFMZi5Qzn9PdOQ3AEyylp1EPIBwyUVacHqkVVxq0zMRzMr7jKCgCHlje6GOSXNunLR9
         6Hc8gf4GvTsOb71pAZJsbwwkiwkyQOOogwnYKA7w6AZDUK/srl6Hi7fxpWijIFcphPyu
         2Gb1bKhBh3qlq6cnABzLMcAIT6VlhvNznzv2jyHl4nbdk3vmw+GPzrV9DvzH/fFgTNbR
         vKWw==
X-Gm-Message-State: APjAAAWBrwMeI4R4ueoOc1lqKRh/dVRrUGIhygqegDr+MV/Zn3cptmuQ
	vQMCznwz3aLxXovsHP7AjUU=
X-Received: by 2002:a9d:7cd2:: with SMTP id r18mr1523003otn.87.1553790005946;
        Thu, 28 Mar 2019 09:20:05 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:5d24:be3f:3c51:19db])
        by smtp.gmail.com with ESMTPSA id w11sm8150372otq.9.2019.03.28.09.20.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Mar 2019 09:20:05 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Remove custom macro IEEE80211_DEBUG
Date: Thu, 28 Mar 2019 11:20:02 -0500
Message-Id: <20190328162002.14740-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove the custom macro IEEE80211_DEBUG for printing message in
dev_alloc_skb in order to maintain Linux kernel coding style based on
which kernel does not print failure warning.

Issue suggested by Coccinelle.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
index 109445407cec..085309aace94 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
@@ -119,7 +119,6 @@ static struct sk_buff *ieee80211_ADDBA(struct ieee80211_device *ieee, u8 *Dst, s
 	}
 	skb = dev_alloc_skb(len + sizeof(struct rtl_80211_hdr_3addr)); //need to add something others? FIXME
 	if (!skb) {
-		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc skb for ADDBA_REQ\n");
 		return NULL;
 	}
 
@@ -206,7 +205,6 @@ static struct sk_buff *ieee80211_DELBA(
 
 	skb = dev_alloc_skb(len + sizeof(struct rtl_80211_hdr_3addr)); //need to add something others? FIXME
 	if (!skb) {
-		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc skb for ADDBA_REQ\n");
 		return NULL;
 	}
 //	memset(skb->data, 0, len+sizeof( struct rtl_80211_hdr_3addr));
-- 
2.17.1


