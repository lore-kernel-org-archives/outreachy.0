X-GM-THRID: 6205856908821135360
X-Received: by 10.31.7.70 with SMTP id 67mr7363511vkh.2.1444913658537;
        Thu, 15 Oct 2015 05:54:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.20 with SMTP id n20ls2034644igi.7.canary; Thu, 15 Oct
 2015 05:54:17 -0700 (PDT)
X-Received: by 10.107.28.67 with SMTP id c64mr7747129ioc.1.1444913657964;
        Thu, 15 Oct 2015 05:54:17 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si1431316pbb.0.2015.10.15.05.54.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 05:54:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id rc13so87421641pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 05:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+St0S/ikY1zy1w9JSl/OJTEvxkMaNDKXcHOCqpZs3So=;
        b=vduLQy9pH+ekmNOuKGzcJEfJNDHDqGo3Q1QZnr3IR4b5B1hJXHQaPh9WadeR7O9BC7
         X8ZeZQpbBFQn5ItKn+LBA1V8FRqRltJtlkMFdP8XkdoiGlpaTEVQETX/fdRGlhaf1QR8
         7uBW1dNm/EB/qdlT6s41rxI435s5iGu+GhIXD8NbkAoiipN8/tK3ovgfzAMjf9ZUpXV4
         F+ubGOjpfJDEe0YmbDyDRXHDIqEfmzPYz7PlqFmpRy51sLy0VKRuqzenLLGyxDn5PGDv
         XGAV4K10VjaTyqy+OeGgQb5ca4692xl+SoKFX0y2AY3kkpBNVz3JTlueavzoVgKFaxT3
         4QKg==
X-Received: by 10.66.254.230 with SMTP id al6mr9765861pad.75.1444913657830;
        Thu, 15 Oct 2015 05:54:17 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id cs5sm15410397pbc.15.2015.10.15.05.54.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 05:54:16 -0700 (PDT)
Date: Thu, 15 Oct 2015 18:24:05 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: llite_lib: Remove unnecessary NULL check
Message-ID: <20151015125405.GA30764@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Variable op_data is already tested for NULL value and therefore any
further checks should be removed.
Semantic patch used:

@@ expression E;@@
if(E==NULL) {... return ...;}
- if(E){
  ...
- }

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index e3ea477..e874e63 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -1350,14 +1350,13 @@ int ll_setattr_raw(struct dentry *dentry, struct iattr *attr, bool hsm_import)
 			up_write(&lli->lli_trunc_sem);
 	}
 out:
-	if (op_data) {
-		if (op_data->op_ioepoch) {
-			rc1 = ll_setattr_done_writing(inode, op_data, mod);
-			if (!rc)
-				rc = rc1;
-		}
-		ll_finish_md_op_data(op_data);
+	if (op_data->op_ioepoch) {
+		rc1 = ll_setattr_done_writing(inode, op_data, mod);
+		if (!rc)
+			rc = rc1;
 	}
+	ll_finish_md_op_data(op_data);
+
 	if (!S_ISDIR(inode->i_mode)) {
 		mutex_lock(&inode->i_mutex);
 		if ((attr->ia_valid & ATTR_SIZE) && !hsm_import)
-- 
2.1.0


