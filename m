X-GM-THRID: 505789022208
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,370d94720141cc10
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.13.98 with SMTP id g2mr715526wic.3.1424313926302;
        Wed, 18 Feb 2015 18:45:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.168 with SMTP id j8ls197264wiy.1.gmail; Wed, 18 Feb
 2015 18:45:26 -0800 (PST)
X-Received: by 10.180.12.146 with SMTP id y18mr389695wib.6.1424313926046;
        Wed, 18 Feb 2015 18:45:26 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id l8si8960wia.0.2015.02.18.18.45.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 18:45:26 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f50.google.com with SMTP id l2so4661333wgh.9
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 18:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=N3NJlvhGtSVnWgWi1jHCQoYacvE+c/WjS66HnBwG3pg=;
        b=aUE6d08ZmZhmx+4SCsyIahzjBYTxVRW02OGKyk3DA21XsRx+Z7dgCw8vHBhU+j1Jid
         PAmvTPr1qw97EAej9lf93JGJ54/gx3UQvLM73ypTGPwUS1uhUv5j0PXiczDOIFDDr5P5
         KNwRiK3aO52PdBNGZQqALqN0fVzsc8DbygZIYdwjVGda5icr0PjVMnmRLiyQEUwKPoVH
         21KILq3oSkkn237SJjDWZm2SZBoLZzlMi2aEf1WOwFJIYud7cseAiB0zMdHuif3MjUCn
         gL0T1CSVv2HWtUSYkkxdMS6wHrxcwZTLXxtuyySWX2fwqHGolA1JFjAf8VJ8bxEPjk3q
         mrEw==
X-Received: by 10.180.98.5 with SMTP id ee5mr10905221wib.11.1424313925961;
        Wed, 18 Feb 2015 18:45:25 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.174.108])
        by mx.google.com with ESMTPSA id vh8sm35331457wjc.12.2015.02.18.18.45.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 18:45:25 -0800 (PST)
Date: Thu, 19 Feb 2015 04:45:22 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/8] staging: fbtft: fix code indent should use tabs where
 possible
Message-ID: <257db059eb1ffc1eced908e183b49980e796841e.1424313310.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the following checkpatch.pl error:
code indent should use tabs where possible

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fbtft/fb_ili9486.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ili9486.c b/drivers/staging/fbtft/fb_ili9486.c
index 95b8999..5ce3e20 100644
--- a/drivers/staging/fbtft/fb_ili9486.c
+++ b/drivers/staging/fbtft/fb_ili9486.c
@@ -44,13 +44,13 @@ static int default_init_sequence[] = {
 	-1, 0xC5, 0x00, 0x00, 0x00, 0x00,
 	/* PGAMCTRL(Positive Gamma Control) */
 	-1, 0xE0, 0x0F, 0x1F, 0x1C, 0x0C, 0x0F, 0x08, 0x48, 0x98,
-	          0x37, 0x0A, 0x13, 0x04, 0x11, 0x0D, 0x00,
+		  0x37, 0x0A, 0x13, 0x04, 0x11, 0x0D, 0x00,
 	/* NGAMCTRL(Negative Gamma Control) */
 	-1, 0xE1, 0x0F, 0x32, 0x2E, 0x0B, 0x0D, 0x05, 0x47, 0x75,
-	          0x37, 0x06, 0x10, 0x03, 0x24, 0x20, 0x00,
+		  0x37, 0x06, 0x10, 0x03, 0x24, 0x20, 0x00,
 	/* Digital Gamma Control 1 */
 	-1, 0xE2, 0x0F, 0x32, 0x2E, 0x0B, 0x0D, 0x05, 0x47, 0x75,
-	          0x37, 0x06, 0x10, 0x03, 0x24, 0x20, 0x00,
+		  0x37, 0x06, 0x10, 0x03, 0x24, 0x20, 0x00,
 	/* Sleep OUT */
 	-1, 0x11,
 	/* Display ON */
-- 
1.9.3


