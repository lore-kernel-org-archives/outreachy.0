X-GM-THRID: 5902955446272
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7aedbb6ed23e215c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.36.132 with SMTP id q4mr3859548laj.6.1425308301492;
        Mon, 02 Mar 2015 06:58:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.132 with SMTP id ey4ls593886wid.48.gmail; Mon, 02 Mar
 2015 06:58:21 -0800 (PST)
X-Received: by 10.194.95.67 with SMTP id di3mr2388635wjb.0.1425308301026;
        Mon, 02 Mar 2015 06:58:21 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id v5si188345wif.3.2015.03.02.06.58.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 06:58:21 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x230.google.com with SMTP id l18so33914628wgh.7
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 06:58:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=C9/HOHLx4hmbI4I4tPMfRhUtHJ3JsaboG2rgCYiT2PI=;
        b=mYbkFe6q/SCy/QV31lB47iCbPSj61jiOybe2RG/Yn+7z7cXVj+nV4lCin1BSNFUWkc
         CVgPzKUy50fmvF7fcgvWSC9lcXIPN8rvtvyHymruYoZfND7NAbGB4lthVeYK37XeyJu7
         SMji6qX7zaAXKKosUCHNglUNyW1XIRszESzKm0lM5n0ZYF/DkpkXq+SFYdX5HmQMdKAD
         1QT5oPfyaLujJKqXORoFb37GBPQdAKpl/HPbZhgxJptglmjLu+coEZGrqHraipXy+uIY
         Th3wIiHCVtydVD510oj37cHb1kImaHLIZFRf4poaWrvu/0exNAXX3ZvpuOVr0YwvvI68
         NgWA==
X-Received: by 10.194.60.173 with SMTP id i13mr58628587wjr.124.1425308300952;
        Mon, 02 Mar 2015 06:58:20 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([85.107.58.91])
        by mx.google.com with ESMTPSA id ul1sm1260293wjc.0.2015.03.02.06.58.19
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 06:58:20 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: fbtft: remove unnecessary line continuations
Date: Mon,  2 Mar 2015 16:58:34 +0200
Message-Id: <1425308314-5753-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This fixes the checkpatch.pl warning:
WARNING: Avoid unnecessary line continuations

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/fbtft/fbtft_device.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft_device.c b/drivers/staging/fbtft/fbtft_device.c
index b9f4c30..a315038 100644
--- a/drivers/staging/fbtft/fbtft_device.c
+++ b/drivers/staging/fbtft/fbtft_device.c
@@ -206,7 +206,7 @@ static struct fbtft_device_display displays[] = {
 				.display = {
 					.buswidth = 8,
 					.backlight = 1,
-					.fbtftops.set_addr_win = \
+					.fbtftops.set_addr_win =
 					    adafruit18_green_tab_set_addr_win,
 				},
 				.bgr = true,
@@ -852,7 +852,7 @@ static struct fbtft_device_display displays[] = {
 					.buswidth = 16,
 					.txbuflen = -2, /* disable buffer */
 					.backlight = 1,
-					.fbtftops.write = \
+					.fbtftops.write =
 						fbtft_write_gpio16_wr_latched,
 				},
 				.bgr = true,
@@ -1247,7 +1247,7 @@ static int __init fbtft_device_init(void)
 	}
 
 	if (init_num > FBTFT_MAX_INIT_SEQUENCE) {
-		pr_err(DRVNAME \
+		pr_err(DRVNAME
 			":  init parameter: exceeded max array size: %d\n",
 			FBTFT_MAX_INIT_SEQUENCE);
 		return -EINVAL;
@@ -1256,7 +1256,7 @@ static int __init fbtft_device_init(void)
 	/* parse module parameter: gpios */
 	while ((p_gpio = strsep(&gpios, ","))) {
 		if (strchr(p_gpio, ':') == NULL) {
-			pr_err(DRVNAME \
+			pr_err(DRVNAME
 				":  error: missing ':' in gpios parameter: %s\n",
 				p_gpio);
 			return -EINVAL;
@@ -1264,14 +1264,14 @@ static int __init fbtft_device_init(void)
 		p_num = p_gpio;
 		p_name = strsep(&p_num, ":");
 		if (p_name == NULL || p_num == NULL) {
-			pr_err(DRVNAME \
+			pr_err(DRVNAME
 				":  something bad happened parsing gpios parameter: %s\n",
 				p_gpio);
 			return -EINVAL;
 		}
 		ret = kstrtol(p_num, 10, &val);
 		if (ret) {
-			pr_err(DRVNAME \
+			pr_err(DRVNAME
 				":  could not parse number in gpios parameter: %s:%s\n",
 				p_name, p_num);
 			return -EINVAL;
@@ -1279,7 +1279,7 @@ static int __init fbtft_device_init(void)
 		strcpy(fbtft_device_param_gpios[i].name, p_name);
 		fbtft_device_param_gpios[i++].gpio = (int) val;
 		if (i == MAX_GPIOS) {
-			pr_err(DRVNAME \
+			pr_err(DRVNAME
 				":  gpios parameter: exceeded max array size: %d\n",
 				MAX_GPIOS);
 			return -EINVAL;
@@ -1375,7 +1375,7 @@ static int __init fbtft_device_init(void)
 			if (displays[i].spi) {
 				ret = fbtft_device_spi_device_register(spi);
 				if (ret) {
-					pr_err(DRVNAME \
+					pr_err(DRVNAME
 						": failed to register SPI device\n");
 					return ret;
 				}
@@ -1384,7 +1384,7 @@ static int __init fbtft_device_init(void)
 			} else {
 				ret = platform_device_register(p_device);
 				if (ret < 0) {
-					pr_err(DRVNAME \
+					pr_err(DRVNAME
 						":    platform_device_register() returned %d\n",
 						ret);
 					return ret;
-- 
1.8.3.2


