X-GM-THRID: 1726977409024
X-Received: by 10.180.89.194 with SMTP id bq2mr226222wib.4.1424519087177;
        Sat, 21 Feb 2015 03:44:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.100 with SMTP id a4ls145175lah.23.gmail; Sat, 21 Feb
 2015 03:44:46 -0800 (PST)
X-Received: by 10.112.124.142 with SMTP id mi14mr253969lbb.1.1424519086711;
        Sat, 21 Feb 2015 03:44:46 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id i7si292282wif.0.2015.02.21.03.44.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 03:44:46 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id h11so7902671wiw.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 03:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xx0f+3U2HxhqvnwhdF/Mcay7TrrzQO6YiS0UGQk/SAw=;
        b=U5Q8Td+meqxmHMq2rs94i+c9bCuE+qBkPQ9v+VJf/6h+iDOnkcSDlRceInUgw1HY+4
         ljivF4nBEFW9Zw9njJcnhKk+5PMj4n2WVvgGKlsgRkcgt1ih41/MGkHmmuOaQKt+fpXd
         HeMIkF8ww2eFi8KcAhuqTD4RF4MIv33BnT7ESWOZd/pZTK2QINCpBO1+IpZbuBrrkIql
         B1HZjp7+vcp7i4N8+800aoemlhAqrNfxCU6xLNjphS3XZZ/PXAIe/G3VD61Bv4F5Dw96
         QA77Xyuivuj7kX/6LAFhILaTrTaIGELKNq/Ev16KET6f0GXRiEmU+X9jO2SKletRLVip
         jeLg==
X-Received: by 10.180.211.172 with SMTP id nd12mr3363762wic.88.1424519086638;
        Sat, 21 Feb 2015 03:44:46 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id ee10sm11061487wib.0.2015.02.21.03.44.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 03:44:44 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 1/5] Staging: lustre: Move export_symbol below its function
Date: Sat, 21 Feb 2015 13:44:31 +0200
Message-Id: <1424519075-4378-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "EXPORT_SYMBOL(foo); should immediately follow its
function/variable" checkpatch.pl warning in file.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 7c7ef7e..40bb11e 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -3233,6 +3233,7 @@ void *ll_iocontrol_register(llioc_callback_t cb, int count, unsigned int *cmd)
 
 	return in_data;
 }
+EXPORT_SYMBOL(ll_iocontrol_register);
 
 void ll_iocontrol_unregister(void *magic)
 {
@@ -3257,8 +3258,6 @@ void ll_iocontrol_unregister(void *magic)
 
 	CWARN("didn't find iocontrol register block with magic: %p\n", magic);
 }
-
-EXPORT_SYMBOL(ll_iocontrol_register);
 EXPORT_SYMBOL(ll_iocontrol_unregister);
 
 static enum llioc_iter
-- 
1.9.1


