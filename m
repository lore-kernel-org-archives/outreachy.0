X-GM-THRID: 6668772071902806016
X-Received: by 2002:a2e:8154:: with SMTP id t20mr378182ljg.7.1552694493993;
        Fri, 15 Mar 2019 17:01:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5303:: with SMTP id h3ls98708ljb.3.gmail; Fri, 15 Mar
 2019 17:01:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxZNC6A3gfk7UrPAlGXMKsQgTd1o/NmnEB5T8HvJaa42EXjJVRz/+RL2PMafaJCViXK6VfB
X-Received: by 2002:a2e:290:: with SMTP id y16mr405460lje.20.1552694493046;
        Fri, 15 Mar 2019 17:01:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552694493; cv=none;
        d=google.com; s=arc-20160816;
        b=g9IscpYEiatlYJHBB/KvoZjGVphyZETJ5er6qRBj6xTmzp5pGH9ytIFkkZkGZufenn
         TZlb3jBbECc1qsmq+r9DJJcAg12NzeaRSKwweH3n50Oe5VvD28PFDFcfYPOuvNgZN1YT
         EHQoqjrlOceXy/554l2lqIJykvvb/WYqCRcAywl8DpDkIHUUkGltOcd5WGaBdSMheSMu
         DMSmM7bq9WXfMGcqJVTSVVWn0rIMh5qR/YE3o3hAndJSAxOKsCpUF9Fpd2+VHDEZ/dYl
         rQCMZmsANVapuezDv/A3qwPNHJOH+iIko+m/C7T3PpvM2gtVUwXHdgggDzbzjxB63fVA
         WkpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KZAxlAvfVcya/dbg7JhGByPod5pst9eEOS0QNxunIHI=;
        b=w6VIJfRJSvLBRe6mQ+Zt4Y8Ydv4Kjj99hxJEvc53vZSFQbrYuZmsfyqC8mfwAD7tkX
         hVkg+BgRxwJO2pKNCdmUhiXAQXDQ+oaIrM5ZXt0qJFaVq+HhWdU8ez8bJFEtRsUEALFg
         DBW4hpJL1Zyxnd3v+6gNnWhT+Pi0k+hgfeVhVsfZND5veF9vyEA2fsMUbgTHuy6WMrJs
         hDY0baPfkjn4KyZLNtbF1hoAlTfrf394Ir+9+eXIUY1/Aqk8F5klY/CR3u6pIMMu4gTN
         w3FzdV6KzK7/CPXVM5fCqik7oOuDGHlog8guKCvA/5igiyKClvBXk6NgLxlpjmHrY1Rh
         WgRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nlO/zaEQ";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id l8si135409lfh.3.2019.03.15.17.01.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Mar 2019 17:01:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nlO/zaEQ";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x330.google.com with SMTP id n19so8070713wmi.1
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Mar 2019 17:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KZAxlAvfVcya/dbg7JhGByPod5pst9eEOS0QNxunIHI=;
        b=nlO/zaEQagJeZPUvxAIcKtRmlm7FuxUegzwWLIFXDtFYGZcdum8Ta5JAGZvxU+LBvY
         dEzcktWiVUxwO2M7urWaZ8z74B1Z4qytTKKCZdTc6+8VICbXszLKoxYlCRpVzUL11eIH
         vMVL+14ZyCNOEncMEFdHtu1t/Fkl85luQEHKohSFowhlgp13sIRd6TFpefkM2dWl2je5
         R+BmnX1+Zpm8CDbhqVYPx842c6xlKUtCW9hZ4JWRL7zfWlNxNxV8oJBBiwRrZpzeRVf6
         Jew4d9p0Ye0nJJf2DcBKeVefT1F347srEiVBjpwTjp9uWloK9bdrH4+Kao0lB2mJ9IoD
         b4/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KZAxlAvfVcya/dbg7JhGByPod5pst9eEOS0QNxunIHI=;
        b=jwnjcpSlRvHq0gOoeQFXdBKxj2v6tLq+zAc0oQ5UGLQ8HANwme9hHZq41/D6gotHR8
         Kqj/dvtfzcir53GOExe3Paa34JcapngiN2CAOw9yzmx/x/PwhCeM8AzAKWnVwjGP59as
         1tEJCLdA5bs9FFreyKLUlrXB13/FDaW35lveWo143Ufy90O5zsne2ow9V0jd98oYa0zR
         hC59W7v+5e431FVPrqEaDPHtYysjebWehIpADEH70svGjeJroQR+bdWkQ8u17hW7dEqB
         aFXnKkxgqPCN9vmoKx11/CMneBrTAG5Q6QiPgzCH96guKPmNVndauibe+Jaa7TeZcmNs
         qTiQ==
X-Gm-Message-State: APjAAAVrRIuvMC1zHQ4A82gGrh7Pgz68+eSXyVm/EkgYtIn6P8auy6qm
	S59khKGmNSNSoJrMqV2IBA==
X-Received: by 2002:a1c:f014:: with SMTP id a20mr3619045wmb.122.1552694492568;
        Fri, 15 Mar 2019 17:01:32 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.lan (79-76-221-144.dynamic.dsl.as9105.com. [79.76.221.144])
        by smtp.gmail.com with ESMTPSA id x22sm3830164wmc.19.2019.03.15.17.01.31
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 15 Mar 2019 17:01:32 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: linux-fbdev@vger.kernel.org
Cc: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm759fb: fix camelcase check issue
Date: Sat, 16 Mar 2019 00:01:09 +0000
Message-Id: <20190316000109.22244-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Lower case of parameters to fix camelcase warning
 Issue reported by checkpatch.pl tool

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 4c1f00f551da..6bdf643707c2 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -15,14 +15,14 @@ enum logical_chip_type sm750_get_chip_type(void)
 	return chip;
 }
 
-void sm750_set_chip_type(unsigned short devId, u8 revId)
+void sm750_set_chip_type(unsigned short dev_id, u8 rev_id)
 {
-	if (devId == 0x718) {
+	if (dev_id == 0x718) {
 		chip = SM718;
-	} else if (devId == 0x750) {
+	} else if (dev_id == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
-		if (revId == SM750LE_REVISION_ID) {
+		if (rev_id == SM750LE_REVISION_ID) {
 			chip = SM750LE;
 			pr_info("found sm750le\n");
 		}
-- 
2.20.1


