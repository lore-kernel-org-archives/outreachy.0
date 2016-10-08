X-GM-THRID: 6339007711067242496
X-Received: by 10.129.162.205 with SMTP id z196mr1074334ywg.113.1475915245865;
        Sat, 08 Oct 2016 01:27:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.208 with SMTP id e16ls6699760otd.6.gmail; Sat, 08 Oct
 2016 01:27:25 -0700 (PDT)
X-Received: by 10.200.51.6 with SMTP id t6mr3559532qta.0.1475915245445;
        Sat, 08 Oct 2016 01:27:25 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 80si2823040pfw.0.2016.10.08.01.27.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:27:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id cd13so3858353pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 01:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ty/sst1yYfbkTf/UCKEBxKvKxTWLPt36Gtx11rBtQdo=;
        b=aNXg4wl3kuq7mZtxxub8FrEsSMpTjC6VL+ABANvdODpYh/JuyxG2FGkx79MTa4LmMx
         JZvp/zLCA5fBp2ZQrurwgcNGFxWTjEAeYyRQLk2P/miE6sEY3DzgzUrIZxHFvnlgHcBv
         vGYXM71Cug/hcCnmxm0E6OVAPJ6MwIiPL9jzhZxD1b/rOm8Juev697GZCqxAWAgLxiTb
         MVp/DIabncmWt0gM6hx6f6LmgpOsRu/ZMeZpy9BOjvNbjWoJS3KlI9IFPXFemqfZNCzN
         Ii5zoQzCS3za8DuyyGX/f0xI3Zx7ZyvC2wuc6Z08HApMPSIWYZ8r1jyHYop2orx5BRe/
         fuuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ty/sst1yYfbkTf/UCKEBxKvKxTWLPt36Gtx11rBtQdo=;
        b=VRN1jJj94SVlA6X6v9UxqrP33oxkh1Y3Q+Zvnu3F7AO2W2nFZcugDs/DGqsffnEXGw
         EaZu4F/fIha8wtHNsXwIh/N1WCOAQL1kgg8pa+87vpQY9zEHTHBRO9u7bxlFKvTf9bZj
         BYdPZDxYb3WyrCGTjCfud0pXb/uth/UL6TTibj2FJzZqtRR2oJAp51Iv2VD8gw+m3tSc
         xhFBNOzFco20zGFK2yng8U1Czs03DwM1pgrVODg2nglN3XvJ6u26SHBFeK4mkcdzU8z2
         k8W06skdplnrdKV4hWxtuJA13dlx6paB41KoA9CjQSJ6YuSJ3KeRHRqw818JUlKcbGzn
         rFsw==
X-Gm-Message-State: AA6/9Rk1MhL9bVUZOufQYUe5HsYQkP2X6t1BfkQRn7KAlXIfRqlX0TkCUAnWgOKwQakMRg==
X-Received: by 10.66.156.229 with SMTP id wh5mr6515067pab.137.1475915245245;
        Sat, 08 Oct 2016 01:27:25 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id q128sm19354732pfb.74.2016.10.08.01.27.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 01:27:24 -0700 (PDT)
Date: Sat, 8 Oct 2016 05:27:22 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 10/13] staging: wlan-ng: renames
 hfa384x_authenticateStation_data to avoid camelcase
Message-ID: <20161008082722.GA9332@spock>
References: <cover.1475912465.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475912465.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Renames the camelcased struct hfa384x_authenticateStation_data to
hfa384x_authenticate_station_data in order to fix a checkpatch warning.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h   | 2 +-
 drivers/staging/wlan-ng/prism2sta.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index adbac69b..19d1c06 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -421,7 +421,7 @@ struct hfa384x_join_request_data {
 } __packed;
 
 /*-- Configuration Record: authenticateStation (data portion only) --*/
-struct hfa384x_authenticateStation_data {
+struct hfa384x_authenticate_station_data {
 	u8 address[ETH_ALEN];
 	u16 status;
 	u16 algorithm;
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index b6aeb60..bb75a92 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1550,7 +1550,7 @@ static void prism2sta_inf_authreq_defer(struct wlandevice *wlandev,
 					struct hfa384x_inf_frame *inf)
 {
 	struct hfa384x *hw = wlandev->priv;
-	struct hfa384x_authenticateStation_data rec;
+	struct hfa384x_authenticate_station_data rec;
 
 	int i, added, result, cnt;
 	u8 *addr;
-- 
2.10.0


