X-GM-THRID: 6752367287959814144
X-Received: by 2002:a0c:c982:: with SMTP id b2mr11400018qvk.41.1572158021777;
        Sat, 26 Oct 2019 23:33:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4347:: with SMTP id a7ls215556qtn.11.gmail; Sat, 26 Oct
 2019 23:33:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzaIXhabX4Ell1cGvOy85hYds9imiuJcMxLzHdEeaO2nc4H/wZWGb7/zTTpVScdAxwf3J/q
X-Received: by 2002:ac8:1194:: with SMTP id d20mr11937442qtj.275.1572158020616;
        Sat, 26 Oct 2019 23:33:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572158020; cv=none;
        d=google.com; s=arc-20160816;
        b=B7m+FOslk+8jJM7QIQw66iJOO1aoJLiVQImoKXFZNzD1+j47aB0bxNDIyjEX/cWh8h
         2tMhrNHuuqMq3b4UR9KbqvkzHuHCqYNR8iHlR41oQpLsfBpiin5S8ule7oljQ87nSneu
         1DGe8jT7/W638JsxoUw+qi7YcQbcg1j45Ab68tWax+0Bcg3DN/cfhNO61KY9WVRlDtKF
         J/7yuzN7Ea2fWydQDsEihWUlcg+vz7b9rxcUnBZmQ1Ma3VJkRCfDKI4w+CMdsBTrQRbi
         Im6cdbYzEiKXnHkhvfRSOTsWqevGKF+6eblBjZqVJub+kUOS0DiMvhYWchhzT2/cVMBQ
         BVQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=vQLtXXHedGNyqF3d0fSAtJ3BhweN5EdNDNwMMNIdZFc=;
        b=PqYcaUgczcJOV6xFiSqNnFwWwVoic+00c9ck/P/xQ4q8i14a2jpHFGGjts518dHr2H
         x0mSACVyfX5QqjecVjuV3L34sT0NOCIvy4PJzkjW91fTHhT6rv8IU1h2oVT/DW1Kz+ps
         nZ+k5BZh+i/oXpevm3S9iURgeLnzVYs8g5DGzHjIAsy3YNul1ZIQA22nMEV6qPIJALye
         N8l6DXYC0vBauxBnFOgDazTpxsjgUzr9uCo9B9Zkwl/sNn9nuwd+PotH3MnzdY1N3ePs
         WD8ah7MbSVMFdmhS3Iu2YKu71ziWbuuDIBx9p2BOx0BNA4MgFyszxe8OXJ1+E8XmmcXt
         s4rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b="aF/pmYnQ";
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com. [2607:f8b0:4864:20::a42])
        by gmr-mx.google.com with ESMTPS id t186si368024qkf.3.2019.10.26.23.33.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 23:33:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a42 as permitted sender) client-ip=2607:f8b0:4864:20::a42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b="aF/pmYnQ";
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk1-xa42.google.com with SMTP id t5so1363298vkm.7
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 23:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vQLtXXHedGNyqF3d0fSAtJ3BhweN5EdNDNwMMNIdZFc=;
        b=aF/pmYnQRT5zMDoVegsH8Ef0WaGDKcm8b7iCDSZp55l8tbLVRcqW2PXFPbvmjCyAC+
         0QbwCuHqnHDa5C3B8+qmb73hBbIY7PWLG5Z3kpq12kRkN4L9hhOIFZ9g0axYxYknkfGX
         7irf55Gc4gAK0mCQ3+34LK0dWf65YZGJ+Gg+MnNXyP8pWetvEOI/ra3NzfcPrhVEs6sI
         5+aztTni6rsnABBm/TiwGGPVH0gSW2NyveMDDVt4gHaxRR0sem3ya/ZxlcgCZ2UsRpzB
         lIXy65xrhknhW+wu3/vP2mcd+bqtaDmIkR17aa4NJ1+g2rPX/qfvWKuforWvg9/62R0q
         4n4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vQLtXXHedGNyqF3d0fSAtJ3BhweN5EdNDNwMMNIdZFc=;
        b=RGrhHTiVfDTzrpZ9S3yu8b23xM2B92Qae28sE6YopTt2ZbZsXbCLZc11KzAHdUJbST
         8nSLJP9OlZ9ZXS4YYGHgAqrFl5vDWe8lnOthQLTwhy8Z5yfBn/gtnzi17/fVHjcMl1gB
         GvYSBE6g81Kges0ZvQ2/3zGJ45iWYEipdpiIigUdPpVzR/7XyyR++h1hr9RAPIUOapV+
         IKZM3U0D7Zfixb4DJGtUWFSDjssUpV7BT+/vFQyouvy6vK200KlDHmNF6st67zaCY9m/
         Xqy7j3zjM8kt7G9fd6qOmBkTwb5LyL1H01E+tLcujrflDeIJbn58/NYi+wCGdLkhSfWi
         Nmkw==
X-Gm-Message-State: APjAAAU/w5hwnc3t9KfyCMB1RrgL68rnKmLgZngxPg950zCjUCRuGoOA
	/fz2wknACXj5en2+drinkcwXZoK/s3teTg==
X-Received: by 2002:a1f:22d5:: with SMTP id i204mr629567vki.0.1572158019984;
        Sat, 26 Oct 2019 23:33:39 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id w83sm3107395vkd.22.2019.10.26.23.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2019 23:33:39 -0700 (PDT)
Date: Sun, 27 Oct 2019 06:33:38 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>
Subject: [PATCH] staging: greybus: Fix line ending with a '('
Message-ID: <20191027063338.GA27717@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

checkpatch.pl message:
"CHECK:OPEN_ENDED_LINE: Lines should not end with a '('"

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 .../staging/greybus/audio_manager_module.c    | 32 ++++++++-----------
 .../staging/greybus/audio_manager_private.h   |  7 ++--
 2 files changed, 16 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
index 2bfd804183c4..1b52dd116e38 100644
--- a/drivers/staging/greybus/audio_manager_module.c
+++ b/drivers/staging/greybus/audio_manager_module.c
@@ -70,9 +70,8 @@ static void gb_audio_module_release(struct kobject *kobj)
 	kfree(module);
 }
 
-static ssize_t gb_audio_module_name_show(
-	struct gb_audio_manager_module *module,
-	struct gb_audio_manager_module_attribute *attr, char *buf)
+static ssize_t gb_audio_module_name_show(struct gb_audio_manager_module *module,
+		struct gb_audio_manager_module_attribute *attr, char *buf)
 {
 	return sprintf(buf, "%s", module->desc.name);
 }
@@ -80,9 +79,8 @@ static ssize_t gb_audio_module_name_show(
 static struct gb_audio_manager_module_attribute gb_audio_module_name_attribute =
 	__ATTR(name, 0664, gb_audio_module_name_show, NULL);
 
-static ssize_t gb_audio_module_vid_show(
-	struct gb_audio_manager_module *module,
-	struct gb_audio_manager_module_attribute *attr, char *buf)
+static ssize_t gb_audio_module_vid_show(struct gb_audio_manager_module *module,
+		struct gb_audio_manager_module_attribute *attr, char *buf)
 {
 	return sprintf(buf, "%d", module->desc.vid);
 }
@@ -90,9 +88,8 @@ static ssize_t gb_audio_module_vid_show(
 static struct gb_audio_manager_module_attribute gb_audio_module_vid_attribute =
 	__ATTR(vid, 0664, gb_audio_module_vid_show, NULL);
 
-static ssize_t gb_audio_module_pid_show(
-	struct gb_audio_manager_module *module,
-	struct gb_audio_manager_module_attribute *attr, char *buf)
+static ssize_t gb_audio_module_pid_show(struct gb_audio_manager_module *module,
+		struct gb_audio_manager_module_attribute *attr, char *buf)
 {
 	return sprintf(buf, "%d", module->desc.pid);
 }
@@ -111,9 +108,8 @@ static struct gb_audio_manager_module_attribute
 					gb_audio_module_intf_id_attribute =
 	__ATTR(intf_id, 0664, gb_audio_module_intf_id_show, NULL);
 
-static ssize_t gb_audio_module_ip_devices_show(
-	struct gb_audio_manager_module *module,
-	struct gb_audio_manager_module_attribute *attr, char *buf)
+static ssize_t gb_audio_module_ip_devices_show(struct gb_audio_manager_module *module,
+		struct gb_audio_manager_module_attribute *attr, char *buf)
 {
 	return sprintf(buf, "0x%X", module->desc.ip_devices);
 }
@@ -122,9 +118,8 @@ static struct gb_audio_manager_module_attribute
 					gb_audio_module_ip_devices_attribute =
 	__ATTR(ip_devices, 0664, gb_audio_module_ip_devices_show, NULL);
 
-static ssize_t gb_audio_module_op_devices_show(
-	struct gb_audio_manager_module *module,
-	struct gb_audio_manager_module_attribute *attr, char *buf)
+static ssize_t gb_audio_module_op_devices_show(struct gb_audio_manager_module *module,
+		struct gb_audio_manager_module_attribute *attr, char *buf)
 {
 	return sprintf(buf, "0x%X", module->desc.op_devices);
 }
@@ -180,10 +175,9 @@ static void send_add_uevent(struct gb_audio_manager_module *module)
 	kobject_uevent_env(&module->kobj, KOBJ_ADD, envp);
 }
 
-int gb_audio_manager_module_create(
-	struct gb_audio_manager_module **module,
-	struct kset *manager_kset,
-	int id, struct gb_audio_manager_module_descriptor *desc)
+int gb_audio_manager_module_create(struct gb_audio_manager_module **module,
+		struct kset *manager_kset,
+		int id, struct gb_audio_manager_module_descriptor *desc)
 {
 	int err;
 	struct gb_audio_manager_module *m;
diff --git a/drivers/staging/greybus/audio_manager_private.h b/drivers/staging/greybus/audio_manager_private.h
index 2b3a766c7de7..f42b42ecb264 100644
--- a/drivers/staging/greybus/audio_manager_private.h
+++ b/drivers/staging/greybus/audio_manager_private.h
@@ -12,10 +12,9 @@
 
 #include "audio_manager.h"
 
-int gb_audio_manager_module_create(
-	struct gb_audio_manager_module **module,
-	struct kset *manager_kset,
-	int id, struct gb_audio_manager_module_descriptor *desc);
+int gb_audio_manager_module_create(struct gb_audio_manager_module **module,
+		struct kset *manager_kset,
+		int id, struct gb_audio_manager_module_descriptor *desc);
 
 /* module destroyed via kobject_put */
 
-- 
2.17.1


