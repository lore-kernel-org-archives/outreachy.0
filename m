X-GM-THRID: 6392947062257745920
X-Received: by 10.13.212.195 with SMTP id w186mr5749489ywd.105.1488473979401;
        Thu, 02 Mar 2017 08:59:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.71 with SMTP id l65ls6955132otl.41.gmail; Thu, 02 Mar
 2017 08:59:39 -0800 (PST)
X-Received: by 10.157.14.213 with SMTP id 79mr5363633otj.36.1488473979043;
        Thu, 02 Mar 2017 08:59:39 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si872153pfz.1.2017.03.02.08.59.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 08:59:38 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so9878536pgy.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 08:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=oyi+rVUPnG2nz+mB1b6DV5Hy0QEzJPg749uebo/oiEs=;
        b=Hor433XdtgcEwABBB98cgQyht/J3mdsVVELeoJXZh701KTy9ubaJOy2Ox50x8O0peA
         PjTDzfRDuj+3JCKI2vzIfIpcBkB96hcN4F9ZaYU4BMAB9Uav6fC5LrHsaloQQUxaYkjh
         4eROEvv3fy/YL+n3MysWYrX0745wrF44KJP9Ok25x3wUq9HUWOBEokVlGWI0/hSXt1oa
         FT5p6vahucQxU1WFa2lJ5meoUbMEeidVOeZny6ljSiGDhysUTECqo7FfXhXBpCf+XHKL
         Azo0bPJk+lg7as08+LMyj/CEA3G11+Bb33L82Sz8uqFYjPPgSLEUsQjw6vLhBe2ZR8hz
         zWyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=oyi+rVUPnG2nz+mB1b6DV5Hy0QEzJPg749uebo/oiEs=;
        b=M60WTrv1QJFZsp1sR3YPJNeFuMfpHbKfnlCV74jo/Z5Xvb2R+iTGjnYNHNF0DtkdEb
         jEkbM3/ddd1dmMvyNrzDW4eFHd/U5M86p63B0K4USIHir+zpUpWKsmKO5kDHD7EzicFN
         jSAO8zvJ7a1V01wqW9F0034mCAt4QO4AbfB5UrboVjKHMolLGv74Rc3rdjDF2N3KbByd
         09TCQ6bLdUBbtKA9/a/FkfdS13k+H5v2xAMEanxsPNMnK7Fk9D74xluIHsCEpy/I5AOS
         SdUau4Ma9K3vjVhNLyn3eDqRB20jcclWsDItowKYUnZMZkM5ZJhL1baSpufmGEu04yAF
         A53A==
X-Gm-Message-State: AMke39n5ytpfbVR2u+a9jWH9SvEwL/NQa9RAZUOhJitJllt/KiegeoVmv5MRDHNKK2+fvA==
X-Received: by 10.84.208.227 with SMTP id c32mr19843579plj.71.1488473978739;
        Thu, 02 Mar 2017 08:59:38 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h9sm18167046pfd.103.2017.03.02.08.59.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 08:59:38 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: lustre: lnet: Constify kernel_param_ops structure
Date: Thu,  2 Mar 2017 22:27:15 +0530
Message-Id: <1488473835-13701-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The structure is used as an argument to module_param macro. This
macro calls a bunch of other macros and finally assigns the instance
of the kernel_param_ops structure to the const struct
kernel_param_ops* field of a variable of type kernel_param. Hence,
const can be added to the structure.

Coccinelle Script:

@r disable optional_qualifier@
identifier i;
position p;
@@
static struct kernel_param_ops i@p = { ... };

@ok1@
identifier r.i;
expression e;
position p;
@@
e = i@p

@script:python s@
i << r.i;
t;
@@
coccinelle.t = i[10:];

@ok2@
declarer name module_param;
expression e1,e2;
position p;
@@
module_param(e1,s.t@p,e2);

@bad@
position p != {r.p,ok1.p,ok2.p};
identifier r.i;
@@
e@i@p

@depends on !bad disable optional_qualifier@
identifier r.i;
@@
static
+const
struct kernel_param_ops i = { ... };

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/lustre/lnet/libcfs/debug.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lnet/libcfs/debug.c b/drivers/staging/lustre/lnet/libcfs/debug.c
index 3408041..c56e992 100644
--- a/drivers/staging/lustre/lnet/libcfs/debug.c
+++ b/drivers/staging/lustre/lnet/libcfs/debug.c
@@ -80,7 +80,7 @@ static int libcfs_param_debug_mb_set(const char *val,
  * it needs quite a bunch of extra processing, so we define special
  * debugmb parameter type with corresponding methods to handle this case
  */
-static struct kernel_param_ops param_ops_debugmb = {
+static const struct kernel_param_ops param_ops_debugmb = {
 	.set = libcfs_param_debug_mb_set,
 	.get = param_get_uint,
 };
@@ -138,7 +138,7 @@ static int param_set_console_max_delay(const char *val,
 				      libcfs_console_min_delay, INT_MAX);
 }
 
-static struct kernel_param_ops param_ops_console_max_delay = {
+static const struct kernel_param_ops param_ops_console_max_delay = {
 	.set = param_set_console_max_delay,
 	.get = param_get_delay,
 };
@@ -156,7 +156,7 @@ static int param_set_console_min_delay(const char *val,
 				      1, libcfs_console_max_delay);
 }
 
-static struct kernel_param_ops param_ops_console_min_delay = {
+static const struct kernel_param_ops param_ops_console_min_delay = {
 	.set = param_set_console_min_delay,
 	.get = param_get_delay,
 };
@@ -188,7 +188,7 @@ static int param_set_uintpos(const char *val, const struct kernel_param *kp)
 	return param_set_uint_minmax(val, kp, 1, -1);
 }
 
-static struct kernel_param_ops param_ops_uintpos = {
+static const struct kernel_param_ops param_ops_uintpos = {
 	.set = param_set_uintpos,
 	.get = param_get_uint,
 };
-- 
2.7.4


