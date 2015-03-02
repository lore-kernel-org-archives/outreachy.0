X-GM-THRID: 5879750459392
X-Received: by 10.236.17.168 with SMTP id j28mr26506984yhj.0.1425295166448;
        Mon, 02 Mar 2015 03:19:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.84 with SMTP id q78ls1578227qgq.46.gmail; Mon, 02 Mar
 2015 03:19:26 -0800 (PST)
X-Received: by 10.52.62.68 with SMTP id w4mr9420598vdr.1.1425295166272;
        Mon, 02 Mar 2015 03:19:26 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22d.google.com (mail-pd0-x22d.google.com. [2607:f8b0:400e:c02::22d])
        by gmr-mx.google.com with ESMTPS id pc4si1515747pac.0.2015.03.02.03.19.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 03:19:26 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) client-ip=2607:f8b0:400e:c02::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22d.google.com with SMTP id ft15so16574662pdb.11
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 03:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=g33hGFoXoAuGIr72iIK4u7IXhcxZd/l9hXSqNAjpWfQ=;
        b=XcF28s8vMD0krwSQlc4uFRZGToFsRJJWJDTS2wKCHVHDBX25d/DVxiejOGA8JhQ0xo
         uyEeaTb/3sXwgSlYGN7YAvAJfSd0OS3JyW02Gw3V1pnO2Gn3wUuNZwUY2pn+BhYAwC97
         0sZyPNt8UO29EmWJA2yVCClyavlDDI8Fekp+ppwpFd/4IwIbgKHZU4BwjqJANLqjVpxh
         nCTnoFHIWjLJLviYWxnAHOPKoI56w2TO6oQfTGuxfGFsBxsfApKd6H6XzEwnB0GQoH/+
         75WCelZIdGhl2kzsnG6bayBEyRTiv5xcMUmCOUSX3uaL5sJU0iI+6bKVc6djEnjGZA9z
         okog==
X-Received: by 10.66.129.169 with SMTP id nx9mr45341145pab.131.1425295166124;
        Mon, 02 Mar 2015 03:19:26 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id w8sm11659544pds.64.2015.03.02.03.19.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 03:19:24 -0800 (PST)
Date: Mon, 2 Mar 2015 16:47:56 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: comedi: Replace if-else with ternary operator
Message-ID: <20150302111756.GA17499@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses Coccinelle script to replace the if-else
block with ternary operator to make it more compact.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/comedi/drivers.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
index f32e714..8fda5f3 100644
--- a/drivers/staging/comedi/drivers.c
+++ b/drivers/staging/comedi/drivers.c
@@ -363,8 +363,7 @@ unsigned int comedi_nscans_left(struct comedi_subdevice *s,
 		if (async->scans_done < cmd->stop_arg)
 			scans_left = cmd->stop_arg - async->scans_done;
 
-		if (nscans > scans_left)
-			nscans = scans_left;
+		nscans = (nscans <= scans_left) ? nscans : scans_left;
 	}
 	return nscans;
 }
@@ -397,8 +396,7 @@ unsigned int comedi_nsamples_left(struct comedi_subdevice *s,
 					cmd->scan_end_arg) - scan_pos;
 		}
 
-		if (samples_left < nsamples)
-			nsamples = samples_left;
+		nsamples = (nsamples <= samples_left) ? nsamples : samples_left;
 	}
 	return nsamples;
 }
@@ -540,8 +538,7 @@ static int __comedi_device_postconfig_async(struct comedi_device *dev,
 
 	async->max_bufsize = comedi_default_buf_maxsize_kb * 1024;
 	buf_size = comedi_default_buf_size_kb * 1024;
-	if (buf_size > async->max_bufsize)
-		buf_size = async->max_bufsize;
+	buf_size = (buf_size <= async->max_bufsize) ? buf_size : async->max_bufsize;
 
 	if (comedi_buf_alloc(dev, s, buf_size) < 0) {
 		dev_warn(dev->class_dev, "Buffer allocation failed\n");
-- 
1.9.1


