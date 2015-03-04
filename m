X-GM-THRID: 6657648099328
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,dd8bf9c874d9a6fc,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.41 with SMTP id x9mr949856lax.10.1425497556185;
        Wed, 04 Mar 2015 11:32:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.164.193 with SMTP id ys1ls234716lab.39.gmail; Wed, 04 Mar
 2015 11:32:35 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr970845lbb.11.1425497555670;
        Wed, 04 Mar 2015 11:32:35 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id i8si397128wif.1.2015.03.04.11.32.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 11:32:35 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x232.google.com with SMTP id q59so48537863wes.1
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 11:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=nlvsD8q7t3vSh0ye89T7nKCXHGBAM3OJEG9G2rFlWcg=;
        b=J7GQ478KuNhSze4f5r5GwLxXjunSBwatUNfboYPEAbXCcx7ftQ6/9ACRpZqzbK9ZtJ
         ozaiV/NXknPShkWrA5uQUuZnQmgJySu47w9lzzmbcRbcn+FfBPJVPLC2yBbXKIf3bTme
         +aC7KsaMJM9SnyZwPyv8dr/k5zCrDTdiqTzYOSJIUsYWXLSHVoJGR08yfeNM88Ufo6eD
         aldJf2bP5O5596mJ9rbNLGejInAEWmHB5kLpAasHpbVOJmKK/mGG/zbTdyKgTE1/zFgb
         VBb9Ght6pimcUL8J12DOjOsnqzL9PF7IjNeIDbbu6KctLYKapEGX1zZUhNhPkCRZcKU5
         rn/A==
X-Received: by 10.180.77.48 with SMTP id p16mr57684901wiw.89.1425497555568;
        Wed, 04 Mar 2015 11:32:35 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.151])
        by mx.google.com with ESMTPSA id m4sm7269536wjb.25.2015.03.04.11.32.33
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 11:32:35 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: unisys: Remove unnecessary semicolon
Date: Wed,  4 Mar 2015 21:32:49 +0200
Message-Id: <1425497569-11072-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This fixes the checkpatch.pl warning:
WARNING: macros should not use a trailing semicolon.

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/unisys/common-spar/include/channels/iochannel.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/common-spar/include/channels/iochannel.h b/drivers/staging/unisys/common-spar/include/channels/iochannel.h
index eb7efe4..3bd7579 100644
--- a/drivers/staging/unisys/common-spar/include/channels/iochannel.h
+++ b/drivers/staging/unisys/common-spar/include/channels/iochannel.h
@@ -337,7 +337,7 @@ struct uiscmdrsp_scsi {
     /* peripheral type of 3 - processor */
     /* specifies device capable, but not present */
 
-#define DEV_HISUPPORT 0x10;	/* HiSup = 1; shows support for report luns */
+#define DEV_HISUPPORT 0x10	/* HiSup = 1; shows support for report luns */
     /* must be returned for lun 0. */
 
 /* NOTE: Linux code assumes inquiry contains 36 bytes. Without checking length
-- 
1.8.3.2


