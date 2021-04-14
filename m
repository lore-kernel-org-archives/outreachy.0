X-GM-THRID: 6950903323792769024
X-Received: by 2002:a63:7e02:: with SMTP id z2mr35349762pgc.404.1618383312813;
        Tue, 13 Apr 2021 23:55:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:c70c:: with SMTP id o12ls768565pjt.3.canary-gmail;
 Tue, 13 Apr 2021 23:55:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyxg40jCf+qT7xF6zF7TqX3kmJ3v4Z1tjH+XaSqak22kiiNiSWPgsSoPxFgtcrRM3XIkzxJ
X-Received: by 2002:a17:902:7246:b029:e6:78c4:48d8 with SMTP id c6-20020a1709027246b02900e678c448d8mr37239115pll.18.1618383311719;
        Tue, 13 Apr 2021 23:55:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618383311; cv=none;
        d=google.com; s=arc-20160816;
        b=gYyItwqQs3wdqr2W9DgBR69/O2uabIr4Aufoy6rFqYH/bhSfQxGD+ig20mU7IJJWAO
         tgnUWu9tefKw9FwuFi8NJQ0F9CDO3ZLgyiHFdzSNCE+McZrfFDcClkwmClFvPEEiG2q2
         T/3xG/Q2Zfp23z9JK+q+Uigi6PlLmfbopy4ofIEJGQorYucg8jn4BYrnrfMjMnNu78Iw
         1t4NbEN0w3vdeDUDZOYyED3qkVWbHGncCVV2PKgKZDZZ66pZzZRzG4JgwAIKP06aD3UA
         kCmO8syYi2C/oOyNXv3kH4B2IVdOoo7IHM+86LxkrHdtPGv1apCy1w8ANeOfDNBYNejW
         GKqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WOD1vszs28Y8cd70dkw1Qc027ESGrGzF9sDa2/FEUQE=;
        b=CLGhS6+e91dY/sPXHpfsDIRP9lazfQ5p/4Bk27Zsx5aSCZj3QFquhIaJCV/hxLhnRT
         cOMXeSN1x9PH9YZnnnAykXjpYeZ9KXBzs67/on6an8zc2KOZK04ZleBORpPz/GmNI4Tc
         CCu9wDOKwlLcLoMqWCLzxmll5lhc4boXDsrQMgrPdKPu0JXzhZwwQ5HUCBJYJ0vMPOlZ
         x01MuiKWxsg7DABL8xaZf5d/pwVZsmB1FGcYR8TLyszQZ/sizImyn8mL7oGHPuYki5+S
         y9PzhkIXQTz1TOZC5grxvgmmbcvDkcK3PO49u97/gyN1tzXY7l3lJ3IFkR6lfG9FpD8J
         3veg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HDh7A9oc;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id g23si1720701pfu.3.2021.04.13.23.55.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 23:55:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HDh7A9oc;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x434.google.com with SMTP id w8so9623406pfn.9
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 23:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=WOD1vszs28Y8cd70dkw1Qc027ESGrGzF9sDa2/FEUQE=;
        b=HDh7A9oc4N7gCKs6fksCjZvQrhMHeMGNy8B/Bwvd3c3O1kyh6Y+jMrRzPahdmbAJLJ
         p0ryiZGy8eu2jdPFlt9MBBbhkaex0cYqoI3kKZOCjxDQSmNdQEMs08Hi8Mq3DiJzuWz+
         7++AdU5v1ocTuEg+IJOSKCdxZYGSu3+52xG5K9QpY0gdXDTH88QblIGMkJV2MDDOsMGo
         t5VBJMWI/UeNauD+lbHpv+yTAtUhLTH4WHi4UCx5Xkr5eZBrQ4Nr2Tjb84Xi4iIA4d+Q
         kmX+WGsGKYr7HOxY1ZbxqpAGcHZV+VjnMp6nGbpYIWwZNOXMDwzXlD27EnhQg0KHJINe
         EMfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WOD1vszs28Y8cd70dkw1Qc027ESGrGzF9sDa2/FEUQE=;
        b=m40S7I1kx1DVk1ucC7jVzByyGtgF3r7SpiYJhUmTVQEpWWx0GnAFBuvX7xMUmAb8eo
         7EYa/CIYGKUesUQRjVtngeVY2auP5pqlQVR2Zf8VynyN1/fQgTHO2rgcrfh8FdQbYHLv
         KnCEcbLzgUYBehwmXjOSeUQG/Y69FbkZG2yK5DEiqEH5K75yJqGQ/0G3DTpbG3w748BS
         pufmq+Vjajk1O+SLndPu+67SAGJxp4Uh+OTmYZ20qjUGr33j/dJp1q3AX/9sOXqqwkdO
         rguy0NdjC0aWUKTPb9FqWK2N51e9ZIL21IA2jXRH7sT3IvldWbh4kNZyjGm5J11AbVqi
         d1Dw==
X-Gm-Message-State: AOAM533I/SdQIAMCA4VpHoyEV/b96Dfpb6rYwwCtMUrfBDm3pJorbXie
	tj8igGivGlYBV7VN2Nc2G/g=
X-Received: by 2002:a65:6496:: with SMTP id e22mr36756023pgv.46.1618383311404;
        Tue, 13 Apr 2021 23:55:11 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id j7sm5586444pfd.129.2021.04.13.23.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 23:55:11 -0700 (PDT)
Date: Wed, 14 Apr 2021 12:25:03 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org, davem@davemloft.net, kuba@kernel.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2 1/5] staging: rtl8192e: add spaces around binary operators
Message-ID: <28cbc4825fdfacf5d5ea8bb688a8bd6a1c65f059.1618380932.git.mitaliborkar810@gmail.com>
References: <cover.1618380932.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618380932.git.mitaliborkar810@gmail.com>

Added spaces around binary operators like '+', '*', '|', '-', '&',
to improve readability and to meet linux kernel coding style.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v1:- No changes.

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 8 ++++----
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 4a2968566b93..b74c6ac817d4 100644
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
index 6c51323104e5..b14ed3534ffa 100644
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
@@ -188,9 +188,9 @@ void TSInitialize(struct rtllib_device *ieee)
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
@@ -517,7 +517,7 @@ void TsStartAddBaProcess(struct rtllib_device *ieee, struct tx_ts_record *pTxTS)
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


