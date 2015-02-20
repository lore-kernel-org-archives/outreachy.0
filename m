X-GM-THRID: 1653519417344
X-Received: by 10.66.155.232 with SMTP id vz8mr248442pab.41.1424475843844;
        Fri, 20 Feb 2015 15:44:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.159 with SMTP id 31ls496925iop.32.gmail; Fri, 20 Feb
 2015 15:44:03 -0800 (PST)
X-Received: by 10.68.197.137 with SMTP id iu9mr318777pbc.5.1424475843599;
        Fri, 20 Feb 2015 15:44:03 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com. [209.85.192.175])
        by gmr-mx.google.com with ESMTPS id ki8si3446581pdb.1.2015.02.20.15.44.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 15:44:03 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.192.175;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by mail-pd0-f175.google.com with SMTP id fl12so10994198pdb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 15:44:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=38DOflHeD9rQGDhADU+/DbX8WgBAi6SZxeX7yUUtV2s=;
        b=jdhdcsfvhsPvUq1m7RbNSQnBUu4SFYB9kf/9d5HJ00ZR9bWNo1g/Pxd8qPk1VYHcOH
         kIk8z5GQnLZ3+kyWKoPPJnWqvVE5sQrsGLUyjRkxLSXFGo95izBj2XujyajlZ9tFu2ex
         PaTHSMcNE2JAryWm65ePhhpvgYWto8o55j3nCb0h+JTXaCyhsnsNLWkVS/qtwdD7LwHs
         7cf6FlSZoTkSDP7QbFhECRtqrKYDesWFZAZibTHLe3S+KEIHwS+RQGvoZYjhrjFrajnp
         30wB3z7FYIhtdWWhz68o3kOjuGXjkJN7ICHNvaW8j2OxKatWR9VDbpssxSl1QAfEPiMH
         kYcA==
X-Gm-Message-State: ALoCoQnqa79NWVDC6wueTbtWV15YllcqND/wNREeDKj+0J5lwgHWb9Ej+oLFv3QIvUU9DDiJr1Rg
X-Received: by 10.68.102.194 with SMTP id fq2mr128345pbb.99.1424475843463;
        Fri, 20 Feb 2015 15:44:03 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:b929:33ec:23a3:1811])
        by mx.google.com with ESMTPSA id n10sm28132098pdp.18.2015.02.20.15.44.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 15:44:02 -0800 (PST)
Date: Fri, 20 Feb 2015 15:44:01 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: replace __constant_cpu_to_le16
Message-ID: <20150220234401.GA9928@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Addresses checkpatch.pl warning:
WARNING: __constant_cpu_to_le16 should be cpu_to_le16
by making the suggested replacement

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/rtl8712/wifi.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 73d7cd2..5ba7e71 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -248,9 +248,9 @@ enum WIFI_REG_DOMAIN {
 
 #define SetFrameType(pbuf, type)	\
 	do {	\
-		*(unsigned short *)(pbuf) &= __constant_cpu_to_le16(~(BIT(3) | \
+		*(unsigned short *)(pbuf) &= cpu_to_le16(~(BIT(3) | \
 		BIT(2))); \
-		*(unsigned short *)(pbuf) |= __constant_cpu_to_le16(type); \
+		*(unsigned short *)(pbuf) |= cpu_to_le16(type); \
 	} while (0)
 
 #define GetFrameSubType(pbuf)	(cpu_to_le16(*(unsigned short *)(pbuf)) & \
-- 
1.9.1


