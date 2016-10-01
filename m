X-GM-THRID: 6336543746979528704
X-Received: by 10.237.43.133 with SMTP id e5mr3229681qtd.66.1475341559874;
        Sat, 01 Oct 2016 10:05:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls2952297ioe.45.gmail; Sat, 01 Oct
 2016 10:05:56 -0700 (PDT)
X-Received: by 10.66.55.73 with SMTP id q9mr3791471pap.126.1475341556199;
        Sat, 01 Oct 2016 10:05:56 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 128si387135pfz.2.2016.10.01.10.05.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 10:05:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id r9so5549686paz.1
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 10:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jBko8gRiQ3kdXvyYpKfbewobxNqTJxhrlqV5ftrpjtA=;
        b=1D8rtKA9uKKYYwGuMzoBmC6LM6KXhKf7wjpcOqtd62ZGuzkaqOwjiRvkK13Y4R1kwO
         oGg558Wq3kJYhk60ZAREseIK8yxTjLh3IIXWCd/xMBEmi7WNICzme6eVEBEoFmYvFNGe
         bAXAsb+oeEIGsQVJwl8M0efYeuVWvpOIA0Me+p13byz5gKucogIpTdkk7WQtRkHxiqTg
         pHIxAoTlhI3BQ+m92Wt0YlV+G/x4Lf8hFp2hfPe0RXA1F9JtivU1aQZW2sDmV66Zw3Fr
         EBjk1N/nBlPPZDjiDiq9vbgc7Xj0/dP7L2gJNSIjDOwQcFyhYAVtznfytRHeiWTGMWnQ
         IAuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jBko8gRiQ3kdXvyYpKfbewobxNqTJxhrlqV5ftrpjtA=;
        b=ic4SnBSuBfSid6izalZrI3CjmW3JNQXfVbkKqNoxZY5biDdZopB9CAtQzuSkwKNI/N
         USRX0VxuP7C1KF4Pwd3c9AsG0LkH7xivIiVySHqAFzMDBkwvYXtNNnZ/mHX8l+9Ge8YZ
         Ez7hPj9kDUjRnPFna3Wx7v6Itol2q71DJInBseCxU86V0y9/cET9VgXyIPu1GgwLSQTi
         oj/V4qRtle3VPmNDcaEAzdr68KhxGLkHm4N5wqLnsJ+H1AQ8pdrnsVNMyTymAqL6ZZFp
         z4KzftYKNRn+Ahn2vuFXo7/zVHTy+bQmm2vqMQku1IQNyPzTD2ybn3Bzg8H8wVmWEnIT
         w7Bg==
X-Gm-Message-State: AA6/9RkgZ6YK1HoKl4CpILl9pTXt9Nr1abqj1tEguGMspibiihbxYq/w/F5dw+cql7a8dQ==
X-Received: by 10.66.134.33 with SMTP id ph1mr22516119pab.113.1475341556021;
        Sat, 01 Oct 2016 10:05:56 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p7sm36250675paa.3.2016.10.01.10.05.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 10:05:55 -0700 (PDT)
Date: Sat, 1 Oct 2016 22:35:49 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: lustre: Constify kernel_param_ops structures
Message-ID: <20161001170549.GA2965@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Check for structs which can are not modified and hence can be declared as
const. Done using Coccinelle:

// <smpl>
@r disable optional_qualifier@
identifier s != {peri_clk_data,threshold_attr,tracer_flags,tracer};
identifier i;
position p;
@@
static struct s i@p = { ... };

@ok@
identifier r.i;
expression e;
position p;
@@
e = i@p

@bad@
position p != {r.p,ok.p};
identifier r.i;
identifier r.s;
struct s e;
@@
e@i@p

@depends on !bad disable optional_qualifier@
identifier r.i;
identifier r.s;
@@
static
+const
struct s i = { ... };
// </smpl>

File size before:
	text	data	bss	dec	hex	filename
	4651	4296	1344	10291	2833
	drivers/staging/lustre/lnet/libcfs/debug.o

File size after:
	text	data	bss	dec	hex	filename
	4779	4128	1344	10251	280b
	drivers/staging/lustre/lnet/libcfs/debug.o

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/lustre/lnet/libcfs/debug.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lnet/libcfs/debug.c b/drivers/staging/lustre/lnet/libcfs/debug.c
index 23b36b8..f9194f3 100644
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


