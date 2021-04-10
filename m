X-GM-THRID: 6949346409404432384
X-Received: by 2002:ac8:4ccc:: with SMTP id l12mr9176184qtv.157.1618020797640;
        Fri, 09 Apr 2021 19:13:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:c207:: with SMTP id i7ls6140975qkm.9.gmail; Fri, 09 Apr
 2021 19:13:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwaReJ0AIWKPbmWhgKOgdAmR5BSToi+oZoyx4PCk14tUBCWM0tFlCL1yFt2WyYCGjEhTKe8
X-Received: by 2002:a05:620a:244f:: with SMTP id h15mr10416757qkn.235.1618020796840;
        Fri, 09 Apr 2021 19:13:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618020796; cv=none;
        d=google.com; s=arc-20160816;
        b=JeUbna0WV890bMsg/8pwTkJZj0W9lai1FsdCJ53N/dXpI8N1VH1RzvC+bguhXsGn4H
         bzf+lMd1jsqKeECGykSWoWal4fv1qz9+GmK5Huc4r/lduGpKvn3p4N/SDCprHD0w6yy7
         YhiKQX8E1dqbm1XKG4MoqPH16z3GBFhs8zz8gEBlxXL4If9tRzaw53q3WaG4fYbiBArf
         fiXg1XfBWP/rHwePwLheU/kF2cDQR8izY2CtJ2/AMzVGiWvADWrMt6Sdbu5O8DUcjih5
         JhSlQo5XkwHDl9iWxwEH6I0zdRSQFiBwwRp5AISCu2sEnbO5JI/ghInGB0esrK0RkbHJ
         8F0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=nPOFyIIlua33yWGhXrEphFLgIKlagAmifofs3UcXjLU=;
        b=hO7HWshKjreAWrczzjtDekMMBMZaFaEvSXB80AUPfoAUYf047jVkgTZWekxR3W76HJ
         IB++HbbvFdnakC6VXebRui1JNnuAvTPwpMKwhLsm25l1K7dlKmZjp6eQI+retqcBzK/8
         lxvOLXtM+SdCnkNScCoWFVAwpHlM+Q8Ki6sgxuo2IBgUVzhwdo6437ihzMJ9fBtw2E3o
         I2nQ4zuQSkX0BTuYvyCvsZMzkB/8TWtdzcIglaWJT8e9B52XC2ppaNPRkz/2wvHW3SB9
         Sksez/E7dndi6ZJjiXffpOMtBRvv6h7Ov34Vr0njL7COJTyF81wwNQ0zdgIY0EYf27kP
         73Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pou+hH1r;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id b201si360327qkg.6.2021.04.09.19.13.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 19:13:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pou+hH1r;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x432.google.com with SMTP id p67so463774pfp.10
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 19:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=nPOFyIIlua33yWGhXrEphFLgIKlagAmifofs3UcXjLU=;
        b=pou+hH1r5XCVI4nwllZpV2muFqU45ynq/ro4ciJaA15IfBIAgZuzBR19o4diZVKePh
         36c4fWXFHl+jr+z+s1t5UsmCJ/RfLoAoVBoh6kvWbGZSjRzfdpIdGeqU/1iQwa1dJEY1
         Lxr1ZC2/d1vESMsWWKJfGfAAHEO4T4FLBOHi29ePiItf25XvdKD4yPLdaUcs9Pu8XAgc
         H0akB4IjgvYEODSOGouQIi8/1LFEqD4CNfByXfiHRIm4d/VBSvaLysXI5EUsIsAiCbyG
         NEaIoIYff9bryGVI9wye4Mk3FIn1TbRJuA1sFhY+FT3wLspysiXjh0k9+rOxLI7PE5uP
         AXtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=nPOFyIIlua33yWGhXrEphFLgIKlagAmifofs3UcXjLU=;
        b=CfzmwRhZM1xFpcQ8PrzH4uRtUJD3lxJGxHzpuWwdNd1Cq6y27yhst6W4aG9plp/wZ4
         rqtmg3ex15P+ZM55eCP0fiwDaHIrYYgzF97/kqulGVn9VjG1dym+tKMtSS/Xi1caqJEP
         lUKZpuh7IPnaiQrg9HJhB8Ty0ho6bu+d4wN9Saqac3mP/C0bdBSGuhXzwxJiM2yVF4ZD
         1yEy1Tbdbh6SgzcUazo5XZj97bOEkQHKdssPzQ2Ki7TJ/NSyBnh1yetzhM0R+ZPsDo5E
         nPbb/Bj+HCrIGTjTdzLYRWipIN/NZKPt3mlkQx9w/L0OPnV6VtRfpoi+QgJIDSOkE2qE
         k+Bg==
X-Gm-Message-State: AOAM533I+vLTeRyHbIpRn+V8zPYmB17S/HXomq5gmCT2r3WqRi5WWGin
	UcDqMKhQvBLHGtReJ3ZNe+w=
X-Received: by 2002:a63:544e:: with SMTP id e14mr16749833pgm.288.1618020795974;
        Fri, 09 Apr 2021 19:13:15 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id q14sm4174933pgt.54.2021.04.09.19.13.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 19:13:15 -0700 (PDT)
Date: Sat, 10 Apr 2021 07:43:10 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 3/3] staging: rtl8192e: remove unncessary parentheses
Message-ID: <YHEJtkbGtHmajJIt@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Removed unnecessary parentheses because they must be used only when it
is necessary or they improve readability.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
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


