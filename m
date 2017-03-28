X-GM-THRID: 6402618675117948928
X-Received: by 10.25.104.21 with SMTP id d21mr3911791lfc.31.1490725827101;
        Tue, 28 Mar 2017 11:30:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.219.12 with SMTP id s12ls1482099lfg.21.gmail; Tue, 28 Mar
 2017 11:30:25 -0700 (PDT)
X-Received: by 10.46.20.16 with SMTP id u16mr728709ljd.23.1490725825628;
        Tue, 28 Mar 2017 11:30:25 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id x188si467166wmx.0.2017.03.28.11.30.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 11:30:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id p52so21192862wrc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 11:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cvSWJS3uMjC4gU9Qs6sI5o22UST5u8UbKfOOFyYLnuU=;
        b=n+HrPx6DOyIyWWCetmzBdVWNoJ83ktBaUmCfq0clc32nfSVRr1kDNRfWJQQY10WWdZ
         IaKVOVaX72kWZR1kXKoYHqQMxtwU0otvHv4mter9I1v672na/oFtQ6QOZs6Nfj1Pg4Uj
         z2jm0zRG8qioGYRJTU05XOhdsiC+NTp2U/TX8XpiAgRuI+DIxEMezhM+nlUyReVKNsZY
         cebhM1qay9OdxhzlhUXBUVy+Uij0xSnIPLuD3l/7JvY8pDV+Og88eUIqrg7NnRmXNGAG
         8sKgyeyt70h8/zQG/4qF2e6gGBYlubaHjbtTVPavo1CkFHJZJDvVokQ1nb2wkLuojQJb
         ctMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cvSWJS3uMjC4gU9Qs6sI5o22UST5u8UbKfOOFyYLnuU=;
        b=Ntacc5N3buJbYTM+aA9XS1qQM8Gx8+t6q3LEkcm8318Fzn5/0fe3eUOwkwF7ONRCYN
         UoPuBb33gvlecknND+ZlhSBjcOZTGHeQfEc+mo/vsVj/y16y4+3KKBLxuu8yVR+ZDjmu
         qIYG0EaUGRh8SEhtcC0kdBDWu+O7gpzFOijpp3gIfVLf6CXESj67nxFY4Rxz3wDFWhyQ
         cbgfcYV1q54jxEBLB3Fb3GOmBV9t1efhzN0BO2y5fO2feeTR8acCRheWVMohxcncrnD2
         DsishyngpKiqIAGDttmFA/ce0qIk2egBLvKVlKtFBrzWaA+IvZhg7ViK0Rc/YqD1/DGV
         DJnw==
X-Gm-Message-State: AFeK/H2YJ1wYtwoF4GWacK6d2fegCEpdAK6yq/gS2LxeDQpnSvTtuwvAnXSpdQx9m1/pgQ==
X-Received: by 10.223.174.164 with SMTP id y33mr26856084wrc.166.1490725825362;
        Tue, 28 Mar 2017 11:30:25 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8160:a9a:a95b:ae25:abef:f637])
        by smtp.gmail.com with ESMTPSA id q188sm4669039wmd.3.2017.03.28.11.30.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 11:30:24 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	corbet@lwn.net
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] Regulator: core.c: Fix kerneldoc comments
Date: Tue, 28 Mar 2017 21:30:21 +0300
Message-Id: <20170328183021.2683-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Remove the description for the non-existing 'ret' to fix the build warning:
./drivers/regulator/core.c:1467: warning:
Excess function parameter 'ret' description in 'regulator_dev_lookup'.
The description found for the return value is: @ret: 0 on success, -ENODEV
if lookup fails permanently, -EPROBE_DEFER if lookup could succeed in the future.


Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/regulator/core.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 53d4fc7..219b665 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -1451,8 +1451,6 @@ static struct regulator_dev *regulator_lookup_by_name(const char *name)
  * regulator_dev_lookup - lookup a regulator device.
  * @dev: device for regulator "consumer".
  * @supply: Supply name or regulator ID.
- * @ret: 0 on success, -ENODEV if lookup fails permanently, -EPROBE_DEFER if
- * lookup could succeed in the future.
  *
  * If successful, returns a struct regulator_dev that corresponds to the name
  * @supply and with the embedded struct device refcount incremented by one.
-- 
2.9.3


