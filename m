X-GM-THRID: 6668219746815574016
X-Received: by 2002:a24:6f15:: with SMTP id x21mr1989323itb.2.1552565895701;
        Thu, 14 Mar 2019 05:18:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:d817:: with SMTP id l23ls2141494iok.2.gmail; Thu, 14 Mar
 2019 05:18:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxX6jy54GITvU/pmgg3ZeMrjBMlVK0jdUeaz6vJc/+UbAVJOy+rryyDGO16ipBLYApAZdKd
X-Received: by 2002:a5e:8c1a:: with SMTP id n26mr7837097ioj.16.1552565894702;
        Thu, 14 Mar 2019 05:18:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552565894; cv=none;
        d=google.com; s=arc-20160816;
        b=A8FWlQ0rXK8kMSrJIxDUcqwmeIM10VAn+YE4mqZMLPNfkeTSHHRBeMPKAPSUOdXPcf
         azGVx04gdFuCRNcPqfZmL/3xCZby6a6hMZPf8Z2FGDJARZUTBzpzgt/R9MoXSMqjDq5M
         VMiF11MRKtPG2NKmWc1Et3dc8F9qJ7yYarSyHoe1c4rX+Ib/Rjy9EgfNNzK8QUBPGoP+
         YVoDunakprbnoPGEh9DCc4FadEKDGwLQJQKIOB1Xt4yLSMAGyGdDt32hmC4QgOul5cLM
         FLS9aq2FfD+foPHezqTFbrrnku/2XAKIN1f+hlz7Ntxat2YlJcOqVm7f6DRrn4kaxFi6
         b4dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=5c0O27MkzI8bCq6UK07obDwu5mDuLe1JiQYeD0LNmUE=;
        b=MO0GrNtxdaDxhP/9zgjEUvqP3hNwZBfr+Lz79aAjGBqlCgRWf3lmSoWhcZKbkRPpwj
         xkgo7UToyAM1X+KBqfG5/zDg4P7SdWmHh1r1+ffsFJX2MIaVrZf9lyAcuHrqCTrCkFt7
         U1BhAR92DsGH7ZBSV4jIDpwpAsGbUmtBWunTVPVfVwZOJllxfgAa34WKb2Uepe1/lXmj
         3Ydfr+ByGvmHgvLl/XOKfrnyQYLhyLXcYmOG9eVdbf4FBwB6ay+dG6BELvmuTOLvlUiK
         0huUT53cP2BxV2jBluGEsCIGSxstEQyWIS1gBaKre1zh07e72IFCWvnuLbsRrfEWbWat
         wkig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gyzm+2mZ;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 185si38645itw.4.2019.03.14.05.18.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 05:18:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gyzm+2mZ;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id n22so3715219pfa.3
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Mar 2019 05:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5c0O27MkzI8bCq6UK07obDwu5mDuLe1JiQYeD0LNmUE=;
        b=gyzm+2mZ1CphuwJPwQMQnkA/fWvnSun9pHkudYAqolUPrjX7H+SRvxcm5JaGdz+gLP
         GmUHFfVUgGhud/4gFCEMawVIWIFhBDvV1ugdaS2blRYcI2X0iwJrmmJumRvJw6cyhTXj
         fD4SXiw0SO6MIe/5FDk4XYPu0tMZzLxZeHhrugULjmsoyTDZzhHi3Hc3gUAoAmAlbZZN
         TXGTeeOpXsiXqrSZf958vFfd+AiitHOg5L6EU/cfrBskrlFK3jEsXC9/A3Aa+JmwRX+B
         fSYTpG488sOsbCTpAvhpy26oag7tpBBn5WaqGo6ziNcgT1Gy2p+G4ISaWn4GmM9zYj7o
         XT0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5c0O27MkzI8bCq6UK07obDwu5mDuLe1JiQYeD0LNmUE=;
        b=OYDayTVLcMuiOD49g/HpI2ArgUAEtB1w8ygNjx3m2wmrQsJ2FZEKxOmlUFy19Iw1j8
         mSrPmHChHZTlLnkA7O6jgWRgVaA3T50lNOsUJWXj0n9zoky+DHejpEv5WZ7n01HIc8hF
         Oe3rmo4n1b9cOZjEisOPPfn1pV1uEs7Z6CcdC3N2iVgbIPfyvppEw2pONP1wFApeuTB1
         VgX2aA6w/5vdYnj22ZDUtdo6862x1nbEeuvGU1VG5VU9IsDRPwA0KVuIR2If2+KMm5nN
         CASu1SxVK8fqUiZhoAkOu9qC8jfWvyx4qxESFIVyX7K0qvZRMLRk5akV7Mc7oDNJDhB/
         NfFQ==
X-Gm-Message-State: APjAAAXTHtkqIaQDiUKMQP4B80+Rk476YjbLLt679MQldcz9DfMuYZCc
	bxth9TVvOeF93HHAjH9yGJw=
X-Received: by 2002:a63:cd10:: with SMTP id i16mr43258482pgg.90.1552565894096;
        Thu, 14 Mar 2019 05:18:14 -0700 (PDT)
Return-Path: <digholebhagyashri@gmail.com>
Received: from localhost.localdomain ([157.33.200.202])
        by smtp.googlemail.com with ESMTPSA id o5sm19953990pgc.16.2019.03.14.05.18.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Mar 2019 05:18:13 -0700 (PDT)
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtlwifi: Replace 0 with false.
Date: Thu, 14 Mar 2019 17:48:03 +0530
Message-Id: <1552565883-10229-1-git-send-email-digholebhagyashri@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace 0 with false, Bool intializations should use true or false.
Detected by Coccinelle semantic patch boolinit.cocci.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
index b519d18..9198189 100644
--- a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
+++ b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
@@ -830,7 +830,7 @@ static void halbtc_display_wifi_status(struct btc_coexist *btcoexist,
 	dc_mode = true;	/*TODO*/
 	under_ips = rtlpriv->psc.inactive_pwrstate == ERFOFF ? 1 : 0;
 	under_lps = rtlpriv->psc.dot11_psmode == EACTIVE ? 0 : 1;
-	low_power = 0; /*TODO*/
+	low_power = false; /*TODO*/
 	seq_printf(m, "\n %-35s = %s%s%s%s",
 		   "Power Status",
 		   (dc_mode ? "DC mode" : "AC mode"),
-- 
2.7.4


