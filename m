X-GM-THRID: 6251883453427482624
X-Received: by 10.107.136.23 with SMTP id k23mr22567784iod.23.1455630109166;
        Tue, 16 Feb 2016 05:41:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.49.166 with SMTP id v6ls1683495obn.72.gmail; Tue, 16 Feb
 2016 05:41:47 -0800 (PST)
X-Received: by 10.182.65.106 with SMTP id w10mr21054849obs.6.1455630107881;
        Tue, 16 Feb 2016 05:41:47 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id yd9si692006pab.1.2016.02.16.05.41.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:41:47 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id c10so107703013pfc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:41:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=DZuIMQZcUWckEZdfmQtG9Au8olvBICfz1ZO+g9IO9ys=;
        b=L2zpHvtDijT9kkMk6NHGePpGS/GtAzUn36DzDLtQEtOSzeO1b1lf+T1yiiHZEiLYfu
         0+qsK4E3tB13xSxpzN5IRjfY+xg7IPxHBTerxB9dvg5P9/HLFALhabhqhZgdDdy25nMH
         LIwcb0omQ8PUwEWhE+xQfVwxDTbDJ01tjYN0Jhpc0X9cZNK/kegEnN7HT+/JbCXwBb0S
         ekKozTpVWNmMiN3xlh4M3G49ZQDB3D+XLnuaXQYX3jgm7LlBXke4QafCBm6iTkH3L1Qp
         /2f4jszgj95j38Dbd6UrYuvF8xW9qsHfxXUITxV82r4uqba0sFBnxv9Y4TfhUr4kbuwv
         RPGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=DZuIMQZcUWckEZdfmQtG9Au8olvBICfz1ZO+g9IO9ys=;
        b=EdwRHM69n87XYPKzGcForjlmt17F4NHA57ldAYCo1S/cKf7DZkT3SfNNAp9WX+nxb9
         RA6HuriSAPBcSlp4iFjMQ2siseFKU9VR9DqTAZ/J8DAUeaj0Iyr7CvU93wBhYnLewy3h
         hxwCsdr9PaDc//+fXOywDZOaVJb/7aR1YRGa4rh22dNO2T3PUCJvynWkflzV2DSI/tbj
         ByS3J3jxqdD1LkgKrzz0B/NBwZInQX9uCLhTerjqsXjJZ1axd/bQZpME5OtRApPdJl7E
         D0tb8gbcBrulxTS/G2DhrKjGnGxSOi9awUdW8qJpgTroCiUHyNV6nxXyHOWvAmmiA1Cm
         VfMw==
X-Gm-Message-State: AG10YOTcrWncXRkxn9azo58lzzdLRIpnJ4Bhpwgp+uoYV/afNl3UPfs6bWq1F1LLzWG6Lg==
X-Received: by 10.98.8.200 with SMTP id 69mr31835591pfi.39.1455630107749;
        Tue, 16 Feb 2016 05:41:47 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.154.9])
        by smtp.gmail.com with ESMTPSA id i23sm46038117pfj.68.2016.02.16.05.41.44
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 05:41:47 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 16 Feb 2016 19:11:38 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 3/4] Staging: wlan-ng: Remove function hfa384x_drvr_getconfig_async
Date: Tue, 16 Feb 2016 19:10:34 +0530
Message-Id: <a0b8f47e21463de39350f83363a19f0a5e596479.1455629651.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455629651.git.bhumirks@gmail.com>
References: <cover.1455629651.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455629651.git.bhumirks@gmail.com>
References: <cover.1455629651.git.bhumirks@gmail.com>

The function hfa384x_drvr_getconfig_async is defined but not used
anywhere in the kernel so remove it.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 35 -----------------------------------
 1 file changed, 35 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 7eda536..ee63c64 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -2091,41 +2091,6 @@ int hfa384x_drvr_getconfig(hfa384x_t *hw, u16 rid, void *buf, u16 len)
 }
 
 /*----------------------------------------------------------------
- * hfa384x_drvr_getconfig_async
- *
- * Performs the sequence necessary to perform an async read of
- * of a config/info item.
- *
- * Arguments:
- *       hw              device structure
- *       rid             config/info record id (host order)
- *       buf             host side record buffer.  Upon return it will
- *                       contain the body portion of the record (minus the
- *                       RID and len).
- *       len             buffer length (in bytes, should match record length)
- *       cbfn            caller supplied callback, called when the command
- *                       is done (successful or not).
- *       cbfndata        pointer to some caller supplied data that will be
- *                       passed in as an argument to the cbfn.
- *
- * Returns:
- *       nothing         the cbfn gets a status argument identifying if
- *                       any errors occur.
- * Side effects:
- *       Queues an hfa384x_usbcmd_t for subsequent execution.
- *
- * Call context:
- *       Any
- ----------------------------------------------------------------*/
-int
-hfa384x_drvr_getconfig_async(hfa384x_t *hw,
-			     u16 rid, ctlx_usercb_t usercb, void *usercb_data)
-{
-	return hfa384x_dorrid_async(hw, rid, NULL, 0,
-				    hfa384x_cb_rrid, usercb, usercb_data);
-}
-
-/*----------------------------------------------------------------
  * hfa384x_drvr_setconfig_async
  *
  * Performs the sequence necessary to write a config/info item.
-- 
1.9.1


