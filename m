X-GM-THRID: 1213455138816
X-Received: by 10.70.132.138 with SMTP id ou10mr8697005pdb.2.1424427485127;
        Fri, 20 Feb 2015 02:18:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.5 with SMTP id 5ls250863qgo.94.gmail; Fri, 20 Feb 2015
 02:18:04 -0800 (PST)
X-Received: by 10.52.236.196 with SMTP id uw4mr8771885vdc.2.1424427484911;
        Fri, 20 Feb 2015 02:18:04 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id ki8si3228963pdb.1.2015.02.20.02.18.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 02:18:04 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfl12 with SMTP id fl12so6686105pdb.4
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 02:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Luys0kmrnef98oxVG2ttB41GxgrUVOOKa7BUOZlA55c=;
        b=ctIygeAIHikw46GJwQTsqc8FqE5rqfuASaUTbeFtnhdrGjdwueZ+vYl9C4PBZfRnYr
         KAhWG+88M99IKbl9YdRlSGIYzMeanE/3iFDhgnUCL7EAA3ZtxjuulHYhVumdOPwnu/zq
         iSOBHo0+Dj7ULYV8qC00Y0DyO8Rhv/L53QARRDBqo5Q8mXSS3mbnZFMollp5JXA+g+r4
         gE9UchJygecZdEWmb9GkZHdAQW10ui4EuoES2PjxE/1KSJT8fM/X5OoQqyDNUlDJoSVo
         k4ABa4okIMb0gOpfZU6VuWmNkFAA3GcUT9Z36HskpnabDaVzv77/vfvLc1/PyZhKxX8E
         DFpg==
X-Received: by 10.68.234.164 with SMTP id uf4mr6820369pbc.37.1424427484735;
        Fri, 20 Feb 2015 02:18:04 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id o4sm26524281pdh.6.2015.02.20.02.18.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 02:18:03 -0800 (PST)
Date: Fri, 20 Feb 2015 15:47:47 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: board: Add identifier for 'of_find_all_nodes'
Message-ID: <20150220101747.GA19443@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes sparse errors for this driver related to
identifiers and casting for of_find_all_nodes in linux/of.h library.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/board/board.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/board/board.c b/drivers/staging/board/board.c
index d5a6abc..666e000 100644
--- a/drivers/staging/board/board.c
+++ b/drivers/staging/board/board.c
@@ -5,6 +5,7 @@
 #include <linux/of_address.h>
 #include "board.h"
 
+extern struct device_node *of_find_all_nodes(struct device_node *prev);
 static bool find_by_address(u64 base_address)
 {
 	struct device_node *dn = of_find_all_nodes(NULL);
-- 
1.9.1


