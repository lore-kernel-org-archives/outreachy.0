X-GM-THRID: 6257874125297025024
X-Received: by 10.66.63.104 with SMTP id f8mr9325120pas.4.1457740749386;
        Fri, 11 Mar 2016 15:59:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.208 with SMTP id n74ls2994733qgn.63.gmail; Fri, 11 Mar
 2016 15:59:08 -0800 (PST)
X-Received: by 10.140.240.11 with SMTP id l11mr9341575qhc.11.1457740748880;
        Fri, 11 Mar 2016 15:59:08 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ui7si1708238pab.0.2016.03.11.15.59.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 15:59:08 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id q6so9543655pav.0
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 15:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=t47e7BgFDFo3N6CQzd6AfZ8CK35TkkkC3DhqE4KPZR8=;
        b=Apx7xLhoFpbMBaCbSyQmvfhtKwXItyo9TrVjqpyWEr2fzJGsPZejZjKGrxJF26lRus
         90hBtsRbG/6LlspQWVMya1Se5KmCNldHsld8KdrG6oZ7NSdpxUA1b743N7bXzfeaqwIQ
         hxqt1EdUBSikXCNYWRnoCW7/SZ89z7ZfvZRO2+OpBDuu9NraTeIWfb3FXFeLvqQD6pkg
         MA6uyTrfgQlLg3L5OwDiCFXrXeRL8q9pt5rE3TmXytQOrfR/LdfGA1opRv+i8LKCp8E8
         3KsNAAe3QTyTQ6J77r9+xGUM6sVDjS76/Vp1evuao2HHz/4hBEI1/LfbGt2CCds7ANb2
         criQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=t47e7BgFDFo3N6CQzd6AfZ8CK35TkkkC3DhqE4KPZR8=;
        b=TxLeHM//HkFidYJI/txJrXZd+lGkPsHlv6FWgbOSPLDajdKBfH+c9w0EKJCB1ytxL+
         9SBYUD0Q8k3BpDM+N/kZ4rP4cLMMqy+ByfkgL0/t8gTClP9zF7r7n+41ilZdVcRugOJU
         K3o70HnlwAIYKKxJT8F0VqqR9cGMV8vlxwZvdux9D14iKLqkF0d3LHFylGSQ0N16jp8M
         CmOFfXCJzDzF48FMzg/M9LdDsttIkQsnggWoGGDRCGBpsfDLDEKM7uUkFm+DGnESJnGH
         n/g/mporVLdXkQOfKdJuWFxBB/APD5sxvJUN0bkC6eMtc/BaDvH2gD6qrwkvNgC3aOvx
         Tl3Q==
X-Gm-Message-State: AD7BkJLZHnY8q2eGEdhHvVJNCrgx5TwFlXAOlrJ5pj8vxFN5xuHoZqGV7gXw9ylASb0r+g==
X-Received: by 10.66.246.234 with SMTP id xz10mr19711681pac.49.1457740748675;
        Fri, 11 Mar 2016 15:59:08 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u2sm1275040pfi.26.2016.03.11.15.59.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 15:59:08 -0800 (PST)
Date: Sat, 12 Mar 2016 05:28:54 +0530
From: G Pooja Shamili <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: mt29f_spinand: Replacing pr_info with dev_info
 after the call to devm_kzalloc
Message-ID: <20160311235854.GA1139@localhost>
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

Signed-off-by: G Pooja Shamili <poojashamili@gmail.com>
---
Changes from Version 2:
            * Changed the title from pr_err to pr_info and dev_err to
	dev_info
Changes from Version 1:
	    * Changed the name in the From: and Signed-off-by: to full
	name.

 drivers/staging/mt29f_spinand/mt29f_spinand.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index aa0170e..9d47c5d 100644
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


