X-GM-THRID: 6389636871256801280
X-Received: by 10.237.33.241 with SMTP id m46mr8818046qtc.5.1487703265053;
        Tue, 21 Feb 2017 10:54:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.69 with SMTP id 63ls1179923oty.0.gmail; Tue, 21 Feb 2017
 10:54:24 -0800 (PST)
X-Received: by 10.200.50.241 with SMTP id a46mr4171651qtb.13.1487703264732;
        Tue, 21 Feb 2017 10:54:24 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id u12si3404176pfd.3.2017.02.21.10.54.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 10:54:24 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 5so19530021pgj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 10:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PeZzqehYRPdzYErOhjzPvXiAfIbOiXt0ErF5ELxULtk=;
        b=k/z1TgJ/BdD+ADziuUirWGw9QW0AF/K/Ke3l1exnefI2i380UdzHxUWBuaFtdgYjhp
         W68axomeb8WiKgYFQZJLhL2u1Y5hQ9BUSbPQ6dOVzPZv5tVr6u843g3z9Ll+gXXOEr6p
         KF8FKeM1B4GezXadIQnZzK0OMiSoNC/1eNJ+XrIbIm1WMgQk0dDHaf+RnV1onHsB80WB
         /MGb6auWfWqG0x0dKUs8zouU1nYWTcVvkzN7y9gfVkTmX39zeq1YKfm1OGCY1RH52p2z
         FhXlEMrz3Ze9N14ignBcZsGaf01UQt5SweNlZvycvoTPomIK53FZ3OxjcZjkJLEFydlp
         sD3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PeZzqehYRPdzYErOhjzPvXiAfIbOiXt0ErF5ELxULtk=;
        b=c8dZThFYJ/su1tIi51vARjs2gKanGyDPFen0JSgiah6XSnPR6HZsD1cINIIYan/QX6
         WuQ+A19c+0NldGHrDg1ZlfcR9nWpcy+mfOFBQZwhJOpm/jRC1ZH16gHUHQgUlc+ZsCeo
         ptycIdGWgZmn2I4l/bnj4bo9aSqb/uREeEXG01+3nuA8INKC1PinWmo7iuMh+kc6plUf
         YH4VHw/8hNyiXTz2uwHjUyhY59tDe+Q8zUm9EK3eOARRD88qNoOpDHAwQ3pTg6JoydoU
         Fm/p87gFS4F5nfINyHKEgclrMPnKVMzfOWXDW5BDq74WQJDSV+L3OSGmZpS6ULSMhiHA
         BXVw==
X-Gm-Message-State: AMke39kQaF0uaLVS9HXox0q4av9QNg0szOPvldo84gBUgrWL3usirYPI/Z4iVrTBir8dJg==
X-Received: by 10.99.9.65 with SMTP id 62mr36567092pgj.22.1487703264520;
        Tue, 21 Feb 2017 10:54:24 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x65sm42344135pfx.115.2017.02.21.10.54.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 10:54:23 -0800 (PST)
Date: Wed, 22 Feb 2017 00:26:15 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/7] staging: most: Using macro DIV_ROUND_UP
Message-ID: <20170221185615.GA25627@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
It clarifies the divisor calculations. This occurence was detected using
the coccinelle script:

@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_hal.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hal.c b/drivers/staging/most/hdm-dim2/dim2_hal.c
index 0b9816c..6824826 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hal.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hal.c
@@ -49,7 +49,7 @@
 #define DBR_SIZE  (16 * 1024) /* specified by IP */
 #define DBR_BLOCK_SIZE  (DBR_SIZE / 32 / DBR_MAP_SIZE)
 
-#define ROUND_UP_TO(x, d)  (((x) + (d) - 1) / (d) * (d))
+#define ROUND_UP_TO(x, d)  (DIV_ROUND_UP(x, (d)) * (d))
 
 /* -------------------------------------------------------------------------- */
 /* generic helper functions and macros */
@@ -117,7 +117,7 @@ static int alloc_dbr(u16 size)
 		return DBR_SIZE; /* out of memory */
 
 	for (i = 0; i < DBR_MAP_SIZE; i++) {
-		u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
+		u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
 		u32 mask = ~((~(u32)0) << blocks);
 
 		do {
@@ -137,7 +137,7 @@ static int alloc_dbr(u16 size)
 static void free_dbr(int offs, int size)
 {
 	int block_idx = offs / DBR_BLOCK_SIZE;
-	u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
+	u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
 	u32 mask = ~((~(u32)0) << blocks);
 
 	mask <<= block_idx % 32;
-- 
2.7.4


