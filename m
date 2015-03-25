X-GM-THRID: 9842395709440
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f3d42db10bb65f32
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.180.74 with SMTP id dm10mr2568196lbc.11.1427317600643;
        Wed, 25 Mar 2015 14:06:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.133 with SMTP id w5ls146157lal.16.gmail; Wed, 25 Mar
 2015 14:06:40 -0700 (PDT)
X-Received: by 10.152.163.99 with SMTP id yh3mr2536195lab.8.1427317600093;
        Wed, 25 Mar 2015 14:06:40 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id bz6si1010761wib.3.2015.03.25.14.06.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 14:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22a.google.com with SMTP id a20so41922940wgr.3
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 14:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pwmkLbKpWYj+DY5uY67GDlLNSBcJwEVuXE4mZc9Z0Tc=;
        b=p0ckiAZlDEkSIzNwdiBF4wMfg9esJMmtSmCNO+N39tcPFWFS8PSWYdKvH1iq4MhOCL
         mqqDxFE3mvJNSrulRndD5H16xK/XVRAbSQA6c3IO5BovHwsXRlFj6ZHm595Sxb8H/jco
         4mR/LLjUB+8gpw/zXiApWAE8ku2dBJkCpT/PgtoIR7cmNsaTCb1UIc8tuc+95857VzOs
         8ec+3VztyJen4Ou1FDE9JgMTry8eFI3waeUAlo/Pt2rEhyrTItJ4Jgpf7n4DD3XtAvzj
         lDMRkyJDxtzBNe5+T4Y1lEjaGujtDvw35RjmxKBcG+aaitqqZ5W03/DDOX++vzKhpvog
         T2GA==
X-Received: by 10.194.158.234 with SMTP id wx10mr22079849wjb.23.1427317600013;
        Wed, 25 Mar 2015 14:06:40 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.49.71])
        by mx.google.com with ESMTPSA id k6sm22314690wia.6.2015.03.25.14.06.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 14:06:39 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id D0C13C1FFD; Wed, 25 Mar 2015 10:56:08 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 4/4] Staging: iio: Add braces on all arms of if statement
Date: Wed, 25 Mar 2015 10:55:06 +0300
Message-Id: <1427270106-5024-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427269782-4769-1-git-send-email-hamohammed.sa@gmail.com>
References: <1427269782-4769-1-git-send-email-hamohammed.sa@gmail.com>

The following patch adds braces on all arms of if statement.
Issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/iio/accel/lis3l02dq_ring.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/accel/lis3l02dq_ring.c b/drivers/staging/iio/accel/lis3l02dq_ring.c
index 740cd83..20435b5 100644
--- a/drivers/staging/iio/accel/lis3l02dq_ring.c
+++ b/drivers/staging/iio/accel/lis3l02dq_ring.c
@@ -330,19 +330,21 @@ static int lis3l02dq_buffer_postenable(struct iio_dev *indio_dev)
 	if (test_bit(0, indio_dev->active_scan_mask)) {
 		t |= LIS3L02DQ_REG_CTRL_1_AXES_X_ENABLE;
 		oneenabled = true;
-	} else
+	} else {
 		t &= ~LIS3L02DQ_REG_CTRL_1_AXES_X_ENABLE;
+	}
 	if (test_bit(1, indio_dev->active_scan_mask)) {
 		t |= LIS3L02DQ_REG_CTRL_1_AXES_Y_ENABLE;
 		oneenabled = true;
-	} else
+	} else {
 		t &= ~LIS3L02DQ_REG_CTRL_1_AXES_Y_ENABLE;
+	}
 	if (test_bit(2, indio_dev->active_scan_mask)) {
 		t |= LIS3L02DQ_REG_CTRL_1_AXES_Z_ENABLE;
 		oneenabled = true;
-	} else
+	} else {
 		t &= ~LIS3L02DQ_REG_CTRL_1_AXES_Z_ENABLE;
-
+	}
 	if (!oneenabled) /* what happens in this case is unknown */
 		return -EINVAL;
 	ret = lis3l02dq_spi_write_reg_8(indio_dev,
-- 
1.9.1


