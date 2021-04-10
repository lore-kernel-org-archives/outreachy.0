X-GM-THRID: 6949336550894206976
X-Received: by 2002:ab0:3c8f:: with SMTP id a15mr14357463uax.66.1618018502858;
        Fri, 09 Apr 2021 18:35:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:14ed:: with SMTP id f42ls561151uae.8.gmail; Fri, 09 Apr
 2021 18:35:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxsvolAc9U6I/Ialb3NciTiqEFiuHjPOaYPeG9/ssPbBwmqAwb9K4QTgRlGnILVgsp/kBW5
X-Received: by 2002:a9f:37c8:: with SMTP id q66mr1801336uaq.129.1618018502089;
        Fri, 09 Apr 2021 18:35:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618018502; cv=none;
        d=google.com; s=arc-20160816;
        b=hL1IMSaiBCLyvrbgLc8F09P2lSB6ArqYt1noeNsm7Hq0s3BNX8+7okMQhfEhf4CtxN
         N3IqpwEBfkiXwBQrbZzalAW6OFWdX6S4AtjwdzPvGIRHx/8roPT/lM8+Su0/D6utDDtV
         WR2c1VnhKydJFlhC+lrSI2wMFRXx5sy4H9rNmtvfRnNsBrA7ry+ht0VUphosaI0veY1B
         8zX+fiNvCRGxEgvuvDTXvvlwW6X0B4kiq79UHFM84x2JpVVUz5n6rSJqvTLlDiM7wB3w
         rktOpbToRfkNaOU/IYIbxlBxnmTV3mClEQHKmKRoqxyif5VlsO3OQ6gGsNxcib1vkWo4
         FVdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=3hsu6obEc/gfKsB+04dEn5JLfQh37pqmbH2QRBkH7pE=;
        b=o5t+gEWqbdcfRTDBXfntIN+ITkjoW1cZWf1ixqfWfNYhuIABEPSzW+NyyGBXIcgjr7
         BszMqNp6nsvChcqy9HqJFqmV3vzhXUmxweEzl1ApCzjo1XQuCS3jTripeKKAJk9b1xwO
         Nqnx0+PgiqMrSIArtEsMMT9kWheo17hMC8p/b7zsaWuYhb+/g8KmmxjnKv1ti6AmdLpn
         99Pd8I+D9mOUVI2o1O7W90y5TgqigjRTJ10taRmbRbNokU+wP4BjDT1dZ8V6U1AQacjY
         cPGE7dHZ4BWFGXZJ8L0OwHgKAn11I5N/WS+HlWezbzsSiWHTtbOj0ChN/Hy0wwLdV9sL
         MnMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uzHNVTRa;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id u13si302900vkl.5.2021.04.09.18.35.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 18:35:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uzHNVTRa;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id h25so5175912pgm.3
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 18:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=3hsu6obEc/gfKsB+04dEn5JLfQh37pqmbH2QRBkH7pE=;
        b=uzHNVTRa8y9qXDXs6YrK/TlfUyTgeumLt/HyAnINR2vKD45S1+/Q64H7ovHiDwXUSj
         IBlGNFXM/TtyPWpCz3PkPcCbZDkqovOTXvPtgIK3SgVSznywpAkij3uakgC5gbqmIt8K
         mzavK4+kYSo/BuH3/Vn+GNv4oR8oellWqiBI5gLuH4g9Y2/mevfc43tCdMYkWnRZRAij
         JAMSzWCF2p8JVMhw+ffpAnhOcVCG7fRRRK4J4/w60iMMJSvTw+XBgBG5SSDRpKdon1KC
         Bc66uStZCBN4/883xs6eQfAoY4vP7Sx4+nYRJJUv9rOgErvBtPAvavrOt4kdV+Xx8gO/
         Z4qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=3hsu6obEc/gfKsB+04dEn5JLfQh37pqmbH2QRBkH7pE=;
        b=oC10MTGXA0gGsiODnuk9+mYle3E5idxHal9dIBPec7xwpwMYPaN8MFqDY7zOipf3Uc
         B/egjO83OzJHun5vI2/WIaywpEv1IfMRExpL0Zr0ZSGjT0tm4kxx7xFhacheDyjpDL1d
         ddUfbmCOx/bgK+GZWpIp9HWPLWwttKehywvSjvX+aY+88INpHh8wkI8awYTDWNQVbDHR
         BC5xfpFmR42YZtbgrcWFC1FRG/N/aquLKQaNsqBDc8QKw5ONij/1qCw7MYp9kmPUh4/1
         A4EqAdiEHOPHk7Cyr6FACaXBBlb7B7z5Bt74rNi5scht0a6RlceiKSILM7hux32tuT02
         POsw==
X-Gm-Message-State: AOAM531eV2E8gPvjyM/YeJQz+jmMM4nIqNok2Fbn/9zohprHHdE9IMi2
	KdwrwmV/ni2TaNReSdztVc4=
X-Received: by 2002:a62:7907:0:b029:23e:9010:3844 with SMTP id u7-20020a6279070000b029023e90103844mr14743834pfc.58.1618018501204;
        Fri, 09 Apr 2021 18:35:01 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id 22sm937483pfj.101.2021.04.09.18.34.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 18:35:00 -0700 (PDT)
Date: Sat, 10 Apr 2021 07:04:55 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 2/6] staging: rtl8192e: remove unnecessary blank line before
 brace
Message-ID: <YHEAv+Bnl3NVUi/s@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Removed an extra blank line before close brace as it was not necessary.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 2 --
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 2 --
 2 files changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 7ed2ed9e63f6..e188e9e6b11e 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -263,7 +263,6 @@ static void HTIOTActDetermineRaFunc(struct rtllib_device *ieee, bool bPeerRx2ss)
 
 	if (pHTInfo->IOTAction & HT_IOT_ACT_AMSDU_ENABLE)
 		pHTInfo->IOTRaFunc |= HT_IOT_RAFUNC_TX_AMSDU;
-
 }
 
 void HTResetIOTSetting(struct rt_hi_throughput *pHTInfo)
@@ -445,7 +444,6 @@ static u8 HT_PickMCSRate(struct rtllib_device *ieee, u8 *pOperateMCS)
 		break;
 	default:
 		break;
-
 	}
 
 	return true;
diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index afcdb4b6a18e..1b994a57633f 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -193,7 +193,6 @@ void TSInitialize(struct rtllib_device *ieee)
 			break;
 		pRxReorderEntry = &ieee->RxReorderEntry[count + 1];
 	}
-
 }
 
 static void AdmitTS(struct rtllib_device *ieee,
@@ -254,7 +253,6 @@ static struct ts_common_info *SearchAdmitTRStream(struct rtllib_device *ieee,
 			    pRet->TSpec.f.TSInfo.field.ucTSID == TID &&
 			    pRet->TSpec.f.TSInfo.field.ucDirection == dir)
 				break;
-
 		}
 		if (&pRet->List  != psearch_list)
 			break;
-- 
2.30.2


