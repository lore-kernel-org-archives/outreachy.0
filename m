X-GM-THRID: 6462940414905155584
X-Received: by 10.129.46.150 with SMTP id u144mr1064253ywu.240.1504770576683;
        Thu, 07 Sep 2017 00:49:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.82.10 with SMTP id g10ls858949iob.18.gmail; Thu, 07 Sep
 2017 00:49:35 -0700 (PDT)
X-Received: by 10.13.216.70 with SMTP id a67mr663767ywe.122.1504770575791;
        Thu, 07 Sep 2017 00:49:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504770575; cv=none;
        d=google.com; s=arc-20160816;
        b=HXkCGvmqmLe7K4ogl+wv8NZY6hzljqoPykb+GVb4Jymoi3MAqii6EfYfMvaRG8O8+M
         hbgD4uxH8Y/FRqAEElOhIzWD1ke4OUPEdFbLsIYGw/Aj3dDn8NEs5yR/63GLqOodc8ta
         oSPEh+l4oxvFJ7j52TAUugW5ZKTwNPxvZ3uP3UoNrOXQL/KYdJ6uq3UHYTX8AlBtEZeM
         RejJogid3DYnHbKBh4ZFIY5Pxu+LqHH71snR1QNTljcGqkYG1i3HAR1heeMKR7hP8rKl
         nlS2CxPG6TmcXU7gqEbuERAbzRKHWB8O0d/objdx/HUrZXLullx9qoyA+zlneZNPjIu/
         OLPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=1Tlv7GKWIx9olPnDjXJ6ID9N6U0FpniokGX2K2WYzpw=;
        b=ySpx8iyCtDvSWHJQB+lydzSymCXlV76uja2fThYrL4K+UiYleqqpo2/ogikV+r9/pq
         Em0mTT/ccCYOLkvgdFkAUO0eR4BDRJlm10R6O1dTjpHlsZUjEUx4z0Y4XpvqaebGHCjS
         dYCuRh+/PWFj2waybVJrlluzVcK1dales+glhzSM7u7x1MQyhNOsmiWl7DfyXAr62R+W
         akumSBTOdm6mx6oxNs6NStryamDjUaoWXVwQFBDnaiLqIAiTzrTUQCICQa+Zi8bWvhpp
         t+7hIvB7mevqnCuJZqeCxzk1Bw17taxq33smL3v/463fTHOOvM4TgOGf59GUKp5V3/si
         BSxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pKD4p8FN;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id j20si251350pfa.18.2017.09.07.00.49.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 00:49:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pKD4p8FN;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id y68so4172926pfd.1
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Sep 2017 00:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=1Tlv7GKWIx9olPnDjXJ6ID9N6U0FpniokGX2K2WYzpw=;
        b=pKD4p8FNmvyIQsON1w6yz0UPjXAuHEbEkz5ceyddl9j9n2cQq4da2RZw/bHfEaje6b
         T2UacLQkyi93ekA82n88pNE2zqdY5LCQbCRZLmyKBYDt71O/5ruKfcsLq0l7bdJ/LYos
         ctUg/0Eyze/stIrLjscel0s8oL2p4NdDVF9Ysfz+DfLQ6hf+G4SZTny0OTMZcQFKPmDH
         OXZ7+rgk7uqIzHrMFlE1Sp/1gumrjVHObBoNT+06ht36pDn7xnHqrA6Tl30M3XzdT4Pi
         1dYCaZuxxkjsqelaWA3Q+DF05jitypzi4dTuxVSIRIsV82AeFhuFAvspLJghY0tM7PiM
         VUUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1Tlv7GKWIx9olPnDjXJ6ID9N6U0FpniokGX2K2WYzpw=;
        b=NiGYxe0Vy0P4czpPxqg2Xlb9kRONAro2AT75Gxi2NM2a31+EbxFYj/st6RfNGB332F
         rGhjikRSCE/TDvsPqwssKRbcgm4pOZti+ZYccFT7PfytiVQn6+LaqwPY1G38lP7BWmhn
         zgpd8rGWH5xUWfoxyd1lNmgIhU7gND5IM528MZYre8tCHtvfLv1qSFLDcgeyB38FmGMI
         1Kj6SvENeQmnRpxk7V3bZjE/6KY32ntSSlyUDksPpwLJXFzbb1UHWoNF+4dyIxpP+r9T
         WfwxcZGHl2QQKw3QaCzuvXWHaf2Tt15jhQX4RI2hcEOJkaPPzNGLLYmdO1TDSqqgfBst
         sThA==
X-Gm-Message-State: AHPjjUhew2JRmatyDRUHWPto9ZjcQIUpSBGlCsHv5U53lb42ggHi4DFu
	/1bSumz5lByMUw==
X-Google-Smtp-Source: ADKCNb6P8leIZcM5GXfkDyN4pfb231BzSquV4dydm+OinEcmqb2SNPqqmo1QPEfu3OkdNaC4VPWP0w==
X-Received: by 10.98.66.220 with SMTP id h89mr1833638pfd.270.1504770575553;
        Thu, 07 Sep 2017 00:49:35 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.26.255])
        by smtp.gmail.com with ESMTPSA id u186sm2379573pgb.35.2017.09.07.00.49.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Sep 2017 00:49:35 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: gilad@benyossef.com,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v5] Staging: ccree: Remove unused variable.
Date: Thu,  7 Sep 2017 13:19:21 +0530
Message-Id: <1504770561-5554-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove the local variable inflight_counter as it is never used.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v5:
 - Correct the format of the subject.
 drivers/staging/ccree/ssi_cipher.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
index 8d31a93..1ff3c8a 100644
--- a/drivers/staging/ccree/ssi_cipher.c
+++ b/drivers/staging/ccree/ssi_cipher.c
@@ -697,13 +697,10 @@ static int ssi_blkcipher_complete(struct device *dev,
 				  void __iomem *cc_base)
 {
 	int completion_error = 0;
-	u32 inflight_counter;
 	struct ablkcipher_request *req = (struct ablkcipher_request *)areq;

 	ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);

-	/*Set the inflight couter value to local variable*/
-	inflight_counter =  ctx_p->drvdata->inflight_counter;
 	/*Decrease the inflight counter*/
 	if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
 		ctx_p->drvdata->inflight_counter--;
--
2.7.4


