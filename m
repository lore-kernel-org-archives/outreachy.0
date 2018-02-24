X-GM-THRID: 6526024412200697856
X-Received: by 10.25.110.70 with SMTP id q6mr308377lfk.39.1519468052460;
        Sat, 24 Feb 2018 02:27:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.78.215 with SMTP id u84ls927586lfk.13.gmail; Sat, 24 Feb
 2018 02:27:30 -0800 (PST)
X-Google-Smtp-Source: AG47ELsPoyTp8zqUBDtiCL7/08gpnmdPSDGgDsPIM80j7ABxWrs2Xsh/5yVbp+4IwfTcSpMr98ht
X-Received: by 10.25.207.69 with SMTP id f66mr307241lfg.28.1519468050911;
        Sat, 24 Feb 2018 02:27:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519468050; cv=none;
        d=google.com; s=arc-20160816;
        b=LhYTXNQlpi3M10Ulo92/31MXWr4Jy6ICRuse3SYErODKPk2Tlp+zgupOXa+Jx5xim2
         NtQ99IlEOVeL6I16UlU3AtBpUrT/690NjZUXhGpqCVn+8W+1dOAt2tTy6gp5HliqmuGz
         PqtqWWQzOlpM4C2tp0HaLvBOkVd2T8Mw8mQDflMQrGAg4VB8uCf6jqrI7lcmX2NcciG0
         3ri6NBYbh8HtoxNlOaB1MbPrNud4TJ/WewoMm8uj3LXVf5ZdAWwhuA/sktd4sN8AqwYd
         9SrIQ7k3uNW8pJ4ih7/svXGO06klzhtBfCNkMHPfWSmqwFnndXrk/EShCcbIYxnkc072
         i9Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=3zzqsvcq9DG+98wZMXRhgeG2/FaMqEe7WwRumsnuqpM=;
        b=kMsJgWAZM7hmKL0K2uoK1WKpc+MHMXduHJ3+GG7OooRLDETCOUaBaq++43F4bIQ/59
         PJlrUWnP1x362xrto6901PvxtcOZwzJUATnYkX+BmuVrtHDyYaRWNlkUdzDZ+EIZXHwo
         gM/ANHK4YhK7aXmRQ1JWRt0WXbgRXy42fHDpFhy//uqeUXAkv/R8Y6Rak+sxO6UlrCPV
         6N3iZE66B9EBY7Z0ZnpKeU48te9tyPVfyiqjRqDUKnmLcMiNyyADQLXPbZDiL+P3WDnW
         hxd35b6AxRHyK5FRH6kJqr84uVl0HysjWlDejiZaWQpOhpYSLMkkqKXNciOVIDFtc+6+
         c8zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EDgx5nLL;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id j4si201137lja.1.2018.02.24.02.27.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 02:27:30 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EDgx5nLL;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id m207so8823004wma.2
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Feb 2018 02:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3zzqsvcq9DG+98wZMXRhgeG2/FaMqEe7WwRumsnuqpM=;
        b=EDgx5nLLid4r/1+rdCLtwW/7cR9Jf5CpaEHWAG7PiPTGf3Y00wfnacNNAQuVXWWiDP
         6br0KCgTNN+uzoELRBYYybAt0cvMiN0jpKoV+y63dIWAsRVqKwoYY+4TlrKibQWZAanl
         QdJVqKGPow0dc1lRtnp9YvQWxQyJkxnuLSpV8e7kQxL9ZJB+ONDRcSvxy3p1Hsck4rZX
         4LxEjPzrw5ADRS2OcCo0Lp4EpCAZgMDw/TFZVL0XNbZum06ErH+M7dnQJim20+0qtRUA
         f1gWpsM7eSZL9VN904nMLVtEn8YoTUdC8K4bMCLh/e7mYgHzbSCPFyJHbYbLdj9YTxg7
         OBvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3zzqsvcq9DG+98wZMXRhgeG2/FaMqEe7WwRumsnuqpM=;
        b=M+He03mzvSF2iSNGXSlAv3kmL2nYkymuhz4m0c0txGymTahSBWZ7Soy/Opt+14KgGc
         SCt9Ym8hAt+aoq091RrtGA90uu8RGBFfOjl73mEbHYx7wu1zOhWm5rpwQCi0ITL9eitM
         GUpdqCcLSQXCF5S8vnGihw9/mBBkQBkHrQD0uapT5CIO3I67Lp1Nvt0PKrBmD7uhdEpb
         bHtt8e2aENV98XRxnbml1rkC5gLbGMGf/bAxzs28iEiQ5WOJjkHpXyrCz6GAep3OuLW4
         YJJU0CfcwzhuDXi5Ian+46ta1/LsUe2BxoSB0xLdSS1+5nh2N5AxeWYugIa0b26TARIT
         9+cQ==
X-Gm-Message-State: APf1xPDljXNygYpjThmHdkplMt7kFP0OVDcRMDDeuDj47YOrp1nVnRzl
	/JJe7knzOn3b9LzMOEvXFhQA78U0
X-Received: by 10.28.90.197 with SMTP id o188mr3817080wmb.34.1519468050347;
        Sat, 24 Feb 2018 02:27:30 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com (IGLD-84-229-101-166.inter.net.il. [84.229.101.166])
        by smtp.gmail.com with ESMTPSA id d188sm11780341wme.21.2018.02.24.02.27.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 02:27:29 -0800 (PST)
Date: Sat, 24 Feb 2018 12:27:26 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wilc1000: merge 'if' statements that test the
 same condition
Message-ID: <20180224102722.GA11743@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Merge the instructions of two 'if' statements that test the same
condition and move a 'memcpy' instruction related to a different variable.
Issue found with coccicheck.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---

Changes in v2:
Grouping instructions that relate to the same variables.

 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 621810d..557ab99 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -959,18 +959,14 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
 				}
 
 				kfree(priv->wilc_ptk[key_index]->key);
-
 				priv->wilc_ptk[key_index]->key = kmalloc(params->key_len, GFP_KERNEL);
+				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
 
 				kfree(priv->wilc_ptk[key_index]->seq);
-
-				if (params->seq_len > 0)
+				if (params->seq_len > 0) {
 					priv->wilc_ptk[key_index]->seq = kmalloc(params->seq_len, GFP_KERNEL);
-
-				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
-
-				if (params->seq_len > 0)
 					memcpy(priv->wilc_ptk[key_index]->seq, params->seq, params->seq_len);
+				}
 
 				priv->wilc_ptk[key_index]->cipher = params->cipher;
 				priv->wilc_ptk[key_index]->key_len = params->key_len;
-- 
2.7.4


