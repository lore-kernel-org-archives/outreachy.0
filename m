X-GM-THRID: 6672748306065522688
X-Received: by 2002:a0c:d40d:: with SMTP id t13mr1565398qvh.51.1553704218396;
        Wed, 27 Mar 2019 09:30:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:227a:: with SMTP id o55ls6575898qtc.8.gmail; Wed, 27 Mar
 2019 09:30:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxaUQSlUZLhvzMbkldKnIAREurPe/qExwhCF4NE2O7S9a2qNgVji6NRUPtxUJEZJ0vzUhli
X-Received: by 2002:ac8:3798:: with SMTP id d24mr1634546qtc.40.1553704217833;
        Wed, 27 Mar 2019 09:30:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553704217; cv=none;
        d=google.com; s=arc-20160816;
        b=q796OdwU8h/g2UeRZSgJI8ZugWBwXjSHqwvCKPZf1qkr4vRMF10QUJM7pCvD+NYQ/r
         1p1UF+Htlv7JCgbUaVNTautyWhAHfUiPCe+8c1x0FzO28O+gJaAtNIpoeFLk2CsMOcPd
         n+3IWpFVwgd2DhfRLNzmfjp7dGWK7bfPWoPA3K//3gexgH72vKUz/DSBpTBfeNMBOpGo
         /x2Xee9/w493Ts+iyhTPZyFAUYWrpfVQnBzVhC2gTR9H6ytroeHBunWDEELJEKdTPSNz
         RiCKCIEo0Xu9G6l7qvKTLo3jwExYL+dny5LwqgNX5vaW69iOVjVV15dNLLzGU2V7LKeM
         JZmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=BnVbndv3ZJBXhj53fCuaFTZJnjAdSqDtdP56zGwbXRc=;
        b=Sm3bxNBWYyS8YKoRNY0eNmd2yuh3sclxO5umTAYv/UHb3QtuKpY5/OaW50p296NfY6
         mEwYXQYFU3Vi/Iwx/yC0Pavut4+28kjm7GVXMgS13rGxQowOydF1Tx7Mmgcub1HWumqW
         kORbb6AsNH37iNMoMpBIKJ7CdmuIh4Hx5q0yFrQcFAYNpvUFClClpR67nUwJj+Roor5y
         LVK5Vb8fgveehNOAf2/vLPJtXe99XrhJH0L+BoM5KARwmbbpfzjhOod9vHw0qICid1II
         M4mKz+nwZOz5PvFKGinag/AVC/yvUV/zmWZHmmB5OsM/T+rl/FIzocwj8MqP6MgzcXGq
         11rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sg2qrgM7;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id t17si1705368qtq.0.2019.03.27.09.30.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 09:30:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sg2qrgM7;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id b3so8584054pfd.1
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Mar 2019 09:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=BnVbndv3ZJBXhj53fCuaFTZJnjAdSqDtdP56zGwbXRc=;
        b=sg2qrgM7f38l3/uD6EsX869N0mDpvBkRDuQm0NNIgE5Z48CuUuqlhs986uxP1yPLtq
         E7ZFSPwp6CisZESqjBebJUsLAU0vVz6FArqeW7CSdnpp/+cR+0KQIFsBeskgwoInR5uO
         H49eOEm7wcODd2TYn2bq1sGi5OqpNUpOcnOayhyvGV6MjB5r6fANwiHyxBhmGT7sKrNU
         E2fnS2Y5rdLgLlNQGKpQ0kcsq+VgMHaxH/4u7+7H5S22Hq5wOHo8LX8C9sTjfyZlKi+G
         sWSqMiN885Mu6je7IZOpXe3vJAXE4fpwt+cAVOwIWZLVnhd6WwEhfPpvcwOKpnQR+6Qa
         h98g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=BnVbndv3ZJBXhj53fCuaFTZJnjAdSqDtdP56zGwbXRc=;
        b=TTt+RtQ3+zQCgL1bk+PwT0Nrb38x/DbdUVDVidMAkIm/4awxFeioeW6dGyrvJtz4sf
         d1NK32HdwwbLnfwp/AWFYG/eWvVhF0PjCz1aVGEym+WTTUIr3iHdkW0pFMz+EacFbaxO
         etZFv1W9zKHFsC92Ha0AYa1JCs/DB9KaCkr7PeZe7xVKiWEDcxwmq8IgTsgnWhd23ZYe
         DpvbBJMYN700B9EGPWG+w6GfOzfsU+cQhCC4o91WSYgYdPYcoTOoDJJFazsqO6fn7OWH
         FQZ6vfeOjh7weV7ZNZVttJe3G4bW+X9XH4pCZ5J/CixOCTkInwPHEaoyoPZ4BXgsYAQf
         ovmg==
X-Gm-Message-State: APjAAAXDhkwWlDyraR7QEGZQb9cQ6eANtjRyJ58q18l7KWKNBuJrHwFe
	qqq6TayRilCG5aB091mcOVQ=
X-Received: by 2002:a65:6489:: with SMTP id e9mr19921243pgv.364.1553704217034;
        Wed, 27 Mar 2019 09:30:17 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.10])
        by smtp.googlemail.com with ESMTPSA id i16sm32357997pgk.51.2019.03.27.09.30.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 09:30:16 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rtl8192e: Remove unnecessary parantheses.
Date: Wed, 27 Mar 2019 22:00:03 +0530
Message-Id: <20190327163003.9622-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190327151947.7909-1-sanjana99reddy99@gmail.com>
References: <20190327151947.7909-1-sanjana99reddy99@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parantheses around the right hand of
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
Changes in v3:
Correct the spelling of paranthesis.

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


