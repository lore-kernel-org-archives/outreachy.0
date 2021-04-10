X-GM-THRID: 6949346305105723392
X-Received: by 2002:a17:90b:1050:: with SMTP id gq16mr813785pjb.123.1618020773978;
        Fri, 09 Apr 2021 19:12:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:348e:: with SMTP id p14ls5935015pjb.1.canary-gmail;
 Fri, 09 Apr 2021 19:12:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyRu6WuD8vnpd9+21w7LjlGoRSayvwqGg512A4JEykiOX3dTRGxcThjwPr+TE9PvOSRusMg
X-Received: by 2002:a17:902:7c83:b029:e8:c368:543 with SMTP id y3-20020a1709027c83b02900e8c3680543mr15577328pll.58.1618020772679;
        Fri, 09 Apr 2021 19:12:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618020772; cv=none;
        d=google.com; s=arc-20160816;
        b=QOw2wE0oDg1sMPBbixqyp6UWj4VAejvepKV1FU5mNwxda0U6CVNTX5CFoc9/nDfzlH
         c8dixTJSviiGylejneNakXYFl014olZad2CsYxy3ESkvztNwIN69LqbOgXgf6PouXuhS
         TXYYMmM/rQR+H/jxmWOipjmEALxJ+W7C1p4wg80C5zYUyFrus+sLHfyT83JFXt/6YXxf
         4fBQb0YDozghHM5P5sbfTc2pQ0rRmu7E5ydTz4DemJ8FoUdc8CYgH4iRpKSFfELFfP/8
         9dcdz/F4XFHYiAlKyULfHmVCRLR6LvMnJGVf05dJYGjVPuzQvVMMHCMDrKH9H2DpyDNd
         ySVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=WGt33fyzs9vaRoy1gnWqTwImiQXUTfb1a9wEvlX+v/4=;
        b=bRTzG/Hfhv/Ub5rNFUarhQ1VldPkj7k+myIBxAgNFNrvQZ5iFVgFBHDgUGp/RVTZOL
         NCSHXIHuibwdKr6QROhvU/gCDPKNzevjuJvFUUdTMIDO2wG3G0bMSHNWvvwjAMOzGYGB
         Zjvu3ab1OTLcjhr7BQEXLElREFvi1Tzb9Hr2kP/s7vlqGKVhVzEkSy/y9jKy9034h096
         14eVvXQqOFiuQ8SrIiMYlZoNdaG5WL6VYg0hQuVK79mTl7VKEiWFtjRgWVral+NmLM6H
         IxUL4vahAmdSVUSxkD3CZYRiQ9EEW+AHhiaADXSOQx63OZ3Hv3AoLnuSkuPmhY1ljca7
         1f4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cCUx/8Tw";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id ci2si314126pjb.2.2021.04.09.19.12.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 19:12:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cCUx/8Tw";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x634.google.com with SMTP id g10so3599000plt.8
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 19:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=WGt33fyzs9vaRoy1gnWqTwImiQXUTfb1a9wEvlX+v/4=;
        b=cCUx/8TwT17qk8zeQrZ9Qtp+w7FhtWgrLg246MkazYfJi77Tp7oAxqrbS/PicqPNr0
         lVMJbEizklYWV7f0ff1S+h2hMm19PdfEiFZF1nKNMux1PksBfyBZknOrSO58mHt5DxYN
         cxTTKMVRlmS8uL1BcLKNlSPOuSEbjaGzcEyp2PqQ7+DZICjKssAGMoW5WcdJDdtrw3r+
         3CMS9Hf9rl2tZYWZF/Q6PZzzb8t77b9UW1cVFibNecvPmS3+Maay6Fy0jXKb7hObayDI
         A6wQ8iMEMkwUV7AWB5dfPWcvIzlJSWluoEsVAFMiaztX1QrzZUwAR0z3g3aJ7yUsOxZn
         Oxyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=WGt33fyzs9vaRoy1gnWqTwImiQXUTfb1a9wEvlX+v/4=;
        b=WnTuqeG67tp2MmdgayKbmuD83Umz9xKYdK2tYqAIr11wHdgGoEqpNJLkyqmCZuR/kx
         1+c2dG2hOgSPSjClGUUJEAVJ9aLPtfogO1RN654j7G+fjv9EBc4RJ3N2QEBHG8sBgJLF
         h8Te+cPiVOPjE7+16tT9m6PZHQ+in96z6nplVI/ktrP+HKOQAhJf6sIQbg3+EDn3i3Pv
         mzmCzroqt14jCcwIUDHiOJB9QUSw9KP8gLs9qvsLqWECY5JWTrZZyt1iN91xSVdlLeFJ
         u69y0qpevf3+FxZVH6v1hNn8AOmypyUEAQLI0yAD5mWsgc//wGnqTpfRqdDFDtFCCe+2
         16Iw==
X-Gm-Message-State: AOAM53355x/IvyPlTdmfG5J1R/Iw+HiSRINcMdFKe+A+ui0UkSfLQclv
	DCVbijGJYRPrj9l8SIqOtMg=
X-Received: by 2002:a17:902:bd4b:b029:e6:a4a1:9d8b with SMTP id b11-20020a170902bd4bb02900e6a4a19d8bmr16124572plx.56.1618020772346;
        Fri, 09 Apr 2021 19:12:52 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id y15sm4227966pgi.31.2021.04.09.19.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 19:12:51 -0700 (PDT)
Date: Sat, 10 Apr 2021 07:42:46 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 1/3] staging: rtl8192e: replace comparison to NULL by boolean
Message-ID: <YHEJngq5MHBEspGY@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Replaced comparison to NULL by boolean expressions
(here used boolean negations). This improves readability of code.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 65202dd53447..0b1e92f17805 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -276,7 +276,7 @@ void HTConstructCapabilityElement(struct rtllib_device *ieee, u8 *posHTCap,
 	struct rt_hi_throughput *pHT = ieee->pHTInfo;
 	struct ht_capab_ele *pCapELE = NULL;
 
-	if ((posHTCap == NULL) || (pHT == NULL)) {
+	if ((!posHTCap) || (!pHT)) {
 		netdev_warn(ieee->dev,
 			    "%s(): posHTCap and pHTInfo are null\n", __func__);
 		return;
@@ -357,7 +357,7 @@ void HTConstructInfoElement(struct rtllib_device *ieee, u8 *posHTInfo,
 	struct rt_hi_throughput *pHT = ieee->pHTInfo;
 	struct ht_info_ele *pHTInfoEle = (struct ht_info_ele *)posHTInfo;
 
-	if ((posHTInfo == NULL) || (pHTInfoEle == NULL)) {
+	if ((!posHTInfo) || (!pHTInfoEle)) {
 		netdev_warn(ieee->dev,
 			    "%s(): posHTInfo and pHTInfoEle are null\n",
 			    __func__);
@@ -397,7 +397,7 @@ void HTConstructInfoElement(struct rtllib_device *ieee, u8 *posHTInfo,
 void HTConstructRT2RTAggElement(struct rtllib_device *ieee, u8 *posRT2RTAgg,
 				u8 *len)
 {
-	if (posRT2RTAgg == NULL) {
+	if (!posRT2RTAgg) {
 		netdev_warn(ieee->dev, "%s(): posRT2RTAgg is null\n", __func__);
 		return;
 	}
@@ -420,7 +420,7 @@ static u8 HT_PickMCSRate(struct rtllib_device *ieee, u8 *pOperateMCS)
 {
 	u8 i;
 
-	if (pOperateMCS == NULL) {
+	if (!pOperateMCS) {
 		netdev_warn(ieee->dev, "%s(): pOperateMCS is null\n", __func__);
 		return false;
 	}
@@ -453,7 +453,7 @@ u8 HTGetHighestMCSRate(struct rtllib_device *ieee, u8 *pMCSRateSet,
 	u8		mcsRate = 0;
 	u8		availableMcsRate[16];
 
-	if (pMCSRateSet == NULL || pMCSFilter == NULL) {
+	if (!pMCSRateSet || !pMCSFilter) {
 		netdev_warn(ieee->dev,
 			    "%s(): pMCSRateSet and pMCSFilter are null\n",
 			    __func__);
-- 
2.30.2


