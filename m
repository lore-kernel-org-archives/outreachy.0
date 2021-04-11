X-GM-THRID: 6949836539406843904
X-Received: by 2002:a05:6830:15:: with SMTP id c21mr19120387otp.20.1618134964524;
        Sun, 11 Apr 2021 02:56:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:605:: with SMTP id w5ls426562oti.8.gmail; Sun, 11
 Apr 2021 02:56:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxl4xbGOjUl4qtzt23rk65d2khiTJuSpMIyq9GVf9/V1Y4TR5zjS85Sl8+Jg0XGT4EMVbwM
X-Received: by 2002:a05:6830:10:: with SMTP id c16mr2551208otp.48.1618134963832;
        Sun, 11 Apr 2021 02:56:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618134963; cv=none;
        d=google.com; s=arc-20160816;
        b=OkJQGTzylnY4rokIOuBqjJhMK6OMuuFQPQPvYocUWlcquyumvzz39yg7846esTlgCm
         okEg1j60ayr+jOywg8zsl9aYLPJO6+dbbApTj+ezb6SuIuGtckMjZT6HMhSOVfG+APKC
         2JKwHct6NZYbaMSmSw2+7xTYAiQiA7q/R0O+2Ob0qv7GjkYnE4jzJj4UMxIOQNN+yEM+
         Egf8n8Icm2Qs8PJcnmcn9gW3bvjJQ6BxKZHT6wmLlzKsDeeSY9iaRzWQyslxjrnmP7Bu
         VqQ97F5oo+HCYgTzkllOZ0XL7VvseYqhlp9Bfwahdb4YfcsJHJhE1pAf0n5ff6AEdiWt
         cFBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/rlS+5t+v4UNQErM732BFvhcFr/EzAmioR8Qn4jYDRE=;
        b=bdLDZ1PeF0c92Zi3h3LhnCMyWqojWMELUJE5J3EhOYUN0pT7dus1+u5f6TAysHckR8
         r1LElwBLYFo6mjfZgCU/mvTmMX57i7jPTjjDcVYv7GCD4/RTul3rPa39tF2SILIEvnyD
         PD2H6RienAByV7zzak39HtaM3GLLg5DsgoKM6FzMJJ0mzBTyILroB/dg5Hl9hX+p8dOW
         J7pMeJKlmvCqFrr+gGbUPvvtBuMTlaAJZlOCbyHGOANfLIOnxkyuQa7F0jp4Zvsv4CwK
         Abd4sJG2BA5iBe3VHd2XM/o7SltxZUsHPgBN/9+IxI+YG7QWYncHla/5DPhk90YeoYxK
         aQjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q7pVt2SS;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id x38si602841otr.3.2021.04.11.02.56.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 02:56:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q7pVt2SS;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1036.google.com with SMTP id k23-20020a17090a5917b02901043e35ad4aso7134313pji.3
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 02:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=/rlS+5t+v4UNQErM732BFvhcFr/EzAmioR8Qn4jYDRE=;
        b=Q7pVt2SSzxpa69mlDrb+533e9sYFCBLLnzwTBAmKrpikVaZt5PUT7AW69fbBi3WoXd
         pniPCjCx1yUrqGGU50ztCfRK9F0YvuGAYfYskemanMtAWRpDEUaRbVoTJLm0fswpw9Z0
         30xdc4KS0AAou3vfTcYxtUIwFnYaB2NtUjsaXnh1+ElS1LOTgNhr7uTKL7/sTfm1xCPi
         hfN4ZZlERDDJm5an3QTPcvHJuK38Df6YuzOy8K/3igLbN7it0rVgMAPSf6weSAbD3hTV
         1VhgujsW27Ai6l4uhDSQwc/GFb/HCtPAPFG+G5TcRZ6c+P8PQiJXP3g8ebbhuySqb9/b
         Qggg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/rlS+5t+v4UNQErM732BFvhcFr/EzAmioR8Qn4jYDRE=;
        b=sGRq+1wf/UHyD+TJvzN4UaWXmgHKzOhwthjHiXMGAotX29C5p8rrIzmanyCjX/RUxC
         qJVYL5JcP01Ht1qU9H4oulqkxq5su7sG3YE8XOlTYx9DfisOvtR+1uU4IKeIy36Ii92D
         ZeVJ8wNHnLwIaG+Z2lbeaGH12fWR/0Lhi/3grlZnIL5F5c5zGTSTcKUAkJcOuRaxwPR1
         /PM6Xn/YAT8tvHhycOAj4OUqB+5kPFjlA7+hiU2ctlSO44uuvQ+U+PfQQyYulW9O1hFn
         alo5/Sap3N3Y5ulzvQ/xP8lcT3d26U3ZI/qRWxC2VEHFCgDh1Fgi+8N13HmTyefsJTkT
         AohA==
X-Gm-Message-State: AOAM531FqKOxTa0Tixpj+hd2+g5KFr8BebwDCDui32f8pnKQLtYC86yX
	FI4e41IYwUBWUCV9qXwLWXA=
X-Received: by 2002:a17:90b:1b4e:: with SMTP id nv14mr23602815pjb.115.1618134963139;
        Sun, 11 Apr 2021 02:56:03 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id v6sm3868283pfb.130.2021.04.11.02.56.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 02:56:02 -0700 (PDT)
Date: Sun, 11 Apr 2021 15:25:55 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v3 3/3] staging: rtl8192e: remove unnecessary parentheses
Message-ID: <29464cba775f9529db30b7fb4168198975098b55.1618133351.git.mitaliborkar810@gmail.com>
References: <cover.1618133351.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618133351.git.mitaliborkar810@gmail.com>

Removed unnecessary parentheses because they must be used only when it
is necessary or they improve readability.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
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


