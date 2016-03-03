X-GM-THRID: 6257896431456092160
X-Received: by 10.182.230.65 with SMTP id sw1mr2661063obc.1.1457030054059;
        Thu, 03 Mar 2016 10:34:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.133 with SMTP id b5ls37055igx.5.canary; Thu, 03 Mar 2016
 10:34:12 -0800 (PST)
X-Received: by 10.50.150.34 with SMTP id uf2mr471541igb.2.1457030052612;
        Thu, 03 Mar 2016 10:34:12 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id y20si4264542pfa.2.2016.03.03.10.34.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2016 10:34:12 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id w128so19665436pfb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 03 Mar 2016 10:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MCIHrweNGwhXCIx/UprbAEhhfFwR/lb02FwqkZzLwQI=;
        b=Ca/9KY3NzOrflOt+TZTlPkpf6qqqhTZVJs+2I8vY7RjAtdPH0YK0mNQoTZQuXgC0N5
         NrzydCCO41/FJaHJWN6ufb4bmwZw78sSsHlYuz3DXzbEcjRhWJ9ZGuLhVdZJZM0B8Gk5
         9tptL+JBCrBiClDd5PvHaSVxBx6Qpu41hNd+sBGaktK3RkctDAbDOX4O3y01advaRrtC
         nHIZgMN3fL4wPUBFsz+iz3Fltda8Unf3k4berHeZD4o3EOrKLZHhHxL9BsmsqCCGNIzC
         +HAN3+o8aVR4xmdnxDaNtACsLRdNt66UuTcyFWpzr6AsznJK6W5WQihS9vtQhPkI8o7C
         sBvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MCIHrweNGwhXCIx/UprbAEhhfFwR/lb02FwqkZzLwQI=;
        b=jHpaa9IML38oB9rATyVYref3UW+xCsOaoaRy5zrkve9j93H9l1qpsUWtuK164vTInH
         6woWWhSdMELHddQVWw8cdXqLugeZm4pETCDudh2Ex3XaugqltfAqXUl8v4H1RiUt+l80
         UIlY8gYkckQfP0CPXmUF7sBFZOUTUbWr2We+QTO09JE+HCu1uWjQaYC2pbd+nxWYbNOk
         VdqO7fxDRU1wJsnnlQCemJu0RW9NdFuOIfgk2B5QDOPtM+xGCICLSKFrWpSmK0n8ozkh
         JVFae/kdZz9lAWQMrVbgP2jxP7ZmioU+q4HuKOUy2qmikgmEUsHEnP2T7KaqkQEJjbnI
         ytxg==
X-Gm-Message-State: AD7BkJLJjSO7YZCz7bBptLKn9ZaIQfFZ6CjZAPBL+EP12hEaEkpDJlkWJCVwIHBe1tcvOg==
X-Received: by 10.98.0.71 with SMTP id 68mr5724947pfa.156.1457030052406;
        Thu, 03 Mar 2016 10:34:12 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.179])
        by smtp.gmail.com with ESMTPSA id p9sm62171644pfa.11.2016.03.03.10.33.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 03 Mar 2016 10:33:41 -0800 (PST)
Date: Thu, 3 Mar 2016 16:03:55 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: fbtft: Do not use same argument more than once in
 bit operation.
Message-ID: <20160303103355.GA5375@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not use same argument more than once in bit operation.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/fbtft/fb_uc1611.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/fbtft/fb_uc1611.c b/drivers/staging/fbtft/fb_uc1611.c
index 4e82814..bffe694 100644
--- a/drivers/staging/fbtft/fb_uc1611.c
+++ b/drivers/staging/fbtft/fb_uc1611.c
@@ -100,7 +100,7 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, 0x2C | (pump & 0x03));
 
 	/* Set inverse display */
-	write_reg(par, 0xA6 | (0x01 & 0x01));
+	write_reg(par, 0xA6 | 0x01);
 
 	/* Set 4-bit grayscale mode */
 	write_reg(par, 0xD0 | (0x02 & 0x03));
@@ -166,8 +166,8 @@ static int set_var(struct fbtft_par *par)
 		/* Set RAM address control */
 		write_reg(par, 0x88
 			| (0x0 & 0x1) << 2 /* Increment positively */
-			| (0x1 & 0x1) << 1 /* Increment page first */
-			| (0x1 & 0x1));    /* Wrap around (default) */
+			| (0x1 << 1) /* Increment page first */
+			| 0x1);    /* Wrap around (default) */
 
 		/* Set LCD mapping */
 		write_reg(par, 0xC0
@@ -180,11 +180,11 @@ static int set_var(struct fbtft_par *par)
 		write_reg(par, 0x88
 			| (0x0 & 0x1) << 2 /* Increment positively */
 			| (0x0 & 0x1) << 1 /* Increment column first */
-			| (0x1 & 0x1));    /* Wrap around (default) */
+			| 0x1);    /* Wrap around (default) */
 
 		/* Set LCD mapping */
 		write_reg(par, 0xC0
-			| (0x1 & 0x1) << 2 /* Mirror Y ON */
+			| (0x1 << 2) /* Mirror Y ON */
 			| (0x0 & 0x1) << 1 /* Mirror X OFF */
 			| (0x0 & 0x1));    /* MS nibble last (default) */
 		break;
@@ -192,13 +192,13 @@ static int set_var(struct fbtft_par *par)
 		/* Set RAM address control */
 		write_reg(par, 0x88
 			| (0x0 & 0x1) << 2 /* Increment positively */
-			| (0x1 & 0x1) << 1 /* Increment page first */
-			| (0x1 & 0x1));    /* Wrap around (default) */
+			| (0x1 << 1) /* Increment page first */
+			| 0x1);    /* Wrap around (default) */
 
 		/* Set LCD mapping */
 		write_reg(par, 0xC0
-			| (0x1 & 0x1) << 2 /* Mirror Y ON */
-			| (0x1 & 0x1) << 1 /* Mirror X ON */
+			| (0x1 << 2) /* Mirror Y ON */
+			| (0x1 << 1) /* Mirror X ON */
 			| (0x0 & 0x1));    /* MS nibble last (default) */
 		break;
 	default:
@@ -206,12 +206,12 @@ static int set_var(struct fbtft_par *par)
 		write_reg(par, 0x88
 			| (0x0 & 0x1) << 2 /* Increment positively */
 			| (0x0 & 0x1) << 1 /* Increment column first */
-			| (0x1 & 0x1));    /* Wrap around (default) */
+			| 0x1);    /* Wrap around (default) */
 
 		/* Set LCD mapping */
 		write_reg(par, 0xC0
 			| (0x0 & 0x1) << 2 /* Mirror Y OFF */
-			| (0x1 & 0x1) << 1 /* Mirror X ON */
+			| (0x1 << 1) /* Mirror X ON */
 			| (0x0 & 0x1));    /* MS nibble last (default) */
 		break;
 	}
-- 
1.8.3.4


