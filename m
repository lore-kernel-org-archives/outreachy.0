X-GM-THRID: 6474128496939499520
X-Received: by 10.28.0.7 with SMTP id 7mr397561wma.26.1507967820258;
        Sat, 14 Oct 2017 00:57:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.12.4 with SMTP id 4ls578970wmm.11.gmail; Sat, 14 Oct 2017
 00:56:59 -0700 (PDT)
X-Received: by 10.28.19.5 with SMTP id 5mr378032wmt.7.1507967819421;
        Sat, 14 Oct 2017 00:56:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507967819; cv=none;
        d=google.com; s=arc-20160816;
        b=M4zjmHx+MAbSkzpcnAfYakFjW3O4xbrqFyLWrf8H+Np6YDax+S9AEWtiuvtS1BSNut
         g5+BE2D46Q11JeB3WTXQAZ+UedU2JAMC5Yeyr9HiAEkPdfnwUAE9XzdlQlmS131T9M9B
         HEiA8CUq+qcmk6vh6OpnoM4bRYrl2WFcrR8/Lnxb1hu/DDffDLiFzQvNdfbPEK/5FO3D
         USVc2wdM59kZarcn77GHaTyMYNeMxY4Y5vgxLBWbE9AM6Rx80BHtrFL4r1sxwywL1R4O
         AqAqUgxcV9KbE6fWazObhltBnsapfSWs4zbl+j/teiyocNuOej3tIptUzBDLRZDo5HDp
         mLjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=62onetZ+KSHyGPh2aysDpK2VDTQgLoNVVhniPC/MDYM=;
        b=bnk0Sb/2x4iJRBeTyoSB4L9GPjfsvJtX3+c8o8XsuNlKI5m/pSSCR5wR5edQPNAg5U
         xplkD222Anl61FA14OPRLaNRan14KouBAaAVQnGbJTkD1nwmpkAbRgHTUqEabLrmLPpB
         O2cjZU9KRgJ9aWTsRolqFPQppeDyuW3GWEvMugu0f6Lp4uoNPJu/Y4+n/vfI5lSBwcYm
         5BOaGNla1RDItgjEnLArAg6dFs5rdKQQq6s6eU8SF2MC/N6Oa8vgWehxZjoA37NAMma7
         RXnLNtW7fIA16RUpZjYx0gtfK8ClVcuz5YI0NS+H4whI1q6ksajbvwIbu/Vo1cnt6Qg8
         GUfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C0XkAXIG;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id l9si141054wrf.4.2017.10.14.00.56.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 00:56:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C0XkAXIG;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id v91so1054966wrc.5
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 00:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=62onetZ+KSHyGPh2aysDpK2VDTQgLoNVVhniPC/MDYM=;
        b=C0XkAXIGDtYXkne/33I9/9zZOsx/pykHjzVRNB2oMarzqZHQIbFlIc1sb/HkFEZhpI
         /rOSsZGm6y5CohxyAlplk3LPj8DCzgTo7q60+2bD9a2Kb/LtPZqFt36IdBhEsJbhHKFV
         yKyAqhsSbGdBqkZUtDte3rFaRemogzFfOZIt7qeX2Zv78KMhkyC7H6/0DfrzQviBdgfY
         k3LJc7kN3PCtgVqJNgYLm/BqT5H0q8sZvNxsLUeWj7dI1uRMfVvl2sy6qeK7Mf0Rtxzr
         Hx63jy9MBFXYWFdh0ZAqbzKI6P/DQvGwSnkvdb/iIjYBy3ZP8cxl7lrPHKxpKM3Qt64Y
         CpwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=62onetZ+KSHyGPh2aysDpK2VDTQgLoNVVhniPC/MDYM=;
        b=ZMqDh0ySWVPodx0WrV8HU5xGlEkVfYcDAJoT2aoD/ViMUrRNqHlHnrRhqIMMYMRuLk
         h9e3RuHanUkGA3LidT/NTVja61W8yWLEh205bVYjyxV7ti4Wqzex1LfNWxlYpqIdem0D
         HIWyLN80vr+L72tAiXlx1AK4YdvugBboTBRodXLj1knjIJSWo66BddEAQ3Rr1kdbaOP2
         42pqhsG2V+K70x/LYw3R9XPHRwYwd32eXueKXPqA8SQz4E7K7iVCu8rxLI2dfNJZq3o1
         PMIQQI8Cu4ygqPSVvlRM7k3z8P1O8sScMJ2vw5akQNPuuc2uBXMcC7Rozu7sfMvYBclg
         mxbA==
X-Gm-Message-State: AMCzsaXlzV0cbMPM+hsomS0R3Gvbd2UUrBb7rj1Cg9N2GX8Phzwhtbbd
	czLjOAxk10CeD01sPLNKdcucng==
X-Google-Smtp-Source: AOwi7QCo3FI26ExtmNIzCxaaHGQ2GFF9a1nNhuR1xXlLZVYtAkJxkyv/FPpB8CmW7oX0bbIddJ+GyQ==
X-Received: by 10.223.131.4 with SMTP id 4mr3529084wrd.106.1507967819082;
        Sat, 14 Oct 2017 00:56:59 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id h185sm6022538wma.19.2017.10.14.00.56.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Oct 2017 00:56:58 -0700 (PDT)
Date: Sat, 14 Oct 2017 10:56:57 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] staging: rtl8192e: Use __func__ instead of function name
Message-ID: <20171014075657.GA2475@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use identifier __func__ instead of the name of the function.

Issue found by checkpatch.pl.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
Changes in v3:
        -breaking the modified lines and remove five point from the
	string to meet the condition no more than 80 characters per
	line.

drivers/staging/rtl8192e/dot11d.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 017fe04..55c699f 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -128,12 +128,16 @@ void Dot11d_UpdateCountryIe(struct rtllib_device *dev, u8 *pTaddr,
 	pTriple = (struct chnl_txpow_triple *)(pCoutryIe + 3);
 	for (i = 0; i < NumTriples; i++) {
 		if (MaxChnlNum >= pTriple->FirstChnl) {
-			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
+			netdev_info(dev->dev,
+					"%s: Invalid country IE, skip it...1\n"
+					, __func__);
 			return;
 		}
 		if (MAX_CHANNEL_NUMBER < (pTriple->FirstChnl +
 		    pTriple->NumChnls)) {
-			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........2\n");
+			netdev_info(dev->dev,
+					"%s: Invalid country IE, skip it...2\n"
+					, __func__);
 			return;
 		}
 
-- 
2.7.4


