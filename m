X-GM-THRID: 6332712433108385792
X-Received: by 10.157.27.240 with SMTP id v45mr383939otv.106.1474558456990;
        Thu, 22 Sep 2016 08:34:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.196 with SMTP id u62ls6730013ota.15.gmail; Thu, 22 Sep
 2016 08:34:16 -0700 (PDT)
X-Received: by 10.176.83.208 with SMTP id l16mr139049uaa.38.1474558456600;
        Thu, 22 Sep 2016 08:34:16 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id si10si846495pab.1.2016.09.22.08.34.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 08:34:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id hi10so3802742pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 08:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=jduOYINsguR+SavUbv7n1vp2rkyJj1Tc9yo8DDR8I3g=;
        b=xyaJ7ogV4wN1xG5507Af6Jg+0ylrxJnGIbDEefYgN/AWrG2EPgCnqfhWtyavh7NUh1
         WATLk3Huj5YwtTvMumWYH3fYlcC9zJ4sJupiTzdsTtXGEJEfudufMXyv9JEay5UuyhU/
         4Tb/wShbIrbIOyFFQswW3KDoA0XQvDxrkm3xhLic1FvDJf7xIOl+IDIduo1N9Xe+Y98k
         9hgFti31856bRkqCpN4oymMu80X1vfwM6ry4v7aqYKpY/AUyVMOm95O/1vn3PHMh5xWV
         EiK+Uv98lPTZd8BFZLJkU8yJk8MoEje7rliBj9h2w3GQTygse4WMu7StaIrLFWxnNBQP
         y1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=jduOYINsguR+SavUbv7n1vp2rkyJj1Tc9yo8DDR8I3g=;
        b=W5XHduvVRP5/XpQHyiFTQCGMpOiHxxh+qBFk1goXdWaQukDaJmBdXGuA6z9s9rdwA/
         gmZnGZyVuZAllSOazu198Sx3+vPgG0u/OXmxwwxIScG5Pmj1yLfsAkyLIjB/EphNGb6Y
         VZ/LGGwJlr64eiXizCFnKYQbLItg5DdpCxmd42J+pQ9REXF8M+13kvxOMS3WweUnF+Yd
         yBr31XL7+eIFMvuJQ13xGEXIWZF58Jg43VAFWYagLGSz+jwZ1/4MZnyQmGqfWj+BJXa9
         o9Xu0vuitr2aAUSdW6nxe3CcNAt+CQHbs4nEk56DML7wfsdNBzRWB3DxsIFX+JiZiZo3
         HhUA==
X-Gm-Message-State: AE9vXwPAllp8p0o5yW49sNfsmveGWjEVNPixWPydYLUaK+xdieBfBSyyQMq568EPbmGtYQ==
X-Received: by 10.66.138.74 with SMTP id qo10mr4277899pab.135.1474558456401;
        Thu, 22 Sep 2016 08:34:16 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.59])
        by smtp.gmail.com with ESMTPSA id tn5sm5098951pac.6.2016.09.22.08.34.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Sep 2016 08:34:16 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 2/2] staging: greybus: arche-platform: declare struct of_device_id as const
Date: Thu, 22 Sep 2016 23:33:34 +0800
Message-Id: <13e99958f00e56f4af6d8a4200c6fdc5d7019067.1474557838.git.eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1474557838.git.eraretuya@gmail.com>
References: <cover.1474557838.git.eraretuya@gmail.com>
In-Reply-To: <cover.1474557838.git.eraretuya@gmail.com>
References: <cover.1474557838.git.eraretuya@gmail.com>

Declare the arrays 'arche_platform_of_match' and 'arche_combined_id' as const.

'arche_platform_of_match' is only stored in the .of_match_table field of a
device_driver structure, which is declared as const.

'arche_combined_id' is passed to MODULE_DEVICE_TABLE. This macro does not
modify the array and therefore the array can be declared as const. Checkpatch
pointed out both issues.

WARNING: struct of_device_id should be normally const

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
This is not compile-tested. The header file 'linux/usb/usb3613.h' is required,
which is not present in the kernel.

 drivers/staging/greybus/arche-platform.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index d6b3609..e36ee98 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -776,12 +776,12 @@ static SIMPLE_DEV_PM_OPS(arche_platform_pm_ops,
 			arche_platform_suspend,
 			arche_platform_resume);
 
-static struct of_device_id arche_platform_of_match[] = {
+static const struct of_device_id arche_platform_of_match[] = {
 	{ .compatible = "google,arche-platform", }, /* Use PID/VID of SVC device */
 	{ },
 };
 
-static struct of_device_id arche_combined_id[] = {
+static const struct of_device_id arche_combined_id[] = {
 	{ .compatible = "google,arche-platform", }, /* Use PID/VID of SVC device */
 	{ .compatible = "usbffff,2", },
 	{ },
-- 
2.7.4


