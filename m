X-GM-THRID: 6465749953533706240
X-Received: by 10.129.154.17 with SMTP id r17mr15222211ywg.102.1505424723199;
        Thu, 14 Sep 2017 14:32:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.20.20 with SMTP id 20ls5379626iou.3.gmail; Thu, 14 Sep
 2017 14:32:02 -0700 (PDT)
X-Received: by 10.200.20.152 with SMTP id l24mr1632470qtj.21.1505424722449;
        Thu, 14 Sep 2017 14:32:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505424722; cv=none;
        d=google.com; s=arc-20160816;
        b=Ix9oaaZOzQEjIVxWkU4Np1YFVPa9+X9E6+PnVc1UJ/0OCDfc3aIfWSlZV/G8DdlO+D
         YBsF49ZrBiXYRaDEl0h8R5r9g+yg6RZV0ITtKLFVco84QnevJV/bmaysRSIkBhHKrHIj
         m7OXAXelybeZXEI12huoNCOE9ross+Y5Dm4DOUjtJ3vNn8lShvcgoMVKjaYGL+Y0FIe+
         YkvOAm1Saz9Vbhjc9+VGHyE2Kfv3PhnAZHBT8xhGEUECAQ5LZomleW8+FHwkY7WUj0Hw
         jIwnLrOInwlfBcLA2eLEESFs+dv1qvoGGIC2pdviYZxXay767o0mleHe5tevssH5oVwl
         WMAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=M6IDh/Yo5acu6TQ2irUuarE1yWsHjNFM+sSx3xJl4is=;
        b=HO7fz1uNt/dkdbEWbYsAnJvN6SfxKxYEn9H4g2IikBd0hFc4gSd2OK+qEwF8dErxTx
         +a9/ZgvddWPOm/PFiUx/GmLGGAEFFbGYpcLLghO9aZ1v9i4kaD8FOKSud211TobUz8O3
         VmqYbEHW42l0rTpfK4/DRl45Exyyctgao8cN0Fe8pUyevTLx9BMQN/QQaqfPHGG2b9LG
         8o9aZK9fwdvIFFSK5954/UqQIWL+t1D4vIdqAHEfA4gCvkOUrzehhpz0iwX+4F1taAqC
         sdaT8qV56QKJAlt3aHducQNhnhz5nrC1+RFgqwfYr7v41zJScGmv/4Hnj2QykzD9vYQQ
         l2uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iWnxq8s8;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r78si793674pfb.3.2017.09.14.14.32.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 14:32:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iWnxq8s8;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id f84so261408pfj.3
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 14:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=M6IDh/Yo5acu6TQ2irUuarE1yWsHjNFM+sSx3xJl4is=;
        b=iWnxq8s89vCA7pQONSqxwSJdQZXota8MvSV/nVqN9MYgCpCPx0jYi65osjK/1kmtbd
         aCK0Yt+Renf1yEUqvD/Jak+q24K7VIVsGw5tXpUzQq5E68IJJM8Ffk04UmUVwdGPSVFx
         ymL/6YdvKLMAH2/ci/yy5LMQafWrvcd4ymR+G/zLmZR3CAsHX8Yj7hpZcWimb8ECbIcE
         vl9fCn0D4Eow3VBrnSt9yX6ZYbTw94I8sFaOo6hDBx0UbFlc4w1RnnP+y4uKIf0gzF9W
         zE35cw0rbURp33G8Kj17f/a7YROPe4J/DGwni89uKTW7mLuj2vRRpDVrZ90SoZQlzMXt
         Cgfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=M6IDh/Yo5acu6TQ2irUuarE1yWsHjNFM+sSx3xJl4is=;
        b=qJXy6yt5kBSbso4hSNxajch2Z82GSDRz/A0tMwenPIUUGCUVtIEsGNWqDeLUsyVE3h
         pNMLw7ALZx83bDkvcWD42fYikaaFbbR4VjaOb3yPwHtHZ1xmdKV8Z/iQofRz59FYdnPV
         ZKsLoK95kMIjjCXQM7JaWaZqZsL/DV3q8tsj1E/+EBAmHPOOnfJOra5fNmMoystrHkr1
         8iEBGI2YoGmwReiVdl3N8cyNg6oFIJn7KtxysMC75P0iUclDPuZKk6wkClrABYZISSBR
         c2u01pCjKaRNTvhDTZXOOfmglP0BvF1b7mCuCIA3yTmkynRyUKR6BRV4WmUbIifQ6ntY
         /a0g==
X-Gm-Message-State: AHPjjUjZY5iiDkWTLbX1Y89sBs6JUjzUmtdX+VwFi4ymlsbj6a+HO0su
	Vx7qvGWZWaKmZQ==
X-Google-Smtp-Source: ADKCNb5S00mGi5u2ii9+8C88SZW6rTo0toodMT/vgeaFVMOzt7mwrRuqGowN6AxG1da0FN2FtyNOFg==
X-Received: by 10.84.236.10 with SMTP id q10mr26464791plk.326.1505424722107;
        Thu, 14 Sep 2017 14:32:02 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id g5sm26896291pfe.94.2017.09.14.14.32.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 14:32:01 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: lustre: multi line comments - put trailing */ on separate line
Date: Fri, 15 Sep 2017 03:01:55 +0530
Message-Id: <1505424715-5918-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes checkpatch.pl warning 'put the trailing */ on a
separate line'.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_dlm_flags.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h b/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h
index 11331ae..635eca9 100644
--- a/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h
+++ b/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h
@@ -136,7 +136,8 @@
 #define ldlm_clear_cancel_on_block(_l)  LDLM_CLEAR_FLAG((_l), 1ULL << 23)
 
 /**
- * measure lock contention and return -EUSERS if locking contention is high */
+ * measure lock contention and return -EUSERS if locking contention is high
+ */
 #define LDLM_FL_DENY_ON_CONTENTION        0x0000000040000000ULL /* bit 30 */
 #define ldlm_is_deny_on_contention(_l)    LDLM_TEST_FLAG((_l), 1ULL << 30)
 #define ldlm_set_deny_on_contention(_l)   LDLM_SET_FLAG((_l), 1ULL << 30)
@@ -144,7 +145,8 @@
 
 /**
  * These are flags that are mapped into the flags and ASTs of blocking
- * locks Add FL_DISCARD to blocking ASTs */
+ * locks Add FL_DISCARD to blocking ASTs
+ */
 #define LDLM_FL_AST_DISCARD_DATA        0x0000000080000000ULL /* bit 31 */
 #define ldlm_is_ast_discard_data(_l)    LDLM_TEST_FLAG((_l), 1ULL << 31)
 #define ldlm_set_ast_discard_data(_l)   LDLM_SET_FLAG((_l), 1ULL << 31)
-- 
2.7.4


