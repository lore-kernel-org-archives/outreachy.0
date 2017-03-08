X-GM-THRID: 6395175452406710272
X-Received: by 10.25.190.65 with SMTP id o62mr1131550lff.16.1488992816780;
        Wed, 08 Mar 2017 09:06:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls434381lja.32.gmail; Wed, 08 Mar 2017
 09:06:56 -0800 (PST)
X-Received: by 10.46.83.7 with SMTP id h7mr1457617ljb.24.1488992816208;
        Wed, 08 Mar 2017 09:06:56 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id 82si454163wmg.3.2017.03.08.09.06.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 09:06:56 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id n11so7087661wma.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 09:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=dmvz2EeFf+3n374K/sPK/2pGyeMd4rYTM6GfopFEjI8=;
        b=WDH+CM/UPz6yb7WM5viMBmNx2uXt2aZCOsm2c0EqTWhf+fA9JRMJ7EDUKN9OOqO4S8
         fCY7Al5CvNGgi78z2juRCZyhBFIf0dcjb2qed7QSXZiRjOfyPvgAA2jTHUFevNdp859h
         5QOt3D/mjrWDNZ/7bOlCe2yWwJE0XsdSfw7WdMvVxkmyft/O+QGSp8jI1JFb450etmip
         Xi/uI3NWbEeoTFS9o+tzWRR7xT6yW66Tq7bs8/YbFJ6MYcbREM/IeAbj+gga07SR5O51
         S1b4us5MVHlx1e0PUdWE3q+SuPF5V1KKRd1uqqgH4ixJd8pI0HkcS1LskJn0m/EoeARr
         KWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dmvz2EeFf+3n374K/sPK/2pGyeMd4rYTM6GfopFEjI8=;
        b=b35rpkA1tM3+yhCZU3cvkfh1VlMlJsa1G/WkQ4ed9V9kLBr5BitRYQfg0KUdsWQl78
         t26zNLulNjht1Zuy39sZGSlZEUmjbaRkyClboUa8YiMN1nQilGvT31SPFv6NO9lE0OJi
         VCivNauHDsrAcoYv/xKBHwhS25PwWtHdfxTCm2hAvEr+3skUtUu7cP0tyLuI3ZV1MYpH
         DSiuMS2PM1MHtnS0OGQ25DDLYfGFxhhj8/+oFVoePYjkYAYcqIattI6Jdp7v94H9BtF2
         oThrsYPUE5WDAVHtZYz5R4xYMfoJrU94ONOhOAIeBtIp260eVPobkFuoF3hQ0G6TL409
         wLNQ==
X-Gm-Message-State: AMke39ngy6DFF0ywcpR3zuLd6STEFwNAsRDyqVrEcQhPWnHVKGxbo01RWGcjbbZQjajHgw==
X-Received: by 10.28.165.70 with SMTP id o67mr6444519wme.11.1488992815999;
        Wed, 08 Mar 2017 09:06:55 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id g45sm4918931wrd.11.2017.03.08.09.06.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 09:06:55 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 3/3] staging: wilc1000: wilc_spi: Add blank line
Date: Wed,  8 Mar 2017 19:06:52 +0200
Message-Id: <20170308170652.3996-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Add a blank line after a function.

Fix the checkpath.pl issue:
CHECK: Please use a blank line after function/struct/union.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 4a4b8c3..82d162d 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -1146,6 +1146,7 @@ static int wilc_spi_sync_ext(struct wilc *wilc, int nint)
 
 	return 1;
 }
+
 /********************************************
  *
  *      Global spi HIF function table
-- 
2.9.3


