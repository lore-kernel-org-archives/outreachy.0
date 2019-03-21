X-GM-THRID: 6670691993159467008
X-Received: by 2002:aca:f4ca:: with SMTP id s193mr519288oih.21.1553141510101;
        Wed, 20 Mar 2019 21:11:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:be04:: with SMTP id o4ls59682oif.1.gmail; Wed, 20 Mar
 2019 21:11:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwZYVqh4dDa/MATprTuqys6reWDkN920YGZswiz0Cp4VX/4nISMHFCkgoSdiob7ukdnUZnx
X-Received: by 2002:aca:4b4a:: with SMTP id y71mr516289oia.43.1553141508921;
        Wed, 20 Mar 2019 21:11:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553141508; cv=none;
        d=google.com; s=arc-20160816;
        b=hU2uXmKoku5P+YfHVq18bFU3B6iv29AoJ4IDJn/6djkPXi0BoTddSocWXsqnrWZkCK
         hs6PeYMay1deCjZ+chJ1c158Ze5IC/kCR0xS9wVEeEkSzdeOHJD35J/w6cekZhvTbnHn
         ZAF63CHSLnJ/hfgNJFU+EvJQgVrUI1bg1JWRQxoj0NZwiCpCpWDtXLEPBYqD0DFMXYIU
         rpriAOp5fqvqBDYFlic0Sq6ZcIHTdMHDYZdKFXUjSmjnghijAvLavBqe/81p9OteO2za
         5zLbQQfjew5Exu5LriByeGLe2IcwHTaCtZwztE1C90CucKbsML9r4hj2L2aUE1KjXy0d
         0oSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=2inUOEn4HJeX0QVV9/66o/GSPU5vMQhtBLWX6awoOS0=;
        b=zG6oWe4KsN6xpfAdTrHv0aIHfRCE/ZwU6ZNsAK8aMmdUprgLTB9ukF3Gxuj/bPpw4T
         X45Sxk9jKu3ltdprxjxPRniG9ukpwrX6VX5OtZiXm+NcUlzQI3Cy/Nj2p7KrCLnQOubM
         M6j/KOfWDDfMNuH1q9lN8u0GLLt9sT/2HFSrAmeC90+CdDAuvG/PPr0jP0wG0pH1YCyX
         k/7eV0Dj5j4KIyOykCCWZybKVYhHsTTSh/BW22xgNj4Pkp9qYkg5KSNDEFlobPom1vlR
         EOxh/PqwRwNHkwr3wvs7AhoWN7Jv8nBH67YeUUaACNlyMMVWx1mz/B4ScJQ16dI8oJLp
         jUyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cUJfrkum;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id q205si171903oih.1.2019.03.20.21.11.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 21:11:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cUJfrkum;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42a.google.com with SMTP id v21so3430997pfm.12
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 21:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=2inUOEn4HJeX0QVV9/66o/GSPU5vMQhtBLWX6awoOS0=;
        b=cUJfrkumZ8n2tb4z/ZdrfO5An4otAfK3RLBXLJ3vArklS/05A5294Wth4jjhEB19i/
         ozXnfe3p87QgmU/iZrtdw0ugbe328TkWhbqQVtjjexmMj1bjq5Mijl2i71CQZbb2jKIq
         bbDW0OPlCl8oON298NGdvaae+6Jp1cbAcqhgx0PFdnDMuyaW/aiEfuc6AvBav8mVOTrB
         C2nyADQ38HOo1LDdE3Cz170RRxkce5SrxdUmS9vI9d+RUpSGJrMf6Iw31WrHlLMMhAXB
         KJWbCfSsRkM7EMQqmpa26FT/LkQFBAayYgYwUGJA+631AJoiJyVeFZMP2mrwumO26BNk
         AePw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2inUOEn4HJeX0QVV9/66o/GSPU5vMQhtBLWX6awoOS0=;
        b=dAmZ5J4ntycuinzvbeoZ15SQgJBVjO/xqM7+NGY3voVuegEAzXn3oxvoq9sqOgUfT4
         yjmyBh/3yT9JGSXJN3ZyuJ+evl0Z+qrleDvt7DPbkODenWFx2Z5hZPkpI7S51CqTdowR
         eKYTIHXSVzwJaXKHW1o7ol2nnx1xsDAzgz3VvwLTFe4hinv4LcfcYasSP1cXzXbcL+E0
         giw6jBfr89OV/k/kul/j5/6sCqyUNFM3TmTd8weL3Jk10hTFliKYNw+hxGYe/Mzn1XWL
         t/tTCVgHooCxO0gb15z392aWEr1pTlsI3/T9ShqRRr3brxV7r43EGtVobfcdY2V4P5Gc
         H5Sw==
X-Gm-Message-State: APjAAAUfpvgHEVU05YepciQHaxL0m3E+f5v+6VtF2YqY7EUESxQl/9UQ
	OjdOOBJ2ZGHlikODQy0ys0uToJKP
X-Received: by 2002:a63:a04c:: with SMTP id u12mr1496188pgn.131.1553141507333;
        Wed, 20 Mar 2019 21:11:47 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.224.165])
        by smtp.gmail.com with ESMTPSA id f65sm5584617pff.21.2019.03.20.21.11.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Mar 2019 21:11:46 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: emxx_udc: replace 0 with false
Date: Thu, 21 Mar 2019 09:41:27 +0530
Message-Id: <1553141487-3582-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

replace 0 with FALSE in file rivers/staging/emxx_udc/emxx_udc.h

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index b8c3dee..540e4ca 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -10,7 +10,7 @@
 
 /*---------------------------------------------------------------------------*/
 /*----------------- Default undef */
-#if 0
+#if FALSE
 #define DEBUG
 #define UDC_DEBUG_DUMP
 #endif
-- 
2.7.4


