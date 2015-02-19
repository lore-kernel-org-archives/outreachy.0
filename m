X-GM-THRID: 630205710336
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b3eb49359f96773c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.161.194 with SMTP id xu2mr400710wjb.1.1424335396386;
        Thu, 19 Feb 2015 00:43:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.134 with SMTP id dc6ls105977lad.87.gmail; Thu, 19 Feb
 2015 00:43:14 -0800 (PST)
X-Received: by 10.112.35.135 with SMTP id h7mr395140lbj.23.1424335394954;
        Thu, 19 Feb 2015 00:43:14 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id o3si4111594wib.2.2015.02.19.00.43.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 00:43:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=gamzepolat94@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f181.google.com with SMTP id r20so7504557wiv.2
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 00:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=SNbFNyBVQm2Y9IfNvXdR/sT4ECYtz1KhblUc6ZowThk=;
        b=am8Edv/IsTbqAs5n26DxCuRSe3b23xBZJ7MLFQK0J+FBP/NHet48HAdmqKVpW/w8pl
         kMg654ySx5hr/htK6QFpxLp2yRxSwm2yInddsPdzDdRcRN4LtAPCOAc4DFja9V4GkImZ
         3cN3rhWQ5fd5Z232QFCaJmZgOSQSdIBTfHvOXkgMJ+UUrRYDYqAFEjm735JvRWagUKC6
         5ouo5wibJRPeP+Ap8WRWA6pBAqegnwp+ZnGYLCdex/8X5otUvo3GhmBrtpOGnLfFb6Oi
         ua3XjKdKpPUwMbHAoJCxNHd7FgjSNmst7DgznvVFGflFZTacrNJztvqiCpHPB3JN8As2
         YIaQ==
X-Received: by 10.180.84.133 with SMTP id z5mr4547154wiy.25.1424335394825;
        Thu, 19 Feb 2015 00:43:14 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from gamze-Lenovo-IdeaPad-Z510 ([81.214.238.226])
        by mx.google.com with ESMTPSA id v16sm29155704wib.5.2015.02.19.00.43.13
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 00:43:13 -0800 (PST)
From: Gamze POLAT <gamzepolat94@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gamze POLAT <gamzepolat94@gmail.com>
Subject: [PATCH] Staging: dgnc: Removed trailing whitespace
Date: Thu, 19 Feb 2015 10:43:07 +0200
Message-Id: <1424335387-3444-1-git-send-email-gamzepolat94@gmail.com>
X-Mailer: git-send-email 2.1.0

Removed trailing whitespaces to improve code readability and remove
checkpatch warning.

Signed-off-by: Gamze POLAT <gamzepolat94@gmail.com>
---
 drivers/staging/dgnc/TODO | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/dgnc/TODO b/drivers/staging/dgnc/TODO
index 22adff1..2b2c6ea 100644
--- a/drivers/staging/dgnc/TODO
+++ b/drivers/staging/dgnc/TODO
@@ -1,10 +1,10 @@
 * checkpatch fixes
 * remove unecessary comments
-* remove unecessary error messages. Example kzalloc() has its 
+* remove unecessary error messages. Example kzalloc() has its
   own error message. Adding an extra one is useless.
 * use goto statements for error handling when appropriate
-* there is a lot of unecessary code in the driver. It was 
+* there is a lot of unecessary code in the driver. It was
   originally a standalone driver. Remove uneeded code.
 
-Please send patches to Greg Kroah-Hartman <greg@kroah.com> and 
+Please send patches to Greg Kroah-Hartman <greg@kroah.com> and
 Cc: Lidza Louina <lidza.louina@gmail.com>
-- 
2.1.0


