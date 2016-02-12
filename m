X-GM-THRID: 6250306033025024000
X-Received: by 10.50.61.132 with SMTP id p4mr2175867igr.0.1455262786741;
        Thu, 11 Feb 2016 23:39:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.87.229 with SMTP id bb5ls684755obb.54.gmail; Thu, 11 Feb
 2016 23:39:45 -0800 (PST)
X-Received: by 10.182.106.137 with SMTP id gu9mr77826obb.26.1455262785259;
        Thu, 11 Feb 2016 23:39:45 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 12si1241959pfb.1.2016.02.11.23.39.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 23:39:45 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id fl4so3489414pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 23:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=5eDucqApFDLIKHiUwsLPDC4zrmCWYD7Ii7OSnHIoQoU=;
        b=vD78bkfqUUTJy9mR/b3MV0azPWCBOhnzKNtLdhJ0vk7lhhADo4C4b8wlWJR8notHii
         WEIwFt2D/9yyEGAKq5E+ntPi3VVvBSbxIoPBWcaE51qQ6jSCMrlo+sBuSMzy/OXtirpm
         Xz3cyNs+8+O77pGHcnx896aNiy4E2L6XACwfBtJUlZhjj0HSoSGgTafY99puqGbq0foU
         OuUbL5J47lhYzJ70FqAwZJVKTX64khI10KlJYOGH4tTCkHMZ32jRF+JSSJ2df/X0erVN
         Uyw+/fmNd2PPzsRWkxKszrhZfgyQUEuOeoUvwG49RT9L+2DwTWIBA3XZ9nfYm3XSAG53
         X+sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=5eDucqApFDLIKHiUwsLPDC4zrmCWYD7Ii7OSnHIoQoU=;
        b=C2kvfV2IgtynNl8rPv9RwY8wm1Tkj3zBv2oOUCMEK8T1xi8hPKw3T7zr3eJIB+DSL1
         qtCBVkXI863KW7g4bIQ3tDttehM6IMFi6jKsNG+pKC3JU7mJ6/5NhKQDBfP72auQyF6P
         StrGL31xOHUwtVn20pH4sizCSzqBco3tYvhYEvqqErq372o2QI2K//ldAE1eAU1P2KAq
         YDZtxziNtJh42xpktu/XdDCeCLf3PK6xsFipQR+SGmNazszQuwY5rm1TvK4xmFv5V4aD
         sImtMGk3nTCCEMWtukCOkhJNYMr/0d6aYHET5zPCpwn246zuSbpPESA5AfYDlV/Z5qGi
         RB5Q==
X-Gm-Message-State: AG10YOQu8JQ0x6E4i3eeZPkWtgGslLSG4ylutUPxj5kun84pQqT7dZzA7Px2jMKSAowyFw==
X-Received: by 10.66.100.228 with SMTP id fb4mr123990pab.84.1455262785143;
        Thu, 11 Feb 2016 23:39:45 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.60])
        by smtp.gmail.com with ESMTPSA id w89sm17048962pfi.13.2016.02.11.23.39.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 23:39:44 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 3/5] staging: fbtft: Insert blank line after function declaration
Date: Fri, 12 Feb 2016 15:39:28 +0800
Message-Id: <056408edcf8ef5b8457da32b72a115d4234bd0ff.1455260992.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455260992.git.eraretuya@gmail.com>
References: <cover.1455260992.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455260992.git.eraretuya@gmail.com>
References: <cover.1455260992.git.eraretuya@gmail.com>

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


