X-GM-THRID: 6662711106976350208
X-Received: by 2002:a02:8a2f:: with SMTP id j44mr1690333jak.17.1551283315038;
        Wed, 27 Feb 2019 08:01:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8c8b:: with SMTP id g11ls1082057ion.4.gmail; Wed, 27 Feb
 2019 08:01:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqzCpPCb99/zABy0HyFFmwaIz9Ktl/PkNMyvnR9ACY1zXd0Gu/UPh12PXwiMLXXasKGXcjmg
X-Received: by 2002:a6b:6c09:: with SMTP id a9mr2438337ioh.15.1551283313908;
        Wed, 27 Feb 2019 08:01:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551283313; cv=none;
        d=google.com; s=arc-20160816;
        b=YFZdcGsKQ+PFpGSmPdd5sSY7NF9J9NXE7PmPTUHr3WHQZTD0iwkQI1isawrpTd0EmR
         uj95geTIfm/C2UaZGsULiVglPA9EqbWbN9avG6WHsfkycHO+NeAzYrEb+IpKNUyePVwn
         ck6b/wu76NaXi7kUJFxcaa3KqjFmzw1DZ7chTBKD+CLCNf64gj521dM43sU2sCyA0LTC
         5LJzigyhULdzLa6e18GNvb0JINUvX/PvJa+IkJM7gLqKDtGiEet36F2XFnITfjtQa4JJ
         rN4nYdCLPZzrI06O/T4BGihuNmT/VFPptFQrz1ApqS4E5M0nXT//FQaHgD+wRhCrbXYV
         KPKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=p5wWdppkE73VHq6avuGQjPrCbnLCJkER3DsEdaW6GiI=;
        b=YJV37ONAslQnGIvcZ3umQLuLo88e0KgxrnHsmqkkFTPGg4ryV4+PNMYfVZHGHA7ptp
         qWnU6tteiUjY60+50Y5Hn0ziM7X/v5hHf+Qbhxhk04ig9qrPxRJ6pjxGZfM85qavxxUs
         3Ovw4/ScWQ8tyMMkz9bU9dfgNVfUOZ7nOzFPvDbvbYXCafHXwmwB/DvV4jcZWa/7c1oo
         EJinGHLD09PJoR+f5QG2OudyGYH71h/TteMwMVgVmNrgKJdjwb/9TVnSMZL2xHngzfiI
         E0SMmYDGSm53+2Y9PT+PtF/1SoYuBVk9ZriVOXM/EUAdEwyVtZZvybiz1O7geLDkl2n9
         GtFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pnVmNADN;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id x76si66773itb.1.2019.02.27.08.01.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 08:01:53 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pnVmNADN;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id q24so14814089otk.0
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 08:01:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=p5wWdppkE73VHq6avuGQjPrCbnLCJkER3DsEdaW6GiI=;
        b=pnVmNADNNwC+TImFZAAsfHINb3c0ej+yqFa+pk2k9r+itrInwCTPiUlyg08MXmveOo
         owwHPmmQZeVU5i4qRbhmyG7Z9xBT18uLvZ7fbUk/5nxT8sCf084pCMmT766eLKbZ5VaN
         mpWWVkq3RQa6gnsK2K9ZYd6hB2yME/ONnoruD9duepHc8kFijWUroLO+BzGoX1LIbmRg
         I8H/o53VDnr3HSeO5YXTGjDnUhFabs5jxT3I5sH2c2OKjYK3MRD/l3lXsQKZMZ9LBJuW
         4aHewFcTBgRdcu3hEhTRNKql1IPhWrvWpTDpFCTbbAChhv0CaczeRIF73+fHa4IOvQdS
         I1Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=p5wWdppkE73VHq6avuGQjPrCbnLCJkER3DsEdaW6GiI=;
        b=ERpHp/Wmx6cus+e+MoyPzGw7YlmSmDnykgv1j3Ij1eqSYMShpGy+XuY+7z84Zi4VlT
         aD2Rz/vAuFv3iU2deeZzign6ukNGEddWAta3lwVWrL9xojqExkRWpJUT5au++2L0sWrw
         5aKpTT8bDbffVHJz8g3MOEXr1eKQKmgl8Y99ozZYs6YMqjJJe7cGBHTsWRs/lsLxMF31
         Cmo7KH5RFkJZFmDVSphAOIOiIwTA0K5OMaqnS4CX+Yv2Pw81z57ZdoOlf6T2+eJw2Ygz
         SVes/gAzoM5dhWX+zgDayE/TCgos5YU1GnIYxrjEbqGguOLkKgzrk7zo4XESLfJzlXrm
         SS3w==
X-Gm-Message-State: AHQUAubrC9jrduMyMRJvfwA6dmgFUw8Xsqj952S703hOaHkI7YwjX8V7
	A/y5KtdW3017Y2cRV4VXn+8=
X-Received: by 2002:a9d:2c44:: with SMTP id f62mr2617463otb.219.1551283312255;
        Wed, 27 Feb 2019 08:01:52 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id c24sm6493592otl.67.2019.02.27.08.01.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Feb 2019 08:01:51 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3] Staging: vt6655: Alignment of static function declaration
Date: Wed, 27 Feb 2019 10:01:48 -0600
Message-Id: <20190227160148.21914-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Align function arguments and function return type to improve
readability.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Changes in v3
- Included driver name in subject line.

Changes in v2
- Improved alignment of function declaration
- Modified subject line and commit log
---
 drivers/staging/vt6655/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 229137f29690..8d0182f5725c 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -62,7 +62,7 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
 
 static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
 				       unsigned char *pbyTxRate,
-				       unsigned char *pbyRsvTime)
+				       unsigned char *pbyRsvTime);
 
 /*---------------------  Export Functions  --------------------------*/
 
-- 
2.17.1


