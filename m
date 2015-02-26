X-GM-THRID: 4118330474496
X-Received: by 10.152.6.41 with SMTP id x9mr1611119lax.10.1424987162006;
        Thu, 26 Feb 2015 13:46:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.181.137 with SMTP id dw9ls86118lac.85.gmail; Thu, 26 Feb
 2015 13:46:01 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr1609988laj.6.1424987161585;
        Thu, 26 Feb 2015 13:46:01 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id i7si4181wif.0.2015.02.26.13.46.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:46:01 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22b.google.com with SMTP id l2so15113115wgh.9
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 13:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jFOhMkh1i1T7VeM9QE+Mx5GwX/3tD0BUV9LdjxfKEB4=;
        b=HvgW6hPRw5MEXh21Ja1mOfDyeAdgXII9F8P+M7awhr9EdBUzLXfRON2cilXZkqAhvN
         7CaRHr+n2Flh8oWs+PgU1DiSmVgH8VrExq1u8WKXWXACwAtYO/AG64rAZk7ybXEYtQPO
         KThmc3/pMioGMJZ72YPgsv6yorROcn40e8n1KyqJvfZYzRS7DcChoKHS6qFEA2K1c5Ur
         BF11UT0A43WoLYnEavm92KxHVCTV506mr+GCNlT+AOgkPcW8T4U1o+Mf3S6/dMpqNRGm
         ddbyOFN0nXwX4dWic0LYD3NTjfMGZN8ztL3P+SPzCPtjeTRU5oGGHo4eohSsg4gf/qG9
         z3MA==
X-Received: by 10.180.98.131 with SMTP id ei3mr200348wib.62.1424987161477;
        Thu, 26 Feb 2015 13:46:01 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id kr5sm3215269wjc.1.2015.02.26.13.46.00
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Feb 2015 13:46:00 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v3 2/5] Staging: lustre: Added blank line after declarations
Date: Thu, 26 Feb 2015 23:45:45 +0200
Message-Id: <1424987148-4033-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424987148-4033-1-git-send-email-aybuke.147@gmail.com>
References: <1424987148-4033-1-git-send-email-aybuke.147@gmail.com>

This patch fixes "Missing a blank line after declarations"
checkpatch.pl warning in file.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* There is no change, in the set of incorrect file was removed.
---
 drivers/staging/lustre/lustre/llite/file.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 25bd513..d14fc9c 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -197,6 +197,7 @@ static int ll_close_inode_openhandle(struct obd_export *md_exp,
 	}
 	if (rc == 0 && op_data->op_bias & MDS_HSM_RELEASE) {
 		struct mdt_body *body;
+
 		body = req_capsule_server_get(&req->rq_pill, &RMF_MDT_BODY);
 		if (!(body->valid & OBD_MD_FLRELEASED))
 			rc = -EBUSY;
-- 
1.9.1


