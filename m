X-GM-THRID: 6672748306065522688
X-Received: by 2002:a17:902:e38e:: with SMTP id ch14mr476212plb.146.1553699999758;
        Wed, 27 Mar 2019 08:19:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls7807231plb.2.gmail; Wed,
 27 Mar 2019 08:19:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy9dmM3F5b58MQs7NmPux4V1JwQaBspu6CPWFXQF4Hg+Qzo/p1al1T7XHnH/tdH1WyQwo33
X-Received: by 2002:a17:902:6b49:: with SMTP id g9mr401860plt.132.1553699998915;
        Wed, 27 Mar 2019 08:19:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553699998; cv=none;
        d=google.com; s=arc-20160816;
        b=fU9QpFC3mefnARXO7Nm8HF2HJnKwsZsS/68M/Umq9JWXsu9lQZOydDObHkXPiEbREm
         shwWUIr+35VrmqPBa9gPRSJp5dgkRRscVDgZuWj7aw3y8i4YB3ENXxwBKpNuGVsNzEqi
         HGYLtsKTOVCnKv4c8PL/sFsWrdMu07F5reAaoQOfa7gHNHNivoJNNzisx66zvFp0fju9
         n7QjR4dZ3XnztUF5bkYhUSoAkNCGSZMg1eGJT73LJT6P4AiSfQmphMJmerFzhqkadoji
         rH4zsMSXHz6Po2eTUApgO8AfBIvIznFPjMPUHpSxQu/zxEGUP2ck+PIyATqY5gYUdtBF
         vcAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=YQ1sE7BZf3CzC/ZVRSEo9QgVKtYvN0BFiwWHhteh9sI=;
        b=Iz1FNT44FsCc9nZBcZyk58ibWnT0uDlKOTCDLrjhU77MTKcL11d6bk5J23Tn/IjeZq
         0K46f7q5mYrLtSdrwSsRVX/E0B/DTVMEJV6vCdgGVbU9sLJZMMySBx/UKLw7aXteBh0c
         bkWMKQ78z44SJiX2AayYlWbbnE5MVktpwl/kD4yRmaum4TmaVNKqIJL1p+rZd3O8r4Xn
         Cix5C7+xETmVXrKnMFIY9xA3od6RTIS416mJsKFP/NoGasOG4HPq18keKsL+MI3P0fiM
         sK9FuYHTTBY7qwZ4ULi/Jd1HrbluCaaD+FzpPCkw5Jh6G60oPP7lca1/1JlpTXq27+8r
         6JyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hsC+cDGo;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id r133si1372275pgr.4.2019.03.27.08.19.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 08:19:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hsC+cDGo;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id bg8so3465426plb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Mar 2019 08:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YQ1sE7BZf3CzC/ZVRSEo9QgVKtYvN0BFiwWHhteh9sI=;
        b=hsC+cDGoJRWJJ7SMqGbZAfFPJkxLHGJIOy3uHIAhZAruqIaz4B8oWu9CV3Odo1N9W4
         kRlvMes+1OyH4LvQBY7ybEgGBY+DgKCJQk/yYKLxWOImdVQYSpnGxNr4py85k2VLUHiO
         I/SMfmj4DINj/dArY3xHv3lopzbgs90ao17im3g3VDC8t45wZ/Q4DzG6i++3zi+W7hM2
         c5hEsIIhYS8dVXAdpKnJ7y8OAIrbUBqzEq1tt3OEziZHF+cPLWbSnPMHvGcW4oAr+ehr
         1mGb0NeBclZYE6OH+5wRrJ3Drp1TmEUaJifYO9c+Nqw8Z9V/g9NZpGAASVDuaZLMKGf+
         EBVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YQ1sE7BZf3CzC/ZVRSEo9QgVKtYvN0BFiwWHhteh9sI=;
        b=rSdx957u8/fZtTTx9Psrrv6GqV9Vbn/tsbluh3oYLaOdqoqVJm/+QjLj7RlVg8m/Ru
         4SBrcxOijjVNyRd+MCOC8U+gw03fpTr1+XpSh76M0SaYBnQqdfuXtDc9FjucEX82oEFW
         W/Ne1Qy3UQy0sp8/uubAf9nEXn/7IhS4X/Z5tcMJzdHl7w8Y0/X8kROXvIvSRly3BEZR
         q4TrfQYTh9oCyi3YmntbdVIYVOU6TUmUsGa6ZVMsKMqnudus7zHtiuF7e8dCaWO3yS+c
         /bFDAvcdN4AZ6h2rhJA400dAWJPqMCS3FbqJ9ezeZfBKLyHsEHxtXTQsnLAY/ajO4/Oe
         2IeQ==
X-Gm-Message-State: APjAAAVPqhyp1W3ObXDBPV4d8E91br6FqXI0zVoXrt6qbau9YMShNiG3
	F18hQgQA7EKMKfPse0qaFVw=
X-Received: by 2002:a17:902:8609:: with SMTP id f9mr37916513plo.85.1553699998634;
        Wed, 27 Mar 2019 08:19:58 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.10])
        by smtp.googlemail.com with ESMTPSA id a6sm15937418pfn.181.2019.03.27.08.19.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 08:19:57 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8192e: Remove unncessary paranthesis.
Date: Wed, 27 Mar 2019 20:49:47 +0530
Message-Id: <20190327151947.7909-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.
Remove unnecessary parathesis around the right hand of
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
Changes in v2:
Modify semantic patch to remove unnecessary paranthesis
around  (OriginalValue) and (~dwBitMask).
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


