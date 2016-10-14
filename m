X-GM-THRID: 6341262958071382016
X-Received: by 10.67.6.6 with SMTP id cq6mr2567722pad.58.1476440336075;
        Fri, 14 Oct 2016 03:18:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.174 with SMTP id d43ls7820472otd.11.gmail; Fri, 14 Oct
 2016 03:18:55 -0700 (PDT)
X-Received: by 10.200.55.187 with SMTP id d56mr2979575qtc.32.1476440335629;
        Fri, 14 Oct 2016 03:18:55 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 203si3125538pfw.0.2016.10.14.03.18.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 03:18:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 128so6983523pfz.1
        for <outreachy-kernel@googlegroups.com>; Fri, 14 Oct 2016 03:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=twyKOsoLoiTegvomI6tF62+CQGfg+62t9LJSEm7TJgk=;
        b=WmH0z11lqCO98vWd5uD4sA5Fvn2e5lSQoFKs1Rzsk4EeFQi1KqJaD3s/QbHK1SIqgz
         lGMgnvonJ4KEBVnAhNflEquL6u9OLFBjXDgHS7yQ0Un1XYu37iL+PUXoXodfWeXtyKXd
         L4TJ3NYDIg5v7X3PcndGUbVB2zHC7Z1Y2dvqK1ioRIVtkitmRosuv2mTd8+K5WDOr+Tn
         cU1t+ABrzcGPjlSwMsoZ/mDmQFBSRaa6fiuTIkGiZyy0+Um8x5RGTVXzbgKIq6eJXxA+
         GbbdrGr8qc0LPxjdFaStNogoCOa9m5fVh9YlTwA7iGdaUMr58QVA8N4QtpP/P51PAXPK
         io4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=twyKOsoLoiTegvomI6tF62+CQGfg+62t9LJSEm7TJgk=;
        b=VDMq2guaF1KdspvrH1OQICpei+iWRBOTT6Ue5/v97lBOeRQoG+yA3yM9NxgQGeTSP0
         m+UMU7aYd9o4FlCUhyqnsxIcezXFCJBO46kJaPiOzL1i1KndvzpBdk+lmrvONsCSCRvR
         Ci5AU159QOiP1OMfvySQk1Q6uHcheFRZHBQfhROuVe9uK/hIk6R/K5mj9B5kfv5vkwVI
         72HdR1AT1YSloFcwIxYFdGSmckVCkorecJCo/m/vpW3y3S6IxoyS3K7kT0cHrDKDrebu
         COcUORO1MnC/gUd1h1Icn0Gz44XVr2zicZsug+hvaWlvs7aF/X4TODTKe7Fezs2sw379
         CLiQ==
X-Gm-Message-State: AA6/9RndD38s94fl5Twm6fEAjlE3nPl/UehOSm8I4yAy3YH3Kv0Dr1MKGKEngIDeINnc+w==
X-Received: by 10.98.64.140 with SMTP id f12mr17076951pfd.45.1476440335380;
        Fri, 14 Oct 2016 03:18:55 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([103.14.62.75])
        by smtp.gmail.com with ESMTPSA id a4sm26287059pax.8.2016.10.14.03.18.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 14 Oct 2016 03:18:54 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] tools: iio: iio_generic_buffer: add -A to force-enable all channels
Date: Fri, 14 Oct 2016 18:18:39 +0800
Message-Id: <1476440319-11124-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

If attribute/s is/are already enabled (by default or via scripts or
manual interaction), issuing -a will fail to enable the channels thereby
one has to manually disable the said attribute/s before proceeding with
auto-enabling.

Add a command-line option -A to force-activate all channels regardless
of their current state.

Suggested-by: Alison Schofield <amsfield22@gmail.com>
Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 tools/iio/iio_generic_buffer.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/tools/iio/iio_generic_buffer.c b/tools/iio/iio_generic_buffer.c
index f39c0e9..84c9888 100644
--- a/tools/iio/iio_generic_buffer.c
+++ b/tools/iio/iio_generic_buffer.c
@@ -247,6 +247,7 @@ void print_usage(void)
 	fprintf(stderr, "Usage: generic_buffer [options]...\n"
 		"Capture, convert and output data from IIO device buffer\n"
 		"  -a         Auto-activate all available channels\n"
+		"  -A         Force-activate ALL channels\n"
 		"  -c <n>     Do n conversions\n"
 		"  -e         Disable wait for event (new data)\n"
 		"  -g         Use trigger-less mode\n"
@@ -347,16 +348,22 @@ int main(int argc, char **argv)
 	int noevents = 0;
 	int notrigger = 0;
 	char *dummy;
+	int force = 0;
 
 	struct iio_channel_info *channels = NULL;
 
 	register_cleanup();
 
-	while ((c = getopt_long(argc, argv, "ac:egl:n:N:t:T:w:", longopts, NULL)) != -1) {
+	while ((c = getopt_long(argc, argv, "aAc:egl:n:N:t:T:w:", longopts,
+		NULL)) != -1) {
 		switch (c) {
 		case 'a':
 			autochannels = AUTOCHANNELS_ENABLED;
 			break;
+		case 'A':
+			autochannels = AUTOCHANNELS_ENABLED;
+			force = 1;
+			break;
 		case 'c':
 			errno = 0;
 			num_loops = strtoul(optarg, &dummy, 10);
@@ -519,15 +526,15 @@ int main(int argc, char **argv)
 			"diag %s\n", dev_dir_name);
 		goto error;
 	}
-	if (num_channels && autochannels == AUTOCHANNELS_ENABLED) {
+	if ((num_channels && autochannels == AUTOCHANNELS_ENABLED) && !force) {
 		fprintf(stderr, "Auto-channels selected but some channels "
 			"are already activated in sysfs\n");
 		fprintf(stderr, "Proceeding without activating any channels\n");
 	}
 
-	if (!num_channels && autochannels == AUTOCHANNELS_ENABLED) {
-		fprintf(stderr,
-			"No channels are enabled, enabling all channels\n");
+	if ((!num_channels && autochannels == AUTOCHANNELS_ENABLED) ||
+	    ((autochannels == AUTOCHANNELS_ENABLED) && force)) {
+		fprintf(stderr, "Enabling all channels\n");
 
 		ret = enable_disable_all_channels(dev_dir_name, 1);
 		if (ret) {
-- 
2.7.4


