X-GM-THRID: 7382846406656
X-Received: by 10.182.224.169 with SMTP id rd9mr30583308obc.41.1425989076556;
        Tue, 10 Mar 2015 05:04:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.138 with SMTP id 10ls41776qgx.47.gmail; Tue, 10 Mar
 2015 05:04:36 -0700 (PDT)
X-Received: by 10.236.47.136 with SMTP id t8mr31921670yhb.44.1425989076297;
        Tue, 10 Mar 2015 05:04:36 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id m1si79790pdc.0.2015.03.10.05.04.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 05:04:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id eu11so1308420pac.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 05:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=rhWGUNXxJHnN6YSiVz9RGQW5nXQ4G5WLA4+r0bCWWvo=;
        b=jUUB1uWpjkoucff14VSKOfhQfgHRXW30pSaZae9kyRge2Hj0WD1k/cUIw5SrjP2Hzn
         NrZaZ19tKMNtKcE2MZacg9W2rr7UN7SJOOsaiyL6FOaYmRzlGNdOmj9NeLPz3uN6corr
         dN6aUc51rCIkSf4T74JChCBjnlRN4DUrdm7iIgSHltTH2RqRSYdy5q+9Z9JjhP0+W/vP
         V4HV2/wGin+3543rq4c4b9XJvW1Y3uQ4gABhlM/m8153OkTbBg5U2Ws6Lnt5XRfhX/YM
         i83CGKe8kzzowDQsuQIfufNn8RlrMjbblO8ESEhOpESmtxCXU0ZZEWkO8l03F3Lj/i0k
         CvYQ==
X-Received: by 10.66.218.10 with SMTP id pc10mr65165761pac.116.1425989075604;
        Tue, 10 Mar 2015 05:04:35 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id dp4sm668693pdb.66.2015.03.10.05.04.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 05:04:35 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:35:57 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 6/8] staging: media: Use kcalloc instead of kzalloc.
Message-ID: <2e9134909e1fc91aeca3156a2bdd4e2c59bdcef9.1425987911.git.navyasri.tech@gmail.com>
References: <cover.1425987909.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425987909.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses kcalloc instead of kzalloc function.
A coccinelle script was used to make this change.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     - Make commit message shorter by removing the
       coccinelle script.

 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index a350a20..5742619 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -226,8 +226,8 @@ static int vpfe_enable_clock(struct vpfe_device *vpfe_dev)
 	if (!vpfe_cfg->num_clocks)
 		return 0;
 
-	vpfe_dev->clks = kzalloc(vpfe_cfg->num_clocks *
-				   sizeof(struct clock *), GFP_KERNEL);
+	vpfe_dev->clks = kcalloc(vpfe_cfg->num_clocks,
+				 sizeof(struct clock *), GFP_KERNEL);
 	if (vpfe_dev->clks == NULL)
 		return -ENOMEM;
 
@@ -346,7 +346,8 @@ static int register_i2c_devices(struct vpfe_device *vpfe_dev)
 	i2c_adap = i2c_get_adapter(1);
 	num_subdevs = vpfe_cfg->num_subdevs;
 	vpfe_dev->sd =
-		  kzalloc(sizeof(struct v4l2_subdev *)*num_subdevs, GFP_KERNEL);
+		  kcalloc(num_subdevs, sizeof(struct v4l2_subdev *),
+			  GFP_KERNEL);
 	if (vpfe_dev->sd == NULL)
 		return -ENOMEM;
 
-- 
1.9.1


