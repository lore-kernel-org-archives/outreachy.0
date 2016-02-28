X-GM-THRID: 6256330436125917184
X-Received: by 10.31.11.75 with SMTP id 72mr8932941vkl.2.1456665442602;
        Sun, 28 Feb 2016 05:17:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.14.15 with SMTP id 15ls1125244ioo.92.gmail; Sun, 28 Feb
 2016 05:17:22 -0800 (PST)
X-Received: by 10.66.222.138 with SMTP id qm10mr8660801pac.41.1456665442184;
        Sun, 28 Feb 2016 05:17:22 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id yd9si3019361pab.1.2016.02.28.05.17.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:17:22 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fy10so76463268pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=oVV1fdcMh1l4xG2+hhLZiKvyCopN0nAQs1jd/u9dKOQ=;
        b=N3xW8mecmiWqbOsS7XRah2PLt7R46QUGioWTyJ7Ymw51/mjRRtn6KCj5tfTZ94Jio6
         oBrohS3PZADI2IaqxBU6UWXdkhn/lSdBYC28J5h80ZyxRgf9RyGLodj7Kd2AF4k/dxxN
         SVCJPDMFwwKYXPZDi7NNwcWHwlRN2rzBdR/7S661JE7TaZmVW/roL4iAO1+tK5M33bfX
         YGEZQc+97UYT4eWJ0nLIglz9IZYB13ONyw6z/3jtMzywNWWj4h9Ygb3QWr/qPE3V9XHf
         AzT+Rvko1LfbEEuCLs2bc7rQG31V8W6OFeFYoh+eHH6xqK2SxXe5Gefr1UquUdQ2/g6N
         80eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=oVV1fdcMh1l4xG2+hhLZiKvyCopN0nAQs1jd/u9dKOQ=;
        b=MMZyW3dvcVPJYRG2bjRwN3ENvpzzspDJ6U41uZOIlux36mtO3wgUtXQ4UCytOlU9wq
         Ps93bt8gRuBmVQ3573KbNorMwCmGydx0CbqQAri6WR5v6VdVWZUfbezFbcdutOWR40Sl
         DbKgM6Dev5Jn+m7EH95odcSBG2iI/7JRsiuRY0F+6p9xpW9R41gY5mMq7qBL1XxYz9ER
         cU6k4VyiIWIGrCoJnqP8EY+CaY56VvEkBca3XpmF3605omaCGmCReoWTyK0Tkd1lLG5V
         9NMvxPVcP5EjOQdHaCIe9SMXF65+5jSo5i+mWz+wOM5AQaPJGDgvlMIi6yx5ZPw9h0zN
         4CTQ==
X-Gm-Message-State: AD7BkJLpfRTv0XbgNajt975tGmc8o6KZ9yxhHbPvPLVXIY/gGGwzvUNa+p4aA36GMWRZ+A==
X-Received: by 10.66.63.104 with SMTP id f8mr15440337pas.109.1456665442028;
        Sun, 28 Feb 2016 05:17:22 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.151.240])
        by smtp.gmail.com with ESMTPSA id r87sm31396456pfa.61.2016.02.28.05.17.18
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 05:17:21 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 28 Feb 2016 18:47:12 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: emxx_udc: Initialize local var at declaration
Date: Sun, 28 Feb 2016 18:47:11 +0530
Message-Id: <1456665431-24959-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch improves code readability by initializing local variables at
declaration.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 97f8170..584e2ad 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -1704,9 +1704,8 @@ static inline int _nbu2ss_decode_request(struct nbu2ss_udc *udc)
 {
 	bool			bcall_back = TRUE;
 	int			nret = -EINVAL;
-	struct usb_ctrlrequest	*p_ctrl;
+	struct usb_ctrlrequest	*p_ctrl = &udc->ctrl;
 
-	p_ctrl = &udc->ctrl;
 	_nbu2ss_read_request_data(udc, (u32 *)p_ctrl);
 
 	/* ep0 state control */
@@ -2023,9 +2022,7 @@ static inline void _nbu2ss_epn_in_dma_int(
 {
 	u32		mpkt;
 	u32		size;
-	struct usb_request *preq;
-
-	preq = &req->req;
+	struct usb_request *preq = &req->req;
 
 	if (!req->dma_flag)
 		return;
@@ -3284,9 +3281,8 @@ static int nbu2ss_drv_probe(struct platform_device *pdev)
 /*-------------------------------------------------------------------------*/
 static void nbu2ss_drv_shutdown(struct platform_device *pdev)
 {
-	struct nbu2ss_udc	*udc;
+	struct nbu2ss_udc	*udc = platform_get_drvdata(pdev);
 
-	udc = platform_get_drvdata(pdev);
 	if (!udc)
 		return;
 
@@ -3296,9 +3292,8 @@ static void nbu2ss_drv_shutdown(struct platform_device *pdev)
 /*-------------------------------------------------------------------------*/
 static int nbu2ss_drv_suspend(struct platform_device *pdev, pm_message_t state)
 {
-	struct nbu2ss_udc	*udc;
+	struct nbu2ss_udc	*udc = platform_get_drvdata(pdev);
 
-	udc = platform_get_drvdata(pdev);
 	if (!udc)
 		return 0;
 
-- 
1.9.1


