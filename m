X-GM-THRID: 6808044843867045888
X-Received: by 2002:ab0:44e4:: with SMTP id n91mr1377733uan.88.1585121482785;
        Wed, 25 Mar 2020 00:31:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6102:8e:: with SMTP id t14ls127734vsp.5.gmail; Wed, 25
 Mar 2020 00:31:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt6wmY8qyo3Pt340OshglV8DzmQfpRAbL7DVC/sy458oZZRmYWQG/SCHpobZTIZMPfl85BV
X-Received: by 2002:a67:2b07:: with SMTP id r7mr1510183vsr.169.1585121481899;
        Wed, 25 Mar 2020 00:31:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585121481; cv=none;
        d=google.com; s=arc-20160816;
        b=nnGm+CKdMTKnHP7oIh+G6W+nwoH84dmUl0tUy1BRMQw0mobeE9OQHqdbUwpEINtSvZ
         gdLt67T2qIpDn9vCUAaKH9sjW+89zMLYOdfjpX0o+DXKtDzWcVF4Jcqtx20V0CXLIPUL
         KRv606Lp3CnlKDbWHUPyb2bvr6dC1f8kqh/1RNesG6TYAgCWlfLEaDi94mbPYv8Vllxw
         hhN3PmoKJE1kt6lX0FiovtUKBjq27GB1HT9Eb4SGEsvJKXFv58RhfVNwNKwlpCy08LHI
         CdsHu4W9fg49NxmEO2YC+3lB0d877cua639zLt22DXDDSi3nLspcVSSoTtsNrjs67ncx
         c9Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=FTQ2tjUuh53H0dB48WZSwD42hmmhKUkdbFUMZMbhVS4=;
        b=03R/MC/H4AYLgzBr58T46bwot+fkSYy60wp9NoSYOSrH1ofLieytt3E/oaUch9qt/R
         ey4Yr21qKoc8yLXbjZGr/LatPQ5XeLJUpK0IXW07AENXI7XsLRV5kI9oVtD7bNvYeymz
         cpfztWGKOfzrQlqCg9bihrWu0g47ShBBl53fV2UQO9nbFKJV8QddubgT+3F8boWg/Z94
         mKQWjUr8SoaBmAF0kpfqKXwN+lJpiq34AHp/hDEJwqVWxdL+nA9iVipDbi9OM210kZ3T
         ykq7JRU691qafEHk7qqhDl3WyOE9lq0IrOKSNskVu/8baJwTNVeg5PMXbrXTT8nXAdU0
         Txww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MsCV2Sjr;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id w12si1415464uaq.0.2020.03.25.00.31.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:31:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MsCV2Sjr;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id kx8so653253pjb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 00:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FTQ2tjUuh53H0dB48WZSwD42hmmhKUkdbFUMZMbhVS4=;
        b=MsCV2SjrJ3RQIbL6EbWgDpYhPF6nQptwiTCLKyljZLGvROP7Ps5uFJcPT8SNhYCG4m
         ltgjxxxlNknfukt06wkQ86T4PHpqJn8UN0wgUbhiHq+kb12KGu+wffeXJDaNmcUAXW2z
         /G+lCWuqrHqeVSKZfiUup/1B1+Cz/IAy5rq3Aemf8NO0xgdyVCrXGw1Ujmo3y1KXaBi6
         OkfABP6PPICZPe9Z3DrtB1Kzfir5mpblUxLUc9VJNc2vpE3uNjklY/Y8lsDcBEReqUBk
         /BdBVQQidZm0rMVVEeRoptMTCTU7gHuO4oH74/O5ywrvAD7seS9o3aEezhsivA174lv/
         tSXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=FTQ2tjUuh53H0dB48WZSwD42hmmhKUkdbFUMZMbhVS4=;
        b=jQx8AATj6RvkGT8av2/3asuB0lE8qpCgi7tdYsW+W9jpec7ugG+jitABBbULTeFBEU
         HA2hubKr6G/C3SpBbtslFbFrS6Doq7Cjf7eOvqQ/X/k9FIwzrRanwTgOJY0nMQxo2X1o
         qZ4VYxW/f2J1MeRhhvVSA+WhGKx9yaYKGWZOTX8CF6+VqRa+Oq1CLdcrW4js0WKV79f3
         uGiV5S0d6k62hIY3XfqaiPR+Hh0vTGe8JnFnmfHyf7JMouCja1IaujTULOXezhpnjWeB
         GPqJPmzKxdCTTSHVtBzxviJt55KYKFCGVDt7CdjlkRrwTMmTNBBiQModpqkuRbOFge3/
         Gfxw==
X-Gm-Message-State: ANhLgQ1p4mDFMAsUlm14LX3Rx4JVVJyaz+LSl41kiJrDUKXVbSEnFJdO
	DFhxvPOxMWeGlHs341zoLd2D2dNUAh9Gxw==
X-Received: by 2002:a17:902:bc4a:: with SMTP id t10mr1959237plz.199.1585121480580;
        Wed, 25 Mar 2020 00:31:20 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.229.149])
        by smtp.googlemail.com with ESMTPSA id m11sm3896670pjl.18.2020.03.25.00.31.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 00:31:20 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH 4/6] staging: hp100: Remove space after * in pointer declaration.
Date: Wed, 25 Mar 2020 12:59:03 +0530
Message-Id: <20200325072905.29066-5-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200325072905.29066-1-debsoumyajit100@gmail.com>
References: <20200325072905.29066-1-debsoumyajit100@gmail.com>

Remove space after * in pointer declaration to improve code readability
and to adhere to the standard coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 3ff037430f3c..f76e6b39b12d 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -1182,8 +1182,8 @@ static void hp100_init_pdls(struct net_device *dev)
 /* They return how much memory the fragments need.            */
 
 static int hp100_init_rxpdl(struct net_device *dev,
-			    register hp100_ring_t * ringptr,
-			    register u32 * pdlptr)
+			    register hp100_ring_t *ringptr,
+			    register u32 *pdlptr)
 {
 	/* pdlptr is starting address for this pdl */
 
@@ -1210,8 +1210,8 @@ static int hp100_init_rxpdl(struct net_device *dev,
 }
 
 static int hp100_init_txpdl(struct net_device *dev,
-			    register hp100_ring_t * ringptr,
-			    register u32 * pdlptr)
+			    register hp100_ring_t *ringptr,
+			    register u32 *pdlptr)
 {
 	if (0 != (((unsigned long) pdlptr) & 0xf))
 		printk("hp100: %s: Init txpdl: Unaligned pdlptr 0x%lx.\n", dev->name, (unsigned long) pdlptr);
@@ -1231,7 +1231,7 @@ static int hp100_init_txpdl(struct net_device *dev,
  *          1 if successful
  */
 
-static int hp100_build_rx_pdl(hp100_ring_t * ringptr,
+static int hp100_build_rx_pdl(hp100_ring_t *ringptr,
 			      struct net_device *dev)
 {
 #ifdef HP100_DEBUG_B
-- 
2.17.1


