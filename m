X-GM-THRID: 6523837369429262336
X-Received: by 10.36.117.194 with SMTP id y185mr2389521itc.56.1518949253458;
        Sun, 18 Feb 2018 02:20:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.80 with SMTP id x77ls380350ioe.16.gmail; Sun, 18 Feb
 2018 02:20:52 -0800 (PST)
X-Google-Smtp-Source: AH8x226h4RmMVOBcBh76JAmbESwZ3vvtnPlst4YCbTQJSuZfUzuIr9nucvAZXM1L8i4eovpFClz8
X-Received: by 10.107.167.208 with SMTP id q199mr7943956ioe.84.1518949252574;
        Sun, 18 Feb 2018 02:20:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518949252; cv=none;
        d=google.com; s=arc-20160816;
        b=A3IG3P3+sRYSS5SlYUoyvtrRIbx+X7O5DR1YsTzvAy7Qq2rGI+gEsZyrMfq2PBf22/
         w3AIsen+qKsG9Csl6H3FvQEY6E8vRVWmcRSeaPqX/BpGLsHojxvgVtDCFvrlHa4rYGdf
         4ZmgrB/xEc27vjy8miGBwEZHOphOo81fFEzZO6tvsLKACfSa0nCCyg0bZhpnctMchxYE
         UGJIjGpN5qHrIXvCK4oXWJY9CnmsYDtFDx1XauSUQ9viP1nUeJMOsAkOBP8HQJSH1Dfg
         P0lYil4v+/dzXsI+o8sqFmKE5LWyds671kADJPQFoP5z+ee9q69sNri+0jVOot7alfXD
         NFVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Ids22nm9trl6dl+9BX+jfTFX8raUx+o5+Uv9AouJc6M=;
        b=Fk5dLC0ddwRqcha0oMAIT9lyqTy2KjxfSwPILLKDjzPFDgf3oYEardSrlHI+THLnc+
         LGm0sfi6h3Ji2JUSDKY57hkOqOCuz8+vb539ENO2Sp4JOTs8lyyzWJuxtdwBRGAzrC9J
         uC56xXsOiqeL4Bg+gTuYYGLqB3zq0sxmBWtBuZ1kKItQAOVaP2YKsY7tjKIQP16t0iwS
         JBpgKDFdkxe2yhJcUupemcNCI++Xj/cmvr+A0UfDMlvSZl0/gcPu33BWKW7inXcreUAa
         w1UU9KjMOmbx3kMsGecxXfNZgRQvLH7rWFvasTMNsykpDG/1U8semWi3SXy0NLFXElkA
         asUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DyveacI7;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id n14si247356ith.1.2018.02.18.02.20.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 02:20:52 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DyveacI7;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x243.google.com with SMTP id x19so4105870plr.13
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 02:20:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Ids22nm9trl6dl+9BX+jfTFX8raUx+o5+Uv9AouJc6M=;
        b=DyveacI7kBs01yDpnCjE5gu3Lbhp6iSwgrwb2uaF3X+xtCw31fYSTpixaD+vOiuUnE
         YFRsuIHJ5TBT+kFLDH6uCIOgqFWqulzmqyvJdoyJycv60d2ss3DovKEIs7GaZOm+VY1w
         5Y6ujqBd3ln3sp+z1U1uGnVOiAxyo+l1U/lJLofdThPEQyC4jbrCK4dG8nrKo2L9/QpY
         cpafhDy3jHezNo8War+I+tI2/rAiy0aZOezA8bXH1pbmtj5nW0HjsWwXX7t0xqbDO5V5
         QSvfiI7/yPCTxA/Z+iU+qU7DJppQrK6WIeRMSSuHiN9mFMUm8URBEjprbYVr5Rv1LbaK
         leDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ids22nm9trl6dl+9BX+jfTFX8raUx+o5+Uv9AouJc6M=;
        b=rMTfzQ3GbvMoCq5ocLICCaZXqm/F8pfVvksBUuSwvWF873eY5MI4ptBtQHaex9ZOG2
         Oy/NNJO7S8ALEFQQk7ty7sePImH83E4EK4fMNkSTijt3c2R5J0vG3iEYrfCebHB2soHv
         JgfddVflAUnyQJ0N+do5i9Xkq7LOW4fV/u5BUZT4j4EsPzy0nsFL4fGMDlCXgETSR0/I
         i8Ng51meQwBgFv1JWI85NXSi+JTGRUnV0CDN/2hFnNe9gc1prjz87O4MF+kX2RiqyBDF
         1WlbBDTSABCoPO2WfR7iBA68wT95Wp3WKbUnhDQiQGPlwzcnfKzgZ4T8zOusqObEA4vP
         YKlw==
X-Gm-Message-State: APf1xPDvRo/ZmSzNeWd7DiqxmWob+qi+xeL/R1QEk2zRoIVMFC8Hn0/I
	Rueuf5MLeyda28+/d21Cris=
X-Received: by 2002:a17:902:4383:: with SMTP id j3-v6mr10849207pld.320.1518949252002;
        Sun, 18 Feb 2018 02:20:52 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-187.resnet.ucsb.edu. [169.231.23.187])
        by smtp.gmail.com with ESMTPSA id r78sm12573213pfb.24.2018.02.18.02.20.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Feb 2018 02:20:50 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: aditya.shankar@microchip.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] Staging: wilc1000: wilc_wfi_cfgoperations: Fixed a coding style issue
Date: Sun, 18 Feb 2018 02:20:44 -0800
Message-Id: <1518949244-48499-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Fixed the checkpatch warning "braces {} are not necessary for single
statement blocks"

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 621810d..df04bf80 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -287,9 +287,8 @@ static void remove_network_from_shadow(struct timer_list *unused)
 		}
 	}
 
-	if (last_scanned_cnt != 0) {
+	if (last_scanned_cnt != 0)
 		mod_timer(&hAgingTimer, jiffies + msecs_to_jiffies(AGING_TIME));
-	}
 }
 
 static void clear_duringIP(struct timer_list *unused)
-- 
2.7.4


