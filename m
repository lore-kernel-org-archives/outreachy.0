X-GM-THRID: 6253814508623495168
X-Received: by 10.182.28.41 with SMTP id y9mr26939868obg.14.1456143836786;
        Mon, 22 Feb 2016 04:23:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.71 with SMTP id q65ls761140qgq.92.gmail; Mon, 22 Feb
 2016 04:23:56 -0800 (PST)
X-Received: by 10.140.154.143 with SMTP id a137mr26803277qha.11.1456143836365;
        Mon, 22 Feb 2016 04:23:56 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id yd9si3074673pab.1.2016.02.22.04.23.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:23:56 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fy10so90446625pac.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 04:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=fEbprRb5Ex+zonA7NMfVI3ZkeZUu/pj1qrEhX2XG0Hs=;
        b=nWwKVUZM0353sUkpQBJj24FFwVvSphwjIhsfUdloE++9SHXwg+eHgf5AHA6ZEyspdL
         njHWRbPvXQ6vGeVbFdo4P3wGyxT4cx1Y2jYMeQvNn+MGgvln4h525oYt2sd/1As+sfMC
         F+4remFlvOGNG4LfVSnIU32xp697kDRrEgyXy4sgH4+X72XM/szrFxEqVKnycCqLSw9+
         UPNtLTO5zbfrav1QTufai0PdfSlER6FwkmzJIqwYhLVff7IQQQKRFTAVUAKVsd3+Bcn9
         oeWPoDyMTmlfJErrFYeTbfbMUQ6Cc1XMoomnHLjDgzEA9jaFDvBTDH5i0qbB5dbzlAqb
         p8nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=fEbprRb5Ex+zonA7NMfVI3ZkeZUu/pj1qrEhX2XG0Hs=;
        b=iLzyUxP55vfEG6+aPadjQRxbWCXOm/lNQsYhn2tPPrmDqW6O+IcgixvcqoYTffNkwr
         3Q4ooVYuinQyrtUKBgR+PH9wrR3Mu8KbVakeD/ow/BcTPs5wPQXvCsd52rHjBJ8GDABj
         qWx7U7yZ5WuNWozM1B1n5rUWPR1xyhM4TiG+PDI5N++zq7m6D71r/QbyOBrI5zK/gq69
         VTAdPXkcGcymnXiG3q+JzbzJJaf2gbdRvNKoYZ2vdz38/vR6t+KbvTDJedMR96P1BB2M
         iTQ1N9241xbeqV7FB1LzbUFVUJquFjvqaiHqUhuzKD3bZ2ihDjCPtAO8ChVnXoWQGj1B
         9YUw==
X-Gm-Message-State: AG10YORrO2GTjptUKf+3LRyquHbDpHZ2fhDI46lTx1ywsvz2N7SsrD27JGuypWnXg03d3A==
X-Received: by 10.66.234.104 with SMTP id ud8mr37781455pac.143.1456143836219;
        Mon, 22 Feb 2016 04:23:56 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k14sm36681242pfj.0.2016.02.22.04.23.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 04:23:55 -0800 (PST)
Date: Mon, 22 Feb 2016 17:54:28 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] staging: rtl8723au: hal: Use macro DIV_ROUND_UP
Message-ID: <20160222122428.GA16637@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
  - None for this file.
 drivers/staging/rtl8723au/hal/usb_halinit.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/usb_halinit.c b/drivers/staging/rtl8723au/hal/usb_halinit.c
index 3c2d03e..fa47aeb 100644
--- a/drivers/staging/rtl8723au/hal/usb_halinit.c
+++ b/drivers/staging/rtl8723au/hal/usb_halinit.c
@@ -736,8 +736,7 @@ int rtl8723au_hal_init(struct rtw_adapter *Adapter)

 	rtl8723a_InitHalDm(Adapter);

-	val8 = (WiFiNavUpperUs + HAL_8723A_NAV_UPPER_UNIT - 1) /
-		HAL_8723A_NAV_UPPER_UNIT;
+	val8 = DIV_ROUND_UP(WiFiNavUpperUs, HAL_8723A_NAV_UPPER_UNIT);
 	rtl8723au_write8(Adapter, REG_NAV_UPPER, val8);

 	/*  2011/03/09 MH debug only, UMC-B cut pass 2500 S5 test, but we need to fin root cause. */
--
2.1.4


