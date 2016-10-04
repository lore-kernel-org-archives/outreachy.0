X-GM-THRID: 6337702830836547584
X-Received: by 10.107.6.79 with SMTP id 76mr1504286iog.6.1475611429156;
        Tue, 04 Oct 2016 13:03:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.43 with SMTP id 40ls8843187otc.42.gmail; Tue, 04 Oct
 2016 13:03:48 -0700 (PDT)
X-Received: by 10.129.106.213 with SMTP id f204mr1281637ywc.56.1475611428671;
        Tue, 04 Oct 2016 13:03:48 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id d11si2993184pfl.2.2016.10.04.13.03.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 13:03:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n24so10687487pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 13:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=X5SqOWUGxHaB/O33bNTgkWxHBeljSmIXYJh6cXHkCxg=;
        b=nfExXL2FwaRZz6srvJ0RlliHRkhTT7mEgdivS9tr/N7Sg2qdC/BShVJoAzFbX8siZX
         i/HBXU48h1N7xSDfeI2piTO9kidNtNCqBw9OuZS91tpbdlBLVachcHor1279bsvIKS8Q
         f4w3PBsqSmm3cRd7Re1pcuTC/2OfnLcWn+TNRkPmHdB+WpBmP1QIn3XzXkyH3zaWu3uT
         /J2vnRfg4nNSUr5KIx+i82S7k/LIhANgejBOlfQoA/cuZwnq0IwbPSiJk206jRX+zmbC
         Koj3DRvLuTW2eMhzzICH3629QabfBGaeDKxDRvt+DyEXnozkcJgrYMbnOlqAhfB1NHYA
         HTJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=X5SqOWUGxHaB/O33bNTgkWxHBeljSmIXYJh6cXHkCxg=;
        b=KuT9aQ7dO9Wpim7N0awRNF3lYGsT1++EfmpyHDE+IQM18pKSkNAiHpje40UnrCtGB6
         Tqn57zK2lCWD7sZUO7rws1tH/rB7jziQsg/iPiyMR72Z3iqp3ta0J8wmf6iranyMR9oo
         U7oejp2A+8xB2EtS6Ua6QgGalPkFYTCbt/+Pl0+D8nj7hlab7NoI2JlvpqebvLmBZbr1
         4ypunxrblcn4OiPGwyxfpEySNOsuZLrj/j51WKK/xHEqjYxZ9PWYaL7/imA/R2uUXtww
         fziYiLCvycPtZpoFqgFEVxrR6NRbS6yc5obA0pa9f9Agnhniu81+xvk5BBtPcvbhHiw4
         ceRQ==
X-Gm-Message-State: AA6/9Rm2AdPQXovsQ3eZR7rVZQm80EBcop22NpHM6xIZgpVhalCfwnJTVcHQgr+sdKfe3A==
X-Received: by 10.98.100.2 with SMTP id y2mr295554pfb.169.1475611428243;
        Tue, 04 Oct 2016 13:03:48 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id z66sm49339002pfd.11.2016.10.04.13.03.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 13:03:48 -0700 (PDT)
Date: Tue, 4 Oct 2016 13:03:45 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, daniel.baluta@intel.com, vaibhav.sr@gmail.com,
	mgreer@animalcreek.com, johan@kernel.org, elder@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus: fix block comments use trailing */
Message-ID: <20161004200343.GA29262@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fix checkpatch error "Block comments use a trailing */ on a separate
line" to conform to kernel coding style.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/greybus/arche-apb-ctrl.c | 5 +++--
 drivers/staging/greybus/arche-platform.c | 3 ++-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/arche-apb-ctrl.c b/drivers/staging/greybus/arche-apb-ctrl.c
index 70323aa..89932ab 100644
--- a/drivers/staging/greybus/arche-apb-ctrl.c
+++ b/drivers/staging/greybus/arche-apb-ctrl.c
@@ -183,7 +183,7 @@ static int standby_boot_seq(struct platform_device *pdev)
 	 * Pasted from WDM spec,
 	 *  - A falling edge on POWEROFF_L is detected (a)
 	 *  - WDM enters standby mode, but no output signals are changed
-	 * */
+	 */
 
 	/* TODO: POWEROFF_L is input to WDM module  */
 	apb->state = ARCHE_PLATFORM_STATE_STANDBY;
@@ -286,7 +286,8 @@ static ssize_t state_store(struct device *dev,
 			return count;
 
 		/* First we want to make sure we power off everything
-		 * and then enter FW flashing state */
+		 * and then enter FW flashing state
+		 */
 		poweroff_seq(pdev);
 		ret = fw_flashing_seq(pdev);
 	} else {
diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index e36ee98..a850f6b 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -455,7 +455,8 @@ retry:
 			goto exit;
 
 		/* First we want to make sure we power off everything
-		 * and then activate back again */
+		 * and then activate back again
+		 */
 		device_for_each_child(arche_pdata->dev, NULL, apb_poweroff);
 		arche_platform_poweroff_seq(arche_pdata);
 
-- 
2.1.4


