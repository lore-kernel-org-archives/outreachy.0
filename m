X-GM-THRID: 6340628437450883072
X-Received: by 10.66.37.70 with SMTP id w6mr471063paj.114.1476292600079;
        Wed, 12 Oct 2016 10:16:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.142.17 with SMTP id q17ls1564001iod.1.gmail; Wed, 12 Oct
 2016 10:16:39 -0700 (PDT)
X-Received: by 10.66.232.71 with SMTP id tm7mr472325pac.28.1476292599654;
        Wed, 12 Oct 2016 10:16:39 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id p70si999778vkd.0.2016.10.12.10.16.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:16:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id 83so1325345vkd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 10:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/gd/viZx4NwYA3PzEtOXhaWkOCEOlpG9BCqKM9dPwfc=;
        b=y3EIbNkDaTDSxG1eNvc1j/ulkeknR7REPczPw2UYEfuVusUm5D5S9LdL2foRhkN5Ra
         iC6J++fUUoJYRiOCcvzfG0jnPhbF2IW5pWBWkOaqprFySbR8Ntad2NOH2eFEJNetk2pC
         4FQ9hHfptXvtEuLaVAFupABFygo4SER6mRK9cuQSxGmcvO1rvyy30ER1/5OiQdCrtoAd
         HPLUj/p/6PxOhaSqPCW0B+7Tbnf6Te8RMbjVCghicevYIlfP2Ijcl/Zudp8F1S6MUEd4
         4Ic05yXiOHXdv4Sed/79aEtONxI7/96tBCOkX69nkyMIPFUj58x5OCzi6sawSPElLLNe
         yHwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/gd/viZx4NwYA3PzEtOXhaWkOCEOlpG9BCqKM9dPwfc=;
        b=Q/ABVfmUJass0q62QbL1x19l/1OBwtOYXHPkBEldOaC0gfOfernwkepa/5fk0FBFDB
         fcIJ5f7Y1yPiYXXvJXotmC/szqUCC2K++lVnC6gdKNU7cxzcZ8slGfKhiXSF0LiOT2K8
         W/z6vh8LWYZoCeJmiRWbWLd+apcrNzkwWwRkAYkylcBjYEklJCweJ38gh1ozo2xvJYPw
         yggDHv3gYrQovvCWwnboTKdsDeUNiq1hyAjHPcDLE8fOYcqIxnWEBU+MsKqCVBEaXRHL
         U+gdCHPCvQpKGWEU9tUnbhsz1OD/pdYbFDI86ElQGt2jxX36HYla/ud8SBRf55JupFOd
         s27w==
X-Gm-Message-State: AA6/9Rk0kL7M4AamLTwvyuuALqEoP1sbhKGHEyVDj97XPenoLh5YkHT6SURMKT9dZsXFqg==
X-Received: by 10.31.61.204 with SMTP id k195mr1335902vka.76.1476292599454;
        Wed, 12 Oct 2016 10:16:39 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id i188sm3411439vki.28.2016.10.12.10.16.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:16:39 -0700 (PDT)
Date: Wed, 12 Oct 2016 14:16:34 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: vaibhav.sr@gmail.com, johan@kernel.org, elder@kernel.org,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3 4/4] staging: greybus: arche-platform: Format block
 comments.
Message-ID: <20161012171634.GA31734@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

 v2: Changed subject of the patch and fix merging conflict.
 v3: Added versions information.

 drivers/staging/greybus/arche-platform.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index e36ee98..a850f6b 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -455,7 +455,8 @@ static ssize_t state_store(struct device *dev,
 			goto exit;
 
 		/* First we want to make sure we power off everything
-		 * and then activate back again */
+		 * and then activate back again
+		 */
 		device_for_each_child(arche_pdata->dev, NULL, apb_poweroff);
 		arche_platform_poweroff_seq(arche_pdata);
 
-- 
2.7.4


