X-GM-THRID: 6253655179876368384
X-Received: by 10.112.181.33 with SMTP id dt1mr5110338lbc.22.1456333055524;
        Wed, 24 Feb 2016 08:57:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.27 with SMTP id m27ls666320lfi.60.gmail; Wed, 24 Feb
 2016 08:57:34 -0800 (PST)
X-Received: by 10.112.156.33 with SMTP id wb1mr5046272lbb.7.1456333054945;
        Wed, 24 Feb 2016 08:57:34 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id s141si171611wmd.1.2016.02.24.08.57.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 08:57:34 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id g62so3824373wme.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 08:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=dDf9ezxccasjO3zispYm5+1pPtQv8IBIRkuMlRXPYOU=;
        b=a3Qyha79mncPU1u4DyQ0u+yn+TE15kiZELEfZJlUlX3GG9q5ceuenLCmSaREpHBsyB
         AhjL9Xgqv4bzvRlVDRjvWlCQowMFjyJHhTEHLSoh+oikPMwWmNAhv3XWIVSCxLvUPtqx
         v02FEt/vfgsjJ/3dtvoGm8wi0kp2sllnEde4Pwh9ce5lQvkWiaOR6S1CeqXlScH9heiL
         W436eBDsqABlHTHsLQ6qT1ipTWdrAScvRLuu/Wbrva0PLrhpci8jKVErtvilFnjlcgmr
         CiXv6IU5JJD3AB0M482buyTfBsgrIsOdT6DaCrUOeChBCwS3WV5k1Ru3m4RKCozQIkCm
         VSfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=dDf9ezxccasjO3zispYm5+1pPtQv8IBIRkuMlRXPYOU=;
        b=IgNfh50pUGyZ8nTW3t7yX2FV0Bx8xscbbUzzHF1Mg8dsZbYPy+RjvoO8EdtvaRhVON
         79FSTfcRYNGigGyB6972Sglpa1XIV3H1TmKaBWc/1YoMGiWKdjRdEuG7sAPPek8OwL9j
         ThQ5UFzWaDF3RbufzQiQj03a8lCcVHrpaO65IC5UYaY1f8zWIMEwbtNQrxUH3KTf7IAW
         wxEFegpo8CosrIxikrU5t1J+07e/aFlzVjaS9Mi1eCDIqVroWS/K6gNm+8FOs/iYlR26
         W4j58bzk3YyzIZ8scQ2gkoSpAyd7XxWilkz3Qfm0CaThEaJ/uSACAPxvvDAFVHZd65mD
         yeNw==
X-Gm-Message-State: AG10YOS1CBg2drXnp7k0Q2Q/RGGeAL1Icf18H1gz5tj6k5BQUckE+sAr1CUvYHr0sgZMaA==
X-Received: by 10.28.17.81 with SMTP id 78mr25970584wmr.84.1456333054783;
        Wed, 24 Feb 2016 08:57:34 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([213.143.50.70])
        by smtp.gmail.com with ESMTPSA id t3sm3888766wjz.11.2016.02.24.08.57.33
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 08:57:33 -0800 (PST)
Date: Wed, 24 Feb 2016 17:57:30 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com, devel@linuxdriverproject.org
Subject: [PATCH v3] staging: nvec: Avoid the use of BUG_ON
Message-ID: <20160224165708.GA3517@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Prevent a kernel panic by avoiding the use of the BUG_ON macro.
Checkpatch detected this issue.

The WARN_ON macro is not needed as such cases shouldn't happen and they
were introduced for debugging purposes.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
Changes in v2:
	- According to Marc Dietrich, module creator, the WARN_ON macro is not needed as such cases shouldn't happen and they were introduced for debugging purposes.

Changes in v3:
	- Explanation of changes in v2 included in the commit message, as Fabio Estevam suggested.

 drivers/staging/nvec/nvec.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index c335ae2..f6a1dbb 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -641,11 +641,9 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 			nvec_msg_free(nvec, nvec->rx);
 			nvec->state = 3;
 			nvec_tx_set(nvec);
-			BUG_ON(nvec->tx->size < 1);
 			to_send = nvec->tx->data[0];
 			nvec->tx->pos = 1;
 		} else if (status == (I2C_SL_IRQ)) {
-			BUG_ON(nvec->rx == NULL);
 			nvec->rx->data[1] = received;
 			nvec->rx->pos = 2;
 			nvec->state = 4;
-- 
2.7.0


