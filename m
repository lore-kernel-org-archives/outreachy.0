X-GM-THRID: 6949753709721026560
X-Received: by 2002:a25:5146:: with SMTP id f67mr28119394ybb.332.1618115694742;
        Sat, 10 Apr 2021 21:34:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:81c6:: with SMTP id n6ls5851451ybm.4.gmail; Sat, 10 Apr
 2021 21:34:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwrnq8t4tnNPnkPz7s3qujTe4PDMAnGHyfYsFArFIrVqr6/M9D9G8dbAkMg6X6PUnE4AtFo
X-Received: by 2002:a25:aa2f:: with SMTP id s44mr29527740ybi.296.1618115693774;
        Sat, 10 Apr 2021 21:34:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618115693; cv=none;
        d=google.com; s=arc-20160816;
        b=UCke6STn4h4xjGygJ6l81FWB9hMeX/DHWM9tmYZwRYWBa+Zkshu1I6iWTYRvmBGVhY
         21Gziu+5JB4nJ7iRSmbovDLL2WI08GwBK8TNUJeZvWEZ0enTfES2P3Hcp3dbxmpY3bpo
         +SvX7T3UDq+ShfJVgwPPUZfC6+DDnkxLfyeY3t+zPKaHgXuNKeHAIsb6C5z+34HrNZAZ
         CYj7o1KOhSIQJizigOL6q+gCy/XypJddSsjhC+VP+/9PG4NLbaP+GtJH5K5JN5LRkuPk
         UmFoCSL7HeG/T9wnGBsE08/kJq3bn3scfMQoXfHQ3yDhfphJkexb2ePwM8Zz2zDaf2za
         DM2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=T2DCR+pBRj77mnajpSp0QIz6gQyKylZyF8pvYWlFKCA=;
        b=LMLSjyslr2vuHqbCrs3ocHeprz0wnkPX8wj59S35KEdBxeDxy5jXFRRMXXzFGGLIBY
         I+WSelmXRNFACTUBvcWJhpn4v0t9Ok94iu58CihUqljHKWsfbFmf6fn/RCGcgaM5n/Nn
         TPveH77kUal/jfMsarkxo8xtQbCgkZ1K7TYbdVZhYsYoZzSvsEkLnj+3qu2Yh0wMZzib
         /+4HDwIlN4IOACervpwf3Vfasm4UBpPBS4yAzGfADyOftjjlM1W21trzONEuio6xOUO9
         dOKw3UvXYAca1j/0O1FXFl8ZZmxKk2hCVryKyHLjythzSOEV/sSQIS09KQQ11hkaRyC4
         HPHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cnv3VZMv;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id i1si509467ybe.2.2021.04.10.21.34.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 21:34:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cnv3VZMv;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62f.google.com with SMTP id y2so4628142plg.5
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 21:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=T2DCR+pBRj77mnajpSp0QIz6gQyKylZyF8pvYWlFKCA=;
        b=Cnv3VZMvBNQpIlTF30kymRPMQrSvVe3fkJYRDqsHjQHiiI65jQxEUulF0dyfT3+2k7
         zHVBKdpDjs0E797AU7Ti5dSzp3KjuIn4NG6AQuEaHHkIJYExvNcC6ddfTtHUQDBpt1Lr
         STsZw71UMU2WLpcCBjJsnGOh6DlDaGE3JDjfF5rTPS83zma1M5WPeYOd2wz+mCJMJeX4
         0OReNZM10rTBwHFSMphTIpN0avoyr5U1CRQ3G92NH6i4MLwOZSNFGeukltHjhT5avzAx
         Mp8TgGjkqMB5um3ZxWKpxBj1fWgIgHgLRS70Lxh/rg82x7bT3s4BbOIjH3KNqhBwUYXc
         2HOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=T2DCR+pBRj77mnajpSp0QIz6gQyKylZyF8pvYWlFKCA=;
        b=AeScin8aDNqrZzH94E8KdxpY8+6jKyMNDyIhfaCIs1QDL8PHYrB8hQ4ejX1LY4pO0E
         J3i/AcM71bBxyVEdJi5Sq5bar8+Wvg/GFtRAq3V7QuodlfNS5Y0Zy/5+XgJs8y+H+2Qn
         HD5X2mfoWWxxPuGgKdHPk2ZIuGWTZsNl9dXt2awOiL6iTnXOAmRAEWgreZzn+0Y/qtNT
         8QeGayIEwF5afMMqcEOrMGldp1KghFbFkJC2tXpXMJKDqRRi3+tqPBkYk0BTjFppZ9gx
         KUIwEznXvyVwoZpr7AczOemZgLyaMM1iXkLhplEKrR1SPeuV+S0JLdDChWqSvmNSsEhh
         pXFg==
X-Gm-Message-State: AOAM530PtVpdUoUorHy9lA91Fsiynql2GtDBO2uLWZ67TT8Qp7KabLRj
	bTTLfzNejEp0Vdu3DxdiP7I=
X-Received: by 2002:a17:90a:1502:: with SMTP id l2mr21502228pja.149.1618115693009;
        Sat, 10 Apr 2021 21:34:53 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id y29sm6250926pfp.206.2021.04.10.21.34.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 21:34:52 -0700 (PDT)
Date: Sun, 11 Apr 2021 10:04:46 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2 3/3] staging: rtl8192e: remove unncessary parentheses
Message-ID: <1365e7d8dc76842e6fd9d9842bfef1ddd548b4f9.1618110617.git.mitaliborkar810@gmail.com>
References: <cover.1618110617.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618110617.git.mitaliborkar810@gmail.com>

Removed unnecessary parentheses because they must be used only when it
is necessary or they improve readability.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v1:- No changes. 

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 89d0e9ec188d..b1fa8e9a4f28 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -287,7 +287,7 @@ void HTConstructCapabilityElement(struct rtllib_device *ieee, u8 *posHTCap,
 		u8	EWC11NHTCap[] = {0x00, 0x90, 0x4c, 0x33};
 
 		memcpy(posHTCap, EWC11NHTCap, sizeof(EWC11NHTCap));
-		pCapELE = (struct ht_capab_ele *)&(posHTCap[4]);
+		pCapELE = (struct ht_capab_ele *)&posHTCap[4];
 		*len = 30 + 2;
 	} else {
 		pCapELE = (struct ht_capab_ele *)posHTCap;
@@ -646,13 +646,13 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
 	pHTInfo->CurrentMPDUDensity = pHTInfo->MPDU_Density;
 	pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;
 
-	memset((void *)(&(pHTInfo->SelfHTCap)), 0,
+	memset((void *)(&pHTInfo->SelfHTCap), 0,
 	       sizeof(pHTInfo->SelfHTCap));
-	memset((void *)(&(pHTInfo->SelfHTInfo)), 0,
+	memset((void *)(&pHTInfo->SelfHTInfo), 0,
 	       sizeof(pHTInfo->SelfHTInfo));
-	memset((void *)(&(pHTInfo->PeerHTCapBuf)), 0,
+	memset((void *)(&pHTInfo->PeerHTCapBuf), 0,
 	       sizeof(pHTInfo->PeerHTCapBuf));
-	memset((void *)(&(pHTInfo->PeerHTInfoBuf)), 0,
+	memset((void *)(&pHTInfo->PeerHTInfoBuf), 0,
 	       sizeof(pHTInfo->PeerHTInfoBuf));
 
 	pHTInfo->bSwBwInProgress = false;
@@ -668,7 +668,7 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
 	pHTInfo->IOTRaFunc = 0;
 
 	{
-		u8 *RegHTSuppRateSets = &(ieee->RegHTSuppRateSet[0]);
+		u8 *RegHTSuppRateSets = &ieee->RegHTSuppRateSet[0];
 
 		RegHTSuppRateSets[0] = 0xFF;
 		RegHTSuppRateSets[1] = 0xFF;
-- 
2.30.2


