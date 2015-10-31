X-GM-THRID: 6211822819926343680
X-Received: by 10.31.148.206 with SMTP id w197mr10822449vkd.9.1446303334282;
        Sat, 31 Oct 2015 07:55:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.229 with SMTP id 92ls1678359qgp.24.gmail; Sat, 31 Oct
 2015 07:55:33 -0700 (PDT)
X-Received: by 10.129.99.10 with SMTP id x10mr10594196ywb.21.1446303333618;
        Sat, 31 Oct 2015 07:55:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id fa8si1164850pab.1.2015.10.31.07.55.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 07:55:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id z6so101950896pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 07:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=xBmMVfWeTp+6qUUEgeMb6PEITelxb+3OOb4IW0umqS4=;
        b=qR+Kiu3Osykxvb5esDQXNA7RheiYNyAcCJcvFJ8qB2yZ9b+uitLklO88sefOKJVnbV
         LWahhKReFyToVT2IlV52+cEkwwYtRyJ4dcRytkurXoBrDWVHqvVqVw8v2Pb29LvByIDj
         joBh+0rX7fEY/5zHSdDh+bSOzwkyVdYRaCctFvPLS0wxK0Zb/qxqiH7WUEXOaUf2mCI3
         88y+h081ObG6svBqNaweUeSlSJVyHN7NnZuuWa11t2pPXfYW52r33BKNu4JpQuXo4XbX
         ErZEW0zllkHQAYnhAENWUDNcYC2UthKgC3khHrgS9RHcoFcp5pkCgghoIMsSCFp+UVWm
         +O+Q==
X-Received: by 10.66.149.105 with SMTP id tz9mr15561775pab.143.1446303333431;
        Sat, 31 Oct 2015 07:55:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.37.188])
        by smtp.gmail.com with ESMTPSA id j16sm14366681pbq.23.2015.10.31.07.55.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 07:55:33 -0700 (PDT)
Date: Sat, 31 Oct 2015 20:25:29 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: rtl8192u: Remove unnecessary function
Message-ID: <57ba37d09c11afef9ae42a4d251771796479cbb4.1446302505.git.amitoj1606@gmail.com>
References: <cover.1446302505.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446302505.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch solves two problems.
The function rtl8192_CalculateBitShift() had an unnecessary variable i
that could be removed by using a single line of code.

After this change, rtl8192_CalculateBitShift() becomes a wrapper
function, so the rtl8192_CalculateBitShift() function has been removed
completely to replace it with a single line of code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_phy.c | 25 +++++--------------------
 1 file changed, 5 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index e5dbaca..5ee4c34 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -38,21 +38,6 @@ static u32 RF_CHANNEL_TABLE_ZEBRA[] = {
 #define rtl819XAGCTAB_Array Rtl8192UsbAGCTAB_Array
 
 /******************************************************************************
- * function: This function reads BB parameters from header file we generate,
- *           and does register read/write
- * input:    u32	bitmask  //taget bit pos in the addr to be modified
- * output:   none
- * return:   u32	return the shift bit position of the mask
- ******************************************************************************/
-static u32 rtl8192_CalculateBitShift(u32 bitmask)
-{
-	u32 i;
-
-	i = ffs(bitmask) - 1;
-	return i;
-}
-
-/******************************************************************************
  * function:  This function checks different RF type to execute legal judgement.
  *            If RF Path is illegal, we will return false.
  * input:     net_device	 *dev
@@ -94,7 +79,7 @@ void rtl8192_setBBreg(struct net_device *dev, u32 reg_addr, u32 bitmask,
 
 	if (bitmask != bMaskDWord) {
 		read_nic_dword(dev, reg_addr, &reg);
-		bitshift = rtl8192_CalculateBitShift(bitmask);
+		bitshift = ffs(bitmask) - 1;
 		reg &= ~bitmask;
 		reg |= data << bitshift;
 		write_nic_dword(dev, reg_addr, reg);
@@ -117,7 +102,7 @@ u32 rtl8192_QueryBBReg(struct net_device *dev, u32 reg_addr, u32 bitmask)
 	u32 reg, bitshift;
 
 	read_nic_dword(dev, reg_addr, &reg);
-	bitshift = rtl8192_CalculateBitShift(bitmask);
+	bitshift = ffs(bitmask) - 1;
 
 	return (reg & bitmask) >> bitshift;
 }
@@ -306,7 +291,7 @@ void rtl8192_phy_SetRFReg(struct net_device *dev, RF90_RADIO_PATH_E eRFPath,
 		if (bitmask != bMask12Bits) {
 			/* RF data is 12 bits only */
 			reg = phy_FwRFSerialRead(dev, eRFPath, reg_addr);
-			bitshift =  rtl8192_CalculateBitShift(bitmask);
+			bitshift =  ffs(bitmask) - 1;
 			reg &= ~bitmask;
 			reg |= data << bitshift;
 
@@ -321,7 +306,7 @@ void rtl8192_phy_SetRFReg(struct net_device *dev, RF90_RADIO_PATH_E eRFPath,
 		if (bitmask != bMask12Bits) {
 			/* RF data is 12 bits only */
 			reg = rtl8192_phy_RFSerialRead(dev, eRFPath, reg_addr);
-			bitshift =  rtl8192_CalculateBitShift(bitmask);
+			bitshift =  ffs(bitmask) - 1;
 			reg &= ~bitmask;
 			reg |= data << bitshift;
 
@@ -356,7 +341,7 @@ u32 rtl8192_phy_QueryRFReg(struct net_device *dev, RF90_RADIO_PATH_E eRFPath,
 	} else {
 		reg = rtl8192_phy_RFSerialRead(dev, eRFPath, reg_addr);
 	}
-	bitshift =  rtl8192_CalculateBitShift(bitmask);
+	bitshift =  ffs(bitmask) - 1;
 	reg = (reg & bitmask) >> bitshift;
 	return reg;
 
-- 
1.9.1


