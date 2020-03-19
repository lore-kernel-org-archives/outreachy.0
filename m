X-GM-THRID: 6805874038364176384
X-Received: by 2002:aa7:c6c5:: with SMTP id b5mr2115050eds.166.1584616039736;
        Thu, 19 Mar 2020 04:07:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:c049:: with SMTP id u9ls1006870edd.7.gmail; Thu, 19 Mar
 2020 04:07:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vutO/RJ8uv52v9Bq68rrVQqz9lblDatSsyQqoodU/i15kx6Ueqt38L6W9ZofBKwE7ipJ6np
X-Received: by 2002:a50:e041:: with SMTP id g1mr2196743edl.118.1584616038707;
        Thu, 19 Mar 2020 04:07:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584616038; cv=none;
        d=google.com; s=arc-20160816;
        b=Jiw7p7UM4kB8+5gehEGOrMB/UFz+4tQOm8zEBD+EHKOxy25n65P35Ies30xsF9t3Ww
         8vzV0JTIean+HJ86Bvof7uiFhLFudLCgHAXdYjbMJB/ENCK6vRjaE/l10JyZ21PdXcAl
         PIK1wZIXi53NuEOPcjj2IiLbzTtUAWF9HJ3ysebYCu9FvaPVF/iq8y2U+4cxKclYXGdg
         hSww4KXkCGipjMDKai58dFE/DPCeyq0tVnh6h8imhYTWZVu/nJDrrYxn/JejxrVT2ilw
         3hqZzk3b3ZqqfNeRaR+nF3hc3xjIfFBK+JStf2W81hr9b/dlbGFI0Gq2fg76VcsHCpLR
         XRlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=PdZcLn3PwEaKda5nLRomvM7VDWM7QmQb9zd2c5iXJzw=;
        b=oXzgRN5ZN0hNpzASRmWAm4JbQD4RxV56y4+4haHRiAPplvmm+5f3TzGuVyc1PEm1Xu
         dai9Noz5bwqwlSDUidJuhcdHJUQNuvn7eCt/8UaKobMBDlaFeQuZ60r30uvI5OyJIbyM
         Mn4697zeSNdUx3BDg+UiLFP/yvY6j2Qaq+4TvPZOZ+87Qp+WYgEezMeEI4XP3KStD+WA
         vBkAtD7PbJw9fpJTcol/ScJ3xrnIyREDOAnHla1B6IEZ4V4D4aa6LtE6kBLZANghntiJ
         ztL1K1waJV+nSJqgF0Tw87yYiJQKnVsHXum6ezDsw92LDrJmRkwrzuQlg61axEGof9Lh
         NjBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id dc25si73059ejb.1.2020.03.19.04.07.18
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 04:07:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27705 invoked from network); 19 Mar 2020 11:07:17 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 11:07:17 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH 02/10] staging: rtl8723bs: hal: Correct a typo in a comment
Date: Thu, 19 Mar 2020 16:36:45 +0530
Message-Id: <1ed7183ac7491edcf8784de046cbca7fa0645033.1584514678.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584514678.git.vkor@vkten.in>
References: <cover.1584514678.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a single typo in a comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
index 8dfa9b988e20..2779dba92bab 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
@@ -1646,7 +1646,7 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
 		result = 0;
 		WaitCount = 0;
 	} else {
-		/* accquire the BT TRx retry count from BT_Info byte2 */
+		/* acquire the BT TRx retry count from BT_Info byte2 */
 		retryCount = pCoexSta->btRetryCnt;
 		BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], retryCount = %d\n", retryCount));
 		BTC_PRINT(
-- 
2.20.1


