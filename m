X-GM-THRID: 6249599077237915648
X-Received: by 10.182.120.170 with SMTP id ld10mr43736755obb.30.1455210596491;
        Thu, 11 Feb 2016 09:09:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.45.161 with SMTP id o1ls600633obm.27.gmail; Thu, 11 Feb
 2016 09:09:56 -0800 (PST)
X-Received: by 10.182.112.193 with SMTP id is1mr3032513obb.38.1455210596195;
        Thu, 11 Feb 2016 09:09:56 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id u66si1124499pfa.2.2016.02.11.09.09.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:09:56 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id fl4so2664090pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 09:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5eDucqApFDLIKHiUwsLPDC4zrmCWYD7Ii7OSnHIoQoU=;
        b=fbemhWhgS2L/8e7IQeH+LWSDyvVFrQvNwBJaBl3mfoNN6eMpqxogEO17j+tRxSC/ND
         VyJnGUdK27Xu3orHdXaBnS4lR5yxbhNaHyl552uL/65Hi9O1CMKmGKPgtoZSDHUb3EbM
         o+Y80jyAPxy0HQh6WjA5pbDnW2qgG190swAzieQU3VuEbS6XGrKu/TyxcDqGTMqvS+5E
         L3co/UGCMij+yGr18UbfpliNB3EfU/3PJmy8ZoN5x5XwULEz7r2VOotMqF6JQ/N5jrgh
         kD+ov2KjgQXJ/LwoiGlvQo32NDNFa1EpuMoyrJU8s0v30AsnIiSAonkswe9fA9aoTm8C
         LDiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5eDucqApFDLIKHiUwsLPDC4zrmCWYD7Ii7OSnHIoQoU=;
        b=RmL4p8FXz08OkpjrSliz/9nQ03ZnUmyjw2ONnnLaRqKeoCZTE/F6zuIFebAD4k1JQD
         q+XX4r2+ilmJ1HaAn5//2J4+glE32Kkpalh/Ffehk/Ssf9v3JVCyFMJeb1aqgLJLPgTk
         vkmIgHBvnPzrQIh3I1a6JArXg+D0Sb7Yuhjmc2QiKBjygNWS/3IeK/D1EguJAknKIUGP
         S3P1n3kEfsvir55d6ngJzVVoEmRF0MH20ayrz9FRaF0iPzNKVOXmczOVoIbBsgEk4Xg9
         0RalhBfLA6WkeldYya9Gbtv1OTgRSERFx3J9Xes6Hd9viTEYm22BUMXKH4RVI65S88jL
         Pfgw==
X-Gm-Message-State: AG10YOTTAxHkkpga7sXdqkxLWcc3GA+Onz1awi6e4ONg2Fio38K2mmqk5+LgddIp9u10Ig==
X-Received: by 10.66.230.201 with SMTP id ta9mr68432793pac.52.1455210596069;
        Thu, 11 Feb 2016 09:09:56 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([125.212.122.48])
        by smtp.gmail.com with ESMTPSA id v66sm13585312pfi.56.2016.02.11.09.09.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 09:09:55 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 3/5] staging: fbtft: Add blank line after function declaration
Date: Fri, 12 Feb 2016 01:09:08 +0800
Message-Id: <1455210550-11363-4-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455210550-11363-1-git-send-email-eraretuya@gmail.com>
References: <1455210550-11363-1-git-send-email-eraretuya@gmail.com>

Insert the required whitespace after the function declaration as
suggested by checkpatch.

CHECK: Please use a blank line after function/struct/union/enum
declarations

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/fbtft/fb_ili9163.c | 1 +
 drivers/staging/fbtft/fb_ili9320.c | 1 +
 drivers/staging/fbtft/fb_ili9325.c | 1 +
 drivers/staging/fbtft/fb_ili9341.c | 1 +
 4 files changed, 4 insertions(+)

diff --git a/drivers/staging/fbtft/fb_ili9163.c b/drivers/staging/fbtft/fb_ili9163.c
index 9f7c7ec..6b8f8b1 100644
--- a/drivers/staging/fbtft/fb_ili9163.c
+++ b/drivers/staging/fbtft/fb_ili9163.c
@@ -236,6 +236,7 @@ static int gamma_adj(struct fbtft_par *par, unsigned long *curves)
 
 	return 0;
 }
+
 #undef CURVE
 #endif
 
diff --git a/drivers/staging/fbtft/fb_ili9320.c b/drivers/staging/fbtft/fb_ili9320.c
index 6c6bc3d..6ff222d 100644
--- a/drivers/staging/fbtft/fb_ili9320.c
+++ b/drivers/staging/fbtft/fb_ili9320.c
@@ -248,6 +248,7 @@ static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 
 	return 0;
 }
+
 #undef CURVE
 
 static struct fbtft_display display = {
diff --git a/drivers/staging/fbtft/fb_ili9325.c b/drivers/staging/fbtft/fb_ili9325.c
index 64cdf55..fdf98d3 100644
--- a/drivers/staging/fbtft/fb_ili9325.c
+++ b/drivers/staging/fbtft/fb_ili9325.c
@@ -245,6 +245,7 @@ static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 
 	return 0;
 }
+
 #undef CURVE
 
 static struct fbtft_display display = {
diff --git a/drivers/staging/fbtft/fb_ili9341.c b/drivers/staging/fbtft/fb_ili9341.c
index e92d771..ff35c86 100644
--- a/drivers/staging/fbtft/fb_ili9341.c
+++ b/drivers/staging/fbtft/fb_ili9341.c
@@ -135,6 +135,7 @@ static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 
 	return 0;
 }
+
 #undef CURVE
 
 static struct fbtft_display display = {
-- 
1.9.1


