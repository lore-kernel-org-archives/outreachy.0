X-GM-THRID: 6206327457482539008
X-Received: by 10.180.105.98 with SMTP id gl2mr1562975wib.0.1445023219078;
        Fri, 16 Oct 2015 12:20:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.12 with SMTP id s12ls380972lfs.90.gmail; Fri, 16 Oct
 2015 12:20:18 -0700 (PDT)
X-Received: by 10.112.151.9 with SMTP id um9mr3932077lbb.19.1445023218444;
        Fri, 16 Oct 2015 12:20:18 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id d7si116316wiy.2.2015.10.16.12.20.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 12:20:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id gb1so21329880wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 12:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oRrTCkRDUiX7X6dpkryMD7u4LTJDwPYGs85qiSxTZZY=;
        b=PddWDtLyINFgpeKZ6S4X7u/vxLyNrXlcCmz4iBy4MUeWWWJVz1VCOF8SWE9jMzSaMc
         IEy6SAKcbZYAEe8RWnlH99FLsdTW4mFhhyWFTYJzr7Ao+2SaT115mq8QNsnPBn15BhoW
         lPjCi5ERNaEBTNNtojoBr1xWFZybLH/fetlXCNUjFVdlEETI0qGpiLsB4Ko0nFaJugMs
         c26No6s0h+WNP5TLBsEuSLN4H91Mtri+hOk3VVV5PrCMCmJxnwv2lgCQefxaE0ssplIm
         zmoN9nOcAgQ5WxAolKXBhlJRdG5Y26N4L8P9YMttOeuY7QHrJTkX5n4r2eXQe127A9sp
         YKdg==
X-Received: by 10.194.118.102 with SMTP id kl6mr4491192wjb.29.1445023218326;
        Fri, 16 Oct 2015 12:20:18 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([88.247.179.54])
        by smtp.gmail.com with ESMTPSA id qq4sm24091111wjc.14.2015.10.16.12.20.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 12:20:17 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 2/2] Staging: sm750fb: Remove multiple blank lines
Date: Fri, 16 Oct 2015 22:20:05 +0300
Message-Id: <1445023205-8484-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445023205-8484-1-git-send-email-aybuke.147@gmail.com>
References: <1445023205-8484-1-git-send-email-aybuke.147@gmail.com>

Remove multiple blank lines. Problem found using checkpatch.pl
CHECK: Please don't use multiple blank lines.

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/sm750fb/ddk750_help.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
index e72a29c..475a943 100644
--- a/drivers/staging/sm750fb/ddk750_help.c
+++ b/drivers/staging/sm750fb/ddk750_help.c
@@ -13,5 +13,3 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
 	if (revId == 0xfe)
 		pr_info("found sm750le\n");
 }
-
-
-- 
1.9.1


