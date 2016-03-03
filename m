X-GM-THRID: 6257874125297025024
X-Received: by 10.182.250.201 with SMTP id ze9mr2508224obc.0.1457024860697;
        Thu, 03 Mar 2016 09:07:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.79.71 with SMTP id h7ls2304575obx.2.gmail; Thu, 03 Mar
 2016 09:07:40 -0800 (PST)
X-Received: by 10.182.148.227 with SMTP id tv3mr2363926obb.30.1457024860180;
        Thu, 03 Mar 2016 09:07:40 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id yd9si6058516pab.1.2016.03.03.09.07.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2016 09:07:40 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id 63so17980286pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 03 Mar 2016 09:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0lpm6oGyde5Squk/uCqhSn8hcIa5O5uHCZTo957zw14=;
        b=XRYh5BGyVAic/8CPLH7JhHNY6KT6mx9A24cfZatLOizTmxWQ6Rc1ZBLDFTSpQiIAUZ
         epVM9q+ChTLaMtv93ZoSwuLFl3nvB1bFEuiXYgSxrDMYZLBVoMwNOgUJMOqEse43FTNS
         IdV/JqkwkpKXfuhXpQpACUURHh6iI2RUGXJHKxoEh6yKAyuC5DkpDUjdgtiNMKevky63
         D/SeWmsa+3RQMCGpxXuRoDvkJ8aIMZPSaRsttfH+3+Rp2CVhT3/ve/pYya3ridm0XzII
         yO0UGmYibAPoiTXwGqY/uEBcH3H8av2D1XGrNrE81SjrID7iwYUdXAjPfwW4P1FNJdxa
         DH3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0lpm6oGyde5Squk/uCqhSn8hcIa5O5uHCZTo957zw14=;
        b=IxUx3iQxOwCKNcCAgwz0ldBRLPFRGEaR0tjGAnmZ3/F+9nlVd2t+20qjiBff0/EXwn
         lXVOjW44YUTe+lQ+vxwhZMKwPrM7APvYETDCldCIjmZQHUJElYebyM1uNGlx+JtbtDAG
         pDDpzbIln/avWpRp73NkHw8HCyC2Yj2unuuGZwurA8puy5FHANbQG6jQpoVM3O4y7as+
         czhe2w09fUt2Q2m5u2Q70+BAHFp6HfHatYSEeYPeccBXNJ9ZZ59Vxpq5yUWJ9beaIbtM
         KvGRHP9/lUT+sf+mkpGgpnF8lT512adTzfXgE4WTzj9ZA5ehID1HU4lJiBv4b6gQ31Uy
         rwVQ==
X-Gm-Message-State: AD7BkJLaGGJmOxvwTztaHFnQDkNDZIgFtDDoRhrytYqVWtxWlTKDJ0GGvijnkJrSnwF4TA==
X-Received: by 10.98.68.73 with SMTP id r70mr5210105pfa.136.1457024860007;
        Thu, 03 Mar 2016 09:07:40 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id yl1sm61927356pac.35.2016.03.03.09.07.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 03 Mar 2016 09:07:39 -0800 (PST)
Date: Thu, 3 Mar 2016 22:37:35 +0530
From: "pooja.shamili" <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: mt29f_spinand: Replacing pr_info with dev_info
 after the call to devm_kzalloc
Message-ID: <20160303170735.GA3773@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The function devm_kzalloc has a first argument of type struct device *.
This is the type of argument required by printing functions such as
dev_info, dev_err, etc. Thus, functions like pr_info should not normally
be used after a call to devm_kzalloc. Thus, all pr_info occurances are
replaced with dev_info function calls.

This was done using Coccinelle, the patch being:
@@
expression E1,E2;
expression list args;
@@

E1 = devm_kzalloc(E2, ...);
<...
- pr_info(
+ dev_info(E2,
args);
...>

Signed-off-by: pooja.shamili <poojashamili@gmail.com>
---
 drivers/staging/mt29f_spinand/mt29f_spinand.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index 75fe61c..791e36f 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
@@ -893,7 +893,8 @@ static int spinand_probe(struct spi_device *spi_nand)
 #else
 	chip->ecc.mode	= NAND_ECC_SOFT;
 	if (spinand_disable_ecc(spi_nand) < 0)
-		pr_info("%s: disable ecc failed!\n", __func__);
+		dev_info(&spi_nand->dev, "%s: disable ecc failed!\n",
+			 __func__);
 #endif
 
 	nand_set_flash_node(chip, spi_nand->dev.of_node);
-- 
2.1.4


