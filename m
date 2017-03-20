X-GM-THRID: 6399553954141700096
X-Received: by 10.25.24.65 with SMTP id o62mr3177389lfi.8.1490012278758;
        Mon, 20 Mar 2017 05:17:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.101 with SMTP id h98ls143492ljh.2.gmail; Mon, 20 Mar
 2017 05:17:58 -0700 (PDT)
X-Received: by 10.25.77.149 with SMTP id a143mr3388133lfb.26.1490012278029;
        Mon, 20 Mar 2017 05:17:58 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id b186si1135510wme.1.2017.03.20.05.17.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 05:17:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id l37so17791605wrc.3
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 05:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=96ZPEG7wEKMs7XSeAwq3o5JotMCLi1HzqJn1he5FfSk=;
        b=Y9/ZW5QbniWR6BA61e4IfS/wjQrpEFyq+0LPxSy4S7TBJ5Kw7GmvBvM2JrnxMGNbcR
         UKhNHTIRRoeffZGFlTM7Kc0CwgwtO3rroHl7gOxuSRGja1Q9M8HXtrc53Z9bsLfH5QnZ
         ZL6p7vjiaxkUj31FtCAk27LxDBqC5GYS87jqfDtUeyQiaikKcsftclRAhr12KPv+O8yY
         dayHZKEPDYfw7+rM98OGGGnWs1ph0kKoKX42enxqZ/0BPQSgAs6l6NmEw2IYr2iw5RGf
         tqhJ3nmfaFsjOQpBAQAN0vodvczIe/CN/ysQO5Cp+dSXnxnb8B0pS1SvU1uKZLTmZ7bk
         /CUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=96ZPEG7wEKMs7XSeAwq3o5JotMCLi1HzqJn1he5FfSk=;
        b=iNyw+jHyYzHSlPcxIFl5ak8w4qR1biEMamGZPPwQrIzKag+HsMmKJ7YiEopoKy4NC3
         km5qRZzfx1R812wqforPUb6snnbAucyELn//X0tpMLvdz/kG/yFBYGzVq1PFY7oT83er
         liXzedPzO8ofLZSWtTDvHC+5nR3if+bljVUkKOvErTT7IuedWInr3Mrrkw6QyRlnlF/z
         dNn0mK40xiso3Clsd6zi45g1hqenxm/mfKx9SCGGn/xI0P7/iv00JyoxnjzBEWR8dOud
         z+hJ4oCMgdinoTmxORTY9gvX7NDFFVN4cxSHcjLs6KTNEttIKDAg2nPdfq0NpVhrQ+VM
         F0Hw==
X-Gm-Message-State: AFeK/H1vVDojnb2gB3npn0cRXanZVJYJQeLsClD4QHpmNB3sH+SdzsuJYItvFnPGeUsCag==
X-Received: by 10.223.131.97 with SMTP id 88mr22543668wrd.129.1490012277860;
        Mon, 20 Mar 2017 05:17:57 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id o15sm13289323wmd.10.2017.03.20.05.17.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 05:17:57 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 1/3] staging: iio: adt7136: Remove unnecessary blank lines
Date: Mon, 20 Mar 2017 14:17:50 +0200
Message-Id: <3941cd3fba0290bbe6bbd23c3a05e3d195deb0f4.1490011900.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1490011900.git.narcisaanamaria12@gmail.com>
References: <cover.1490011900.git.narcisaanamaria12@gmail.com>

This was reported by checkpatch.pl

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/iio/addac/adt7316.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index aa251c2..872fac6 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -244,7 +244,6 @@ static ssize_t _adt7316_store_enabled(struct adt7316_chip_info *chip,
 	chip->config1 = config1;
 
 	return ret;
-
 }
 
 static ssize_t adt7316_store_enabled(struct device *dev,
@@ -434,7 +433,6 @@ static ssize_t adt7316_store_ad_channel(struct device *dev,
 		config2 = chip->config2 & (~ADT7316_AD_SINGLE_CH_MASK);
 	}
 
-
 	config2 |= data;
 
 	ret = chip->bus.write(chip->bus.client, ADT7316_CONFIG2, config2);
@@ -725,7 +723,6 @@ static IIO_DEVICE_ATTR(AIN_internal_Vref, 0644,
 		adt7316_store_AIN_internal_Vref,
 		0);
 
-
 static ssize_t adt7316_show_enable_prop_DACA(struct device *dev,
 		struct device_attribute *attr,
 		char *buf)
@@ -925,7 +922,6 @@ static ssize_t adt7316_show_all_DAC_update_modes(struct device *dev,
 static IIO_DEVICE_ATTR(all_DAC_update_modes, 0444,
 		adt7316_show_all_DAC_update_modes, NULL, 0);
 
-
 static ssize_t adt7316_store_update_DAC(struct device *dev,
 		struct device_attribute *attr,
 		const char *buf,
-- 
1.9.1


