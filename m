X-GM-THRID: 6253815100366389248
X-Received: by 10.182.58.36 with SMTP id n4mr25894711obq.1.1456144115559;
        Mon, 22 Feb 2016 04:28:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.43 with SMTP id h40ls1336630qge.39.gmail; Mon, 22 Feb
 2016 04:28:34 -0800 (PST)
X-Received: by 10.13.230.148 with SMTP id p142mr25464625ywe.45.1456144114132;
        Mon, 22 Feb 2016 04:28:34 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id 12si3068584pfb.1.2016.02.22.04.28.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:28:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id c10so95233563pfc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 04:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=3xP4oa4V0gCfJNL2auJJkgIINtVZbMbsjCOLhUfwl1w=;
        b=pcFmS43uET8KzqiJgrtiUp/BRsYjnRFz8vxNfYDQ2vLnhvZYwBX0dK93DjDa9oOT67
         7ad9dN5vD/aD7OJvOGgA1icdwpmosjyuZEjQyXIQSZEn6m4sd1l/ZpOxWHrh99tDCfN/
         Otj8MAeSWSjmDUBhzj9AM7+QDpX/wSBt6FcrhCZL106BZ2woMD0JMsHXTCpQaO9sC+DO
         OM217DIkfc3/ag4cnBL+tJHWfGwr1rAQePT8diSaoGOz73zpoLlsMoKHXi4Br3bKqosZ
         kQLYBMs5Jlz15qdzMWPvaFNCQN8r6MgzKinUbwqiMY6PTbTi6PvgNztIhG6N+J9YVmvB
         RLPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=3xP4oa4V0gCfJNL2auJJkgIINtVZbMbsjCOLhUfwl1w=;
        b=H0XkTOctOVvSStGFgZVif40A8CQJdwr0a/jyfr+1iNUX0fUMGYbBce0hQdkRFA2hb1
         ajU2PHNysspKEc6DIgKd+G6Rtw4O170P7+SC0fQ79dEVXOK+O+VVikGYadgzLCS7J5tR
         0bSSMgWR8MzJIvtPinedjwrDtJ/XVHs2AfLbrB6gB8WSyNuiLTGUv+jSiZBaqFu4v1ff
         I6C19xAVer8l5xvxwyxq072JwQXVKKpqz5N924rW4zgk/0+1BX9otdcZZyv9Y/f+SMbq
         ylRUZls0LG8usaHp54FSQE/wpZYy34dPrKRfR38W5QaHcGnzycvsefhK5hqZFLUSOr5l
         rrvw==
X-Gm-Message-State: AG10YORnMZ5yORGyMlQxTjyAAaNtbnvu6dFBZPLhVhByqOLP/11CmjSz4wz+SSjGfCm+qQ==
X-Received: by 10.98.73.149 with SMTP id r21mr37885258pfi.140.1456144113992;
        Mon, 22 Feb 2016 04:28:33 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r62sm36675841pfr.26.2016.02.22.04.28.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 04:28:33 -0800 (PST)
Date: Mon, 22 Feb 2016 17:59:06 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/4] staging: most: hdm-dim2: Use macro DIV_ROUND_UP
Message-ID: <20160222122906.GA16722@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
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

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
   - None for this file.
 drivers/staging/most/hdm-dim2/dim2_hal.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hal.c b/drivers/staging/most/hdm-dim2/dim2_hal.c
index 3c52450..03da89e 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hal.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hal.c
@@ -120,7 +120,7 @@ static int alloc_dbr(u16 size)
 		return DBR_SIZE; /* out of memory */

 	for (i = 0; i < DBR_MAP_SIZE; i++) {
-		u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
+		u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
 		u32 mask = ~((~(u32)0) << blocks);

 		do {
@@ -140,7 +140,7 @@ static int alloc_dbr(u16 size)
 static void free_dbr(int offs, int size)
 {
 	int block_idx = offs / DBR_BLOCK_SIZE;
-	u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
+	u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
 	u32 mask = ~((~(u32)0) << blocks);

 	mask <<= block_idx % 32;
--
2.1.4


