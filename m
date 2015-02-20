X-GM-THRID: 1517610336256
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5980542d14205068
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.36.132 with SMTP id q4mr337158laj.6.1424466347669;
        Fri, 20 Feb 2015 13:05:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.65 with SMTP id b1ls329245laf.99.gmail; Fri, 20 Feb
 2015 13:05:46 -0800 (PST)
X-Received: by 10.112.161.9 with SMTP id xo9mr246771lbb.7.1424466346029;
        Fri, 20 Feb 2015 13:05:46 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id ew5si192110wid.1.2015.02.20.13.05.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:05:46 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x230.google.com with SMTP id l18so15366689wgh.7
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 13:05:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=p9rjFJ0hGrJQJhV47soMGNVFaG8kUQ77Zcw7mVMsg5c=;
        b=MjzrdvMmdk/pizSyagxJ+B+PnlJXav4Bsm4VY/OnT/m0W1jiDyMW4GA+VMhktA9kCR
         O3iYrGR4cCjrVGy7x76mOFe3LQzGxlAoUyqEkaRDMnjY3e744JRsEgqFX5eMhbN2Jrbv
         rht/zTrMVS3ZjR7WVuep852IxYLGDeFUvzFGPa4EblPSDGIrN9hwsup821qDxjEcxsb1
         tqt5o4hkVruJptoH59QQ4j+YcWMAf14lD1AthHPmm2dhIiMqTk0xUNV7gE01weNh3qCL
         6bXqSgFVp6JtSV7d5/YWQBXjiV9iOVatNmQ2blKxYRU30YTUMt/xVSo9ZDD705/PIDzz
         0SEA==
X-Received: by 10.180.198.240 with SMTP id jf16mr577267wic.27.1424466345898;
        Fri, 20 Feb 2015 13:05:45 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id gi3sm4023632wic.15.2015.02.20.13.05.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 13:05:45 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH] Staging: lustre: Remove unnecessary else after return
Date: Fri, 20 Feb 2015 23:05:18 +0200
Message-Id: <1424466318-9550-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "else is not generally useful after
a break or return" checkpatch.pl warning using goto statement in lcommon_cl.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/lustre/lustre/lclient/lcommon_cl.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/lclient/lcommon_cl.c b/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
index 23095bb..b8311c6 100644
--- a/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
+++ b/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
@@ -834,7 +834,7 @@ int ccc_prep_size(const struct lu_env *env, struct cl_object *obj,
 				    size_index < cur_index)
 					*exceed = 1;
 			}
-			return result;
+			goto out;
 		} else {
 			/*
 			 * region is within kms and, hence, within real file
@@ -857,6 +857,7 @@ int ccc_prep_size(const struct lu_env *env, struct cl_object *obj,
 		}
 	}
 	ccc_object_size_unlock(obj);
+out:
 	return result;
 }
 
-- 
1.9.1


