X-GM-THRID: 6942212751360
X-Received: by 10.112.219.102 with SMTP id pn6mr2428158lbc.12.1425661273700;
        Fri, 06 Mar 2015 09:01:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.71 with SMTP id eo7ls142995wib.21.canary; Fri, 06 Mar
 2015 09:01:13 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr5641673wic.3.1425661273429;
        Fri, 06 Mar 2015 09:01:13 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id i7si194759wif.0.2015.03.06.09.01.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 09:01:13 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id n12so7110804wgh.6
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 09:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Ri+6cozdsTuONDFqQHL8Nay9FPvfR1KxgRkXHF+f9YI=;
        b=g3ojTXjGvZUW/Zu9JX/18qpJOakC89bsI8ue6DVdf+ij3iOQQ/OFfFcTLXcssMH6Ae
         T9MC1HmM54cJn7W3zKVANGI92Py0W7XHZoVqfqE+Mh7dbYyqXe1dI/C2/CFdnBQgSk3/
         p7KRa16FBsxTQcBS+1/iLTPzYOIfrZI+O2hs0ZXYGlA7vHAP3obhDocXdrbslRNbQZj0
         aAclQrm1/DQZW4rgcpRNP+hYfvchetvjGK9IGRSpY07WIhteHzmGaLxymFUbFlgbXjNr
         EtOQWNmFW+On26upgUA9KGVQmRqqlEIAvm5N1xXHnMy0CkOlLc3qUwucfgZ9OcOHz2Rq
         5YIw==
X-Received: by 10.180.36.174 with SMTP id r14mr76919964wij.93.1425661273316;
        Fri, 06 Mar 2015 09:01:13 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id bd1sm3011542wib.13.2015.03.06.09.01.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 09:01:12 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id B145D62672; Fri,  6 Mar 2015 20:01:08 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: media: Replace dev_err with pr_err to avoid null pointer derefrence
Date: Fri,  6 Mar 2015 20:01:07 +0300
Message-Id: <1425661267-24433-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch replace dev_err with pr_err, for pointer is derefrenced after comparing it to NULL.
This was found using the following coccinelle script:

@disable is_null@
identifier f;
expression E;
identifier fld;
statement S;
@@

+ if(E == NULL) S
	f(...,E->fld,...);
-if(E == NULL) S;

@@
identifier f;
expression E;
identifier fld;
statement S;
@@

+ if(!E) S
	f(...,E->fld,...);
-if(!E) S;

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/media/lirc/lirc_zilog.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_zilog.c b/drivers/staging/media/lirc/lirc_zilog.c
index abcc9e4..7318ff8 100644
--- a/drivers/staging/media/lirc/lirc_zilog.c
+++ b/drivers/staging/media/lirc/lirc_zilog.c
@@ -1341,8 +1341,7 @@ static int close(struct inode *node, struct file *filep)
 	struct IR *ir = filep->private_data;
 
 	if (ir == NULL) {
-		dev_err(ir->l.dev,
-			"close: no private_data attached to the file!\n");
+		pr_err("ir: close: no private_data attached to the file!\n");
 		return -ENODEV;
 	}
 
-- 
1.9.1


