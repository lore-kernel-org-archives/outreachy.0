X-GM-THRID: 1726977409024
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3c6e687e9bd2e98
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.7 with SMTP id n7mr380986wix.0.1424546861146;
        Sat, 21 Feb 2015 11:27:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.240.202 with SMTP id wc10ls292582wic.10.canary; Sat, 21
 Feb 2015 11:27:40 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr419207wjb.4.1424546860876;
        Sat, 21 Feb 2015 11:27:40 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id i7si364288wif.0.2015.02.21.11.27.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 11:27:40 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw62 with SMTP id w62so11123473wes.12
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 11:27:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=091OQ/TGYqZip6FuW8HOHfR5r3d5BY4ktVTSyFcceG0=;
        b=SjqGmnC8NjTJfCtdUl2KjEr/ht12IDu36S7nPFXJc7XIOh9QmXeUjI9YGUP0clO9xu
         4PBqCDLIVBWrmSCDt+X/gfiFvyJp0ZZyxnIBL00DpmQvsHWsiIMuRG8OLIBd1ZSwo2wa
         kA/I5kD4fbN2i8Rk2U4EqUq7SgNYyC0Xzo0AHkg9BoRpFqI5apZgm1HH+Kqv+nnROs4L
         AO0Ri4HIdi4A1SzcH7utFpJm4VGZJsTVfm85/x13qvwj8SJv8CKZlyDPjw1uPm0Dq434
         pUG+tupGwGp4K6sJOc2N1PDQwkKIFTfHskVz38zIpvFfP2ylGvqRielONxOLx+yCLm6y
         tjew==
X-Received: by 10.194.84.176 with SMTP id a16mr6882627wjz.113.1424546860801;
        Sat, 21 Feb 2015 11:27:40 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id dm6sm8161536wib.22.2015.02.21.11.27.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 11:27:40 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2 4/5] Staging: lustre: Added spaces around '='
Date: Sat, 21 Feb 2015 21:27:19 +0200
Message-Id: <1424546839-11612-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

Add spaces around =, to conform to kernel
coding type. This problem was found by checkpatch.

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* changed the description
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 62f923c..163bec0 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -620,7 +620,7 @@ int ll_get_max_mdsize(struct ll_sb_info *sbi, int *lmmsize)
 	rc = obd_get_info(NULL, sbi->ll_md_exp, sizeof(KEY_MAX_EASIZE),
 			  KEY_MAX_EASIZE, &size, lmmsize, NULL);
 	if (rc)
-		CERROR("Get max mdsize error rc %d \n", rc);
+		CERROR("Get max mdsize error rc %d\n", rc);
 
 	return rc;
 }
-- 
1.9.1


