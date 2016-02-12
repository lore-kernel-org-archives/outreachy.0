X-GM-THRID: 6250306033025024000
X-Received: by 10.107.62.8 with SMTP id l8mr1075266ioa.11.1455262788338;
        Thu, 11 Feb 2016 23:39:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.112.42 with SMTP id in10ls88531igb.13.canary; Thu, 11 Feb
 2016 23:39:48 -0800 (PST)
X-Received: by 10.107.33.200 with SMTP id h191mr1108631ioh.9.1455262788108;
        Thu, 11 Feb 2016 23:39:48 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id u66si1466043pfa.2.2016.02.11.23.39.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 23:39:48 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e127so3646659pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 23:39:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=VzmesWpmdg2t7zjzdklBUv+OQjujEnAsB4TP6NXQQTo=;
        b=jgXVkhkb5zqoHAfOpp30nc06ENGrHIqEJ/mYm9izs8/TmnJ8GvaTO2UissEMEo7wv3
         1lOP42eyxkNaI58QkwJ3iZgSv9oNBCVhjqvSp5UytFeTu4kKzXhO5+SZXQHEIA2KGBXf
         HHcjnv+T0KNSGsLwgqs4QFtnWrKOeixE0gdXpj8V8rHoNXMu1AfKnb44d+eV0iCATgdw
         jjCVuNxcTeH6Zlev+jZ35vbRYN8xl3Vm1Ki9xqcVNGqOamjd/dO63+F4wJXZcDAxG4vp
         350i2u9+eHpJBAvNYMmUwtwx9cubL+/MVwed9gXMiKaHxd1yeNRspLMfOvDGF9nPsg+w
         O0bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=VzmesWpmdg2t7zjzdklBUv+OQjujEnAsB4TP6NXQQTo=;
        b=TKkQFnapQR1D2gkvYaz7alx4On7bYuw4N5DeYetIOD/PWSGm/5rF3aCDmLmTSa1b/h
         aXUWQUAjPiqr6mbXaiPMLNT7fFoALQj0uUrR0j7DcjnM2R4Vbh8CyrOxqWs0g3nrFBM0
         gI29eQFFOV0gPi1d4Oa6h0N/xyKqXecSzOXc0HSjQg7nGsDkC3oaN8SQm4CyINPocsHS
         FQasiOMqRKxHKTHEsD+HpcWE+c/q3Vf/DBdnGOThaE29LexqiAQwtEwBpnrUFNgaKnhJ
         VVLc+xt/rnG6vZJhesBzSjCLm14yuyhSSDfZNV1HXfLPHvp2zVq9dUuVaTDLBJx9MtUV
         jOew==
X-Gm-Message-State: AG10YOQH59JPGqYVmMPkSpJKL6GsTDA30C4JPyEVljcbf96xGL5w37lKJPUQjDQMbluPmQ==
X-Received: by 10.98.87.142 with SMTP id i14mr101715pfj.63.1455262788007;
        Thu, 11 Feb 2016 23:39:48 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.60])
        by smtp.gmail.com with ESMTPSA id xa9sm17047016pab.44.2016.02.11.23.39.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 23:39:47 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 4/5] staging: fbtft: Delete blank line after '{' brace
Date: Fri, 12 Feb 2016 15:39:29 +0800
Message-Id: <5920c8881ff0e5a8184ddf00439c84ec8e72ef55.1455260992.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455260992.git.eraretuya@gmail.com>
References: <cover.1455260992.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455260992.git.eraretuya@gmail.com>
References: <cover.1455260992.git.eraretuya@gmail.com>

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


