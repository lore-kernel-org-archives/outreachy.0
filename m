X-GM-THRID: 2118621593600
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f34f4ccbfeab5ba6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.35 with SMTP id o3mr451166wix.0.1424551260819;
        Sat, 21 Feb 2015 12:41:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.71 with SMTP id eo7ls311410wib.21.canary; Sat, 21 Feb
 2015 12:41:00 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr401836wik.5.1424551260571;
        Sat, 21 Feb 2015 12:41:00 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id el6si373211wib.2.2015.02.21.12.41.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:41:00 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f48.google.com with SMTP id l18so18962834wgh.7
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 12:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=lxF5JzjUzsDUow2pK2cO1ZcH/f1E18wQFAAK8X9U7vE=;
        b=XLI8A4G9W1pfAyKlcvc3Y6H8GokAW0/RrhdVo1j4bRGDAhk+X3Gj9qOm7E9WBin7Xz
         p6Asbw0YPB+hYkOl4lqMSF4YUdwa42qb5RaolCSQkeyv7f7fthCXBry5MkVkYUGoc2vv
         a9TC78q0ZX4ofER+yPO7RJAPPsql5UbYRmy447iR4HiYfinyLInVeadyrG3rqAxsbcM1
         xEoZEm4UiBQITXgSaoq6WYJI38xleifGh0LnxGeoU76frejmP1nh5nk0ECedzEwCFGV4
         HzEughPyLkMBJ3/v10ldCBv8CjPghXLJOEcd8NJKv512NOifC2uARfZHQ3aq/LlgTlH6
         OCPQ==
X-Received: by 10.180.108.239 with SMTP id hn15mr6897907wib.38.1424551260500;
        Sat, 21 Feb 2015 12:41:00 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id gz3sm8416433wib.1.2015.02.21.12.40.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 12:40:59 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 3/4] staging: arch: alpha: boot: Deleted unnecessary brackets.
Date: Sat, 21 Feb 2015 22:40:37 +0200
Message-Id: <41ef579e532df4325288a101ce4f9aff77aa1d93.1424551058.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424551058.git.gulsah.1004@gmail.com>
References: <cover.1424551058.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424551058.git.gulsah.1004@gmail.com>
References: <cover.1424551058.git.gulsah.1004@gmail.com>

This patch fixes "braces {} are not necessary for single statement
blocks" checkpatch.pl warnings in bootp.c

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 arch/alpha/boot/bootp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/alpha/boot/bootp.c b/arch/alpha/boot/bootp.c
index 27807f5..c66ea3c 100644
--- a/arch/alpha/boot/bootp.c
+++ b/arch/alpha/boot/bootp.c
@@ -177,9 +177,8 @@ start_kernel(void)
 	move_stack(initrd_start - PAGE_SIZE);
 
 	nbytes = callback_getenv(ENV_BOOTED_OSFLAGS, envval, sizeof(envval));
-	if (nbytes < 0 || nbytes >= sizeof(envval)) {
+	if (nbytes < 0 || nbytes >= sizeof(envval))
 		nbytes = 0;
-	}
 	envval[nbytes] = '\0';
 	srm_printk("Loading the kernel...'%s'\n", envval);
 
-- 
1.9.1


