X-GM-THRID: 6202672545102036992
X-Received: by 10.180.72.68 with SMTP id b4mr3880126wiv.2.1444172256637;
        Tue, 06 Oct 2015 15:57:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.106 with SMTP id w10ls1193948wiz.53.canary; Tue, 06 Oct
 2015 15:57:35 -0700 (PDT)
X-Received: by 10.180.188.211 with SMTP id gc19mr4130334wic.6.1444172255722;
        Tue, 06 Oct 2015 15:57:35 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id ch7si671632wib.2.2015.10.06.15.57.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 15:57:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id gb1so186424335wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 15:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=N33yl12y92gCzRjWGO5b5PfLUizsNCi1YezEdcNmU2M=;
        b=Wkn+CVpwsDF8nhNzuJDW2TPOlpt81eGDoImgTFWiEWWmHF3n+96uP5E1TeXUsvaRzS
         GW8uGiDvRcvFwgNMNjP7fjTVj6Pbo4xHHmsM+bAm/D9eZnlVLTSoTt/Lb0/VzWjYJT4t
         x3z8nZ6Rfw/z7/+c23NqQMHvhkZxxaS7HAze3gsagn/L7Bkd0KRJbGEBv7qFSj+lvafT
         oQH6liUJQauIWGPoZKA9arVquwKiWh6snNn5K9i3+08QyB/yOPlXxpkcoJN7ws0Z7PUa
         HICrp+Hs+Y30Sc2jCZ3VcvbKXgyF7Cw6VLwCFcRJhezYuKC8cN1lLbUaInYuAZvh3Ud6
         2M/w==
X-Received: by 10.194.58.177 with SMTP id s17mr46681857wjq.102.1444172255646;
        Tue, 06 Oct 2015 15:57:35 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id cv4sm35261421wjc.17.2015.10.06.15.57.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 15:57:35 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 09/10] staging: iio: adc: use BIT macro
Date: Wed,  7 Oct 2015 01:57:09 +0300
Message-Id: <c8e2d47eeef0c65ce13a9b2a8159a92a04686e72.1444172066.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>

Use BIT macro instead of shifting operator in order to improve
readability

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/adc/mxs-lradc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/mxs-lradc.c b/drivers/staging/iio/adc/mxs-lradc.c
index cde7b3a..aae1b0a 100644
--- a/drivers/staging/iio/adc/mxs-lradc.c
+++ b/drivers/staging/iio/adc/mxs-lradc.c
@@ -324,7 +324,7 @@ struct mxs_lradc {
 #define	LRADC_DELAY_TRIGGER(x) \
 				(((x) << LRADC_DELAY_TRIGGER_LRADCS_OFFSET) & \
 				LRADC_DELAY_TRIGGER_LRADCS_MASK)
-#define	LRADC_DELAY_KICK			(1 << 20)
+#define	LRADC_DELAY_KICK			BIT(20)
 #define	LRADC_DELAY_TRIGGER_DELAYS_MASK		(0xf << 16)
 #define	LRADC_DELAY_TRIGGER_DELAYS_OFFSET	16
 #define	LRADC_DELAY_TRIGGER_DELAYS(x) \
-- 
2.1.4


