X-GM-THRID: 6949336424403435520
X-Received: by 2002:a63:e443:: with SMTP id i3mr683633pgk.114.1618226546953;
        Mon, 12 Apr 2021 04:22:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6a00:15d2:: with SMTP id o18ls5489787pfu.4.gmail; Mon,
 12 Apr 2021 04:22:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzmGsvm29mMq+iDtbaZSbBg6+YbE+TUwP8RnXRzLG1glnoD3fDRcM8PUktUNFNE8u0fDrql
X-Received: by 2002:a63:2207:: with SMTP id i7mr15360484pgi.429.1618226545731;
        Mon, 12 Apr 2021 04:22:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618226545; cv=none;
        d=google.com; s=arc-20160816;
        b=uOidRbj1ZHQsg1WhGUDedA+ArAuyOq81eEZ+q1FpbG2khuwk0xOOSvZTVRYjg5t7sP
         z4MtiT7ytSuoBGx/CWbt7LtQHeukPstiSg/5ojRvxaEoKX1rcQvZ7yXTCzG/gx3VM0Z/
         C/1m9CXoKDqtwT3SCranveX310gY0s4mT2WDHK3uuHz22NpI+G0MaUSoXiwODD7J5vK4
         FFhUjIsEHdXZrsuYYaLQoY1mtGU2isI8ObLjzQlC5gd/UhCe57qqBwIXOB26X+GvzmUP
         u/5Psc7AY6Z2t6jWL/KhrNZkq+KeT/FqeXnj+MbRs8wXHUVKTDzZNTz7gHbrJrfqSl3u
         1jdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AagLpiU/5w+hbS3rSIWdhh9pnQqTVxdZ8rB4CC9+7cc=;
        b=Y8WnnnFP4Y2wS7QR3+bAUC9rm/JXFvoh57pO3042gL20vXhe7G+T9h4e2RWS5Fqb+h
         1oKUs3AyzByWA71lRTNNxJTVm1K68GCdGUGP++idLuEgtxsvl+RZosGwEy9jU/luaes8
         GqTCfZNoNIL9vymL+NlFiiYr24t8wsJBRUGcBYdKm6ULdZoywCF+2bWLgA12dfZhVgsJ
         gnq6b1eaPIZVzf7iS201V0/yGbSyQdbHoRGylZnMxYxINh65CjVsiYJ138BtpATKs29p
         wEIKcJUQKmYSKcFSkwu3qz2qNCWlkyXO/+2TAloML+VhYn4T95UnOarQoFOT75osts/z
         2dIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FLTR6RBm;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id p2si601301pli.3.2021.04.12.04.22.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 04:22:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FLTR6RBm;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52e.google.com with SMTP id t22so9142645pgu.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 04:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=AagLpiU/5w+hbS3rSIWdhh9pnQqTVxdZ8rB4CC9+7cc=;
        b=FLTR6RBmPhwEinIlAiy2/1Ym/PLTq4voDNISociO5qk2JAVweN4mIVaj+wCS2Kb3q4
         bNButkxGaBeVmgyKYTOhCVvz6OZVpR23bCFynDvfZDa5zZT5XD0oz/0mjVGjsQVNTEXG
         cWJhJ2hb/ZFjC2bkUPsDKJM1vKQtfqLjboRFLvMrzBAZeCLKoE1m+CQNX2jIpAnOwZRh
         nby45/7cC+my89h/rZHYtdcbQrmvDYnSYLwzlRuV9O9dBvM3fwyhX+exK4Agce8PZXSf
         jbXDeMHJ5Hnhr2cuW1cMgQ0hKpIHEKGoAOUtPQMBFAqLAXn9up+/wqFAbOTxT3PDgN1f
         1zrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=AagLpiU/5w+hbS3rSIWdhh9pnQqTVxdZ8rB4CC9+7cc=;
        b=XC3+qRNRwFyyPAgv52M3RYgP2FEPwiT+pv8+TL656gf2kW0V2fm4q6m+xQ1t6A7arE
         IF1RxEsuhydNUkfMDdktOrh9uGThs3n9DQTl40nvF0iynK4NKzKnoqyzVaJQMXzxDn5D
         fHARySXix0LGsFGEks3OoItu7LM5B/7Lxj2JmFA5m13y13cL8bOLvgMhKEuv8YFsyzIm
         MmNIl3PPKGWJtqCBkU7l/7s8JyIAlwD2YfwNcncb32C7FAcyZXGcga5yQAh6E0315fho
         ETI10ZBgBwCym9oe63TdNV3PezoCUaT9d7uqvzTZAH9mcU2usOSJ+eJ4sS1WhY9SqE40
         h64A==
X-Gm-Message-State: AOAM532Hy4/QfsHflGah4004Tuv7M10KoSh4TbU5REKjqTqzygR1mcHx
	hkUk4uftoETY7xOiA0x9fVQ=
X-Received: by 2002:a62:de83:0:b029:23e:6d5f:b166 with SMTP id h125-20020a62de830000b029023e6d5fb166mr24149312pfg.78.1618226545431;
        Mon, 12 Apr 2021 04:22:25 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id 123sm7085090pfx.180.2021.04.12.04.22.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 04:22:25 -0700 (PDT)
Date: Mon, 12 Apr 2021 16:52:16 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v4 3/3] staging: rtl8192e: remove unnecessary parentheses
Message-ID: <29464cba775f9529db30b7fb4168198975098b55.1618224838.git.mitaliborkar810@gmail.com>
References: <cover.1618224838.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618224838.git.mitaliborkar810@gmail.com>

Removed unnecessary parentheses because they must be used only when it
is necessary or they improve readability.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v3:- No changes.
Changes from v2:- Rectified spelling mistake in subject description.
Changes has been made in v3.
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


