X-GM-THRID: 6332318227576651776
X-Received: by 10.200.54.118 with SMTP id n51mr15644292qtb.29.1474357728346;
        Tue, 20 Sep 2016 00:48:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.202 with SMTP id e68ls1442147ote.47.gmail; Tue, 20 Sep
 2016 00:48:48 -0700 (PDT)
X-Received: by 10.200.52.79 with SMTP id v15mr5536434qtb.25.1474357728029;
        Tue, 20 Sep 2016 00:48:48 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id si10si6496979pab.1.2016.09.20.00.48.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:48:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id hi10so551373pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 00:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=N5bm1k94iNgp3r+WSPYp145T7kYDWIGk3Ko/B3Uuock=;
        b=rfGFy+n2yQpeH0Fuu+I/tPMiDfiAjUCYHm9l2rvewZVkUmhC2vmGxWkxi9nwXM+h3A
         CiU/dUK1mp+19uDtgEkwXmiWh2nJV4nP9CFTPfYoVUZZ5WphOImntiAxivSs6s7El+Cd
         ea7F+LSut/p+SceBpw4kSFnDQ5OV9jb6FhLlqaLUJc8Re1LQzHkYoojd9BcO1GvyP2nX
         ijFLbrsL6omEMMX7IXD5Pz1yxo1R0QppXCnS3WRXjcAJjLYR35XlD7IJx0MmnTDnikV4
         mfNDM6shJ4YlOuC5GWhdRo9a8d5qbpIeKGJ4AC5guvapuFvbn5ntqz0o1QkYrubzu7Vp
         3qcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=N5bm1k94iNgp3r+WSPYp145T7kYDWIGk3Ko/B3Uuock=;
        b=RBwKTFFGQvlrFVFhXSsTlt5CNLw1ubqYYeKTB8yoroqv5fwXsJwE8TkH8IrO790E34
         WsSCq82Av5nCTif2Fx4+50woAxTu8Qbog773GKxrpHASbGhH/bQ41mwzFfNFwMkY2fbN
         1V3NIAWeIjYz86Gc/ZC9MYswtQ+BtBpB2xBJMpkm08jaTCk0gMKXCPtJ2EpEgxtHeY7b
         jOnD+Na/BDBEnbnL9mMfcNmRACAECiqXY/cGWZjy3SBfrWkSca7W4+hNG+24R3ScrdgA
         v4gjCHGq/Fqrd0LU5G4b4jcqzy52KGNzzs/NlPjaqjP1gCc0+KA/+7WsJnQQvVYQUlST
         8BZg==
X-Gm-Message-State: AE9vXwM0DVhZ53hICd0ytfO5gdWe+etkKTnekZnlRcVeOq4/5fiAJPAXvYibNccc21E82A==
X-Received: by 10.66.16.38 with SMTP id c6mr52757226pad.64.1474357727752;
        Tue, 20 Sep 2016 00:48:47 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y201sm47589281pfb.13.2016.09.20.00.48.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:48:47 -0700 (PDT)
Date: Tue, 20 Sep 2016 13:18:40 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: wilc1000: Merge assignment with return
Message-ID: <20160920074840.GA9804@toblerone>
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
Change in v2:
Make the commit message clearer.

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


