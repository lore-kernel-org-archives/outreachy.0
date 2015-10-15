X-GM-THRID: 6205781635135176704
X-Received: by 10.182.106.11 with SMTP id gq11mr6287200obb.25.1444896362049;
        Thu, 15 Oct 2015 01:06:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.129.195 with SMTP id ny3ls295743obb.31.gmail; Thu, 15 Oct
 2015 01:06:01 -0700 (PDT)
X-Received: by 10.182.153.169 with SMTP id vh9mr6578847obb.18.1444896361771;
        Thu, 15 Oct 2015 01:06:01 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id el2si1335419pbb.0.2015.10.15.01.06.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:06:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id rc13so80503204pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=BLhYEsx/LhXpE7jNQLmxSOs/WqPjBR27ELpdYy5FJns=;
        b=can3jMNVVGrNdONxLjvKrhw87kr2TD7PPI0YHzTp3nmrKRa+i9uVYjcJhx5IO7YdGb
         +Qu7jXOK4SUpSSd5iydJ10iMjAiEzLplvoZk14SscEa6gQ7vWtniD8TXDlnHElgN2Ol6
         3dXqcQOcvAH93x4RNPGGKgKPuuAJEy0R8T3TKllGFWGZyGm45h5ipadGLixepKakG6Qu
         pjx79enysorPb1484HnqTKMsnsKqZF1yltNrVMV7N26hbdjiwpATo918d6AAwpy507UU
         EKiIMoAXa8LZkjoHM2vjvBPTPvYzwbuP2Z23kAN5CLeKAti7gcspTOIqgX4g3oOMWCeM
         FGCw==
X-Received: by 10.66.141.12 with SMTP id rk12mr737538pab.34.1444896361584;
        Thu, 15 Oct 2015 01:06:01 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id es4sm13731742pbc.42.2015.10.15.01.06.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:06:01 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:35:58 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 02/18] staging: rtl8723au: core: rtw_wlan_util: Remove
 useless intialisation
Message-ID: <6364c097710624b1879c0080605a2d12412e4ffd.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_wlan_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_wlan_util.c b/drivers/staging/rtl8723au/core/rtw_wlan_util.c
index 3c1315fc..5e87360 100644
--- a/drivers/staging/rtl8723au/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723au/core/rtw_wlan_util.c
@@ -1212,7 +1212,7 @@ unsigned int update_supported_rate23a(unsigned char *ptn, unsigned int ptn_sz)
 
 unsigned int update_MSC_rate23a(struct ieee80211_ht_cap *pHT_caps)
 {
-	unsigned int mask = 0;
+	unsigned int mask;
 
 	mask = pHT_caps->mcs.rx_mask[0] << 12 |
 		pHT_caps->mcs.rx_mask[1] << 20;
-- 
1.9.1


