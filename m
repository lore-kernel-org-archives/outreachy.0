X-GM-THRID: 6258193007234777088
X-Received: by 10.182.112.193 with SMTP id is1mr5842326obb.38.1457099105725;
        Fri, 04 Mar 2016 05:45:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.153.111 with SMTP id vf15ls220525igb.7.gmail; Fri, 04 Mar
 2016 05:45:05 -0800 (PST)
X-Received: by 10.66.228.102 with SMTP id sh6mr5718138pac.12.1457099104965;
        Fri, 04 Mar 2016 05:45:04 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id y20si1317783pfa.2.2016.03.04.05.45.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Mar 2016 05:45:04 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id 124so35956499pfg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 04 Mar 2016 05:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=7DGhUTwshfyszgT8/GxCUo8LxW+D49CIor/i1gYdB8Q=;
        b=gwYjoUd66CME6eU4fN88xd4Sf6ikKToG+lmlxztT4jPWySPArR0yS2kUSSuiT8r/n0
         t+L3vJipHnLioXVj2ELAUseyQoV2TT9ri7LIQ096zgRkWg8s1ah4Vb8+Dn/ClM6ZPh34
         FPJQr5EU8qQ79Fxxk7eRzmQMGb1S3KZlDNzUxLgseomYLFLRqQHTBeidkn7vUdTh6p3Q
         JxZ42Z4y06mQ1W3wfluqB4/wYnf8XZutW30gmwDcLw2ijV+7o31/CWj5cS4e3H0WWgEh
         xD7l0FHb4tnsRY0dFZLibdmlfTIOfQxDGQJFPefLuj95dU+oyr9b321LqItCm9StX5SQ
         eAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7DGhUTwshfyszgT8/GxCUo8LxW+D49CIor/i1gYdB8Q=;
        b=fYjk7BPN5hOPQvSSXvw4PFAVIQGeDmyynGYkaIB8wanUuJy2fCESAyPHlu/2UL1fUS
         e9rEp1knDot+YysmYGzyWkn95UxSghvokUuQSnLlb2QmfNbrn08NyrQK7qHVPL1zHkxc
         gOmsgTvclH3DTUN8IoJ5HSUqj9ikCWK4MXqYhMnOhdCg1L1Ob8HFJd9FVcvN25CIINgc
         XN/KHP+RKwiyAYmdzDlnYTFoFHpPDJ9G1VUAtbjQshRHB4FXKjaSUk+5iw+kJfxbXQsk
         yB8pqJBke3ZVrqPx9TYGIZQfNUbm6MazBD8X/osfE+rNGlAZGlLyk7i33Y+nnfQrCYwq
         smEQ==
X-Gm-Message-State: AD7BkJJaqPsh4KVLd5jUqojYpZbu1GnL8fMC1LEWLj55QxiZ+EaP51zYyjxlJT+dJFqO3A==
X-Received: by 10.98.67.92 with SMTP id q89mr12122196pfa.137.1457099104793;
        Fri, 04 Mar 2016 05:45:04 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.129.22])
        by smtp.gmail.com with ESMTPSA id e1sm5853096pas.1.2016.03.04.05.44.59
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 04 Mar 2016 05:45:04 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 04 Mar 2016 19:14:53 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: fsl-mc: Replace pr_debug with dev_dbg
Date: Fri,  4 Mar 2016 19:14:52 +0530
Message-Id: <1457099092-3160-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch replaces pr_debug calls with dev_dbg when the device structure
is available as dev_* prints identifying information about the struct
device.
Done using coccinelle:

@r exists@
identifier f, s;
identifier x;
position p;
@@
f(...,struct s *x,...) {
<+...
when != x == NULL
\(pr_err@p\|pr_debug@p\|pr_info\)(...);
...+>
}

@r2@
identifier fld2;
identifier r.s;
@@

struct s {
        ...
        struct device *fld2;
        ...
};

@@
identifier r.x,r2.fld2;
position r.p;
@@

(
-pr_err@p
+dev_err
   (
+ &x->fld2,
...)
|
- pr_debug@p
+ dev_dbg
   (
+ &x->fld2,
...)
|
- pr_info@p
+ dev_info
   (
+ &x->fld2,
...)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/fsl-mc/bus/mc-sys.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fsl-mc/bus/mc-sys.c b/drivers/staging/fsl-mc/bus/mc-sys.c
index 6e14892..8101c46 100644
--- a/drivers/staging/fsl-mc/bus/mc-sys.c
+++ b/drivers/staging/fsl-mc/bus/mc-sys.c
@@ -328,7 +328,8 @@ static int mc_polling_wait_preemptible(struct fsl_mc_io *mc_io,
 			     MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS);
 
 		if (time_after_eq(jiffies, jiffies_until_timeout)) {
-			pr_debug("MC command timed out (portal: %#llx, obj handle: %#x, command: %#x)\n",
+			dev_dbg(&mc_io->dev,
+				"MC command timed out (portal: %#llx, obj handle: %#x, command: %#x)\n",
 				 mc_io->portal_phys_addr,
 				 (unsigned int)
 					MC_CMD_HDR_READ_TOKEN(cmd->header),
@@ -369,7 +370,8 @@ static int mc_polling_wait_atomic(struct fsl_mc_io *mc_io,
 		udelay(MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS);
 		timeout_usecs -= MC_CMD_COMPLETION_POLLING_MAX_SLEEP_USECS;
 		if (timeout_usecs == 0) {
-			pr_debug("MC command timed out (portal: %#llx, obj handle: %#x, command: %#x)\n",
+			dev_dbg(&mc_io->dev,
+				"MC command timed out (portal: %#llx, obj handle: %#x, command: %#x)\n",
 				 mc_io->portal_phys_addr,
 				 (unsigned int)
 					MC_CMD_HDR_READ_TOKEN(cmd->header),
@@ -424,7 +426,8 @@ int mc_send_command(struct fsl_mc_io *mc_io, struct mc_command *cmd)
 		goto common_exit;
 
 	if (status != MC_CMD_STATUS_OK) {
-		pr_debug("MC command failed: portal: %#llx, obj handle: %#x, command: %#x, status: %s (%#x)\n",
+		dev_dbg(&mc_io->dev,
+			"MC command failed: portal: %#llx, obj handle: %#x, command: %#x, status: %s (%#x)\n",
 			 mc_io->portal_phys_addr,
 			 (unsigned int)MC_CMD_HDR_READ_TOKEN(cmd->header),
 			 (unsigned int)MC_CMD_HDR_READ_CMDID(cmd->header),
-- 
1.9.1


