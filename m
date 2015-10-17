X-GM-THRID: 6206591728806264832
X-Received: by 10.194.156.193 with SMTP id wg1mr4864073wjb.3.1445084752053;
        Sat, 17 Oct 2015 05:25:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.232 with SMTP id fr8ls315647wib.28.gmail; Sat, 17 Oct
 2015 05:25:51 -0700 (PDT)
X-Received: by 10.180.210.71 with SMTP id ms7mr2441151wic.4.1445084751639;
        Sat, 17 Oct 2015 05:25:51 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id w4si359571wiz.0.2015.10.17.05.25.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 05:25:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id p11so42383405wij.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 05:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QttQOV4gIsnihKvtCoXlHmR0Se1wmTq7ZfwnVDUbn0w=;
        b=CUcC43CTdghfhouBWz7vbuEgtLDWWnBtCImM/x5yjSHhgpLeWOPpTD8+Vy9Yf2iIJK
         mowsPF2ZrrrMhfAxYIdBGuEvf9fychrVHy8QGkBN9DYT3aR8tcmev/Sdf2Z40Xdgwj5B
         xRZHF3CBIy5f2t7X5AQccnVZAUqDr/HJUpPHRyVe9s8iAxdLx0bAy6VGqKbXzoPlapcj
         PRqzgDZE9Rkge5PFkiJAbEBhIugAgFHvEKqM8HkVQhvce6qEpS2BSF2fOJ4f6KvsWTZQ
         29fCFVctspTV8psZor6CZ73rP1av/rNIHR8f7pf4Shix1rHXFxpB+WABzfIkHtkyblnM
         ykwg==
X-Received: by 10.180.108.162 with SMTP id hl2mr9953427wib.89.1445084751557;
        Sat, 17 Oct 2015 05:25:51 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.44])
        by smtp.gmail.com with ESMTPSA id fz2sm6976580wic.2.2015.10.17.05.25.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 05:25:50 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 3/3] Staging: wilc1000: Remove unnecessary parentheses
Date: Sat, 17 Oct 2015 15:25:35 +0300
Message-Id: <1445084735-20133-3-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445084735-20133-2-git-send-email-aybuke.147@gmail.com>
References: <1445084735-20133-1-git-send-email-aybuke.147@gmail.com>
 <1445084735-20133-2-git-send-email-aybuke.147@gmail.com>

Problem found using checkpatch.pl:
CHECK: Unnecessary parentheses around pstrNetworkInfo->u8SsidLen

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index cea7c6f..427adfd 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -422,7 +422,7 @@ s32 parse_network_info(u8 *pu8MsgBuffer, tstrNetworkInfo **ppstrNetworkInfo)
 		pstrNetworkInfo->u64Tsf = u32Tsf_Lo | ((u64)u32Tsf_Hi << 32);
 
 		/* Get SSID */
-		get_ssid(pu8msa, pstrNetworkInfo->au8ssid, &(pstrNetworkInfo->u8SsidLen));
+		get_ssid(pu8msa, pstrNetworkInfo->au8ssid, &pstrNetworkInfo->u8SsidLen);
 
 		/* Get BSSID */
 		get_BSSID(pu8msa, pstrNetworkInfo->au8bssid);
-- 
1.9.1


