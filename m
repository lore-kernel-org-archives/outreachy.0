X-GM-THRID: 6466329510613614592
X-Received: by 10.55.43.8 with SMTP id r8mr14562996qkh.50.1505559690173;
        Sat, 16 Sep 2017 04:01:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.223 with SMTP id 92ls7659714iol.7.gmail; Sat, 16 Sep
 2017 04:01:29 -0700 (PDT)
X-Received: by 10.84.217.89 with SMTP id e25mr17160784plj.50.1505559689649;
        Sat, 16 Sep 2017 04:01:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505559689; cv=none;
        d=google.com; s=arc-20160816;
        b=Rdub2U12zf1XLN4C/t36u41D3slrV1xoaY+oAGa0gR/pt2XKzWpJK5wbE7LOJwMVRo
         VzuWdfS5LaSI5zIDBaGvmzyAoUM2oI3i7D0+pb5oSUPmnCRpq5KNEmOcuN5Ub/t0pnKX
         OTAO/l0/ZbczCm11RsDbplRtzXD9sDOt7Qi5KBUMUEtWy7SGPCHCs6iW3zB6pN9WBAh+
         sypN5GJM8lqDewntE75a3kwNsx3KyiHZzVBwVVxJY5qDBl3zLyE22KOfQnw06/+olUnO
         UjNo7AsPLrt3b5054I2NQOyGjzMAbQyPs+DQKbCYwH/InyRnYA3Fwhpx2PkF5uBrk9v2
         nLOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=RKdnI3dJccSoiM1MSgvK92rclv0J7ynXZlLE/HpqRsU=;
        b=QdRMd5oyKUOprqw6cZCjSO69M44RfU+FVEtAAUuiKqVlDOvUoubgsfWHE4KYP9SE18
         sPa8XmxnBOpUZLMIkIuroOKlEj6nY+yTfZFNDe9oNAOIXIoUZTTBX43S+ENoRwfx7xyM
         WZ6iAjffIU76QAyudJ4DZhXVycyBqbQ1H/I+V9Gr2qR7L97wvS2UdVMgGvR1nsnuGTrg
         ebEWkxdBAxjnnMQre9J435/S0msez6CwpWoWaKhCa6VXUCTBiaklzhBBTkhnsuCz4oLS
         Woh6EqFh3xgSCqrCmcQqIuoRlkX/bL+GhIwgGhmCd2UjKDUwOZZEvq/nicZQJ1y9rDBl
         1R6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n7y+Ot2m;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id k76si317934pfb.5.2017.09.16.04.01.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:01:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n7y+Ot2m;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id i130so2632422pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 04:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=RKdnI3dJccSoiM1MSgvK92rclv0J7ynXZlLE/HpqRsU=;
        b=n7y+Ot2miHMLvqOEKLBBEWlOYnqbT4LGYaQTs6l71bsuOWuep4onMSvr+PREETRh+H
         5MgLTVI79fzty9P2nW3p7RvvihA1FztCc8dLEiHWmNaaONHa+iWv4KTu/CLcjiqz4uT5
         Tn+4wU3ccc1X1bY0cGs4klur9YtiGAxzha0FzPYj9f6MX6g3wQ2mjVGguqn0X2T10x07
         Gk5lvraoWoyFJMTqU0IfeA07WIrLr9xiOaJp2AaRRcwabYXvmC9A5L0aag152zfkjbN7
         P/dL8a350sqwP3g8Pu2Elztna1sWgGj2ag7IR1j6MYF5dBmBWUcLdB8QnRs30tR2RXSp
         BjKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=RKdnI3dJccSoiM1MSgvK92rclv0J7ynXZlLE/HpqRsU=;
        b=fGGczMnTltKUIKb8fuKvFu4WAqn0n8hh8nRVOQGv3aydJdFLkiC/A8QHQUWK28emav
         wE7tpBykK6OmB6S7UjDP7PDOUM80tIjqLidSIql11vKzU+LvLwCjROfuMgu/aA8ysBt5
         i/xy9In0jOcDffW/0UaxyX/JhDAsTx48SWhwwISrbENRiF6gt6J0fLUzH2PvbvvG8EGT
         Q0LcQHgTss7XT3o1XoiRCyWX4NHHNzgK86WpjziqOG6l+b8rIuQ2Nm/0JIdGWlGdQVho
         zqxd+s51f9c42sFKl4OHjM5xydSzmQoWy4/hlhKizZMICA+FYzQHdFTssH54sUqMTIcB
         c4Yg==
X-Gm-Message-State: AHPjjUij6HYnJ60Z5lJ/XF43h2iGtPYcmZNdu5s+WG2yiGxi4iQqyWEZ
	wDZTjSdRf3OtCw==
X-Google-Smtp-Source: ADKCNb56owdMscysDiE5Jo1FbICufH/Jx7Di4yPN8lPDzLzi1fX/XyZjbhiESVCOoCHtlQhHrQzj3w==
X-Received: by 10.101.69.136 with SMTP id o8mr26796594pgq.127.1505559689368;
        Sat, 16 Sep 2017 04:01:29 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id s76sm6528016pfj.119.2017.09.16.04.01.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 04:01:29 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 06/11] staging: rtl8192u:add space before '(' and '{'
Date: Sat, 16 Sep 2017 16:30:49 +0530
Message-Id: <f2250e62289f8789b96bec3ed9194fbdf58eba94.1505559000.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>

Fixes checkpatch.pl errors:
ERROR: space required before the open parenthesis '('
ERROR: space required before the open brace '{'

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 6d052cc..c88374b 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -457,12 +457,12 @@ do { if (ieee80211_debug_level & (level)) \
 //wb added to debug out data buf
 //if you want print DATA buffer related BA, please set ieee80211_debug_level to DATA|BA
 #define IEEE80211_DEBUG_DATA(level, data, datalen)	\
-	do{ if ((ieee80211_debug_level & (level)) == (level))	\
+	do { if ((ieee80211_debug_level & (level)) == (level))	\
 		{	\
 			int i;					\
 			u8 *pdata = (u8 *) data;			\
 			printk(KERN_DEBUG "ieee80211: %s()\n", __func__);	\
-			for(i = 0; i < (int)(datalen); i++)			\
+			for (i = 0; i < (int)(datalen); i++)			\
 			{						\
 				printk("%2x ", pdata[i]);		\
 				if ((i + 1) % 16 == 0) printk("\n");	\
@@ -471,8 +471,8 @@ do { if (ieee80211_debug_level & (level)) \
 		}					\
 	} while (0)
 #else
-#define IEEE80211_DEBUG(level, fmt, args...) do {} while (0)
-#define IEEE80211_DEBUG_DATA(level, data, datalen) do {} while(0)
+#define IEEE80211_DEBUG (level, fmt, args...) do {} while (0)
+#define IEEE80211_DEBUG_DATA (level, data, datalen) do {} while(0)
 #endif	/* CONFIG_IEEE80211_DEBUG */
 
 /* debug macros not dependent on CONFIG_IEEE80211_DEBUG */
@@ -2112,7 +2112,7 @@ static inline int ieee80211_get_hdrlen(u16 fc)
 	case IEEE80211_FTYPE_DATA:
 		if ((fc & IEEE80211_FCTL_FROMDS) && (fc & IEEE80211_FCTL_TODS))
 			hdrlen = IEEE80211_4ADDR_LEN; /* Addr4 */
-		if(IEEE80211_QOS_HAS_SEQ(fc))
+		if (IEEE80211_QOS_HAS_SEQ(fc))
 			hdrlen += 2; /* QOS ctrl*/
 		break;
 	case IEEE80211_FTYPE_CTL:
-- 
2.7.4


