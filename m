X-GM-THRID: 6332146358423650304
X-Received: by 10.129.119.70 with SMTP id s67mr4719448ywc.102.1474317712234;
        Mon, 19 Sep 2016 13:41:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.26.6 with SMTP id a6ls495676ote.22.gmail; Mon, 19 Sep 2016
 13:41:51 -0700 (PDT)
X-Received: by 10.31.141.213 with SMTP id p204mr288268vkd.18.1474317711802;
        Mon, 19 Sep 2016 13:41:51 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z4si5279116pam.0.2016.09.19.13.41.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 13:41:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 21so6283240pfy.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 13:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FKMmbrCnQ6pWjzbzk7YrnfTd3Q3QV9xLI39XkgBwDys=;
        b=RJUFpJDFEPMXwgR78CqnIq/edcO4FMpi1/JuX6R7yPofl8pb1fmSU/wT+INnktTnpZ
         Og9A2UAw0xe7+IVwElTsyfIlZfG7r9jp0AIOy5P10c0NQAk6TwY2vlzoYaLL1OydajOj
         HBivh/JxphCg30b49D0DjkNGVMeqEfjY74foCKqRzkY3xcGwz71Q+4MvkWqwsvi4dgdq
         XZE9iRqcjl6+yOWwhfRNM67vmwkDbI02HYZ5TYVcZEUIVyvcQlNLcwfG4FYEQoybgp6X
         AGXbkC9kTTonsu2lYBcYA6je6aDcQ4+Nu5EXrjegD5qVbNoHFa9a2SUrcQ95UN6fO16q
         opQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FKMmbrCnQ6pWjzbzk7YrnfTd3Q3QV9xLI39XkgBwDys=;
        b=b3QIDNKScSyI4BdJiN+VPn6PjOyXxMQr017MdjFz2KD305yd3za3EhRar4HGryzYkf
         UIpAEDTSK43JRGLv+4KByqhkx/KDxfn0Tph7zqFxmYC2smysQr3Tcpp5kKni90OcK+LV
         Dcz5Jfzxa83vTrJLOvDdFnI6Uk2XrgtLRbyjKpKhbtRPx5aJopz6xT6f/3xqWBGDlGY0
         Jlx4BYdQsslvDCG0S9Cz0pwJuiY/JMLPpfGaW1f+R4GK522oqT48hwfiiDT1LMHE+pEQ
         R9oGwIeLD4YkGmaUukjrLpQIH42IT9grcIb+a+seoxFDWjf3D/wXt8AX4bcSuWkI4lik
         MqXg==
X-Gm-Message-State: AE9vXwOqS5ty4FO/a79LzWF+esVOh+mUkhYvw12LtF1ZIkOKwVNp/QhCxLUuGsSHbVWhYw==
X-Received: by 10.98.33.146 with SMTP id o18mr36468214pfj.177.1474317711423;
        Mon, 19 Sep 2016 13:41:51 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ya6sm33616216pab.14.2016.09.19.13.41.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 13:41:50 -0700 (PDT)
Date: Tue, 20 Sep 2016 02:11:41 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: wilc1000: Remove unnecessary return capture
Message-ID: <20160919204141.GA28309@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Instead of storing the return value into a variable and then returning it, we
can club the two into a single return statement. This change was made using
the following semantic patch by Coccinelle:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 5 +----
 drivers/staging/wilc1000/wilc_spi.c       | 3 +--
 drivers/staging/wilc1000/wilc_wlan.c      | 3 +--
 3 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index d0cb568..78f5613 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3279,7 +3279,6 @@ int wilc_scan(struct wilc_vif *vif, u8 scan_source, u8 scan_type,
 int wilc_hif_set_cfg(struct wilc_vif *vif,
 		     struct cfg_param_attr *cfg_param)
 {
-	int result = 0;
 	struct host_if_msg msg;
 	struct host_if_drv *hif_drv = vif->hif_drv;
 
@@ -3293,9 +3292,7 @@ int wilc_hif_set_cfg(struct wilc_vif *vif,
 	msg.body.cfg_info = *cfg_param;
 	msg.vif = vif;
 
-	result = wilc_enqueue_cmd(&msg);
-
-	return result;
+	return wilc_enqueue_cmd(&msg);
 }
 
 static void GetPeriodicRSSI(unsigned long arg)
diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 0f8d625..f6c47ca 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -410,8 +410,7 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 	if (len2 > ARRAY_SIZE(wb)) {
 		dev_err(&spi->dev, "spi buffer size too small (%d) (%zu)\n",
 			 len2, ARRAY_SIZE(wb));
-		result = N_FAIL;
-		return result;
+		return N_FAIL;
 	}
 	/* zero spi write buffers. */
 	for (wix = len; wix < len2; wix++)
diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 19a5809..2b307ce 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -1001,8 +1001,7 @@ int wilc_wlan_start(struct wilc *wilc)
 	ret = wilc->hif_func->hif_write_reg(wilc, WILC_VMM_CORE_CFG, reg);
 	if (!ret) {
 		release_bus(wilc, RELEASE_ONLY);
-		ret = -EIO;
-		return ret;
+		return -EIO;
 	}
 	reg = 0;
 	if (wilc->io_type == HIF_SDIO && wilc->dev_irq_num)
-- 
2.7.4


