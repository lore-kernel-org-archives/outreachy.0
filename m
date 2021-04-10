X-GM-THRID: 6949336607040208896
X-Received: by 2002:ac8:7ef6:: with SMTP id r22mr5981695qtc.150.1618018515076;
        Fri, 09 Apr 2021 18:35:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5781:: with SMTP id v1ls4569672qta.3.gmail; Fri, 09 Apr
 2021 18:35:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz61BtvflmBanM8hj3yUFwB6Z7rj2znOiIDsPsqHRTnkoceLF3xutFzJrrUzRuZk6U/tJ2N
X-Received: by 2002:ac8:6f74:: with SMTP id u20mr4505845qtv.136.1618018514286;
        Fri, 09 Apr 2021 18:35:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618018514; cv=none;
        d=google.com; s=arc-20160816;
        b=F3Qub7Px4sptV93oWEfELsGnaFxD8rt/VW2ZU0ynjUsfS924/YsAb29hguHLN7ZfsM
         etn3lwLe/xb+BAXu/pbSNvtk9JubwWRe4oagL/yzypqiN/C+fAIJQmv6hRpE7GVrfaUo
         qU6xto7r1YH1viSnPeW73+yi22RUhHXX2wgw//tw5s2qF2Z79F51dp5yKLyROFNLJHHR
         sAVGNu+jmEN0BwM6QRYbUmOaM89pRrubLmCHDhApsKlK27jlswjGdWmukIf5ReOlzKX6
         woS66wmCwGxx2p3S8NBXDZrTThDq1h/wmn4HtH1cQCaPuq/eOFhjerIKbqZWi2rED9fc
         35Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=AmH+UMyc1cUAc4hzdn/oSiz/QnBV7R1v32Iys4DOp0s=;
        b=Q1TvpbwqI8yvq/O0mZtpRqducRFl8bxUguuz0unxda/6TyEKaHwNfE5+5a7Ce+R8n1
         XbuLQ/HmQTxDrk9Kl36hsqjVLU/MLLqrRs1bTvPf+0OtewwuEUHrX9+1JxmR+FbUmagc
         2+4LwsJ906bIM20WkIbU4t/TxXJfD6S3w46HQIDinVhiO8GfSagNHIlP0+GEfyVxogpr
         CgrSRvtGF0eDeZfKtudrksf1QsDGOLDhq9OzPpsoyBNnCslbi/AvVGyH9Va0CddmRJsW
         63LF5yfOB81c1qEqdNaj0ZWEdnNPl+ODdHF9bUi/rQy+SL8g93FvhlQxf8DS4QKcUaKw
         92kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M8B463ky;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id r26si500822qtf.3.2021.04.09.18.35.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 18:35:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M8B463ky;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102b.google.com with SMTP id x21-20020a17090a5315b029012c4a622e4aso4058826pjh.2
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 18:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=AmH+UMyc1cUAc4hzdn/oSiz/QnBV7R1v32Iys4DOp0s=;
        b=M8B463kyH+a1W5utxKfyOtivuPkCqs7onqXldRTgrHV18AjrJ2/Uyfu6dgIxjuyvul
         SnyfibvyXDqFSEcHjxvHdirLL7j91yqJ1yb1QIRaXmkzODWdpgbuV+4A6pxuABqIQ4KV
         8zBEbNGx89je4ikUkD6ot1pmV6y4SVL6LZxvw18cZEwn6/iKWbKtS57Aq3nEmVXqMVAy
         l8kRS8ytZG63jSXQJcWdAT5EeseNwwIEvtx8YKq/y7A/BhbKiVNkr4SMTe4KqY+GAJVW
         3Eu+IHozQueMbFfIt+koiJZBc8C8j333DaiTKiuIpXkkd8PmECvH3+n72ZDIor3K6oG1
         FoEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=AmH+UMyc1cUAc4hzdn/oSiz/QnBV7R1v32Iys4DOp0s=;
        b=Gbxj9jRkZzESnEOldK5/o9HxoE8PB1k06Ku48Joe4f60DGd75McMLlwcNZ3pyqSz7e
         6wJz0bOaL4WxYtaGKSA+mUNyoUDBwd6T+dVe17RFvcy1aF0qv8Cb0+N3wPEvF5AXHwoi
         7ubrie6ca9aBfpVS2lu8CHEZRzUNDHOG2OwyXOyuwrgfvD7WLvqWNbLutNpWlmqhnMH8
         YECrK/Xv1utzand40OXzHzBT7+XnvUFuArlnkvUOY4tKqjR+d4X/Khqzc6YkOJ6IJBJZ
         fkGK6GlG2xjjN5HFjD52ysuOCbpOFA1M0Km+9FSRvSCaf23YiHTAPMs4DsKwyNtzPNzw
         gCvQ==
X-Gm-Message-State: AOAM531MgUub1diQPF/q9PZKJ+lYyAVnVSaffPPeBzO1Xk1XLsnQ/1y/
	FXRutOwtP9W0tZuCovS9Y7w=
X-Received: by 2002:a17:90a:20c:: with SMTP id c12mr16288412pjc.224.1618018513395;
        Fri, 09 Apr 2021 18:35:13 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id j188sm3352388pfd.64.2021.04.09.18.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 18:35:13 -0700 (PDT)
Date: Sat, 10 Apr 2021 07:05:07 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 3/6] staging: rtl8192e: remove unncessary blank line after
 brace
Message-ID: <YHEAy+SVBJQk0HDB@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Removed an exra blank line after close brace '{' as it was not
necessary.
Reported by checkpatch

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index e188e9e6b11e..0ded86da1562 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -492,7 +492,6 @@ u8 HTGetHighestMCSRate(struct rtllib_device *ieee, u8 *pMCSRateSet,
 static u8 HTFilterMCSRate(struct rtllib_device *ieee, u8 *pSupportMCS,
 			  u8 *pOperateMCS)
 {
-
 	u8 i;
 
 	for (i = 0; i <= 15; i++)
@@ -686,7 +685,6 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
 
 void HTInitializeBssDesc(struct bss_ht *pBssHT)
 {
-
 	pBssHT->bd_support_ht = false;
 	memset(pBssHT->bd_ht_cap_buf, 0, sizeof(pBssHT->bd_ht_cap_buf));
 	pBssHT->bd_ht_cap_len = 0;
-- 
2.30.2


