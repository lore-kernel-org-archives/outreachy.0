X-GM-THRID: 6251650339458514944
X-Received: by 10.194.19.195 with SMTP id h3mr2919920wje.1.1455662361101;
        Tue, 16 Feb 2016 14:39:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.168.5 with SMTP id r5ls852630lfe.29.gmail; Tue, 16 Feb 2016
 14:39:20 -0800 (PST)
X-Received: by 10.112.204.97 with SMTP id kx1mr2909846lbc.0.1455662360399;
        Tue, 16 Feb 2016 14:39:20 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id h126si608392wme.0.2016.02.16.14.39.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 14:39:20 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id a4so2087743wme.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 14:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=4gKwH5BfN/dz/dEIJ03UsqEu872t5g0e+RxEkinpM9U=;
        b=Ta5e6QegA2HPPJGR+Id+n7uWHLIzPznyVBKdchYk2+I4wQEuZ8BnHx235xVDHnQSYI
         4i/9fY/dn9qI1ygzR84EG5J+nlg8hE9dw41TFz3g2HmksYWhp4ktCTTqI+uK6cImYxBN
         bqoLqmscihpPMNWgdqTnL/GmnJ+O5stjtX9mIfc04yZ0yiP0X0F8PbduWDKka7ChD43b
         sJTVl0ntj+Aex/MqGKDHgLhpByPQkCtCoKlXiA/edEJMnBYgWQtU2DkUSbV4L1MlWm7T
         fwfPlC7/hO4YbHThBbAcHLeBDCMCKpeI24IE+hu+sy3hNsg3SOPd6DvPxSwxtXLhoisU
         vpXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=4gKwH5BfN/dz/dEIJ03UsqEu872t5g0e+RxEkinpM9U=;
        b=YzY0SdnDGE6F/uV0iZJ1sx+qHYJkO/XULkVFaHJxfocNe53oIlM8R/CRgHBsRwEzvl
         p2ao9FpJjkn9ZodsZnEIsTm9pZlVXxcqcsGzvWrAgYRI/QSUxz4yTz4Vxt23i6KFt0KZ
         nOzRAYv/cO7MlQIB4a8kUzoRuMHBK9aW6gkq8rOZiOhi4TgfqpBuJPNdr4S/4b6oMLb6
         kbCcE1yZ0XAZQDdk/mi75NVkIj4tLYbA7VvbO1gE8Pik8KA+x4VsNo/wmtFnvVLN87NO
         qDWhqURATxH6KkpQzsYr7uVsOCDfd21oRyZPX9i+Pt15ryRMN4zblsSmlvJrUKu6q6ly
         1+zg==
X-Gm-Message-State: AG10YOQ5dOUtzZXH7fgzcZ1WyLXR7tWA1OndEgQHxgwq1MDjpOkaJdnJCX/TUKCTvtDfPg==
X-Received: by 10.28.46.84 with SMTP id u81mr22836203wmu.102.1455662360262;
        Tue, 16 Feb 2016 14:39:20 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id d9sm32130287wjf.43.2016.02.16.14.39.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 14:39:19 -0800 (PST)
Date: Tue, 16 Feb 2016 23:39:17 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 7/7] staging: netlogic: Fix indent for conditional
 statement
Message-ID: <777663a438d72f7287d371967ab9403be4c49163.1455661648.git.nevola@gmail.com>
References: <cover.1455661648.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455661648.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Insert code indent for conditional statements. Checkpatch detected this
issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index b218e84..0e4ee10 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -326,7 +326,7 @@ static void xlr_hw_set_mac_addr(struct net_device *ndev)
 
 	if (priv->nd->phy_interface == PHY_INTERFACE_MODE_RGMII ||
 	    priv->nd->phy_interface == PHY_INTERFACE_MODE_SGMII)
-	    xlr_reg_update(priv->base_addr, R_IPG_IFG, MAC_B2B_IPG, 0x7f);
+		xlr_reg_update(priv->base_addr, R_IPG_IFG, MAC_B2B_IPG, 0x7f);
 }
 
 static int xlr_net_set_mac_addr(struct net_device *ndev, void *data)
-- 
2.7.0


