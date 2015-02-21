X-GM-THRID: 1726977409024
X-Received: by 10.181.13.236 with SMTP id fb12mr225907wid.1.1424519092000;
        Sat, 21 Feb 2015 03:44:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.167 with SMTP id b7ls264214wiy.41.canary; Sat, 21 Feb
 2015 03:44:51 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr222528wid.1.1424519091749;
        Sat, 21 Feb 2015 03:44:51 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id ev8si278796wib.3.2015.02.21.03.44.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 03:44:51 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22e.google.com with SMTP id l61so5791752wev.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 03:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=MI5cYkJdyqA43GFUEpNoK9/xuaT5/W4oPLeYDopNMT4=;
        b=nGW8Ew+HGEu7w7C4LxLjBf17QPCMmWVx41s6l7BMHjnmWjOg7VH4lxZoUZSdHlH2+Z
         ItVbJez760mFocIbUzwNymnSB+iVVTJMpx3E68JUvTBu3mUMD+eounWZIiOjWVxmI/a7
         zQaH5mtBOcxHs2jCu49zFYf7mcThJqMJhXYBitg4sMluHvU4Ruk3LylAD5jEUyLw5wfj
         L0faakvRXTz2TXCH7AAepcfTAgeUQ7Wt6nci70VK5ES5kWM964Q0hukdSWrVn6OPEC+m
         BtAPZob8c59NGLNqkrYzlyMN4JNOZhi2eIZiTkT63ZV3OG36Tpua0fLrZWnbOOl5uTMd
         FngA==
X-Received: by 10.194.92.243 with SMTP id cp19mr4139058wjb.32.1424519091686;
        Sat, 21 Feb 2015 03:44:51 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id ee10sm11061487wib.0.2015.02.21.03.44.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 03:44:51 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 3/5] Staging: lustre: Corrected code indentation
Date: Sat, 21 Feb 2015 13:44:33 +0200
Message-Id: <1424519075-4378-3-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424519075-4378-1-git-send-email-aybuke.147@gmail.com>
References: <1424519075-4378-1-git-send-email-aybuke.147@gmail.com>

This patch fixes these warning messages found by checkpatch.pl:
WARNING: suspect code indent for conditional statements(8,15)

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 845589f..9a7ab65 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -2822,7 +2822,7 @@ int ll_have_md_lock(struct inode *inode, __u64 *bits,  ldlm_mode_t l_req_mode)
 	int i;
 
 	if (!inode)
-	       return 0;
+		return 0;
 
 	fid = &ll_i2info(inode)->lli_fid;
 	CDEBUG(D_INFO, "trying to match res "DFID" mode %s\n", PFID(fid),
-- 
1.9.1


