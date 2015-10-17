X-GM-THRID: 6206591728806264832
X-Received: by 10.180.89.41 with SMTP id bl9mr2163344wib.1.1445084750407;
        Sat, 17 Oct 2015 05:25:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.42.209 with SMTP id q200ls448003lfq.72.gmail; Sat, 17 Oct
 2015 05:25:49 -0700 (PDT)
X-Received: by 10.25.33.77 with SMTP id h74mr120660lfh.1.1445084749743;
        Sat, 17 Oct 2015 05:25:49 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id cm6si329162wib.1.2015.10.17.05.25.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 05:25:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id fv8so22555371wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 05:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=dFrR4aDZmcbT3k5K6v5bguMj0YyaL/rM2ax73NYsin4=;
        b=ThDzRovuS//9bYIx9ZTCXw2S58rgL+HCip6aJ/IKQbJdQgUE7lb9B6f7gFxu6VRNZs
         EpYQSy2BzL4gAV+EDEskfMQnjlD3eJpQrwCB6Jux1XIAArXXl43nDhCWRJevNf7AFUuj
         E46P3ecbK5yIxMiD/jnkHx+xtB6+Z/GSXdNVoVLG0xY9cvnVGmG46/jvhib6Ub8MrBPd
         A5xidC0MdUG5XT5ECgsk4WzEcNkkrWBQRLDaQ7/XA9GCbtUVv1NiE0s861JAEjk6MLjP
         A4UQz3Ja23m/0p2qCddodoSDY8zcRtjOVaqDNhIMdIoAG4fYS1mDMKv/JEgZqIIt4SGx
         tvfg==
X-Received: by 10.180.87.6 with SMTP id t6mr10044714wiz.20.1445084749658;
        Sat, 17 Oct 2015 05:25:49 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.44])
        by smtp.gmail.com with ESMTPSA id fz2sm6976580wic.2.2015.10.17.05.25.48
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 05:25:48 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 2/3] Staging: wilc1000: Remove unnecessary else after return
Date: Sat, 17 Oct 2015 15:25:34 +0300
Message-Id: <1445084735-20133-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445084735-20133-1-git-send-email-aybuke.147@gmail.com>
References: <1445084735-20133-1-git-send-email-aybuke.147@gmail.com>

Problem found using checkpatch.pl:
WARNING: else is not generally useful after a break or return

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 93f3c75..cea7c6f 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -307,8 +307,7 @@ u8 *get_tim_elm(u8 *pu8msa, u16 u16RxLen, u16 u16TagParamOffset)
 	while (u16index < (u16RxLen - FCS_LEN)) {
 		if (pu8msa[u16index] == ITIM)
 			return &pu8msa[u16index];
-		else
-			u16index += (IE_HDR_LEN + pu8msa[u16index + 1]);
+		u16index += (IE_HDR_LEN + pu8msa[u16index + 1]);
 	}
 
 	return NULL;
@@ -324,9 +323,8 @@ u8 get_current_channel_802_11n(u8 *pu8msa, u16 u16RxLen)
 	while (index < (u16RxLen - FCS_LEN)) {
 		if (pu8msa[index] == IDSPARMS)
 			return pu8msa[index + 2];
-		else
-			/* Increment index by length information and header */
-			index += pu8msa[index + 1] + IE_HDR_LEN;
+		/* Increment index by length information and header */
+		index += pu8msa[index + 1] + IE_HDR_LEN;
 	}
 
 	/* Return current channel information from the MIB, if beacon/probe  */
-- 
1.9.1


