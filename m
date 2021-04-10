X-GM-THRID: 6949336474288390144
X-Received: by 2002:a05:6214:f6c:: with SMTP id iy12mr4661293qvb.15.1618018484316;
        Fri, 09 Apr 2021 18:34:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:b19:: with SMTP id t25ls6133679qkg.1.gmail; Fri, 09
 Apr 2021 18:34:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwnScBEr8K/Q0PyFdySbl6YqthwDdjKV50+NEDDWDsa7AWFZtv3jxPks1qShAT6eIhAy+Em
X-Received: by 2002:a37:905:: with SMTP id 5mr4707241qkj.242.1618018483517;
        Fri, 09 Apr 2021 18:34:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618018483; cv=none;
        d=google.com; s=arc-20160816;
        b=flUsLqfsC6Rne+P/1b+an3NCGNEqN8WIjR1tU3TOhvGE8WPftAnjC8rBCRTZxP13pq
         WHZDkxSCTV0OYb7LPQVw1BZpp1xxWydQBXToAk+aZhEkHivShBj1J2NF3dTLK+B/yFSi
         qYd0SqcuCGQPf6RA5cDTt+MU4itp7zKCz6igK7DDvozakxGZZSS5spjLbahWu2mLnevJ
         7ZLrJveCfMU9PwiFaJYcmuoT66djWbhMcciWuu5FtN0kEvOzSg3lf75zL1Wqw0ASWL1u
         Nd4vpl+tumEioxMSM9pICodTA+j0sx42ARLrGJPvFXhbMKegfJVemCOdYJ0N5Y85SrEY
         EfAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=WLzfeTzHIbRgUJOr3LYK0Jggy4qHkt6OcLXjRZXFVTs=;
        b=HVaOfgWfvSRai3uhmmu6gUwIK3Ugu27/+CcsAJ0KqiucYekcP4Jj7Lr/zqmJxtwbqz
         TJW+Km83DJnGBulwVu5qIcS1Y9vIxqFCza4PLErIaPwtYWnFx14og/Bk6lM0qQeKEZLY
         LEXX4qiL2eL99EHzHSTpn5G8/Q0SaKHdgPvLh44QLhg+L9uK48zank+0hgYCaj1DUO/S
         7BHqu+I+2RKU7rAJ4sHm33t8VR+n/2mZsce43DDQicIrY25j2aTUDSHuLRanrq/8jNFI
         qf6Fz9vQSVhxPRcvDRcndPG7mUkC3qmU2b2DlIJZFtTDyTQcfHFhh8sab8gSB9sv4NTM
         InrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OMl2o3GR;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id k1si678373qtg.2.2021.04.09.18.34.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 18:34:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OMl2o3GR;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x432.google.com with SMTP id i190so5347178pfc.12
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 18:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=WLzfeTzHIbRgUJOr3LYK0Jggy4qHkt6OcLXjRZXFVTs=;
        b=OMl2o3GRa493yEdsulU4D4n6BTY3GG7lYTX5AKeNoDSkiaUGNAtgIRHHX2Y5EomQ6T
         0A4c9rcv9DQGHsryKBNFDSUzKkNBB8zold9Y+IaboZ9RABJHrm40U6qTRTpUXzsvE+Mt
         ngNGGKEpwVysIUiieYRxvDfog5sl68dtemaKVc2rDZMQJbelJG7WXdD7tUnZXEe2HkS+
         qcGmjnc6v8rdbii2ANtxxzadVqez1f8AP43Xrn1NHV92UBC40hPTQYep9PiLLzDWh0Qe
         Td5L0sUb9dYMUOGb9Fp/z0MxFzIq7NWOiXETnsaeTtRxGykc+VkZet0XkWvH0sVCyFX9
         NCUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=WLzfeTzHIbRgUJOr3LYK0Jggy4qHkt6OcLXjRZXFVTs=;
        b=k1Dalro2qgoN3txv1/+wrR/NtaH6VRvhciA2KTSDdqs00wbPov3fef2IKmPiUwbnAi
         VY9naptZCD8dYYsiDs6HHT7drsr0iZbyGfIRfw4EQ5c1xVUa+UH9jvsOvHW/7sb0MIN5
         3c1dHwE5b2ICBqnCaY37tB8h2RYBJmdjwn6a9PbH5FQVYtyzZQhaNyM6/vEWUNKQ0Edb
         k4YJ1FoZ52Qub2pFhEiPu/sNhVJlfv/1i2X10UGxTvNfEbVoF+JWYi8J/ANSyh2kLRMB
         OtadAXtLvT+gpr1HjiY8+ELyQ0pwf9Q0DmEenP6/abtlxjsX3nKwItClBwRW/1myL2Eu
         KCVg==
X-Gm-Message-State: AOAM532E/1RcpxYz+5wesIpOhC3tNlDdG7Yjp+R7AVpIxDRezVn3feLk
	HX/fKrn0wRSMXeXB2Ry+S0A=
X-Received: by 2002:a05:6a00:2303:b029:249:b91e:72f0 with SMTP id h3-20020a056a002303b0290249b91e72f0mr238905pfh.80.1618018482607;
        Fri, 09 Apr 2021 18:34:42 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id a30sm3314226pfr.66.2021.04.09.18.34.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 18:34:42 -0700 (PDT)
Date: Sat, 10 Apr 2021 07:04:37 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 1/6] staging: rtl8192e: add spaces around binary operators
Message-ID: <YHEArYPUhO4Jj9DK@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Added spaces around binary operators like '+', '*', '|', '-', '&',
to improve readability and to meet linux kernel coding style.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 8 ++++----
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index cc761d965b1d..7ed2ed9e63f6 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -138,7 +138,7 @@ u16  TxCountToDataRate(struct rtllib_device *ieee, u8 nDataRate)
 		is40MHz = 1;
 		isShortGI = 1;
 	}
-	return MCS_DATA_RATE[is40MHz][isShortGI][nDataRate&0xf];
+	return MCS_DATA_RATE[is40MHz][isShortGI][nDataRate & 0xf];
 }
 
 bool IsHTHalfNmodeAPs(struct rtllib_device *ieee)
@@ -479,8 +479,8 @@ u8 HTGetHighestMCSRate(struct rtllib_device *ieee, u8 *pMCSRateSet,
 		if (availableMcsRate[i] != 0) {
 			bitMap = availableMcsRate[i];
 			for (j = 0; j < 8; j++) {
-				if ((bitMap%2) != 0) {
-					if (HTMcsToDataRate(ieee, (8*i+j)) >
+				if ((bitMap % 2) != 0) {
+					if (HTMcsToDataRate(ieee, (8 * i + j)) >
 					    HTMcsToDataRate(ieee, mcsRate))
 						mcsRate = 8 * i + j;
 				}
@@ -577,7 +577,7 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
 
 	pHTInfo->bCurrentAMPDUEnable = pHTInfo->bAMPDUEnable;
 	if (ieee->rtllib_ap_sec_type &&
-	   (ieee->rtllib_ap_sec_type(ieee)&(SEC_ALG_WEP|SEC_ALG_TKIP))) {
+	   (ieee->rtllib_ap_sec_type(ieee) & (SEC_ALG_WEP | SEC_ALG_TKIP))) {
 		if ((pHTInfo->IOTPeer == HT_IOT_PEER_ATHEROS) ||
 				(pHTInfo->IOTPeer == HT_IOT_PEER_UNKNOWN))
 			pHTInfo->bCurrentAMPDUEnable = false;
diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index c294a6543e12..afcdb4b6a18e 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -104,7 +104,7 @@ static void ResetTsCommonInfo(struct ts_common_info *pTsCommonInfo)
 {
 	eth_zero_addr(pTsCommonInfo->Addr);
 	memset(&pTsCommonInfo->TSpec, 0, sizeof(union tspec_body));
-	memset(&pTsCommonInfo->TClass, 0, sizeof(union qos_tclas)*TCLAS_NUM);
+	memset(&pTsCommonInfo->TClass, 0, sizeof(union qos_tclas) * TCLAS_NUM);
 	pTsCommonInfo->TClasProc = 0;
 	pTsCommonInfo->TClasNum = 0;
 }
@@ -189,9 +189,9 @@ void TSInitialize(struct rtllib_device *ieee)
 	for (count = 0; count < REORDER_ENTRY_NUM; count++) {
 		list_add_tail(&pRxReorderEntry->List,
 			      &ieee->RxReorder_Unused_List);
-		if (count == (REORDER_ENTRY_NUM-1))
+		if (count == (REORDER_ENTRY_NUM - 1))
 			break;
-		pRxReorderEntry = &ieee->RxReorderEntry[count+1];
+		pRxReorderEntry = &ieee->RxReorderEntry[count + 1];
 	}
 
 }
@@ -518,7 +518,7 @@ void TsStartAddBaProcess(struct rtllib_device *ieee, struct tx_ts_record *pTxTS)
 				  msecs_to_jiffies(TS_ADDBA_DELAY));
 		} else {
 			netdev_dbg(ieee->dev, "Immediately Start ADDBA\n");
-			mod_timer(&pTxTS->TsAddBaTimer, jiffies+10);
+			mod_timer(&pTxTS->TsAddBaTimer, jiffies + 10);
 		}
 	} else
 		netdev_dbg(ieee->dev, "BA timer is already added\n");
-- 
2.30.2


