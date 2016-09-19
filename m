X-GM-THRID: 6332057580597149696
X-Received: by 10.157.61.72 with SMTP id a66mr4438302otc.58.1474297064260;
        Mon, 19 Sep 2016 07:57:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.77.8 with SMTP id l8ls2551066itb.14.canary; Mon, 19 Sep
 2016 07:57:41 -0700 (PDT)
X-Received: by 10.98.95.71 with SMTP id t68mr14676378pfb.7.1474297061895;
        Mon, 19 Sep 2016 07:57:41 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h124si6586334pfe.0.2016.09.19.07.57.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:57:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q2so4737179pfj.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 07:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6A4n3e6YI8F1G4DbwEX9ba4Lqolmnt51n4sEhvN4lSM=;
        b=P3JQtG78+ORWgRD6y1CpL73MvrPVdTGs4GwvaDbhmidD7XBYbGdxs7qtWBL+k+k4WS
         hYKFh3RQn+sbxuLlu92z6wDLSNrdVEwRMtw6WoG8DnACMLVBjj7+nocRaStp7BjuSpKC
         UUQfdig0R1r9Ri9CGIDUkNB1yxp5U3KEcIaCK0I16PGQe72r0+xw0DUyINV6IWJwYWRo
         a6ZSDVr7EXhR5T9wMVOd46Xgvnxr7T3tr0epGIbMVl3N6ToEoxOY7g2LONn7ttPw85ta
         BcIOxMyaWy15pVuZ6p59pdqQYHHjvEZqsDgeNB5m6XBJM43XKi1p5DPDtfJmO75ekjii
         rHsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6A4n3e6YI8F1G4DbwEX9ba4Lqolmnt51n4sEhvN4lSM=;
        b=jDIrk3MbQ4StUGRLiq6iCFJnxYKnvx5zS8D+uloQTHHqAZjrG88YeJL427mUOiFnrd
         uD/bR2DYxNwEtEHwtkj/DWxqfpwTpd6EFMoyRYHCHsc56N/WGzDN5UY7sRHIKEVWYGF2
         K7BY2jPttYZYQcXY1lFEMbZwGRE+OVoHLUr67XdWx2xb8qtFwMo8lRV5L4ReMm5llvv4
         +SA0AC++MM034VH4MvKNrrFa3U1ap9I/mHmrOW0YvfJ/OYMTjY3dNgISRFhcK8Z6OLRs
         XEcz0kPTc1jXXjjyaxjn/uCDfKPq2LHU5vvk5vDsbWW4mVvYWG/98XWgDwQFCCAEyDEV
         JLYQ==
X-Gm-Message-State: AE9vXwOwHikhRSRNxlOX+xlEQqQCPCBMvtVS5sNrJsSTSI4cqVcdULr0PFAdsEEgRjkDtg==
X-Received: by 10.98.147.195 with SMTP id r64mr13500848pfk.32.1474297061763;
        Mon, 19 Sep 2016 07:57:41 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id ve9sm32367632pac.12.2016.09.19.07.57.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:57:41 -0700 (PDT)
Date: Mon, 19 Sep 2016 20:27:37 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mateusz Kulikowski <mateusz.kulikowski@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/4] staging: rtl8192e: Remove unnecessary blank lines
Message-ID: <17dd10aab8aaaf02ef9a14b2b5adab6e294d9d83.1474296026.git.namrataashettar@gmail.com>
References: <cover.1474296026.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474296026.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unneccessary blank lines to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 24fc615..25725b1 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -53,7 +53,6 @@ void dot11d_init(struct rtllib_device *ieee)
 	memset(pDot11dInfo->channel_map, 0, MAX_CHANNEL_NUMBER+1);
 	memset(pDot11dInfo->MaxTxPwrDbmList, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	RESET_CIE_WATCHDOG(ieee);
-
 }
 EXPORT_SYMBOL(dot11d_init);
 
@@ -99,7 +98,6 @@ void Dot11d_Channelmap(u8 channel_plan, struct rtllib_device *ieee)
 }
 EXPORT_SYMBOL(Dot11d_Channelmap);
 
-
 void Dot11d_Reset(struct rtllib_device *ieee)
 {
 	struct rt_dot11d_info *pDot11dInfo = GET_DOT11D_INFO(ieee);
-- 
2.7.4


