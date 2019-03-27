X-GM-THRID: 6672748306065522688
X-Received: by 2002:a81:89c7:: with SMTP id z190mr1376804ywf.25.1553704782866;
        Wed, 27 Mar 2019 09:39:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:be8b:: with SMTP id i11ls682575ybk.9.gmail; Wed, 27 Mar
 2019 09:39:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyfQ/a0IiACs+RhvuBZhib5MDHMpNSgypjFEF6MCK7uMy/Vy1zMrrz9ax/jYRjfHIyO7R/d
X-Received: by 2002:a25:50c8:: with SMTP id e191mr761595ybb.20.1553704781878;
        Wed, 27 Mar 2019 09:39:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553704781; cv=none;
        d=google.com; s=arc-20160816;
        b=ZjthLA2BKfvY4eX1z8RbsS4zwDy6eU53plrqwlOO2OkZOc1S95mIgl36MqJ7rkp4k4
         SlxOA/CV7Zb3wZB90sOxZoVOX8RjiLjk7z370aaaOJdQBHAJ1n4Da6/5gw4fLSITN7Q5
         i71RaJriMHoKVFbjKz+XIuuNd3Wn+VMz42Qoy4IFR3ygEgDEzjdr0wRwy5uIzGte4Zv8
         Dj0y0QTv3oUev+nSxZYtk3SnvV+sTqZbLy9u+1GNMnwfC8y5lfCDh5c3swVOKjKL4V2P
         Vd30wOG7JsyrOZTdWWlX+GdPlzIyfC6xpyHKcaDaFOnm5D4wlq7eEN9NEWsw/sC+MzGL
         C4VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=rjs+yLMCGiPyAFWGUU0HivwWZvc8yjzovnklUWAc1is=;
        b=D7IgqhyUaTxb1SxGc8CALjUGjWLw998FmJXjmu0S+KZQ/uasrfweJYZX+kC8JaWMAb
         Sb8yAvdqZLPmXMsAW4zl0Cp5paMrIJAKXF02gxCmHzLpZV50X8WhoV72aJAjoDOIShP8
         FtpYsZ4DCv3TikNdFoNhNdkPSY5W9mHHc4E1zCUNz8I8g49Ou1/Gcv2Is7R8riw2JNm0
         zDlBcMSoJZfoSLi0avcs+itbiXHveTVzRhZao42mzyqN88fQJRkWScfvqYGiQdNWQKCI
         AXu/rvJ/BX1uYqndPe1S/gZoOftzqAzfFchN3tlSJk9pZwjD6UlLDZlPEqwRv4hB1dzy
         HdGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QvVvCvfY;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id l126si1380579ywg.5.2019.03.27.09.39.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 09:39:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QvVvCvfY;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id p6so10194598pgh.9
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Mar 2019 09:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rjs+yLMCGiPyAFWGUU0HivwWZvc8yjzovnklUWAc1is=;
        b=QvVvCvfYCM/WkXMBiVTA7Wnnusl7E9jcO94M8OD8VuIkRZj0ddDL7itYa39LE2i4rx
         ddAYrYMwi7t+fnp3gGqCBMMVBUCqd6KRA+V3NDv6WbfYfl5lARz3+5+KEyppbwC3V1IS
         iIJApx7L+qvGoLdowpOvha44kLpSVMktmiGYwCY2lDqts1wmHuc6pbdqkCXH/RX3VIa4
         ppC0kIed/LKKh/W8naSwFMVSvCxBjLI3vzNNWy6ShUdBvuz3OF6cqbbtsV5zOFahRGcf
         5+CaZyEHM305mzktdji+/hRiINg5F0krQ+OcmkpmMLY3DrXb3VRP5PYtyfQYWty9ERw1
         NyiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rjs+yLMCGiPyAFWGUU0HivwWZvc8yjzovnklUWAc1is=;
        b=Hb2HaeJUSfd5/InuiNYfrUEBRL2Zw9sKlwlUt9xTzW7sjF8uNcJpyxLcU3M9Rp7ekj
         9XTKoAseLr4egAZ0lnwCQx4CJyg27jj4MVHTVRsN0olgeFbiaelwf4s+4F1E68yvwGqo
         lSaAubg7TBSzImVO2c2qJsuyMoKpZ+nUGGCk7G+Lca7Nh/PMwk5DaJwMoS4g9zODtat2
         BBSIV831UegZ9d89LIwdkWS+Unzx9H/2Ajpqkdq6IIdnfuzmSU+Q95v3toJbvIighVkC
         ZdIdAbuDT05bqVb3nHrmeblR9rF4UzrtnuM9a3XTRGVaZbEO06ZAoibstvGt9B79uAzO
         XtXg==
X-Gm-Message-State: APjAAAWD6aWLtrfBI2Cvdk4LQxZph4LvBD2RDrPAPoDXgyqZtcxgg8ws
	WFm/3FdKranDgH27E68WxNM=
X-Received: by 2002:aa7:81d0:: with SMTP id c16mr17330455pfn.132.1553704781135;
        Wed, 27 Mar 2019 09:39:41 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.10])
        by smtp.googlemail.com with ESMTPSA id w3sm8155935pfn.179.2019.03.27.09.39.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 09:39:40 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: rtl8192e: Remove unnecessary parentheses.
Date: Wed, 27 Mar 2019 22:09:30 +0530
Message-Id: <20190327163930.10024-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190327151947.7909-1-sanjana99reddy99@gmail.com>
References: <20190327151947.7909-1-sanjana99reddy99@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around the right hand of
assignment using the below script.

@@
local idexpression id;
expression e;
@@

id =
-(
e
-)

@@ expression e, e1, e2,e3,e4; @@
e =
-(((e1) & (e2)) |
-(e3 << e4))
+(e1 & e2) |
+(e3 << e4)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v4:
Correct the spelling of parentheses

Changes in v3: 
Correct the spelling of parentheses 

Changes in v2: 
Add new rule to semantic patch to remove unnecessary paranthesis 
around  (OriginalValue) and (~dwBitMask). 
New rule rewrites (Data<<16) | (NewOffset&0x3f) backwards but adjusts 
space around operators.
 .../staging/rtl8192e/rtl8192e/r8192E_phy.c    | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
index 73497d559b77..5603570f6dda 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
@@ -81,8 +81,7 @@ void rtl92e_set_bb_reg(struct net_device *dev, u32 dwRegAddr, u32 dwBitMask,
 	if (dwBitMask != bMaskDWord) {
 		OriginalValue = rtl92e_readl(dev, dwRegAddr);
 		BitShift = _rtl92e_calculate_bit_shift(dwBitMask);
-		NewValue = (((OriginalValue) & (~dwBitMask)) |
-			    (dwData << BitShift));
+		NewValue = (OriginalValue & ~dwBitMask) | (dwData << BitShift);
 		rtl92e_writel(dev, dwRegAddr, NewValue);
 	} else
 		rtl92e_writel(dev, dwRegAddr, dwData);
@@ -188,7 +187,7 @@ static void _rtl92e_phy_rf_write(struct net_device *dev,
 		NewOffset = Offset;
 	}
 
-	DataAndAddr = (Data<<16) | (NewOffset&0x3f);
+	DataAndAddr = (NewOffset & 0x3f) | (Data << 16);
 
 	rtl92e_set_bb_reg(dev, pPhyReg->rf3wireOffset, bMaskDWord, DataAndAddr);
 
@@ -223,8 +222,7 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum rf90_radio_path eRFPath,
 			Original_Value = _rtl92e_phy_rf_fw_read(dev, eRFPath,
 								RegAddr);
 			BitShift =  _rtl92e_calculate_bit_shift(BitMask);
-			New_Value = (((Original_Value) & (~BitMask)) |
-				    (Data << BitShift));
+			New_Value = (Original_Value & ~BitMask) | (Data << BitShift);
 
 			_rtl92e_phy_rf_fw_write(dev, eRFPath, RegAddr,
 						New_Value);
@@ -237,8 +235,7 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum rf90_radio_path eRFPath,
 			Original_Value = _rtl92e_phy_rf_read(dev, eRFPath,
 							     RegAddr);
 			BitShift =  _rtl92e_calculate_bit_shift(BitMask);
-			New_Value = (((Original_Value) & (~BitMask)) |
-				     (Data << BitShift));
+			New_Value = (Original_Value & ~BitMask) | (Data << BitShift);
 
 			_rtl92e_phy_rf_write(dev, eRFPath, RegAddr, New_Value);
 		} else
@@ -571,9 +568,9 @@ static bool _rtl92e_bb_config_para_file(struct net_device *dev)
 
 	if (priv->IC_Cut  > VERSION_8190_BD) {
 		if (priv->rf_type == RF_2T4R)
-			dwRegValue = (priv->AntennaTxPwDiff[2]<<8 |
+			dwRegValue = priv->AntennaTxPwDiff[2]<<8 |
 				      priv->AntennaTxPwDiff[1]<<4 |
-				      priv->AntennaTxPwDiff[0]);
+				      priv->AntennaTxPwDiff[0];
 		else
 			dwRegValue = 0x0;
 		rtl92e_set_bb_reg(dev, rFPGA0_TxGainStage,
@@ -655,9 +652,9 @@ void rtl92e_set_tx_power(struct net_device *dev, u8 channel)
 			priv->AntennaTxPwDiff[1] = (u8)(ant_pwr_diff);
 			priv->AntennaTxPwDiff[0] = 0;
 
-			u4RegValue = (priv->AntennaTxPwDiff[2]<<8 |
+			u4RegValue = priv->AntennaTxPwDiff[2]<<8 |
 				      priv->AntennaTxPwDiff[1]<<4 |
-				      priv->AntennaTxPwDiff[0]);
+				      priv->AntennaTxPwDiff[0];
 
 			rtl92e_set_bb_reg(dev, rFPGA0_TxGainStage,
 					  (bXBTxAGC|bXCTxAGC|bXDTxAGC),
-- 
2.17.1


