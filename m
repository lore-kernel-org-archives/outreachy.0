X-GM-THRID: 6669443635369476096
X-Received: by 2002:a25:4fc5:: with SMTP id d188mr7862573ybb.86.1552892770013;
        Mon, 18 Mar 2019 00:06:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4f56:: with SMTP id d83ls3555220ybb.4.gmail; Mon, 18 Mar
 2019 00:06:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzdXzJaBpwyl8Up3KcXXwU5ODnkLteYa1xcjuSFO9My2LE2UmfUnnwwc1IYfJJujZYHEnWY
X-Received: by 2002:a25:9345:: with SMTP id g5mr7344529ybo.64.1552892769251;
        Mon, 18 Mar 2019 00:06:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552892769; cv=none;
        d=google.com; s=arc-20160816;
        b=Kpn2QL4AIfT6VinMm0lc+hgQUcsFBDj5XmFpeDO06lyNQ5fCaXzMkmXddcMBmku2n3
         kK3wYyxFHQ7wiPwb1K6GMHoFnVdqKFnv12di9qbJXUnPDuADan3y8xDv6R5pac/jmBWD
         0VJnCVcDsbipHGDOPKrC+tv8LOljP4w/l0I7z/UbDegNCqdKMh9loqc9StI4nntHTSkE
         bCHkPINvuijmrhKKXq9cX9bz2b7UsCyzrwPll79xsvcbKKOBkypeEsdvPDRH/B4LFeSz
         L4ECAQKnybNckkVLLtPJGaTPLlb/7/M///6wBIQ0ZVYKk/QnVUxnuY85HffTzKIA7Wwg
         2IjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=hT6OD1xI5O5RNe06Xa09FToj+GgP387aT620Qb+c0b8=;
        b=VYgP/65RQQJnrvYhXDVNkHC2bH/T4tSkaHob5g1QFQ+QEKspnoIuGShZQv9bZBp6WG
         rAMIQJ4ujzT1JhtFpNiCL+GAccuN6/MSu7SskUsBL3dhivW1h0vGEJhubQ79H0Z8dIoG
         7BjYHCh442budOQ0lIuL1dvYxa+5eQFKcb1dFbVuVwx4W45yj3pwA0I9m7XUI3+3RIRL
         zKCihpZJxwQB+ry7QKeYjFihR9EkpnmuvZ2jIpFx8ZNTUSe7Zqy0wInQjKpJkN+2sYJQ
         XBec74VVbb4l2qWOImrItvGiSqGoqZcXDXiyuuhHpEuHijKEj+7WH6sZqmDERfjWVoDQ
         MElQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bq97gGcr;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 62si611394ybf.2.2019.03.18.00.06.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 00:06:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bq97gGcr;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id i17so865570pfo.6
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 00:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=hT6OD1xI5O5RNe06Xa09FToj+GgP387aT620Qb+c0b8=;
        b=bq97gGcrvm0A/1YhpZE64ga6vSctZ9K1MXmOYOWZmeGkeUKuyEZF6w51pw5X+6UNRl
         ueO5v/fXz1/NtgHAZxjMuOJJ06UNqrEURF+X9Dt4qupj7WHZzxskhRFohOOPqs2raALo
         1wtCCd6CoX6cDuXq/gwjPmVdbm6b5JIW8En2qeRlCpM59snSSAHHBaqIzA06WqziyB+o
         4dSpsQJ2kGDHNLzrG7BK6qP3RCDNHkVWerj1bFATg0sSLlo/SX4v0IXKeyfA/YDxGtqZ
         eejPHLglyzTQQ5e7PIXFKvZud2A4a7b+5WCIJaGmICdCqtLPqTHAqsIT4/cpS03uxCMr
         6Cfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hT6OD1xI5O5RNe06Xa09FToj+GgP387aT620Qb+c0b8=;
        b=UKVSrGWcBgrWpuiqBv3Q4TX+gC9Qyf5W4RpRgJhiKSL6Iyzel4SMsUAgPdFKxEUFdf
         b9NB58Y3dRN5nHqG1no1gtATLA5fhv5mHjlHYIoygU5ZcVvJs0uua4amxkZu+d6FxDU3
         wrbojAENfPPIHYRG+fwqcmPgovtdS3SZVXWA40lzZftwxOwEt+h4O2cdlzvRQO8KzQJs
         pC6WOKo7AStqiKaQfpJXaHf+NFmuQELJWTwPo28haxyoOQT7QXQGRMhhVpoZExF9yJFr
         Ky8jZWQCicfzfXNm/qsdQD6ikSovZHVuPVWxYxsX2dWHIK9UhwYLKaN2oaiEigVqiDUk
         Of1A==
X-Gm-Message-State: APjAAAWxfFkdiSQRxJ9rKwbKyiMGl2qSN17yGmE2HBlKZiypfXhnhjxQ
	j3nBy3ChiFyOK+GDO532VAEVasIa+oQ=
X-Received: by 2002:a17:902:aa47:: with SMTP id c7mr18332652plr.338.1552892768594;
        Mon, 18 Mar 2019 00:06:08 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id g15sm15165199pfo.35.2019.03.18.00.06.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 00:06:07 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] Staging: rtl8192e: Remove parentheses around the right hand side of assignments
Date: Mon, 18 Mar 2019 12:35:53 +0530
Message-Id: <20190318070553.14860-1-bhanusreemahesh@gmail.com>
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

v2: CPU_GEN_NO_LOOPBACK_SET set on its line.
 
 .../staging/rtl8192e/rtl8192e/r8192E_dev.c    | 21 ++++++++-----------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
index 19bb04b3f097..f70d65e3d64b 100644
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
@@ -755,8 +752,8 @@ bool rtl92e_start_adapter(struct net_device *dev)
 	if (priv->ResetProgress == RESET_TYPE_NORESET) {
 		ulRegRead = rtl92e_readl(dev, CPU_GEN);
 		if (priv->LoopbackMode == RTL819X_NO_LOOPBACK)
-			ulRegRead = ((ulRegRead & CPU_GEN_NO_LOOPBACK_MSK) |
-				     CPU_GEN_NO_LOOPBACK_SET);
+			ulRegRead = (ulRegRead & CPU_GEN_NO_LOOPBACK_MSK) |
+				    CPU_GEN_NO_LOOPBACK_SET;
 		else if (priv->LoopbackMode == RTL819X_MAC_LOOPBACK)
 			ulRegRead |= CPU_CCK_LOOPBACK;
 		else
@@ -1424,7 +1421,7 @@ static u8 _rtl92e_rate_hw_to_mgn(bool bIsHT, u8 rate)
 			ret_rate = MGN_MCS15;
 			break;
 		case DESC90_RATEMCS32:
-			ret_rate = (0x80|0x20);
+			ret_rate = 0x80 | 0x20;
 			break;
 
 		default:
@@ -2044,7 +2041,7 @@ bool rtl92e_get_rx_stats(struct net_device *dev, struct rtllib_rx_stats *stats,
 	}
 
 	stats->RxDrvInfoSize = pdesc->RxDrvInfoSize;
-	stats->RxBufShift = ((pdesc->Shift)&0x03);
+	stats->RxBufShift = (pdesc->Shift) & 0x03;
 	stats->Decrypted = !pdesc->SWDec;
 
 	pDrvInfo = (struct rx_fwinfo *)(skb->data + stats->RxBufShift);
-- 
2.17.1


