X-GM-THRID: 6332315727900442624
X-Received: by 10.129.40.4 with SMTP id o4mr15432235ywo.18.1474358456961;
        Tue, 20 Sep 2016 01:00:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.13 with SMTP id a13ls3908880ioe.18.gmail; Tue, 20 Sep
 2016 01:00:56 -0700 (PDT)
X-Received: by 10.66.158.131 with SMTP id wu3mr1425333pab.39.1474358456577;
        Tue, 20 Sep 2016 01:00:56 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 7si5977271pfw.1.2016.09.20.01.00.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 01:00:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id vz6so569719pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 01:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GGEmGfiyv4dSFsovsbRo7uQlebDoQox7gYpG096zof8=;
        b=dUyu8so05IzoJFgqZYec34jisUOPLH+ZRXIrZ9xZ+reS+d7hRdbGEf1LM7Qk+Pm9Wm
         jECyCHKe0oeHi7V5xZOHAwdKnZPH0UpP085aCfWmGt0JoLCTRhjXNiOd27He5+LzYGcg
         MuZluHE5IxdxtgFCoU+EW8tST5Kv9g2izg7lobLgpqTvw31r54ThM4pUCvs7F6o6mVnO
         rGEsKTLaOXYVUyhLfwYjhAf3WGC8kCwr5Nx9X0EITHDN6jr+KShXPmRSoifqT4WbUO3N
         1xm6Rf2XdOTFw8hup0rUYFm1w9LT5O1T/4UVRVDBpVenPXOmZVQq4MNOnb+TG/s8PPIR
         6MEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GGEmGfiyv4dSFsovsbRo7uQlebDoQox7gYpG096zof8=;
        b=aS1q8/j9O+1wM1CkRsFjlNQEeECqAw95jyAVaqnta1lZ6+HJjifGr7V2PFDt+PQg5M
         lhmoaUgIT0ouYO83SHmDNshduXDZXM3fm1dg4V049weCNn0cfwFvzdGOYDaB93//Gvag
         9ohlCZ6UNGfNIxrtjSynEmgxdPtTeBBSbJASz1jzFdeBtggxDjvGYCdYPi3Dt8xbcTZ4
         qNDyP1lvRz8H2x8Fl9tCHiPp97lIrmPrhgP1SsZFEnPIv8qo4AZd1RvBKI8Eraz1L3gV
         WM0m0KQIRIM+5KKCZkP4qtqM6C4SMaD2M/1ryqpoGfY3yE0lSBr4w4LznxuIU2R2CGl+
         CDfA==
X-Gm-Message-State: AE9vXwPfu0FJvRxcBRaarZYqVqw9BTRpEWgKGNlorRjwDzEqWON1OiWvlOSZ+KG1VXWO9Q==
X-Received: by 10.67.5.136 with SMTP id cm8mr51465290pad.127.1474358456350;
        Tue, 20 Sep 2016 01:00:56 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q14sm57556942pfg.63.2016.09.20.01.00.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 01:00:55 -0700 (PDT)
Date: Tue, 20 Sep 2016 13:30:47 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/2] staging: media: davinci_vpfe: Merge assignment with
 return
Message-ID: <5aed6cd7df4ce37f6c67b404d2921f350e045d9f.1474358156.git.aquannie@gmail.com>
References: <cover.1474358156.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474358156.git.aquannie@gmail.com>
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


