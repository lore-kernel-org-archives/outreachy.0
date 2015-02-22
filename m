X-GM-THRID: 2067485687808
X-Received: by 10.112.126.194 with SMTP id na2mr604504lbb.18.1424648576796;
        Sun, 22 Feb 2015 15:42:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.208.99 with SMTP id md3ls448354wic.52.canary; Sun, 22 Feb
 2015 15:42:56 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr905377wjc.7.1424648576508;
        Sun, 22 Feb 2015 15:42:56 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x242.google.com (mail-wg0-x242.google.com. [2a00:1450:400c:c00::242])
        by gmr-mx.google.com with ESMTPS id r6si571013wix.0.2015.02.22.15.42.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 15:42:56 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::242 as permitted sender) client-ip=2a00:1450:400c:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::242 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x242.google.com with SMTP id l18so7624935wgh.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 15:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=gxlqkw6NWL8wPxyDtPFM3ZVYOIZEqPpazjWeZz9bnnE=;
        b=eKvgDa1Q3Jzr9WT7UYL2hZe3PVskQAl1Mrp/8wp53Cda2Ce4yPCvPvcVHSZRSNHaBb
         efR4ogTWoGWvKK4f4gPDFq2hGkNZ2WAkPCL2FVtTDffbbICPovwyXzg3gXKHQicyFMog
         F3n6Ok+3ft6ekbeVu51jkmcV9Sv5fXy6FSX9JlKc+3Ny2Couq4hNYAcFGM1M10uZTeD1
         AgY26DAfxrLkDkv+gcmJKkKPUTf0Xk7s+OfpJJws1mj70XJf4i+1s5XfkyF3PyuFgbMk
         AXQ/7vygzZrrHr2XiLvNTurJzNIV/sR12tV5cjXQDEMIv9yA8ddu8Pb8CYamgVcEGDqW
         GkLA==
X-Received: by 10.194.95.200 with SMTP id dm8mr17312799wjb.122.1424648576413;
        Sun, 22 Feb 2015 15:42:56 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([95.187.195.53])
        by mx.google.com with ESMTPSA id jg3sm13447401wid.0.2015.02.22.15.42.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 15:42:55 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 00655632BF; Mon, 23 Feb 2015 02:42:52 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v4 5/6] Staging: emxx_udc: Remove custom printk micro ERR
Date: Mon, 23 Feb 2015 02:42:51 +0300
Message-Id: <d0975ddfd74bef068fbf73f3d4089253ba1d1614.1424645872.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424645871.git.hamohammed.sa@gmail.com>
References: <cover.1424645871.git.hamohammed.sa@gmail.com>

This patch removes custom printk micro ERR. All the calls to this micro were replaced by de_err and pr_err.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index 7b2fcb6..c6cdde4 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -644,6 +644,5 @@ union usb_reg_access {
 };
 
 /*-------------------------------------------------------------------------*/
-#define ERR(stuff...)		printk(KERN_ERR "udc: " stuff)
 
 #endif  /* _LINUX_EMXX_H */
-- 
1.9.1


