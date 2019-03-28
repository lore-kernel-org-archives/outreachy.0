X-GM-THRID: 6671711882278076416
X-Received: by 2002:aca:39d6:: with SMTP id g205mr2942265oia.42.1553798741542;
        Thu, 28 Mar 2019 11:45:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4f1a:: with SMTP id d26ls4915261otl.10.gmail; Thu, 28
 Mar 2019 11:45:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQD2zH8WNUgfDShQl3Svd/rZgFxzeOd4bFQg00ri3XlnzYJxqMKhoZpSqBJSFpqg23gPOr
X-Received: by 2002:a9d:4d0f:: with SMTP id n15mr2781330otf.0.1553798740793;
        Thu, 28 Mar 2019 11:45:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553798740; cv=none;
        d=google.com; s=arc-20160816;
        b=j49BZy3zj85KznLqqCnqzVaGdoyeor66N8eNKKkbNA70x4km3JAUQAOvChxF5KAm1r
         SPPGVgT8HlgJPIibnuqnEdR3XFbOshHAIx+7NUHL7/L+Yz6QYrO8Qy2qvm2FfLN0RTna
         O0zCaeXNJTAqru67bMQek+bqKY3jq4o75UQLVhl92AQYaGWo1bSrKtpXwHioHf8QHa5x
         KMo2iYCpEcF0auXzxKPy9oRiUfBkpRDvKIrw+svEAT2zia59FLwP9QoW/mQ7f0lyXw/3
         2RBtKgo1E4Z3ywrI+te87Hi7DX3HTLzX9rHgBBDz0/yghUeNIFW7Pu363zC3g224G02L
         f9dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=D3xCequFSwVjsPFGQ6TRhGqddSjvIHb7gQ7cz9o7dw8=;
        b=dyf2KMRExY5uNNhD7n59UxYo4yYD5rYeo3YT9IrJPNs/J4KibWQXE9bWQI4wzX2xqI
         u2f+per4o5UiKly6Chz8+ur8ucTkn7bal9jVFPcl9S77nwkn3iENOoBxdJ3u5I3UGm0l
         bgVF8e3g7TMysfyXZWOr66YkNgPMd2kRLt+akk2To+A9v4aVDmYFui7G4KlWpo6T7iMp
         1Z+B5nhmZ6XyzoaezCinLz/Cxl+4CBpVODNp4ZEw3lFH7uXmTnqYYcY9mE6zzFylRrtt
         LMPtfBHr5yPQPneH7ymH0MZpDHmIFeYDOsIzaoePJaceS/h6nljC57gsb04IkEBTTvaw
         IY2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sCCpo5mt;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id c13si1227104oto.3.2019.03.28.11.45.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:45:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sCCpo5mt;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id bg8so5353329plb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 11:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=D3xCequFSwVjsPFGQ6TRhGqddSjvIHb7gQ7cz9o7dw8=;
        b=sCCpo5mtirJzCta5PxiAhd1DBbZI3l36qCCDGw1DNVkcRJ4XKBugZUrWoqKo3fzGqX
         qbL/NwPXHVkzwSaNmzvvy2lpqXhUBt1icUKkobdxL+1xoaMHm3DrJp5xgMLN8L1bqjsg
         c3r3zSdzzCMJEzJEfrrjv3pzMn7JPnWVCvMHWSBaxMoHMWxNqiET6gyQ7t3b46bzgljk
         LuoO7kOgoFvhdC+iDwzo1lb+INSWlY1esZDCw/NbAcIIJho1/dBGFsrASPG4Z2dOGD61
         ekroqpc3y0NXb6yz1XRDXAlqU74S5DPIxPr55Sx/TaEGVLn8yQHwI4J9bvUyv+g34sFV
         lYeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=D3xCequFSwVjsPFGQ6TRhGqddSjvIHb7gQ7cz9o7dw8=;
        b=Wpem9nCx/JctsWVN7snPrgSbaAC920a1dgu+4UJsxGQh8bnK5RMaxkzYXsUEii25LT
         RsRq7tt+ZWh8+mSg73u2exzeGPGsvWAgDFbBlzcLwo0pEsMeLnVg0tRWJTpR5Ki9blBO
         pLn28vu/UDCvLk1A4D3K76IIkopLDI27sceVppQmI0KKhNfZDkGHVgFYVy/RcqLh23OC
         8I4QkkRF8HiiOUNNxCMyuQYlJUIfum2rLverSc7+F4QQEuvKY25PnCjx9zLW6fNHaBTR
         FQ4osDZso31ZffaGBxKEpxm8ZYt1Bq8yi8GJbrJJNHLnCUDRJ6PsGI20bO8jile/dnMK
         ddiQ==
X-Gm-Message-State: APjAAAXslaLpdpWsXEydfBGPmZQUdWgp65HnPnpxZpWlBPToy8spCCbM
	VkrDEZ1o3jelaFU/p4+dHoHwR35kLao=
X-Received: by 2002:a17:902:8690:: with SMTP id g16mr44243876plo.284.1553798739851;
        Thu, 28 Mar 2019 11:45:39 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.82])
        by smtp.gmail.com with ESMTPSA id z77sm54279807pfi.155.2019.03.28.11.45.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:45:39 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: rtl8723bs: include: Fix identation issue
Date: Fri, 29 Mar 2019 00:15:23 +0530
Message-Id: <20190328184523.4480-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Corrected the identation of switch case to get rid of checkpatch error

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/include/wifi.h | 72 ++++++++++++------------
 1 file changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 559bf2606fb7..ee1994ecbf18 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -374,18 +374,18 @@ __inline static unsigned char * get_da(unsigned char *pframe)
 	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
 
 	switch (to_fr_ds) {
-		case 0x00:	/*  ToDs = 0, FromDs = 0 */
-			da = GetAddr1Ptr(pframe);
-			break;
-		case 0x01:	/*  ToDs = 0, FromDs = 1 */
-			da = GetAddr1Ptr(pframe);
-			break;
-		case 0x02:	/*  ToDs = 1, FromDs = 0 */
-			da = GetAddr3Ptr(pframe);
-			break;
-		default:	/*  ToDs = 1, FromDs = 1 */
-			da = GetAddr3Ptr(pframe);
-			break;
+	case 0x00:	/*  ToDs = 0, FromDs = 0 */
+		da = GetAddr1Ptr(pframe);
+		break;
+	case 0x01:	/*  ToDs = 0, FromDs = 1 */
+		da = GetAddr1Ptr(pframe);
+		break;
+	case 0x02:	/*  ToDs = 1, FromDs = 0 */
+		da = GetAddr3Ptr(pframe);
+		break;
+	default:	/*  ToDs = 1, FromDs = 1 */
+		da = GetAddr3Ptr(pframe);
+		break;
 	}
 
 	return da;
@@ -398,18 +398,18 @@ __inline static unsigned char * get_sa(unsigned char *pframe)
 	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
 
 	switch (to_fr_ds) {
-		case 0x00:	/*  ToDs = 0, FromDs = 0 */
-			sa = GetAddr2Ptr(pframe);
-			break;
-		case 0x01:	/*  ToDs = 0, FromDs = 1 */
-			sa = GetAddr3Ptr(pframe);
-			break;
-		case 0x02:	/*  ToDs = 1, FromDs = 0 */
-			sa = GetAddr2Ptr(pframe);
-			break;
-		default:	/*  ToDs = 1, FromDs = 1 */
-			sa = GetAddr4Ptr(pframe);
-			break;
+	case 0x00:	/*  ToDs = 0, FromDs = 0 */
+		sa = GetAddr2Ptr(pframe);
+		break;
+	case 0x01:	/*  ToDs = 0, FromDs = 1 */
+		sa = GetAddr3Ptr(pframe);
+		break;
+	case 0x02:	/*  ToDs = 1, FromDs = 0 */
+		sa = GetAddr2Ptr(pframe);
+		break;
+	default:	/*  ToDs = 1, FromDs = 1 */
+		sa = GetAddr4Ptr(pframe);
+		break;
 	}
 
 	return sa;
@@ -421,18 +421,18 @@ __inline static unsigned char * get_hdr_bssid(unsigned char *pframe)
 	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
 
 	switch (to_fr_ds) {
-		case 0x00:	/*  ToDs = 0, FromDs = 0 */
-			sa = GetAddr3Ptr(pframe);
-			break;
-		case 0x01:	/*  ToDs = 0, FromDs = 1 */
-			sa = GetAddr2Ptr(pframe);
-			break;
-		case 0x02:	/*  ToDs = 1, FromDs = 0 */
-			sa = GetAddr1Ptr(pframe);
-			break;
-		case 0x03:	/*  ToDs = 1, FromDs = 1 */
-			sa = GetAddr1Ptr(pframe);
-			break;
+	case 0x00:	/*  ToDs = 0, FromDs = 0 */
+		sa = GetAddr3Ptr(pframe);
+		break;
+	case 0x01:	/*  ToDs = 0, FromDs = 1 */
+		sa = GetAddr2Ptr(pframe);
+		break;
+	case 0x02:	/*  ToDs = 1, FromDs = 0 */
+		sa = GetAddr1Ptr(pframe);
+		break;
+	case 0x03:	/*  ToDs = 1, FromDs = 1 */
+		sa = GetAddr1Ptr(pframe);
+		break;
 	}
 
 	return sa;
-- 
2.17.1


