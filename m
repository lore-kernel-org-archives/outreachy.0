X-GM-THRID: 3599576858624
X-Received: by 10.152.88.40 with SMTP id bd8mr1068276lab.0.1424937172219;
        Wed, 25 Feb 2015 23:52:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.191.168 with SMTP id gz8ls2835lac.16.gmail; Wed, 25 Feb
 2015 23:52:51 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr1045230lbc.3.1424937171798;
        Wed, 25 Feb 2015 23:52:51 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id r6si65668wix.0.2015.02.25.23.52.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 23:52:51 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgha1 with SMTP id a1so8367007wgh.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 23:52:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=oj2WISj0nq7yBMo0CZ7SPqlw3MaIb5NMV9DtDN8RaQk=;
        b=cIwPiUtJ+ukgYY4YOgkTH5Z/iRKtW3cqtArvr0/zuV1Sjut+lXZWmigJBA9WlcVAK9
         /9uLZRyUyqOF1MiJa/SIpckDzuem9aD5itEifu+VuP+b+GvRQqOSE4ZCfUPjEHX3yDCj
         InPkZp8h+e7KznVTc4URu0SfM39xCP7dryKkPwsFs2fKQGzjpRcKbY2+Bjj2T8SFzGW1
         rUgQbQqP+HHThhnPuBWW0pOJvRyq5SG3FbOi2b8kFeE6N/OD+NOsfo2b401dMfgGO4BP
         eRI2TDCtcXKWke9G1x81ZoqEUGkkG2AoF/Q7nwwgGPyp7OhSZuTTlbZl1ya0azQEfCA6
         PM5w==
X-Received: by 10.194.60.104 with SMTP id g8mr13723455wjr.96.1424937171682;
        Wed, 25 Feb 2015 23:52:51 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id vq9sm156118wjc.6.2015.02.25.23.52.49
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 23:52:50 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 1/3] Staging: rtl8723au: Remove warning quoted string split across lines.
Date: Thu, 26 Feb 2015 09:52:06 +0200
Message-Id: <1424937128-16981-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: quoted string split across lines
That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/rtl8723au/os_dep/usb_intf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/os_dep/usb_intf.c b/drivers/staging/rtl8723au/os_dep/usb_intf.c
index 05755b8..e8158c2 100644
--- a/drivers/staging/rtl8723au/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8723au/os_dep/usb_intf.c
@@ -130,8 +130,8 @@ static struct dvobj_priv *usb_dvobj_init(struct usb_interface *usb_intf)
 				usb_endpoint_num(pendp_desc);
 			pdvobjpriv->RtNumInPipes++;
 		} else if (usb_endpoint_is_int_in(pendp_desc)) {
-			DBG_8723A("usb_endpoint_is_int_in = %x, Interval = "
-				  "%x\n", usb_endpoint_num(pendp_desc),
+			DBG_8723A("usb_endpoint_is_int_in = %x",
+				  "Interval =%x\n", usb_endpoint_num(pendp_desc),
 				  pendp_desc->bInterval);
 			pdvobjpriv->RtInPipe[pdvobjpriv->RtNumInPipes] =
 				usb_endpoint_num(pendp_desc);
-- 
1.8.3.2


