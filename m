X-GM-THRID: 6669443635369476096
X-Received: by 2002:a5e:8a07:: with SMTP id d7mr9525347iok.7.1552850854628;
        Sun, 17 Mar 2019 12:27:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:90d:: with SMTP id 13ls2871038itm.2.canary-gmail; Sun,
 17 Mar 2019 12:27:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzYUv+En8hSNecT2VZExVgWMP1AknCSf8549QBYY7xBGIjZpREQP1s270xb+UQDABfUw+Ig
X-Received: by 2002:a24:2741:: with SMTP id g62mr3928550ita.30.1552850853638;
        Sun, 17 Mar 2019 12:27:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552850853; cv=none;
        d=google.com; s=arc-20160816;
        b=D+yFXAa9vq6qWOVn2r7HCEoR6p2TO/eGAdNirnUwJBdv5lcnUpYtbuL7O8rOet1cht
         xtu36plIjWTpRrFJB0l3gQYhk9hbvrHqGeEKPoho5ZWsbfJ3QDYsa0PwsCadnpsqXBfd
         wQtRcxvraJ9qSoBPxK0McLJd9s6iAgKFwo16eKOCECo5azBVLzTSJHz7/hWpEuG7QPb0
         fNQqLnBp6/zkAILqac5S93Bx7JTRy7RSq73grt0hOHYhff3/AA0f7EK/kyfPtiI6z/IY
         jBA12AeKn2jmft0zbhbMAwV0aLF/VnMYbFmvkBbKYeG/0SW/oL0g+lhLOoG3+A8iwE+S
         807A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=VJWYcwfHdjoLLUAoWR57bRbJ/vmmjgR0s90y2n1gSfc=;
        b=Dzuz1g+aGADLVqELYoOdE6JJLIcb2CVMao+Xfc/dZHYHPzgM/zEwG/sBBnHrbPi2qp
         baHplAzUO4EyNkueyUBeMJ5PChTxDaw0v2oCzaoD7cXk3BdOQDN31ER5amPJC4cFEUFr
         jdAb5nEX2JIAKAtowiLeTBWw6uz3JCc3OfdbyMeTxuQaCqdhqHpMNaIpb7rV/02OWxrS
         LL8azXX9bXBxl9hfix2FjiTKzWdCIYgm3tO33Q3U+1ZjiIAk7CVHahRRfOW0JSCSA0gm
         hyUYE4YCWTEUpIGomtx25PR+ga/hwFe8Wra9yJ82W+hs4rEPawYR/QydaFnuVj0roulM
         uocw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kvKwa1RD;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id p187si202867itb.1.2019.03.17.12.27.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 12:27:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kvKwa1RD;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id j5so9764274pfa.2
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 12:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VJWYcwfHdjoLLUAoWR57bRbJ/vmmjgR0s90y2n1gSfc=;
        b=kvKwa1RDKwLTNtKExEJg4rfR1NfLPzzdvF6+mljL4iNFzFsKZ+a46shCiaUzJMcF1e
         V3gwmRxWlN1BF8VSrjLGuqkDyWC4pUUpMplmQuh5BpyhVo4Wh0KvF5KGcakbKX/BSyuV
         Mekwwlj4l9JP4Hx9EkOgqX9vEtbiroXMQyI9Qw7zN/HmmUc/AT7uImgIsltDUd7gwYDZ
         zk+sncJ1X/cJzy6Pcf9giLYy+IksO4WxbQ/wzNo4FW6SUS5Y8XU0YT95nTyw4xAIzAZx
         5aJdytwSQ9APr9ORKnAuuGE7QJWE5SSP6Am1ePkEZ+U4Lrj/8y+CcT38htA2fbzn5mbk
         6spw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VJWYcwfHdjoLLUAoWR57bRbJ/vmmjgR0s90y2n1gSfc=;
        b=nD7OcV1cY+48DFW+gFDbPFFLL8TFy329le3LF1Utc25nx7rhB7ORXVr3cHjXumelIC
         2+HNkQxG3bEZ1VPPTRTmAvdRhTraKCyBBBlUjgD8H95gSWGmDxXKyCoWk4mb3+u9Lubi
         c2l6O4vY/FFO/KQO/ChUu9gX2cOTDFdjFXFJxR0uf9D7CQVBSrl01IGNzAEFgFSQwJ32
         9d6N9mZBU7VFJM7A4CkKqEqqPSUV+KdfjkHEHAL5EatfzjWElNg4bgJAh/MPFL3W8UYp
         GcH9ocmhXIW1D2FsT95wdCfw3xss267FLtbtUlXpvWztOnX4DYU4Chh+lUngs9SNlgyM
         Bdog==
X-Gm-Message-State: APjAAAXGoxJeYDYWE2b6SMZJfKnPP36E4VaDazelBUShUAha1sCzZY9w
	Bhcx3U+r7qY/oFHEdxMKgbnRqnAPfYQ=
X-Received: by 2002:a17:902:7e49:: with SMTP id a9mr15122636pln.303.1552850852752;
        Sun, 17 Mar 2019 12:27:32 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id h15sm8444248pgd.12.2019.03.17.12.27.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 12:27:32 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rtl8192e: Remove parentheses around the right hand side of assignments
Date: Mon, 18 Mar 2019 00:57:17 +0530
Message-Id: <20190317192717.13128-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Avoid useless parentheses to the right hand side of an assignment.
Issue found using coccinelle.
The semantic patch that fixes the problem is as follows

// <smpl>
@r1 disable paren@
expression value,e;
@@

(
- value = (e)
+ value = e
)

@r2 depends on r1@
expression value,e;
constant c;
@@

(
- value = (e == c)
+ value = (e == c)
|
- value = (e <= c)
+ value = (e <= c)
|
- value = (e >= c)
+ value = (e >= c)
|
- value = (e != c)
+ value = (e != c)
)
// </smpl>

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 .../staging/rtl8192e/rtl8192e/r8192E_dev.c    | 20 ++++++++-----------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
index 19bb04b3f097..57a32e268839 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
@@ -338,7 +338,7 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
 		priv->eeprom_ChannelPlan = usValue&0xff;
 		IC_Version = (usValue & 0xff00)>>8;
 
-		ICVer8192 = (IC_Version&0xf);
+		ICVer8192 = IC_Version & 0xf;
 		ICVer8256 = (IC_Version & 0xf0)>>4;
 		RT_TRACE(COMP_INIT, "\nICVer8192 = 0x%x\n", ICVer8192);
 		RT_TRACE(COMP_INIT, "\nICVer8256 = 0x%x\n", ICVer8256);
@@ -420,7 +420,7 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
 			if (!priv->AutoloadFailFlag) {
 				usValue = rtl92e_eeprom_read(dev,
 					  EEPROM_TxPwDiff_CrystalCap >> 1);
-				priv->EEPROMAntPwDiff = (usValue&0x0fff);
+				priv->EEPROMAntPwDiff = usValue & 0x0fff;
 				priv->EEPROMCrystalCap = (u8)((usValue & 0xf000)
 							 >> 12);
 			} else {
@@ -475,15 +475,13 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
 			}
 			priv->LegacyHTTxPowerDiff =
 					 priv->EEPROMLegacyHTTxPowerDiff;
-			priv->AntennaTxPwDiff[0] = (priv->EEPROMAntPwDiff &
-						    0xf);
+			priv->AntennaTxPwDiff[0] = priv->EEPROMAntPwDiff & 0xf;
 			priv->AntennaTxPwDiff[1] = (priv->EEPROMAntPwDiff &
 							0xf0) >> 4;
 			priv->AntennaTxPwDiff[2] = (priv->EEPROMAntPwDiff &
 							0xf00) >> 8;
 			priv->CrystalCap = priv->EEPROMCrystalCap;
-			priv->ThermalMeter[0] = (priv->EEPROMThermalMeter &
-						 0xf);
+			priv->ThermalMeter[0] = priv->EEPROMThermalMeter & 0xf;
 			priv->ThermalMeter[1] = (priv->EEPROMThermalMeter &
 						     0xf0) >> 4;
 		} else if (priv->epromtype == EEPROM_93C56) {
@@ -540,8 +538,7 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
 			priv->AntennaTxPwDiff[1] = 0;
 			priv->AntennaTxPwDiff[2] = 0;
 			priv->CrystalCap = priv->EEPROMCrystalCap;
-			priv->ThermalMeter[0] = (priv->EEPROMThermalMeter &
-						 0xf);
+			priv->ThermalMeter[0] = priv->EEPROMThermalMeter & 0xf;
 			priv->ThermalMeter[1] = (priv->EEPROMThermalMeter &
 						     0xf0) >> 4;
 		}
@@ -755,8 +752,7 @@ bool rtl92e_start_adapter(struct net_device *dev)
 	if (priv->ResetProgress == RESET_TYPE_NORESET) {
 		ulRegRead = rtl92e_readl(dev, CPU_GEN);
 		if (priv->LoopbackMode == RTL819X_NO_LOOPBACK)
-			ulRegRead = ((ulRegRead & CPU_GEN_NO_LOOPBACK_MSK) |
-				     CPU_GEN_NO_LOOPBACK_SET);
+			ulRegRead = (ulRegRead & CPU_GEN_NO_LOOPBACK_MSK) | CPU_GEN_NO_LOOPBACK_SET;
 		else if (priv->LoopbackMode == RTL819X_MAC_LOOPBACK)
 			ulRegRead |= CPU_CCK_LOOPBACK;
 		else
@@ -1424,7 +1420,7 @@ static u8 _rtl92e_rate_hw_to_mgn(bool bIsHT, u8 rate)
 			ret_rate = MGN_MCS15;
 			break;
 		case DESC90_RATEMCS32:
-			ret_rate = (0x80|0x20);
+			ret_rate = 0x80 | 0x20;
 			break;
 
 		default:
@@ -2044,7 +2040,7 @@ bool rtl92e_get_rx_stats(struct net_device *dev, struct rtllib_rx_stats *stats,
 	}
 
 	stats->RxDrvInfoSize = pdesc->RxDrvInfoSize;
-	stats->RxBufShift = ((pdesc->Shift)&0x03);
+	stats->RxBufShift = (pdesc->Shift) & 0x03;
 	stats->Decrypted = !pdesc->SWDec;
 
 	pDrvInfo = (struct rx_fwinfo *)(skb->data + stats->RxBufShift);
-- 
2.17.1


