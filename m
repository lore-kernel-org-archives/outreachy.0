X-GM-THRID: 6950995870922833920
X-Received: by 2002:ab0:724c:: with SMTP id d12mr27090111uap.63.1618404842327;
        Wed, 14 Apr 2021 05:54:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ee13:: with SMTP id f19ls305191vsp.1.gmail; Wed, 14 Apr
 2021 05:54:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx2n0OmgsfH0h5j3MZicXrb0QcVXPPYDgGcT2KKl1sR6EC9b2Is2AsckwUmfVmoFMxZi+nw
X-Received: by 2002:a05:6102:6c3:: with SMTP id m3mr5658452vsg.6.1618404841414;
        Wed, 14 Apr 2021 05:54:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618404841; cv=none;
        d=google.com; s=arc-20160816;
        b=k236Rz7UqmJPHHL14yYxVO8bVTnkv2+1o5ByP4d5T/blfdXVDmwrhFmxLffar8Qre+
         bK7M8XTmTaftyJ8zzVQiTFL9XHMM/j8iBlcvc+QtU/Ug9LupnJ9jx2lqL2PrmgpbYw9+
         hkcBg45XPLeElREWluFki+OhKqLXRe6DLr87IPS3b7lbV8ePDnVfj1m2qoNg3SD/UiLX
         MRvG6aA07sgMfq7FLt1pFnIYz4RviGL/I72o8gwnDnps/9hy/0H0cxfEE0bb7FenRWyh
         2zF+uAse/91LKUwmt4RLSW4hIgNjv7EPH0Wb/DdsVORLMds4diUHzw2X+Hab+ZSrNc9z
         CA5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=jlBCNsKvfBi7veyM4BL9NZbwtWHgYxGRX4dSVfblSNo=;
        b=Dw5uFDMNdwntJt1mwCcCxxwmySLkeG6NzoGIesbuCpMjB3c0IgPv4HI0GOrecEat/1
         hY8bjk1TN3qUtVV6ZwoAlbOEoM4m56ayb45TzaY9nDy9tBsy2C/QA/BS+HtyXx8M34Cj
         cPrhvzJ2jJXx+6kr4ZuR8YN++GoMPPGMhwaq3ZS4iBSZj8zw2K3/uDB6lKqvSaC4FJt0
         1anKpkPF6r+0SM/HHzG8TJ05tx69/Fuo7uXcGFBpPfgnXtocYHTpLjVE0g20EmTRJp8U
         K0OQzmG6oAs0xqm7eg52hWK9R1/+MlxQUR4AH+Zf/jtSfbPbb3+FoInODNpC+vc9PQs5
         P5mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fN+hxWgj;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id o198si591425vkc.1.2021.04.14.05.54.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 05:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fN+hxWgj;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x734.google.com with SMTP id f19so3526128qka.8
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 05:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jlBCNsKvfBi7veyM4BL9NZbwtWHgYxGRX4dSVfblSNo=;
        b=fN+hxWgj8eADtHckIAH/XYZ20ZkcHUgU1+yAZgE+OGm2N/fNjOiEoJIq34+61XH/D4
         eOJD+z/oNqotFpnmZtqg19Z99TF3XL1L/QH9efTnQ1y8e2YmMHqKIQaWjD8XmCzpFcNO
         Pyg6rHgrjecDHNM3a3dLiE3IVEo8+H98ccPDUZCr2HAtdOcpd2HaQ20Q6zk2mfdPnoJM
         9qZZqpW6DJb4mWTmOV1cDc9mE4sYy3QsQNgFAgWSctUGMGoageKBvUDMaTAXTjiz/U7b
         38ugvwu7xDr5bQVNCIBLlm0NL+opyipJ8iH9eQ+SEt1BELiO40cdM2YL3fYdwVw11vd8
         UYEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jlBCNsKvfBi7veyM4BL9NZbwtWHgYxGRX4dSVfblSNo=;
        b=X2tHX5ZWK6SE9xUI/38HxghupJm+AdmhhXowE+Z4LHoyU0twq3h0gVPRnJdkRSuJG6
         xmB5YYGpeqPmXKGxGt5akr0x0V/iXFTjk2k9LX41LLQTX7iBdTmUij0eUvjVdNldYNW2
         JNnylcvIvOvUYTTb0pu+T4G/yqU69+4Ebh8Lpz1AUeHwsFb5Nr9gzJJxjIvYH10mAzIp
         6Os1SjyeXKzzSet7KMT94+3Fk/j+btM9zLEgl7Jv3QKFgy0gIP0MWTagKAMNUrKh3Vxg
         y/PDHiwLWuOLx4LXlBh7duxEyaGpZUP0gs3lG5KMAuyLfojFann9TopJKRieCaybuaOL
         IXmA==
X-Gm-Message-State: AOAM530MtqtPfaxHgg6xakQIlJfYAHO6aqRkWd9tW3OT9g1sxNbi9VkO
	1+ItEhk5VwborPXFLZdTMaf9AiPYQGCNSY1V
X-Received: by 2002:a37:4389:: with SMTP id q131mr24259247qka.255.1618404840937;
        Wed, 14 Apr 2021 05:54:00 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:7038:c088:ae60:452d])
        by smtp.gmail.com with ESMTPSA id j129sm12197652qkf.110.2021.04.14.05.53.59
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 14 Apr 2021 05:54:00 -0700 (PDT)
Date: Wed, 14 Apr 2021 09:53:57 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: media: omap4iss: Remove unused macro function
Message-ID: <20210414125357.GA13767@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unused macro function "v4l2_dev_to_iss_device(dev)".

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/omap4iss/iss.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.h b/drivers/staging/media/omap4iss/iss.h
index b88f952..3f587e0 100644
--- a/drivers/staging/media/omap4iss/iss.h
+++ b/drivers/staging/media/omap4iss/iss.h
@@ -119,9 +119,6 @@ struct iss_device {
 	unsigned int isp_subclk_resources;
 };
 
-#define v4l2_dev_to_iss_device(dev) \
-	container_of(dev, struct iss_device, v4l2_dev)
-
 int omap4iss_get_external_info(struct iss_pipeline *pipe,
 			       struct media_link *link);
 
-- 
2.7.4


