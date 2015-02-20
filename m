X-GM-THRID: 1068226314240
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8554fdbdd0916d21
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.35.135 with SMTP id h7mr924738lbj.23.1424396639834;
        Thu, 19 Feb 2015 17:43:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.70 with SMTP id c6ls7194wie.1.canary; Thu, 19 Feb 2015
 17:43:59 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr938888wjb.6.1424396639573;
        Thu, 19 Feb 2015 17:43:59 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id el6si7999wib.2.2015.02.19.17.43.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 17:43:59 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f182.google.com with SMTP id l15so1181wiw.3
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 17:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=xk8L7M/Y5FnzgP+MaIkbXDloHIFg5E3kSiU05DnA+vA=;
        b=ZtMSC3T/fRLcAd360YkeFelbqWZD2NvgRpq8J4W08a232xt1j+ohHgSNtqm8cYplZD
         ikyWMPffVO+fxVdvkTba9qTL9Na9bt1Q3x0mefFJN61d5kRle+3i44v+nH5jdXnZdvaj
         fc1m9vcOWvUNcGpv8TfAG/UjkIk4ZUvAgpRdCQ58cAlWPa5p4oDylCLsmBK7DGxtE5ny
         0ILXri5ioZhtyUfJLiAP8ggL68o8+C/rDeXTh1hHQPwdykbwea2jneJZ2IjEgjkGUcYh
         OnW9majJH1A8RmrKRDB8TDFJs57O51HJyiqUQd4isRrEs3yfZJaJ9djXJPVDyPZrhuyU
         hGPA==
X-Received: by 10.180.188.41 with SMTP id fx9mr1162932wic.93.1424396639511;
        Thu, 19 Feb 2015 17:43:59 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.237])
        by mx.google.com with ESMTPSA id j6sm141042wiz.17.2015.02.19.17.43.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 17:43:58 -0800 (PST)
Date: Fri, 20 Feb 2015 03:43:52 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: i2o: Use #include <linux/uaccess.h> instead of
 <asm/uaccess.h>
Message-ID: <721d168626e0a9b1ce3a908c0e7ec4ca9c505966.1424395309.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424395309.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424395309.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the following checkpatch.pl warning:
Use #include <linux/uaccess.h> instead of <asm/uaccess.h>

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/i2o/i2o_config.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/i2o/i2o_config.c b/drivers/staging/i2o/i2o_config.c
index 04bd3b6..5748663 100644
--- a/drivers/staging/i2o/i2o_config.c
+++ b/drivers/staging/i2o/i2o_config.c
@@ -34,8 +34,7 @@
 #include <linux/mutex.h>
 #include <linux/compat.h>
 #include <linux/slab.h>
-
-#include <asm/uaccess.h>
+#include <linux/uaccess.h>
 
 #include "core.h"
 
-- 
1.9.3


