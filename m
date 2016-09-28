X-GM-THRID: 6335442483781042176
X-Received: by 10.157.51.124 with SMTP id u57mr8475290otd.66.1475085151589;
        Wed, 28 Sep 2016 10:52:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.68 with SMTP id h62ls1444734oth.17.gmail; Wed, 28 Sep
 2016 10:52:31 -0700 (PDT)
X-Received: by 10.129.95.11 with SMTP id t11mr8609636ywb.112.1475085151218;
        Wed, 28 Sep 2016 10:52:31 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id e66si2376800pfk.2.2016.09.28.10.52.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 10:52:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 6so2424047pfl.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 10:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ztLAaC752stVBctcR9crDqdaK2ENwupKR1bxk1M3d10=;
        b=FQW2g7YIqU0TJlxdRMjZrIgArwdc2eJMoYBeMswJ1MeNRCqwXLk8Aa/kL74y7JRdjb
         41cwyALbgAOZ4Kb/aoycxr7sVzua43Xj9edrOiOYejQ65Jt/6J9DsXaidjvrRxz3svCG
         Rs7bEOSxCCP4EUo+F0i0ExU+iNQri5NAW1b30dEWzBd2ToJn3AOsSOhCvuu20ZmbbS4c
         GNQJam1BJo61s+QFqBOspKvkeD6fnhMDIAhvlm1n2B8bYhrIGPiTOt1p3RCbmp+0t6od
         5CuvJ1mB7XqXWJOJz5vC1hBGKP5pseXe/D+mPtMxZjgO6u1HMARwHiZDVX2dZI5NOJKl
         aWFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ztLAaC752stVBctcR9crDqdaK2ENwupKR1bxk1M3d10=;
        b=ODOi9LzDRvohDtPpyNV9TvYLRK9pCSuhXHzVIW3IC32m2RAYW8X4wJWdzi6Ul1ryio
         5+zZxAoBJghW2Aa89bh/kcvvPqRTDpnIoQI/SqiaG5zEhwxDgDlDxEuADT92ufS0pC7G
         sAItbi77CI/0zucA/GJePQuYurSavZuR6rKeyT2Ar73i1VzED9YnHyv4KGhlZ8W4ErtZ
         145gS+wfjYi+QmpyhosLbaGiKB52LkVtd2mv7nksZc3P7yrfbfi9erYOTCrJA6mXAaXG
         E3arABtRnPENNsFYPlmjtL9pW8le5zXnJSrNe8KU02GsoPYi9aE8Az739J46imKT1uEg
         TXyw==
X-Gm-Message-State: AE9vXwNMJCW68/zv/eotIhH3l/5P7+cll/rFdMpjMJXeKAw7sDz00B/yJ4dsCUme+JQ6Aw==
X-Received: by 10.98.65.1 with SMTP id o1mr59498968pfa.134.1475085151014;
        Wed, 28 Sep 2016 10:52:31 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id t67sm14125180pfd.32.2016.09.28.10.52.28
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 10:52:30 -0700 (PDT)
Date: Wed, 28 Sep 2016 23:22:22 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Michael.Hennerich@analog.com, knaack.h@gmx.de, pmeerw@pmeerw.net,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: iio: cdc: ad7150: add comment to mutex
Message-ID: <20160928175206.GA13416@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)


At the risk of being overly pedantic...the lock will make sure that the state
data in this structure always accurately reflects the state of the
hardware.
So, when parts of this driver start changing those settings, we need to use
a lock so that simultaneous writes of that state data don't conflict

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
	changes in v2-
		-modify the patch comment
		-add file in the commit message
 drivers/staging/iio/cdc/ad7150.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index f6b9a10..13709bf 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -78,7 +78,7 @@ struct ad7150_chip_info {
 	u8 mag_timeout[2][2];
 	int old_state;
 	char *conversion_mode;
-	struct mutex state_lock;
+	struct mutex state_lock; /* protect hardware state */
 };
 
 /*
-- 
1.9.1


