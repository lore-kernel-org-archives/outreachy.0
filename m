X-GM-THRID: 6336543746979528704
X-Received: by 10.157.35.137 with SMTP id t9mr4982744otb.105.1475432882432;
        Sun, 02 Oct 2016 11:28:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.207.70 with SMTP id y67ls1844758itf.18.gmail; Sun, 02 Oct
 2016 11:28:02 -0700 (PDT)
X-Received: by 10.66.47.231 with SMTP id g7mr5152978pan.49.1475432882094;
        Sun, 02 Oct 2016 11:28:02 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z73si998197pfa.1.2016.10.02.11.28.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 11:28:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 190so1805526pfv.1
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 11:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=l6XrElsGk6RZhfRnkVznpFhp8hnQROh9pq0eHx04oCs=;
        b=FzZofCNykPo+0lL2uHEy/mQhHwlqA32mY44MW5rH/Iof44IBOeddZ72A6W7zKM+gJB
         wQaRJwTPtb0OR5lULlJfbpnahDcPExbMVU//f7RUls8w0hGslV55CquKwSKjABzgLYed
         9wiNkxBFARtPoq2yaSrvVZuHeYeoadWRyLTUbp9qIjgjm0yFxjzqh0BruLdBhZa5oV8b
         caMGv+7tqF5IxSaxjrEHpIIlpoaLNaZvpJ0qXoJon7r8VvHepGu3dqVCQz/j3+WvAQ5s
         VGKlkMCSbsPFuwf9/z4jORgBMb3R71rH/O66HSKK12QiqdtvnBym6gFTKwdEM9DACCQH
         AcVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=l6XrElsGk6RZhfRnkVznpFhp8hnQROh9pq0eHx04oCs=;
        b=EBnSR2NmDYTQ+TKMuXuJJBplUVzDPMk38NSl5EHWb7e/UH6Px4FMGb5gQctEMbhVKm
         Tw4q33VEEDHVByUsDMIzaoFnsb+KggR7/v4bXVzlimFfriz5azbi75w8rT10ZnomADvh
         jGMpDuPAP0+AZURUKBxXeJndXjQ1lg058l5BGnF3Mmwk6YwnFDrt9GZFgrgBEIgomfF9
         aYo7tOt4DqpofwqHfpQoLmDCMfCz7qb3ylWaOMc1tcqqtkIc0mW/nbR8f1AYZBm4BCsH
         cVYdatSG7IKgue45XSYhKt6sJrvvIt3Tq6fBxAQVB/TYxPlobKijj5gGAHuq84VOftxs
         j87A==
X-Gm-Message-State: AA6/9Rn+/sdIgSVIQRmuO07JqjAwIg372uQoWad5T7LAJBUAF/j3HG/a54JklD4hVfWAOQ==
X-Received: by 10.98.198.70 with SMTP id m67mr30651958pfg.34.1475432881901;
        Sun, 02 Oct 2016 11:28:01 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r88sm27396794pfi.51.2016.10.02.11.27.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 11:28:01 -0700 (PDT)
Date: Sun, 2 Oct 2016 23:57:55 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: lustre: Constify kernel_param_ops structures
Message-ID: <20161002182755.GA32407@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Check for structs which are not modified and hence can be declared as const.
Done using Coccinelle:

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

Change in v2:
Fix typo "can are" -> "are" in commit message

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


