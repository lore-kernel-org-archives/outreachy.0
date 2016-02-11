X-GM-THRID: 6249599077237915648
X-Received: by 10.107.62.8 with SMTP id l8mr46128389ioa.11.1455210599439;
        Thu, 11 Feb 2016 09:09:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.121.202 with SMTP id lm10ls628120obb.7.gmail; Thu, 11 Feb
 2016 09:09:59 -0800 (PST)
X-Received: by 10.182.29.10 with SMTP id f10mr36464708obh.36.1455210599122;
        Thu, 11 Feb 2016 09:09:59 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 79si1223392pft.0.2016.02.11.09.09.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:09:59 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id c10so2791401pfc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 09:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=VzmesWpmdg2t7zjzdklBUv+OQjujEnAsB4TP6NXQQTo=;
        b=JS3Glc0uAypimnJuzdQ31sMag9SyLtEPnSQHex6ghSbDfr3ptGACYViruJsNou8yjj
         IRJyBTA/XZoOb7wrVniLyUgchJSBgRHRQ3+C0OFmdS0qbd1j7owxRaA73CL+f1EHxutR
         cpW+kkYGwytGyIe4UO6C0C8X7jCaGXyG7KqSGCQWM3YS4gZAvKObb/kQ0hnwC0VIoBA5
         feszjA3B+eCOmT9b4Aj8W+tAyRiBHG0WqjdS6Nmiy4vtMOkjymXAWuNs10QFF5mXRClQ
         bbiZeZcCPBBGTUuBeLEKOihJbqolUbgYEwMtTF6/WpdIJKTQ9h8ph701fMnzyzNjyvko
         wntA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=VzmesWpmdg2t7zjzdklBUv+OQjujEnAsB4TP6NXQQTo=;
        b=GzrFg1m+7NRzZOeF7ALIJLQ898b6ltw9Z3dEF8WAbu+ct8tTwjOh7uYt9xC0UFxHRi
         Eqi5IsuGDzZOHC50BD13xolmUfZJbiHKS0txIoxFMP4tdouxWykCT7ZOxDPp9WpndcuD
         n6VPTt2KiYzn0WKAjjW2hvVogVQTv0JF3jthis32hcga+z4YIXCS5gCQeUa9jqv+HYc6
         EhlPZ5L54JwGHVB3O/DGtACYhopjshmhoMaERonmxZdjBHyPUCuD0ihUMPdvqTbXoawk
         q+Sz0tMCleByze53m2LAezrbcmH6siEASTiSLQkQPwcqkOjG/Emu9HSTOF/rHemlyfpF
         qduw==
X-Gm-Message-State: AG10YOTBIyKh47V8M9Sw+G+HzuMb28O62kegxzMlFPFNVHwajBqf0jP4K1ehkOaoG126ug==
X-Received: by 10.98.18.8 with SMTP id a8mr68376635pfj.41.1455210599011;
        Thu, 11 Feb 2016 09:09:59 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([125.212.122.48])
        by smtp.gmail.com with ESMTPSA id dg12sm13586791pac.47.2016.02.11.09.09.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 09:09:58 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 4/5] staging: fbtft: Remove blank line after '{' brace
Date: Fri, 12 Feb 2016 01:09:09 +0800
Message-Id: <1455210550-11363-5-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455210550-11363-1-git-send-email-eraretuya@gmail.com>
References: <1455210550-11363-1-git-send-email-eraretuya@gmail.com>

Omit the whitespace after '{' brace as suggested by checkpatch.

CHECK: Blank lines aren't necessary after an open brace '{'

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/fbtft/fb_ili9481.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_ili9481.c b/drivers/staging/fbtft/fb_ili9481.c
index 6fa5e4c..fb0e6c3 100644
--- a/drivers/staging/fbtft/fb_ili9481.c
+++ b/drivers/staging/fbtft/fb_ili9481.c
@@ -28,7 +28,6 @@
 #define HEIGHT		480
 
 static int default_init_sequence[] = {
-
 	/* SLP_OUT - Sleep out */
 	-1, MIPI_DCS_EXIT_SLEEP_MODE,
 	-2, 50,
-- 
1.9.1


