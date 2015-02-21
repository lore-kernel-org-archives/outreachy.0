X-GM-THRID: 1786498777088
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2774b652a5e84589,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.221.65 with SMTP id qc1mr289988wjc.7.1424524564908;
        Sat, 21 Feb 2015 05:16:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.228 with SMTP id cx4ls273384wib.29.gmail; Sat, 21 Feb
 2015 05:16:04 -0800 (PST)
X-Received: by 10.180.12.146 with SMTP id y18mr255890wib.6.1424524564613;
        Sat, 21 Feb 2015 05:16:04 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id el6si306121wib.2.2015.02.21.05.16.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 05:16:04 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f43.google.com with SMTP id z12so17876798wgg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 05:16:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=BBlfsGnnjanB2KS6/rTfKUlTrguLhSOv85tt3Ia9mIw=;
        b=zsu0pvGelQiRtLhrutjRU0ZhAC7owiV2z6xZgR840fSRSof4vOp5guwpJ5JtcM5TcJ
         lilpIKGazSzGd78qrcTmOsTeh4z4mQzHSbZnkY4LG9rzJ2YIpUwYYyWSevk4+1zCA2P+
         CWCLAteraBcm3G+qyfntC5hKjPxHjJ/TlbtlhDZ3JVxf7SpTJA9SwmLRxC8RT7QiNfFG
         Avv1yH3ZU5OiCo+UnyK37moHtoXfSPIoz309a4SaLKVACZ9pUcbgwYE1emC3zTI6G2ta
         y7vlg9E/w0KfrbNgbum3+XC5/gRiUl8kP5KRQdYCj1mw24aHOi5wY3p60U4hT7cHQzQ6
         D4hw==
X-Received: by 10.180.35.72 with SMTP id f8mr3893941wij.31.1424524564489;
        Sat, 21 Feb 2015 05:16:04 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id lu13sm6935922wic.10.2015.02.21.05.16.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 05:16:03 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 1/3] Staging: lustre: Removed unnecessary braces
Date: Sat, 21 Feb 2015 15:15:51 +0200
Message-Id: <1424524553-9035-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning in llite_lib.c
WARNING: braces {} are not necessary for any arm of this statement

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index a3367bf..9646e1a 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -87,11 +87,10 @@ static struct ll_sb_info *ll_init_sbi(void)
 
 	si_meminfo(&si);
 	pages = si.totalram - si.totalhigh;
-	if (pages >> (20 - PAGE_CACHE_SHIFT) < 512) {
+	if (pages >> (20 - PAGE_CACHE_SHIFT) < 512)
 		lru_page_max = pages / 2;
-	} else {
+	else
 		lru_page_max = (pages / 4) * 3;
-	}
 
 	/* initialize lru data */
 	atomic_set(&sbi->ll_cache.ccc_users, 0);
-- 
1.9.1


