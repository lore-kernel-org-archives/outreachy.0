X-GM-THRID: 6206327457482539008
X-Received: by 10.180.89.41 with SMTP id bl9mr1434920wib.1.1445033091436;
        Fri, 16 Oct 2015 15:04:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.35.230 with SMTP id l6ls228151wij.31.canary; Fri, 16 Oct
 2015 15:04:50 -0700 (PDT)
X-Received: by 10.194.240.230 with SMTP id wd6mr4149530wjc.0.1445033090786;
        Fri, 16 Oct 2015 15:04:50 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id q6si150791wif.2.2015.10.16.15.04.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 15:04:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id p11so28295841wij.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 15:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=d5w/FabEoZLkBIYbPi2OZ50x7jXF6I1hqLmREFF1zRg=;
        b=aVeXUP4iOToNrs7IvlUoVqs0rTKZ3NjXu4aPePE4Jox6RNZ3+tSsf1Vv17Z/cN3rbx
         72ceWR1P2OfOwttd6U4uBLmBRKGEtcDGIat3njirEDgzaEV5IDVipXMPfNNNE2CSlJWg
         1EhRm+nEtW5DXwiaR8rwyytntrmKNfvGaZahUe4O7HDDaxmvDoSWruYbDgfLisypUFtf
         pIJxPTbGkiYlhFxyiwcKRIhrwMCXMFt7k8jJJQ2k0yqdbAU4NtS9o5izO4UFkOmgYJNF
         hEGxRNmbENKveXEYj9pzDAO0EdihznpNzaNRivTHmJwSEWgZZr0UYKvW/S5BWATvdViA
         jIkg==
X-Received: by 10.180.206.83 with SMTP id lm19mr7343116wic.63.1445033090679;
        Fri, 16 Oct 2015 15:04:50 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([88.247.179.54])
        by smtp.gmail.com with ESMTPSA id vr10sm16257597wjc.38.2015.10.16.15.04.48
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 15:04:49 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2 1/2] Staging: sm750fb: Include appropriate KERN_ facility level
Date: Sat, 17 Oct 2015 01:04:32 +0300
Message-Id: <1445033073-10154-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

Problem found using checkpatch.pl:
"WARNING: printk() should include KERN_ facility level"

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* used dev_info instead of pr_info.
---
 drivers/staging/sm750fb/ddk750_help.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
index 9637dd3..d20cd92 100644
--- a/drivers/staging/sm750fb/ddk750_help.c
+++ b/drivers/staging/sm750fb/ddk750_help.c
@@ -11,7 +11,7 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
 	devId750 = devId;
 	revId750 = revId;
 	if (revId == 0xfe)
-		printk("found sm750le\n");
+		dev_info("found sm750le\n");
 }
 
 
-- 
1.9.1


