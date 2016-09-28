X-GM-THRID: 6335430862293696512
X-Received: by 10.66.240.67 with SMTP id vy3mr7270250pac.45.1475086540783;
        Wed, 28 Sep 2016 11:15:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.18 with SMTP id o18ls806809ota.40.gmail; Wed, 28 Sep
 2016 11:15:40 -0700 (PDT)
X-Received: by 10.157.6.230 with SMTP id 93mr6217926otx.52.1475086540304;
        Wed, 28 Sep 2016 11:15:40 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id um12si2389828pab.2.2016.09.28.11.15.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 11:15:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so2442803pfj.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 11:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yxgAatAzyz+7MizQje8z7bUyaEOPIGqvtmrp2lQfiXk=;
        b=y79jwQJZciovRFJlD9APB8tKM8z8w4uZspxzgmRAzq9v1Un+K2n7UO8PF0NIvGL4P0
         NoqNWMsZ6v74USYk+kEdWwIL2WB/vT8GqOr8ytpOYZ6cejGYWUvOjPHA/eUVvNINSTIW
         karr+NGkFexsYkPZvVMAkJ+0E8k1u1zQB0pHj4mr1pem2EOZqHN3ur79P6XDadmZfwBv
         P8axXumn7WmRu07O/bkm5b4jn4Qdy8wg6nvpRin4CmQIaK4QM869Nn6kTMUh9x5sBZ7F
         sp7qB4sVN6DQIZkJq5VyfeyhWXbPl2d9l3lBlPNnPm88aDkdu3BdjxdV0UOgqrvTOrmD
         Tmxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yxgAatAzyz+7MizQje8z7bUyaEOPIGqvtmrp2lQfiXk=;
        b=Ihkd2Lw78Q4YwjsXg7bxcU0X1h+/O0F0ylJc30J/1Ur0phuW19V7tyJSRw129laHQx
         L7WuJ9tMPpoOWMSQF1hynykm2nopDKRROv2CQpMouLHPLvrwNmN+9FmSoBq9pz0rLA1F
         XbMVqjq5woTu5te4rt8NjSfxZzSeMZ0DFYU8sCEgcTVKcQj4iXg4yyAAm9MaApygji70
         WLYtDw0DL9BeZyd0w7DSU2Scpq+abaWh7Sqf/z1+yJzbntqqJFoOb5bhCkiM4oMld7lD
         CPMSmFREJxKxW/bI3vSs+o62pAPTlHWnyA8EJCyeaW+UsMD9+yOqPt96trjWk25ReUkK
         zt9A==
X-Gm-Message-State: AE9vXwMePHJ2n8QQFvykbcBKWXCWQ+pdQOL4rzIyHbkF6pm8tJiNLnVAaS7zaCnEf+E5Ag==
X-Received: by 10.98.208.195 with SMTP id p186mr58426832pfg.90.1475086540113;
        Wed, 28 Sep 2016 11:15:40 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id i8sm14224218paw.25.2016.09.28.11.15.37
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 11:15:39 -0700 (PDT)
Date: Wed, 28 Sep 2016 23:45:32 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net
Subject: [PATCH v2] staging: iio: gyro: add comment to mutex
Message-ID: <20160928181518.GA14365@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix the checkpatch.pl issues:
CHECK: struct mutex definition without comment


Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/iio/gyro/adis16060_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index ab816a2..96230b6 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -33,7 +33,7 @@
 struct adis16060_state {
 	struct spi_device		*us_w;
 	struct spi_device		*us_r;
-	struct mutex			buf_lock;
+	struct mutex			buf_lock; /* protect transfer buffers */
 
 	u8 buf[3] ____cacheline_aligned;
 };
-- 
1.9.1


