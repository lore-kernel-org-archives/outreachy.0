X-GM-THRID: 6669727741418405888
X-Received: by 2002:ac8:2f74:: with SMTP id k49mr9872734qta.45.1552917003031;
        Mon, 18 Mar 2019 06:50:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:58c4:: with SMTP id m187ls7360644qkb.7.gmail; Mon, 18
 Mar 2019 06:50:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyOcCiQcefDVP/hYyNl3P4Z7DcYOFWEbDCqWIOkwlsDFTjsUnSpHEabhIEMzLN2sh6wRxd4
X-Received: by 2002:a05:620a:1212:: with SMTP id u18mr3543911qkj.39.1552917002416;
        Mon, 18 Mar 2019 06:50:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552917002; cv=none;
        d=google.com; s=arc-20160816;
        b=mihHGgqLawXb7k5jrG45Pq9c+PqwsW0WCl+ceo0wbHjPCNJgO+7Y0djFRHPoivgFpx
         zQ7obkchloiqkJj13xCOb5Sp2jZrky+BKltZRqx0x2HrNNdilm9AFdMltcPrmQKHzyHS
         jVN7o29ONNpUjGywSBc1F8kYmc04spSfIXQCl0TSsytvcVyrWLYJiqLpNvv6Kr6vB/Tt
         jVP90V8pY5Gb5EEmbalVNZaLNHye1c0fC6ndxku+uWKn3rmRZCchO4/LOSZj6wL5s1tT
         a2qrYOEIySexUTHRJg3cYSAY8ByzJImZTvPVrHmMPG1oGswYQldyqMQK8blctJ793OKf
         qsCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=sCAdGncFy5EKE04WTRyM20VdLIudpEqfRi2tRXLA+yM=;
        b=juDRfNgFtntWp6hauKkovF4eChWys0ITP3ZMdNGnRf2/F+v5wq0RShg2strqqlzido
         hloWcaRwRObmMQY/JTWf0+LtxOev5a+Nl3L2ZXuUBpFFLPqNo4bu1Mi58/r/N/N5LIAg
         PL6Knn1H/RXVwnLRyz6gAaaIO1ZSh3Kv0pHhva9xYJ42gkGnloEuqApSAONcRrleMyxw
         DVAkeiwKlBELNK/orCQW82Su1yq4WA307hMIzKchqhklOIq1vN97hT9oYwZFLWxBkX4u
         A3a4sn3Soi1NRZtxI1lfqpGqJcRLnr05zHomp/DkZ72dN9WkTSV7dFmpJ6uncoEEz2q3
         o7wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="sSvDTc/x";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id e12si362137qtg.5.2019.03.18.06.50.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 06:50:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="sSvDTc/x";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52e.google.com with SMTP id q206so11430380pgq.4
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 06:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=sCAdGncFy5EKE04WTRyM20VdLIudpEqfRi2tRXLA+yM=;
        b=sSvDTc/x869HAOzxKsm4ktNGw48OlKQPIRFN+4oLONFKzKgkr3/CZIAEJLml9bgxZZ
         gF//ya80yjUoHGwmbCCBHqxfyaDDJqx0KSoctzy0FV4L8BoJquCsDoqH66PI8X0cJVLF
         haV2Pk3eLH0Lm/VsFSunwMO5Hy/RkJASOU6r71P8gprkiS7/IT/t3FHlfxzm3mYWR8eF
         7HzxYpx4cnrC98JVFug02OfTo5Zu0DMSNyBumPfqBp8jfSKOMFyExsqsuotx6tEq86y6
         5XcuRJDRRLazgtVfiaLgHfFC1RNurIytWJTzyz2B7k845X86bE1wYSbf+vomwGb4KenL
         xKGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=sCAdGncFy5EKE04WTRyM20VdLIudpEqfRi2tRXLA+yM=;
        b=Mab+k57d9v2wNYMfmRFKR+pcnk81L0/9QWOIjWRjyWO/AmVdiGAUPVMli+CW7zg9XI
         U5nVF51ryNAhQRMbKe9s+I2NzO+qfLhq4i2UmWGD0P1x8EhrXbs31nQ1kz/cPKcuKEA1
         9zbTx0x7DRcporN+M++VioB0Bbdo9EZZOAZUJHzzk/xommNzPBh4KVF8ZsxuA9R3DOM0
         og6aM+8zsML0RhInGrliUfKP5OB8JDlD9vXtPemiMexo+CSrrZb5lL47hS9IutMYvf4y
         itoVq8EYwGkhS9jspzfpKG4yHFxMKcLfVDDtSLytPOeY9r854CoSu6eWBjHV7ceOn7P1
         vaRQ==
X-Gm-Message-State: APjAAAXuHqDMp/65HvmaG5SiKaIFagUDz6c++MTm9sby5d79Wep3d43q
	m4Q6IPbSh5M95mIhZqzxmA0=
X-Received: by 2002:a17:902:9a83:: with SMTP id w3mr19916380plp.137.1552917001994;
        Mon, 18 Mar 2019 06:50:01 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([203.109.108.32])
        by smtp.googlemail.com with ESMTPSA id d11sm25996271pfh.29.2019.03.18.06.49.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 06:50:00 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: gasket: gasket_sysfs.c: Fix multiple string split issue.
Date: Mon, 18 Mar 2019 19:19:50 +0530
Message-Id: <20190318134950.14056-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove string " across the line.
Issue found by checkpatch.pl semantic patch results for gasket_sysfs.c

WARNING:quoted string split across line.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/gasket/gasket_sysfs.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/gasket/gasket_sysfs.c b/drivers/staging/gasket/gasket_sysfs.c
index fc45f0d13e87..a2d67c28f530 100644
--- a/drivers/staging/gasket/gasket_sysfs.c
+++ b/drivers/staging/gasket/gasket_sysfs.c
@@ -223,8 +223,7 @@ int gasket_sysfs_create_entries(struct device *device,
 
 	if (!mapping) {
 		dev_dbg(device,
-			"Creating entries for device without first "
-			"initializing mapping\n");
+			"Creating entries for device without first initializing mapping\n");
 		return -EINVAL;
 	}
 
@@ -233,8 +232,7 @@ int gasket_sysfs_create_entries(struct device *device,
 		i++) {
 		if (mapping->attribute_count == GASKET_SYSFS_MAX_NODES) {
 			dev_err(device,
-				"Maximum number of sysfs nodes reached for "
-				"device\n");
+				"Maximum number of sysfs nodes reached for device\n");
 			mutex_unlock(&mapping->mutex);
 			put_mapping(mapping);
 			return -ENOMEM;
@@ -264,8 +262,7 @@ void gasket_sysfs_remove_mapping(struct device *device)
 
 	if (!mapping) {
 		dev_err(device,
-			"Attempted to remove non-existent sysfs mapping to "
-			"device\n");
+			"Attempted to remove non-existent sysfs mapping to device\n");
 		return;
 	}
 
-- 
2.17.1


