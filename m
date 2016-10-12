X-GM-THRID: 6340474381623361536
X-Received: by 10.194.54.101 with SMTP id i5mr598952wjp.16.1476256731786;
        Wed, 12 Oct 2016 00:18:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.25.131 with SMTP id 125ls283420lfz.21.gmail; Wed, 12 Oct
 2016 00:18:50 -0700 (PDT)
X-Received: by 10.25.211.204 with SMTP id k195mr613350lfg.24.1476256730791;
        Wed, 12 Oct 2016 00:18:50 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id l19si82517wmg.2.2016.10.12.00.18.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 00:18:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id 123so973206wmb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 00:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=r7zOAEI/Yaie9vQfBI04EL+gd3NrLY2lmTPCE2h7SOg=;
        b=Os63qabMlltUHuok1dW107sjiGYzSg/ew/umoMqwaGRS10sZMi4UmaqFv+x6f8jEbX
         0ll508zb7E3hDjczSBhOz/Y/pW1+U6gF3o42s45Fx45nFvZkGoRHmoDw9YNu0UJPFtyV
         7yibyLJB2KTI5UWBXl4yMtc3Jbl9Tc0/T9EE4XN4hUrmlbU9p92IIvBuybgAfEY+o9zZ
         pIO6NGjBVCqQ1fnbGeVxOLpj/pdj48YbuSxaYAovqQEZHKs/jOFL2x7j0RCBiDdVfS8t
         a2zhl8IBX+OlNGp1gYuMiwmM/cb4Kkqn0HQIcwnVInZeWiFu1umMGSluyAma2EgxIGRl
         2PAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=r7zOAEI/Yaie9vQfBI04EL+gd3NrLY2lmTPCE2h7SOg=;
        b=WX4uIgl9AaLlyYZbrjYu3IA15KszqIfLkARfi5VEhU2+UadjupSBTIEX08UWVUooEI
         IY2qLTPs/YnnbVSlgMbsynOgT4SpRkTHcy6DMcbdWgGqfyDsjbAp2/HzbZqeeLRd8/fa
         ZkEwhwOAaUUbcZ4bPTP8MJd5ks40GcFNYxx7hA8ieBJSLKZdHtb4zodtmsl38RJJ4I34
         StdpXsvMk52lPKt+fqflY96HLy3HwYuq8KNgkX7QmjEG9I2cBhy3e8hLGo69dVjhEsAF
         gency1O0uPqhJdu0jGrPKlRd6exk1SMugaWAApBLiP2WW7AQKZSeHQndTtp7kVvI0Foq
         GXxA==
X-Gm-Message-State: AA6/9RnuzWZB7/MibYZS7negxBw29ISgm+4AWIih6jgBNLv1M6WMZF8jDF11WGI/OHAXCQ==
X-Received: by 10.28.207.6 with SMTP id f6mr189297wmg.21.1476256730396;
        Wed, 12 Oct 2016 00:18:50 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id m135sm1318208wma.24.2016.10.12.00.18.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 12 Oct 2016 00:18:49 -0700 (PDT)
Date: Wed, 12 Oct 2016 10:18:48 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: omap4iss: Unnecessary KERN_ERR
Message-ID: <20161012071848.GA6025@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch remove unnecessary KERN_ERR in WARN() within iss_csi2.c

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/media/omap4iss/iss_csi2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/omap4iss/iss_csi2.c b/drivers/staging/media/omap4iss/iss_csi2.c
index aaca39d..f71d5f2 100644
--- a/drivers/staging/media/omap4iss/iss_csi2.c
+++ b/drivers/staging/media/omap4iss/iss_csi2.c
@@ -224,7 +224,7 @@ static u16 csi2_ctx_map_format(struct iss_csi2_device *csi2)
 		fmtidx = 3;
 		break;
 	default:
-		WARN(1, KERN_ERR "CSI2: pixel format %08x unsupported!\n",
+		WARN(1, "CSI2: pixel format %08x unsupported!\n",
 		     fmt->code);
 		return 0;
 	}
-- 
2.7.4


