X-GM-THRID: 6249599077237915648
X-Received: by 10.129.84.6 with SMTP id i6mr36838013ywb.6.1455098187030;
        Wed, 10 Feb 2016 01:56:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.68 with SMTP id q62ls331562qgd.95.gmail; Wed, 10 Feb
 2016 01:56:26 -0800 (PST)
X-Received: by 10.13.204.85 with SMTP id o82mr37934999ywd.51.1455098186572;
        Wed, 10 Feb 2016 01:56:26 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 79si317716pft.0.2016.02.10.01.56.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:56:26 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id c10so727913pfc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 01:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HvgxpPskU1BAl4FrV2KYon4r71OWpygIZotSkoyyodw=;
        b=dzrmr2fN2fOflvwhWuz1va7eAx/zdqV49ioOFq/bCPI4WaHqzmsA6qGWMqKyPCOksa
         6qCN+ZQ0icu3Kz3vKuQjzoN59QzCFLp0tMcpxtseehUd1p+68xlZKkF1VXpKoD3luLks
         1DAUsgtKECJSICXco4seIpVBHnX1rwOo6VBa4sqYq29wNOwjEq2v33/TV1S4BB3LG0tI
         qeyK6HviBTs8fpI6tS//UT9gD8XLMvzCRC5Y0Pb5miI4lw+V0DxWblBZrvPw8KDcGiWU
         UwmBbUtv8Nu3hdMURuTaRW6z42GkMpg1KTE1vuK5I9MVJiW0viEWOFzr1bnyIKssDdaz
         WCEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=HvgxpPskU1BAl4FrV2KYon4r71OWpygIZotSkoyyodw=;
        b=UakJYZTg2lGBepGAukr5fKxoNkPgnZ2mqQXL6i27P+reAsqpGF3bKGBuLKz3CtbMyf
         AzDwVD0KpLXsNTKNiZ9l1nZsB3v10QACD17cioaAmiarfprzMhIX+ayRerbH25XDoAsE
         O3VAG8whe716dGP6H9CdQodmBp5L9OoOLl86AHYPEIJ+1UcMtDVegYbk+kUgVBNcyFGI
         lFIRjGCCd2MAVVZ/qa5YsZVqZkQ/1qKWwUjUtv/GBIH1ETYpYjuPB2xYqvvbbY0NiqV+
         i/ROJ8DAY5uyWPi4aI2+xMVM2FB6Ux9OCP2BX/6i80Emu8NTWRGvmHNPNTUw7A+9wzOq
         QyKA==
X-Gm-Message-State: AG10YOSyrYXCLpEmAA4XUtSRcBZ1tBjFLlkU7Q7nRqaK4Bh2QPL+RuXXrNdws5JH4NM59g==
X-Received: by 10.98.7.14 with SMTP id b14mr57738427pfd.40.1455098186441;
        Wed, 10 Feb 2016 01:56:26 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.165])
        by smtp.gmail.com with ESMTPSA id ud8sm3833424pac.11.2016.02.10.01.56.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 01:56:25 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 4/4] staging: fbtft: Remove blank line after '{' brace
Date: Wed, 10 Feb 2016 17:56:09 +0800
Message-Id: <1455098169-17667-5-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455098169-17667-1-git-send-email-eraretuya@gmail.com>
References: <1455098169-17667-1-git-send-email-eraretuya@gmail.com>

Omit the whitespace after '{' brace as suggested by checkpatch.

CHECK: Blank lines aren't necessary after an open brace '{'

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/fbtft/fb_hx8353d.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_hx8353d.c b/drivers/staging/fbtft/fb_hx8353d.c
index 286ae45..72e4ff8 100644
--- a/drivers/staging/fbtft/fb_hx8353d.c
+++ b/drivers/staging/fbtft/fb_hx8353d.c
@@ -28,7 +28,6 @@
 
 static int init_display(struct fbtft_par *par)
 {
-
 	par->fbtftops.reset(par);
 	mdelay(150);
 
-- 
1.9.1


