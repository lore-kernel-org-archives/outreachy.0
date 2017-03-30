X-GM-THRID: 6403270919319453696
X-Received: by 10.129.182.81 with SMTP id h17mr861527ywk.121.1490877689123;
        Thu, 30 Mar 2017 05:41:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.19.61 with SMTP id f58ls2851142ote.36.gmail; Thu, 30 Mar
 2017 05:41:28 -0700 (PDT)
X-Received: by 10.200.50.174 with SMTP id z43mr2140499qta.32.1490877688564;
        Thu, 30 Mar 2017 05:41:28 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id r66si301218pfb.7.2017.03.30.05.41.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 05:41:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so9755454pgh.3
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 05:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lS52vgKuRKAUyXwgpqYwInpI1UsCUpbsQ1FgpKCjF0g=;
        b=d6KMta+XicSWbCQiT1zuPkdXwoeI/o29xLwIZHsqjCV+Na+qdWMKqa6wawUIbnzU0x
         7gJp9ViqgFEB07YHPF2tkWxq24zbRzxxuOoi39XsaVkqsUPi58ncVGWS17NpK+5o6XYV
         F6KfYB/aI7cowvnkgQttvwCrE7vKSzxog72K2TUCXaNkM4oWLJW5Fo/1XvSGviZqmATN
         T6SmJtGVIwEHeWSd+Bq26/Yelze11EHt4bNmFVrAz9suhRdqS7y3jAiYn8c0OXcTU1BW
         xJTseDO3HTatrSDCAPFKdm0KbHzLjnnr213A2BeW9d4Tjb7mw6SYo6kbllSyGTcoimmm
         5sjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lS52vgKuRKAUyXwgpqYwInpI1UsCUpbsQ1FgpKCjF0g=;
        b=XrMeqhfJmbidVs80HshWYdxYlXCl1Kh768lAHPTTM0w2Gi2RwwA88IO+te37Vl2sKc
         nZy6aXVEWxi8SNbazgjzHS4d4sc0kc5Dn93KZnjq8X3IzVdF/ovSgPk0jo/wqQPyg2sC
         t2rsGlViNv+sUT7bVcMakvepuEfM1vpTIOLgFReRjkPfKp4kBzzvPH9CZ6fuNYo4tWit
         YEqwTqR2srecUSHbIBatAFaRbJOdhgHAYLez5HCKhABGxAMZw22/jzMVrizUyPPrraCR
         BgaHuM1PzO+HPJW9cVdiD28bOQlJ6mUZr4PRhfIJJp28vxwxeXc89YcJm6Yw89fkKDzM
         nDRw==
X-Gm-Message-State: AFeK/H2xtXRmXv0XEIe/Sq9J+DIsZJ5GdhhyeIk2GF5T8llXks0N2Hy8ldxAMSbenCUqlw==
X-Received: by 10.98.68.199 with SMTP id m68mr5896970pfi.31.1490877688262;
        Thu, 30 Mar 2017 05:41:28 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l76sm4505212pfj.94.2017.03.30.05.41.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Mar 2017 05:41:26 -0700 (PDT)
Date: Thu, 30 Mar 2017 18:11:22 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: jic23@kernel.org
Cc: Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] drivers: iio: replace comma with a semicolon
Message-ID: <20170330124121.GA29095@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace a comma between expression statements by a semicolon. This
changes the semantics of the code, but given the current indentation
appears to be what is intended.
A simplified version of the Coccinelle semantic patch that performs this
transformation is as follows:

// <smpl>
@r@
expression e1,e2;
@@

 e1
-,
+;
 e2;
// </smpl>

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/iio/chemical/ams-iaq-core.c | 2 +-
 drivers/iio/chemical/vz89x.c        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/chemical/ams-iaq-core.c b/drivers/iio/chemical/ams-iaq-core.c
index 41a8e6f2e31d..c948ad2ee9ad 100644
--- a/drivers/iio/chemical/ams-iaq-core.c
+++ b/drivers/iio/chemical/ams-iaq-core.c
@@ -163,7 +163,7 @@ static int ams_iaqcore_probe(struct i2c_client *client,
 	mutex_init(&data->lock);
 
 	indio_dev->dev.parent = &client->dev;
-	indio_dev->info = &ams_iaqcore_info,
+	indio_dev->info = &ams_iaqcore_info;
 	indio_dev->name = dev_name(&client->dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
diff --git a/drivers/iio/chemical/vz89x.c b/drivers/iio/chemical/vz89x.c
index 8e0e4415c161..f75eea6822f2 100644
--- a/drivers/iio/chemical/vz89x.c
+++ b/drivers/iio/chemical/vz89x.c
@@ -393,7 +393,7 @@ static int vz89x_probe(struct i2c_client *client,
 	mutex_init(&data->lock);
 
 	indio_dev->dev.parent = &client->dev;
-	indio_dev->info = &vz89x_info,
+	indio_dev->info = &vz89x_info;
 	indio_dev->name = dev_name(&client->dev);
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
-- 
2.11.0


