X-GM-THRID: 6332156650242179072
X-Received: by 10.66.251.167 with SMTP id zl7mr4849652pac.70.1474320159976;
        Mon, 19 Sep 2016 14:22:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.225.13 with SMTP id n13ls2987396ith.20.canary; Mon, 19 Sep
 2016 14:22:36 -0700 (PDT)
X-Received: by 10.67.3.196 with SMTP id by4mr5142079pad.86.1474320156610;
        Mon, 19 Sep 2016 14:22:36 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si5225949pab.2.2016.09.19.14.22.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 14:22:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id hi10so1566384pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 14:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ly2MW3Rf2MoLa1LLvxnXkvhDaqEaAYqamVOnsOabs+A=;
        b=U5Sn/odEx1ZLJTvb+ZY3Va3zuamszT90Hq8LvQPIqy8aDej8CcgIl7sywEjsszSKU7
         eoK0Nn1ijZtfjO6MTKSvjqCfpPt35LatG2AwOSsKmVnmohATg3NziC7QW8AY2qHfzfZk
         +wvt5ojjAIwUPhPb9464EwSplE0ViBh4rwI3jml4qjihMLJ0qhM7HjrYiBRyYm00cL/v
         V+ofJk9WQu+mggVxeWxf55xI1h3k4sPLH6tNCbxIDmIRyWBUCc/sIgv37zhBRaz7XIWK
         VbUKOoa4Jcf/DT/QNok5MGWIfRMwAxZCF9Fgn9SwaE5+LAngJzuoGoH7Ack+RWzVK9hj
         7C3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ly2MW3Rf2MoLa1LLvxnXkvhDaqEaAYqamVOnsOabs+A=;
        b=aacFIBGAcOXxuyAENS6K3Lo7L7DpPXpJCpQ9HNPtWTX10dn4zK8wmmpsVVGd0SsJ8U
         lQOqvVERjYj+ttANKW7pvfz/H9C/4Rz3UbBCD2a7XWBuxK7wLTeONo4mQDR9BQh7fCKX
         NC0OwgekBf8qIa+WcrfiDfJyb6QYHEi5AQVKkol6lw8oIvzn5In396760E+y/FbTQulM
         gK+kJ0SOfDkbrOFVLKt1rtfbFVojXBUxrgr4JYuMxRUnR7d0lsFw7o9h32I/svPVIWmK
         n0LrwkN8uoNLjACWfau5dTi3CoiwNHeLab6wTgKoT8O4FVcb2lZf2BmchfwhQPr09RMW
         oLgg==
X-Gm-Message-State: AE9vXwPOBSfNuflbsqdJCPZiKkjHt5hFKAX6N0h/o0zMWCzcPO7Cx+ZeXO1PiaW9Yxxu5g==
X-Received: by 10.66.152.238 with SMTP id vb14mr50095954pab.78.1474320156262;
        Mon, 19 Sep 2016 14:22:36 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s12sm73639255pfj.73.2016.09.19.14.22.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 14:22:35 -0700 (PDT)
Date: Tue, 20 Sep 2016 02:52:27 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: media: davinci_vpfe: Remove unnecessary return
 capture
Message-ID: <443e4617cce56bfed713a460ee40c5ec319c1861.1474319701.git.aquannie@gmail.com>
References: <cover.1474319701.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474319701.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)


Instead of storing the return value into a variable and then returning it, we
can club the two into a single return statement. This change was made using
the following semantic patch by Coccinelle:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_isif.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index ae9202d..569bcdc 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -146,9 +146,8 @@ enum v4l2_field vpfe_isif_get_fid(struct vpfe_device *vpfe_dev)
 	u32 field_status;
 
 	field_status = isif_read(isif->isif_cfg.base_addr, MODESET);
-	field_status = (field_status >> DM365_ISIF_MDFS_OFFSET) &
-			DM365_ISIF_MDFS_MASK;
-	return field_status;
+	return (field_status >> DM365_ISIF_MDFS_OFFSET) &
+		DM365_ISIF_MDFS_MASK;
 }
 
 static int
@@ -594,8 +593,7 @@ isif_validate_raw_params(struct vpfe_isif_raw_config *params)
 	ret = isif_validate_dfc_params(&params->dfc);
 	if (ret)
 		return ret;
-	ret = isif_validate_bclamp_params(&params->bclamp);
-	return ret;
+	return isif_validate_bclamp_params(&params->bclamp);
 }
 
 static int isif_set_params(struct v4l2_subdev *sd, void *params)
-- 
2.7.4


