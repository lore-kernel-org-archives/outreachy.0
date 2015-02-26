X-GM-THRID: 4118330474496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,cfc00415a2b2e159
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.221.65 with SMTP id qc1mr1600842wjc.7.1424987167319;
        Thu, 26 Feb 2015 13:46:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.164.193 with SMTP id ys1ls97972lab.39.gmail; Thu, 26 Feb
 2015 13:46:07 -0800 (PST)
X-Received: by 10.112.147.35 with SMTP id th3mr1377477lbb.15.1424987167019;
        Thu, 26 Feb 2015 13:46:07 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id l8si43717wia.0.2015.02.26.13.46.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:46:06 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22a.google.com with SMTP id x12so15108314wgg.6
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 13:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=W1VpBt24KqGDdOpY3LDZE2u7Q9AuOCp+kB9vpiSiGkQ=;
        b=HCRs8x5BHwhNgZ74O1OD0WaED11NMTd76nKteZwNJKF9v8dYXteTykGhHt3IDSUA3Z
         Iv5cGPsdlOoJ5ZK+zbv2WyUwnuo5SgGJWt+/mDROc0lUJ6Jnv2Es+NTjXAt+THkOo20g
         5+bZYXpZECMz+rho19SVAiiwZFvYF4e+GZOYIooWd0/gmskJRA65iCB0ELUQ/Wk0UIZM
         +Egc4VOnolQQhtSzdYZNj/pmsRJttRXvSqaooX069cEk2jP0o/iSTh6/KiSnnzPcARF5
         sSHdXfzh3oqlMq+I/ng5mEl2robxdY96YIAp6BQRezCw+c/EozZKOa4jA6UXR4l4Yq/g
         gZxg==
X-Received: by 10.194.243.1 with SMTP id wu1mr21514104wjc.69.1424987166927;
        Thu, 26 Feb 2015 13:46:06 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id kr5sm3215269wjc.1.2015.02.26.13.46.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Feb 2015 13:46:06 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v3 4/5] Staging: lustre: Added spaces around '='
Date: Thu, 26 Feb 2015 23:45:47 +0200
Message-Id: <1424987148-4033-4-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424987148-4033-1-git-send-email-aybuke.147@gmail.com>
References: <1424987148-4033-1-git-send-email-aybuke.147@gmail.com>

Add spaces around =, to conform to kernel
coding type. This problem was found by checkpatch.

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* changed the description
Changes since v2:
There is no change in the set of incorrect file was removed.
---
 drivers/staging/lustre/lustre/llite/file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 247b4f0..ab8f1a98 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -270,7 +270,7 @@ static int ll_md_close(struct obd_export *md_exp, struct inode *inode,
 	int lockmode;
 	__u64 flags = LDLM_FL_BLOCK_GRANTED | LDLM_FL_TEST_LOCK;
 	struct lustre_handle lockh;
-	ldlm_policy_data_t policy = {.l_inodebits={MDS_INODELOCK_OPEN}};
+	ldlm_policy_data_t policy = {.l_inodebits = {MDS_INODELOCK_OPEN}};
 	int rc = 0;
 
 	/* clear group lock, if present */
-- 
1.9.1


