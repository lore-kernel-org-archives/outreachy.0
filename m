X-GM-THRID: 6672748553677307904
X-Received: by 2002:a24:6b55:: with SMTP id v82mr138067itc.37.1553620340405;
        Tue, 26 Mar 2019 10:12:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls7211708jad.0.gmail; Tue, 26 Mar
 2019 10:12:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxrgeJsqmw+am49c62QLhRd7XMV0XRxswngWPlfRJp25u8eCccKFXQkugMR9e8ayF1N8pwk
X-Received: by 2002:a02:f52:: with SMTP id h79mr1134965jad.3.1553620339433;
        Tue, 26 Mar 2019 10:12:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553620339; cv=none;
        d=google.com; s=arc-20160816;
        b=VMI9GQ3o66pXCiO9+VNxI71TqPMicQk49+8yg1wOFQ/mDAdZjXw0N9HTZwbimDF9J0
         7qtmLe/9VYjSlRBeoX2j8evUzQa+VnPferYMTMVhegfgJaysZhhpV0uazgIh4UqDnZlw
         LxwZvIUo8O5/j3eEHN9i4BEHNAl1EOHvR8bB0BHgEfcLP3cal4fgdEnm/1gpYhX9fxPK
         aStrSbimQq9v1yZYfLSzWWppOR5hOGd5EpTb3DFZBEIOFyr5anAHpAiTVvKu/qiCsPDP
         DGG74T/hsy9RKfD3WUO6woTMrA/P1m4tDLqMFUCsgRiKUC8IYgMB/0yvSaR0/7zYt1XH
         I2tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=1leJGeHJ1ejdqC8ansIQFOO0IV2BqDneJStnVIj6o+U=;
        b=TPpXE1Tbo+hSy2/J+Dqi6dOWvbE4j3nW310/rzfxoXvVUV3AvK+LQo9JvLxKUTIIK6
         AuTGKAGRofOoA2rrCa81zfaqjIkLaDZ1JlPIz17riMwv76e7ytvDTAD4gN6ceaV1Uu4x
         ZspkRkhbghizFWFfbdQmBDaxJbZWJY2AVA0eKWh73AxTGx+mn0zW6CGHGXnMTMTKGa7t
         QbbHL0fqVJnrCOxtZTnt8//qNOP3ToDUWm6UTeuYLs14ZloNw2Bjj8vgUo3Oy9AEi25y
         BK8Bqu3dU7bP4k+EWuRdfRAeqD9tSqgxOUqg/4h+FMaWHQRTl0rtN+WusZTnz9+oVnjt
         K4gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WUvytiR2;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id 71si1017706ita.0.2019.03.26.10.12.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:12:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WUvytiR2;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52f.google.com with SMTP id f6so4422938pgs.8
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Mar 2019 10:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=1leJGeHJ1ejdqC8ansIQFOO0IV2BqDneJStnVIj6o+U=;
        b=WUvytiR2IdoO6lEr7TZTjJlwYuXyjuFgglZg0mQanzcJlzLryj4q+xftQPkp3l7g/z
         Sl2Hy/zz6kmfDh0UtMl2KdbTvHQDsegNdB33y1YK0PmG8+npt/SRNKLwxL4hnKA/qvBs
         8pzmIvD1fhmmPRSw1qyEucDWAT5Bs4/FeU5ob/tXmojk32SOXrACvgj51wg2xxAPFUFN
         svVavLPJhGeblKetxjIK5EQIoP50AD32GWHFgg935BHhZcESVOdmf0O7GF1BroG7ZbAJ
         mOAfk2ksD7FT2Al/GTeZ/bDZDmOCYxb/pQER96lsvEmKOGzQ9cP49swHihsn435NwCi+
         43Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1leJGeHJ1ejdqC8ansIQFOO0IV2BqDneJStnVIj6o+U=;
        b=syCuMB6a0JtQse2KZ2u2CJKyTXnpltlcjBIjP4F996v9APqnnvfhg26UD6CgC0X2hN
         F3ycAF1V9WlhLorrtTxKorVs88W0OIdpIiqwBe53PFHOU7IoqbruDAG4uCY5KEONyQHB
         bkBs8ZsIkRG70KLFV4EXqSHtNoOxArVl2H36uUvcTJhHr9Es8IB41dAZj6O2fs+uyHXm
         5NdFWXt+9IEwAA3s66VeRW/17yIecUHJlLKYBOzUkoOxXOnxVwrfYknswal6r6pgpUTa
         lH+W+Y1Zujno59hsETvLGqrjfmdzLtNhkhAmi3VtTG8IpulJQ4FNDU9tJwfFqv6nUAju
         AwkA==
X-Gm-Message-State: APjAAAX1FFd8M0i2860yoqrhpQPibF7zfoO9F71BMklGcX8VzE8Zb4Yg
	PznfKZu9v6MnoY0JMm06eDw=
X-Received: by 2002:a65:6299:: with SMTP id f25mr30393203pgv.376.1553620339203;
        Tue, 26 Mar 2019 10:12:19 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.183.14])
        by smtp.googlemail.com with ESMTPSA id b6sm23110693pgl.49.2019.03.26.10.12.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:12:18 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Adjust the space around operators.
Date: Tue, 26 Mar 2019 22:42:08 +0530
Message-Id: <20190326171208.20087-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

CHECK: spaces preferred around that '<<' (ctx:VxV)
Issue found using checkpatch.pl

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
index 3de07a79b3e0..db8553e7889c 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
@@ -571,8 +571,8 @@ static bool _rtl92e_bb_config_para_file(struct net_device *dev)
 
 	if (priv->IC_Cut  > VERSION_8190_BD) {
 		if (priv->rf_type == RF_2T4R)
-			dwRegValue = priv->AntennaTxPwDiff[2]<<8 |
-				      priv->AntennaTxPwDiff[1]<<4 |
+			dwRegValue = priv->AntennaTxPwDiff[2] << 8 |
+				      priv->AntennaTxPwDiff[1] << 4 |
 				      priv->AntennaTxPwDiff[0];
 		else
 			dwRegValue = 0x0;
-- 
2.17.1


