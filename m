X-GM-THRID: 6335442483781042176
X-Received: by 10.31.125.139 with SMTP id y133mr7068628vkc.2.1475086199177;
        Wed, 28 Sep 2016 11:09:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls1595210otj.7.gmail; Wed, 28 Sep
 2016 11:09:58 -0700 (PDT)
X-Received: by 10.31.14.1 with SMTP id 1mr1603887vko.31.1475086198782;
        Wed, 28 Sep 2016 11:09:58 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si2384997pab.2.2016.09.28.11.09.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 11:09:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q2so2437663pfj.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 11:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vfCXXycFEClKzbwl/cGQbB/mQK22JP1Qxfum2+wL0Ng=;
        b=Iz8eecj312gYxO54XXeetxRoILoDQcy/ifRwKV8XBhxe3+PFGUKiPdmpEcckps4Gdr
         IVcNe397u5T+03eoq9XI8h/baxoVi3N6/cVPzdr2uU+1PGKbHOHdtdnW18gXsHtWPNpc
         +pcxxQ/OLgdBQC9OV8V33w0qzr99cXpVoDj5nN7ZJfN9Xp0SrKuAh/7fzxwq5sbshAG5
         MWKbDawbZMuJb2xe32pP3CohnuK1rrSqIOF9CKzrfAzivLmQ+GKKlFEnETPnpp2YUd/6
         SZFLSAAZghGL66y7+JSBpQoKJPFhwZG3zyzzPjXqnn32U81t13mpg9gQhRWZp9+y/MZC
         HV8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vfCXXycFEClKzbwl/cGQbB/mQK22JP1Qxfum2+wL0Ng=;
        b=EIFtkvChMJUswU3wn1HmMmb1/dtJ/p8Zd4BJWJGyzv215FzS4WaF4Wxeq6il61abvK
         gchTLuxzEhy3/wot0x7L/BFYL1ZkMU4yD0FE4iYzjYCq5q9V8QlYqAF8vx/dhZ7RzIMT
         uSuse+szwUbJUU6bL8QodFfj3JHYqaDVddW0d0EQMNlw5IJJ09WY1S8cH2EhNbCqdlIi
         TMM8bWQ0umRY7hfRQ/24xJdJ3DaSqq8oG2tbszM/1xlQ0Jb3lQ6Goh/29AmiKslrpHY7
         emuvYvRQE7MgSYgQGX2+v7WvaxqgVAKwhO5TgE0dY0UmLptcbbVZOpZYXtWmmkLg+742
         7dgw==
X-Gm-Message-State: AE9vXwPrFHap0R6nkol4ZTpRAShiT9IwLPPNgqqM6qyBTqQx33xX3lbE3q9+nbthfBPszA==
X-Received: by 10.98.6.5 with SMTP id 5mr59210264pfg.88.1475086198583;
        Wed, 28 Sep 2016 11:09:58 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id k69sm14150314pfb.85.2016.09.28.11.09.56
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 11:09:58 -0700 (PDT)
Date: Wed, 28 Sep 2016 23:39:51 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: michael.hennerich@analog.com, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: iio: cdc: ad7150: add comment to mutex
Message-ID: <20160928180943.GA14179@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix the checkpatch.pl issues:
CHECK: struct mutex definition without comment

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index f6b9a10..13709bf 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -78,7 +78,7 @@ struct ad7150_chip_info {
 	u8 mag_timeout[2][2];
 	int old_state;
 	char *conversion_mode;
-	struct mutex state_lock;
+	struct mutex state_lock; /* protect hardware state */
 };
 
 /*
-- 
1.9.1


