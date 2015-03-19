X-GM-THRID: 9130553114624
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,694247d93496d508
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.87.141 with SMTP id ay13mr8268702lab.3.1426792264602;
        Thu, 19 Mar 2015 12:11:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.50 with SMTP id bd18ls364644lab.108.gmail; Thu, 19 Mar
 2015 12:11:04 -0700 (PDT)
X-Received: by 10.152.19.67 with SMTP id c3mr11076480lae.7.1426792264133;
        Thu, 19 Mar 2015 12:11:04 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id gj20si473485wic.1.2015.03.19.12.11.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 12:11:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x235.google.com with SMTP id v3so70893879wgg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 12:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=RBKO3Nj8q7KuZUKjjJbrN79/YO3nk3IfTcIdoeE8zKw=;
        b=pGru0WEz9alWvKLjBfCwKKkAeJS1jwDmQP+eR/5H3jXPiKl7x0LkX4ibGKUiml+1TT
         pBoqEAq7yAVQ6Pn3FyMEuiuBQJQrUWeQzMovdrIDYJt45MGwe6ktVY/PBnAexKBuNdRZ
         sZi6zRdDRcEhG+R5qeyPizUs8GE68fr2Jl/FtPmreV4JxP/eEYsiIS1OGU0U5tjOfFaw
         8TiOhiJ+9MAc7IET9P9sDAmUWec5WVxGQEYGyQi9ByGbBr4zYgPH86EdI9joI4N4ulgb
         BrkVuM73ryWBbexVF/zCzSJar3K9fLWGt8GRwlTnvgunlyvepguhg7uSk31/A2O6yIE7
         IZ6Q==
X-Received: by 10.180.77.40 with SMTP id p8mr18594494wiw.1.1426792264034;
        Thu, 19 Mar 2015 12:11:04 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ge8sm3144927wjc.32.2015.03.19.12.11.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 12:11:02 -0700 (PDT)
Date: Thu, 19 Mar 2015 21:10:18 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] Staging: iio: Add kernel-doc for struct hmc5843
Message-ID: <f3d3109464d5a23c6314b53ea8e9c00965c108e5.1426790662.git.cristina.opriceana@gmail.com>
References: <cover.1426790662.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426790662.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch documents the struct hmc5843 specific data following
this warning:
"CHECK: struct mutex definition without comment".

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843.h | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843.h b/drivers/staging/iio/magnetometer/hmc5843.h
index 332a75c..ab729d3 100644
--- a/drivers/staging/iio/magnetometer/hmc5843.h
+++ b/drivers/staging/iio/magnetometer/hmc5843.h
@@ -31,12 +31,20 @@ enum hmc5843_ids {
 	HMC5983_ID,
 };
 
+/**
+ * struct hcm5843_data	- device specific data
+ * @dev		actual device
+ * @lock		update and read regmap data
+ * @regmap		hardware access register maps
+ * @variant		describe chip variants
+ * @buffer		3x 16-bit channels + padding + 64-bit timestamp
+ **/
 struct hmc5843_data {
 	struct device *dev;
 	struct mutex lock;
 	struct regmap *regmap;
 	const struct hmc5843_chip_info *variant;
-	__be16 buffer[8]; /* 3x 16-bit channels + padding + 64-bit timestamp */
+	__be16 buffer[8];
 };
 
 int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
-- 
1.9.1


