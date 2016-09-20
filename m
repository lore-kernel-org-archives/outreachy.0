X-GM-THRID: 6332315970374205440
X-Received: by 10.107.11.210 with SMTP id 79mr4726352iol.49.1474357203667;
        Tue, 20 Sep 2016 00:40:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.107.207 with SMTP id v198ls3218915itc.12.gmail; Tue, 20 Sep
 2016 00:40:03 -0700 (PDT)
X-Received: by 10.36.149.9 with SMTP id m9mr630790itd.10.1474357203275;
        Tue, 20 Sep 2016 00:40:03 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id z4si5809253pam.0.2016.09.20.00.40.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:40:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so540552pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 00:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=W0MdKnIxJJ3XvP03dO9NRHy1bqqdqmxTo/QKi2eQu1k=;
        b=L/nKiGbT5ij++RzHPya6clUvSJGidxiHaD3vw3zJCQ/7WE+XXVCEegzE3mdoYik/ff
         BFE0hbKqYW5IHeSalGMNpzeMTsXgmAgIp8VIHU3BX+rZYsHv2WaiFaPu0vRIRb6k6aFh
         lZ+7bH/KhXoutA4zXyAKqtiiRUJBqYvmyksDnBg1yyi4XkV6F03ZzE1qzaUX5s5K/cLJ
         b8aI9GYZNJpGbKG0MezpNXbWk3xVywjMMasWMUqg0pOr4/D2rH2DoOD8gF1GODvL3QTP
         l3Ok3FLzvyW9qmDxZIEUcC0N4/Phw3AFRk4WYSKW0DsPckfg27gneD/dBWxApT258TON
         qxlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=W0MdKnIxJJ3XvP03dO9NRHy1bqqdqmxTo/QKi2eQu1k=;
        b=jo5plKu9oXJrMVQa+uVoKQwsJIljB/v3PUK0Xz0gq3oe25ibx8IzzZYuvglnDl7oqY
         bZ8ZRBjH+gYFuHC87c8CrJSR3BaAK7esFsv4Up8cM/fUxgSfQ+ADTqgvGiqaQQMAXQ9a
         q+aRfejYBKXcw+KZgOnITfba6+dDjfu2yjou3Mj29gvzHrFr4mfqNkVYYPjDiWZl08yS
         DQG93d95UsHAGBud+iSxXtWOyr5rYmDsK8yZqXYBBxIsj2nZZlt5p/s+Wps2DMh0Jm48
         uBGra6zkgpbIhebmcg4SeR8ORW2L48oMl7U23QMw6ljeFB2IIc0a46ml1uGUfhynlR/G
         5o8g==
X-Gm-Message-State: AE9vXwOXCsIR5rDMpEvtO2ZSmwJEDplAYcTw8ExpLOwQcFyF/n7XxNqIQq4IdZ9jXj2VBg==
X-Received: by 10.66.155.166 with SMTP id vx6mr14925377pab.35.1474357202880;
        Tue, 20 Sep 2016 00:40:02 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l128sm76562035pfl.21.2016.09.20.00.40.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:40:02 -0700 (PDT)
Date: Tue, 20 Sep 2016 13:09:55 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/2] staging: media: davinci_vpfe: Merge assignment with
 return
Message-ID: <20160920073955.GA8799@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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
Change in v2:
Make the commit message clearer.

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


