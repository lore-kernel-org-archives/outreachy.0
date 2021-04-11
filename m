X-GM-THRID: 6949862244544937984
X-Received: by 2002:a67:d383:: with SMTP id b3mr15858187vsj.57.1618140958513;
        Sun, 11 Apr 2021 04:35:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:475b:: with SMTP id i27ls1309026uac.7.gmail; Sun, 11 Apr
 2021 04:35:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwhlgKogUTkGBG7s2BS6TvTkag7XEo6QYtJ1zY22/hyOA5rra/Xp9O7N6R3JY5kyGZyFDmQ
X-Received: by 2002:ab0:2903:: with SMTP id v3mr11798339uap.109.1618140957492;
        Sun, 11 Apr 2021 04:35:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618140957; cv=none;
        d=google.com; s=arc-20160816;
        b=LnZirO3/D6vUW8syKONiQXOnkvP9vS+wkvLlzg3RbwDQ2qF4ZsEftL+20i9B3TGyj4
         KNy4UX1jDZe+lvp0rB4Eg0weCkNg6IYJEgL6w5Oxzwo429OwhcGBVyGMrRHQ0PvzhyC7
         luOo4ENnj1nAPntrxgUkIs1R9D055r1NWgs0DaN85/WPTu/1714qJJuZBDi/zbVAUDm2
         8X522blTGAlXpbjeLjL+ARuPdzGcDUlqR2eLusY6UFiC9O9iraTaqGTBzJWFj9DPRsq3
         g2BpN0Hj26iwcGQucdI4gol2M6xkrvla2Td24jtQReFNibM7z9oMBTrY+/vHln30tS2S
         sgkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zTJs2BTaTABCUyNSzygxb7w5Eiwv3e639bQ2LLKnHnM=;
        b=S4BNNP1q4zzv/zFWXYLpQL7L/YBIweNU2+jR8QgZHuEvS0z5kWSeHITMCmVWhQB1Dr
         6xHnnNJBfrvyTljszjlLYbkHSVTj9EsY9m8ec+qtFPnQ7NtY+l+om095fZBVJhDCwgNk
         X+xg2Y0DXWkiCmWElezT8t9CAzozNVb4dHeHkb46KBF0YBwVFHpqlvTkLMj2ErOLgbfZ
         5XxwpoJjEQJtUnWKu1hkEBfi/KUEVJkmBtlKZXf+2rOn2XLV1Logf/SZAnIY6WtQyC6a
         ug88w9k+nXU4TtW6MjVHx9tbn5HYxWLstQQN54Twc3sgBUL6Oqxa1ryqroc0og6JDydF
         QqsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mj4WQJXc;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id t16si378934vko.2.2021.04.11.04.35.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 04:35:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mj4WQJXc;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x433.google.com with SMTP id n38so7324786pfv.2
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 04:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=zTJs2BTaTABCUyNSzygxb7w5Eiwv3e639bQ2LLKnHnM=;
        b=Mj4WQJXcma0VVgXG/XUr0XCRq3oX0Y9P0ITCXK1+tSYapq25iwmM2IdVbHfYeGgxod
         k1MZ+Kb8vS0ge4hkPhW68QAdRygMrHUuuOnfANT72Kvz8SM8hJC77boWoWUQGq4l9DgI
         svNHX+rgL9sFIH0evpLe6d/U74qC+sps0ZGswLPor38xfvV3IdHwsRltpR99idI4rE9W
         /QznuMRFXSBPkW3TV4VRn4bs5Lqg0pKZvPDHbj8GLAWDBtjCM1I2ubHXGtd5n9x8ERNm
         PDNblmivdRukkUyCeberzc0NkfBnVrx0RWiBt171trkFjzbV4D+I3cCqiU6Lkr/shQ40
         VDbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zTJs2BTaTABCUyNSzygxb7w5Eiwv3e639bQ2LLKnHnM=;
        b=gldsvxtbUiGfc3Nuk66yosmzYi0ZkTCDUpt61tO5eVpZiiq4Ma+vdysOCQto8a6AhF
         Yb3c5NAi2efJO6TLVAu7qG4mFCSXaligvOwx+TIkdCKH+w4OrfBDTDiY2cp2MS+jqrIL
         QGH72cd9o88yapz+QneMAoE6SML2cLgRLB4u7SFF5xd1yFsJ7vnk9lG9rWfDy71ytUkC
         Swg8a2az4YHd+plkniPqoEPaycfHLGlwrOQcXYGEFGp1IT+8wUPQijLwNHaZ0juqkcD8
         KvozQdsOCyfibTMga214BJIVcDq3i/BWnVgjfd44KOBD05jtzOU4Fv8Jb7aZM0AREpiB
         oUog==
X-Gm-Message-State: AOAM533FJcUtnwG3nCJkUaIqdBw7b1j33WAAgO1tavOle2WsXYOX/s9i
	o/rE3J2XS/7A5Vx5fasm4cM=
X-Received: by 2002:a62:2cc8:0:b029:23d:bd0d:2ac3 with SMTP id s191-20020a622cc80000b029023dbd0d2ac3mr20391256pfs.41.1618140956629;
        Sun, 11 Apr 2021 04:35:56 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id w1sm8151277pgh.26.2021.04.11.04.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 04:35:56 -0700 (PDT)
Date: Sun, 11 Apr 2021 17:05:47 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v4 3/3] staging: rtl8192e: remove unnecessary parentheses
Message-ID: <29464cba775f9529db30b7fb4168198975098b55.1618139271.git.mitaliborkar810@gmail.com>
References: <cover.1618139271.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618139271.git.mitaliborkar810@gmail.com>

Removed unnecessary parentheses because they must be used only when it
is necessary or they improve readability.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v3:- No changes.
Changes from v2:- Rectified spelling mistake in subject description.
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


