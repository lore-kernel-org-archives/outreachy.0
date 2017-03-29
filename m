X-GM-THRID: 6402897717905850368
X-Received: by 10.157.3.9 with SMTP id 9mr82247otv.100.1490790809802;
        Wed, 29 Mar 2017 05:33:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.209 with SMTP id r200ls3152506itc.20.gmail; Wed, 29 Mar
 2017 05:33:29 -0700 (PDT)
X-Received: by 10.99.132.66 with SMTP id k63mr89330pgd.10.1490790809219;
        Wed, 29 Mar 2017 05:33:29 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si1001184pfb.2.2017.03.29.05.33.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 05:33:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id o123so2553305pga.1
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 05:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=d0QfT6x2PoTuiG93ZH5215F/8O8O1B2wmqLVuExX1bM=;
        b=O/IK6c40M/ROIHUOYZDpsEilkK8H6LG6Hy+GUYjbda8ps7Ne5SfkV4EjrjPKWfMhOE
         RsvaoPzzCE4oAqXg29iSvhWtDRvNuhJiDi8Ig0GqjYKQV2nzK7lcn66Kq3srmVQjVXSD
         LtIffcV8BJF/sfz048Jv3C6gq674OkZS74YSFQnB5r6hL9jx+QjZ1eKe9aEWOai5rGtn
         +D1Zx5XJ/KHXsRQnnHzp49LVoyYcWnbx2AJp1pHCWqjjSeG0CN1WE/NHKNgCDsD5PygS
         sHy4W9YXaB8aEaZB8mKNkU5MQhtgFczJgKe6sPhnAeBvN6p1x2jM+mV111O0+0IGmMdw
         1HOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=d0QfT6x2PoTuiG93ZH5215F/8O8O1B2wmqLVuExX1bM=;
        b=TvXg4iDPh0PP395VpCOaBNgTtv98zOITNPSYz+FMFNoq/E0mwg9vs+c18kmQORcW6l
         YbiWsgCZy8EAVVw05gLSp7fj6KkacpMXBT/a5LMzf35vcdX2ssvePTSAr/bwX5GdyeEd
         RzwKonliLRIChqnopK75ND5X5jRhWtyz1DpQgNSKLcDV8K+xhY5N+/35EjbicFN89StF
         DR3rDtJKAXZOC/RFUvv5PFN/A/IGCZ9kKYG6lFqWHMln8MAfDZJifoJOpZIz3ihs3xaL
         fDL9kzgFpMxmSSlWB2jCmOsAOnVeV9pxbeOhuD+Ct3VgXwQtqWoOGVELDtGsQr7eRSUq
         ni3A==
X-Gm-Message-State: AFeK/H0fqZC/vDZP9i3Gn7fOdWCo6BjbQ25wLvxBhkIT5DnSvQ6acWLxBrAqcA/kX5ivQg==
X-Received: by 10.98.142.1 with SMTP id k1mr283967pfe.98.1490790808946;
        Wed, 29 Mar 2017 05:33:28 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id j62sm13417382pgc.54.2017.03.29.05.33.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 05:33:28 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: jic23@kernel.org
Cc: knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] iio: light: si1145: Replace ternary operator with min macro
Date: Wed, 29 Mar 2017 18:03:11 +0530
Message-Id: <1490790791-5694-5-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>
References: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>

Use macro min() to get the minimum of two values for brevity and
readability.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/iio/light/si1145.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/light/si1145.c b/drivers/iio/light/si1145.c
index 096034c..e7ad6fb 100644
--- a/drivers/iio/light/si1145.c
+++ b/drivers/iio/light/si1145.c
@@ -557,7 +557,7 @@ static int si1145_set_chlist(struct iio_dev *indio_dev, unsigned long scan_mask)
 	data->scan_mask = scan_mask;
 	ret = si1145_param_set(data, SI1145_PARAM_CHLIST, reg);
 
-	return ret < 0 ? ret : 0;
+	return min(ret, 0);
 }
 
 static int si1145_measure(struct iio_dev *indio_dev,
-- 
2.7.4


