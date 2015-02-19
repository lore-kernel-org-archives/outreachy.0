X-GM-THRID: 761102598144
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,efa55286ffba0bae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.12.146 with SMTP id y18mr918761wib.6.1424371377217;
        Thu, 19 Feb 2015 10:42:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.30.38 with SMTP id p6ls194884lah.52.gmail; Thu, 19 Feb
 2015 10:42:56 -0800 (PST)
X-Received: by 10.112.131.106 with SMTP id ol10mr796164lbb.20.1424371376925;
        Thu, 19 Feb 2015 10:42:56 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id cl5si9086897wib.3.2015.02.19.10.42.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 10:42:56 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id p10so1525314wes.2
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 10:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/8uqDm7P/dr5T/4njpqrnydzLIUFUloItm14WdQNYvA=;
        b=pOAmTntO6oFZC9Mez4JJwl4EmD4/jiZZ+moFjqzPGUqWzYDgzCuedZl1VBuG7eFc2H
         KvAEg8jAZ6AYdU27halAQjTQIaP74h2jWT9Auhe7dA+m3fUQISLuacSOyqJ0T0Y0vPNs
         O43c/xy0ix0nmOarWe4AGab1EAmduyenGAIYUpMubkOIW5tASVbgsLOVXWE81Jlf/HV4
         I5K+I9P8GzvBPWdKeDcaKxgLOT/G+czHxPE2N89RKxEEDd6Ve8SZLWzSbujulSF6SZcV
         8Aem2Lyy3qNrhivBN1fk37Qnt3bpfB0Q7UsctChCrhCCAN/O8q4qgdml7ULwjoemo/1j
         SRxg==
X-Received: by 10.180.10.131 with SMTP id i3mr13062522wib.54.1424371376833;
        Thu, 19 Feb 2015 10:42:56 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id fo17sm38568993wjc.19.2015.02.19.10.42.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 10:42:56 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 1/2] Staging: fbtft: Added blank line after declaration
Date: Thu, 19 Feb 2015 20:42:43 +0200
Message-Id: <1424371364-7277-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: Missing a blank line after declaration
chackpatch.pl warning in fb_ssd1351.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1351.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
index 062d986..b59120c 100644
--- a/drivers/staging/fbtft/fb_ssd1351.c
+++ b/drivers/staging/fbtft/fb_ssd1351.c
@@ -72,6 +72,7 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
 static int set_var(struct fbtft_par *par)
 {
 	unsigned remap;
+
 	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "%s()\n", __func__);
 
 	if (par->fbtftops.init_display != init_display) {
-- 
1.9.1


