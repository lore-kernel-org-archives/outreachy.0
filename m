X-GM-THRID: 6263341710126874624
X-Received: by 10.66.139.138 with SMTP id qy10mr10943245pab.46.1458297881540;
        Fri, 18 Mar 2016 03:44:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.59.211 with SMTP id b19ls261537igr.34.canary; Fri, 18 Mar
 2016 03:44:41 -0700 (PDT)
X-Received: by 10.50.142.66 with SMTP id ru2mr29765502igb.8.1458297881178;
        Fri, 18 Mar 2016 03:44:41 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id sf5si1986445pac.1.2016.03.18.03.44.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 03:44:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id u190so15877158pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 03:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kO8+/bQGHkc33JuodkkP4YozTOs5pWefUz+fVhlHqn8=;
        b=YEqYYESelSPEaHsS/Vj9I/RmVtFr92Scfuubt/nLPJekyxWZz9KB2hLiiaQOlJwl6p
         J4+p/Lqy4mNNIT5hmY0BJHvkyCf9mYr/XdTGVyCzHEqj1xCG0mW+u2g0PEgfqCCzvQuK
         q2345SLFAkQhQtd39tortMDms1SuQlNgc6RcbG6Vhdg3xxXh47AfOjDIC+S+zmlAqhSI
         kzNgDjtM1yEciYUGdpZdkOHlWSM2Ezq7Gqurvn1mPUNS/jFXssA//z/rvgu3xHlLx0u4
         BupBaCtAzMDvPSweXjycEKAxg2vT6Lw8f942+XQEcKSznpQUqIbQA6beBDkLPZdZBpxe
         bCdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kO8+/bQGHkc33JuodkkP4YozTOs5pWefUz+fVhlHqn8=;
        b=lFafhvukyVct8x2NNwQCnuj/toV3RRfz+Qn2Mlyq74keEvbr25AK6pFCNf2eiwajZS
         AL8brqvNXFQuNw9k9WcWdNrd3WzXqE1Fh6Rbkrh9JJvQ6x0xtCkZfQFL6JK2QwXaR8Jh
         sii2hq79xNIzvi+VjzSTz0WzlUnEB5WUCM8bxzcWD2VzciszKmDWw4oUKBVJbRUBpnx3
         oNjyhNvWIXwojZ0Gks/scnRzgPch5MaUv3etdLx8vB4QUiqkyrqSPusyhXRv8nWI45En
         nmP2ZaE2V0qoUB6UUN4eCunG9lXkNFY1jUubqmDXkVckC/2HxLdO3cp2BNrjpKzPqcft
         +jAA==
X-Gm-Message-State: AD7BkJJ/GSi2JgJpmvx1z+v5xNXd6dqFpC9gVRlLrHlNjfW7uvFVP1znSAz6GMcyUPmvbQ==
X-Received: by 10.66.237.1 with SMTP id uy1mr22889737pac.114.1458297881010;
        Fri, 18 Mar 2016 03:44:41 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.148])
        by smtp.gmail.com with ESMTPSA id u21sm19578726pfa.60.2016.03.18.03.44.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 03:44:40 -0700 (PDT)
Date: Fri, 18 Mar 2016 09:15:45 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192u: Remove unnecessary semicolon.
Message-ID: <20160318034545.GA3941@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary semicolon.This issue is found by coccinelle script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index 5c3bb3b..d733fb2 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -194,7 +194,7 @@ void phy_RF8256_Config_ParaFile(struct net_device *dev)
 			break;
 		}
 
-		/*----Restore RFENV control type----*/;
+		/*----Restore RFENV control type----*/
 		switch (eRFPath) {
 		case RF90_PATH_A:
 		case RF90_PATH_C:
-- 
1.8.3.4


