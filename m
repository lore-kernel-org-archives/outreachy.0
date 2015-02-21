X-GM-THRID: 1726977409024
X-Received: by 10.112.181.198 with SMTP id dy6mr272682lbc.22.1424519091428;
        Sat, 21 Feb 2015 03:44:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.193 with SMTP id v1ls355846lag.102.gmail; Sat, 21 Feb
 2015 03:44:49 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr258417lbc.3.1424519089720;
        Sat, 21 Feb 2015 03:44:49 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id i7si292285wif.0.2015.02.21.03.44.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 03:44:49 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id l15so7925966wiw.5
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 03:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/PaQm4SCl4Nxzoq+h/jqmXIBM0C/JxMunkoioYjDW8I=;
        b=MelmjsoZJ5dlPSpAT1KptiJ+N0e/lvUXTrsWelZq7a8cp80w5L66ff/vumdqOCF8g8
         PDx6kuPKvm2Frp72/Mxxiau6h13GuiMrnjmoN+qGFYk1eEY+w9JJ32Fl599UGjve7FGJ
         e7zO7fQTcHcLY2iKqrStHalYouiW7arGMRyh75kGUm79XC8dQZCAUqmpy9XvFwhfXW1J
         0CLcq5owekhya61KRKSzlyl6jDq+/+p03w5FpfoBFHrzHBhSiqg60jJkCx3vU6DJcY9F
         h7MziLpvoyA3TyIKzle/Q+UsrBqJHUVIdEGnHlAALhMpajdQg07iFbT/HT3tWaJvrVpO
         QavA==
X-Received: by 10.194.109.36 with SMTP id hp4mr3932106wjb.17.1424519089648;
        Sat, 21 Feb 2015 03:44:49 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id ee10sm11061487wib.0.2015.02.21.03.44.47
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 03:44:48 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 2/5] Staging: lustre: Added blank line after declarations
Date: Sat, 21 Feb 2015 13:44:32 +0200
Message-Id: <1424519075-4378-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424519075-4378-1-git-send-email-aybuke.147@gmail.com>
References: <1424519075-4378-1-git-send-email-aybuke.147@gmail.com>

This patch fixes "Missing a blank line after declarations"
checkpatch.pl warning in file.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 40bb11e..845589f 100644
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


