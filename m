X-GM-THRID: 6340039489286569984
X-Received: by 10.129.132.131 with SMTP id u125mr440938ywf.71.1476155475789;
        Mon, 10 Oct 2016 20:11:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.134 with SMTP id h6ls263212ioi.9.gmail; Mon, 10 Oct 2016
 20:11:12 -0700 (PDT)
X-Received: by 10.107.138.138 with SMTP id c10mr570772ioj.19.1476155472389;
        Mon, 10 Oct 2016 20:11:12 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id t8si167626vkb.2.2016.10.10.20.11.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:11:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id b186so374242vkb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 20:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=52YZiOPUoY7lmBAo7x0SbQI4W3PEtrfXNIlNeQEj7jc=;
        b=e5gfEF7sPH5+QkT3kQj5cgNuxJzFFvQgGl3dq+Fhov2+3blceCLmp0U8EDCxUlensc
         nMYdneROUD46+2yN8L0G52ebIKwRywVZsupWkGlyAa3HOPC37GmHiXRdVZbhe9QlTHeY
         9TNig+b2pq9RTvOZAoPEWtdTG/nyLnqxHgfeRUs78n2Kdel6FHuv0oZpAnc/JKiSKDMe
         P0Tbr+gCpo7DTcmKWkY3ZXElIHM0Mji6Njf0E7GydJy42OOAMAPpIEcjSiZLIFI/0RsK
         V7Ddgc4Oebgg/OgxrqiL8cv9bosRwoy+f2VLBwbjGE+fKjQaDVj7pYiJom59no2oYbBQ
         ZKqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=52YZiOPUoY7lmBAo7x0SbQI4W3PEtrfXNIlNeQEj7jc=;
        b=RoYtw3TbStY0QqBQmYrGVtdk19nteoA0gE3wVErW3r1pRIV9JARO5rPIDIoI5FzrgT
         F4VGWbkNKxoij2SKRU3sth8JT6q7NErFycqK9crfBo7UavTKZyoLtYxQzxnaQ8TcQWOI
         NvIlOKTaNDzngxu2fFtK3lS9ldrohcYvguWwRY22Ncag4I+eMsvbIKWIiXo7R1i+ta+E
         kXL0s24quJw9/IlXIeAG7OVN9i/3sF7gYnUW922RfBXepJdsL0IA8GmksOWqSp6pYQ14
         D6aGrupE4VX2yoHCee2SYo6C/xdWGq1vmmKphUn1fYoy+uen+n7ioLX4pWTIotOv+g10
         oZ3g==
X-Gm-Message-State: AA6/9Rlim2puz3psHzrV9zMqSyWUu0V88JsU6x90lSl3qO0kUutAexRGJ9YA8Tde2pt9PQ==
X-Received: by 10.31.157.201 with SMTP id g192mr1340392vke.85.1476155472178;
        Mon, 10 Oct 2016 20:11:12 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id i188sm561801vki.28.2016.10.10.20.11.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:11:11 -0700 (PDT)
Date: Tue, 11 Oct 2016 00:11:05 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: hvaibhav.linux@gmail.com, johan@kernel.org, elder@kernel.org,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/7] staging: greybus: Format block comments.
Message-ID: <20161011031105.GA21887@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
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
2.7.4


