X-GM-THRID: 6805874038364176384
X-Received: by 2002:a05:6402:376:: with SMTP id s22mr2168648edw.273.1584616059404;
        Thu, 19 Mar 2020 04:07:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:358b:: with SMTP id o11ls898259ejb.3.gmail; Thu, 19
 Mar 2020 04:07:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvuMiELAZ+D2JKxTPxGLP/uVzYMlway1Ev5IbCoykX8Mj8BH3DvG/rBifRiAaMaYCV7VH7G
X-Received: by 2002:a17:906:d939:: with SMTP id rn25mr2724197ejb.85.1584616058285;
        Thu, 19 Mar 2020 04:07:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584616058; cv=none;
        d=google.com; s=arc-20160816;
        b=jVuodHvJSFKpM0r9R+GyPTyiSrFOhDU0EQ6YKNQbZjIgrJOintlg6SsfaZzERM6qwI
         ahPo1Z7XA7meQMhZvo/LLeNK/sofV2SaJq0beEqsOFsthJ13RPcFeXUuDhouOpc7yPEF
         2qBk6I5cbGQvg8ZRORKLFbDzufuttgBo0ztXFVIgCvxbqY8Wzni4v6SPYkS97UwEXokP
         agHhGcu+v4W9xU9FNIz+XL7KhFqhsC4MerW4l9ziqsy3nEektxP0TxRw2EsBqKNo4YQ8
         QF4mQFZiAUir9RczifaZFmTRHsvhtkLF5dGUnLPRAsQdGH766dm8mEF+C9OrM6Az8nW1
         N1QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Ddw5Rdi9xF3jmq7KVAAMuSW9WBwervZuX7cJC/DHJNM=;
        b=xmPm/NCAOsn+1SmvV22fslOJXkAFgAxzrK62i1dOYNhorTlfF1S529N9iASaqs+hDz
         8qhw40SSVwxSToUaWGrQo0ezIyNpZkpdfabBs/kef24SrUeLR1C1aaZuWMicGzqgitEH
         8Reye51kzKmwmEfC7QA7rCbitnTx615G+xrHthctEre3ZunlIcksY1SRig/7ToTvtWqX
         vdX2wv8+xPs19PSdVf7Qcu16IqzxQCzsstiwEluBOHh8Kq6unw82/VX/jEyDVj4RTQzp
         MvmxWeb8nhBXFOekoWSIteh3rxEfYy4HVGjx66fb+u/J26ORUhXWEDoRiQl5fq8A3eCg
         tw6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id x7si89491ejw.0.2020.03.19.04.07.38
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 04:07:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27767 invoked from network); 19 Mar 2020 11:07:37 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 11:07:37 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH 06/10] staging: rtl8723bs: hal: Correct typos and long line of comments
Date: Thu, 19 Mar 2020 16:36:49 +0530
Message-Id: <270d3170897108cf692e489f29471824800cca79.1584514678.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584514678.git.vkor@vkten.in>
References: <cover.1584514678.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

    Correct long line comments to respect 80 character line limit.
    Correct typo in the same comments.
    Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index 9950934c3ab3..2bcbe3171dbe 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -101,10 +101,11 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 		u8 cck_agc_rpt;
 
 		pDM_Odm->PhyDbgInfo.NumQryPhyStatusCCK++;
-		/*  */
-		/*  (1)Hardware does not provide RSSI for CCK */
-		/*  (2)PWDB, Average PWDB cacluated by hardware (for rate adaptive) */
-		/*  */
+		/*
+		 * (1)Hardware does not provide RSSI for CCK
+		 * (2)PWDB, Average PWDB calculated by hardware
+		 *    (for rate adaptive)
+		 */
 
 		cck_agc_rpt = pPhyStaRpt->cck_agc_rpt_ofdm_cfosho_a;
 
@@ -177,9 +178,10 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 		}
 
 
-		/*  */
-		/*  (2)PWDB, Average PWDB cacluated by hardware (for rate adaptive) */
-		/*  */
+		/*
+		 * (2)PWDB, Average PWDB calculated by hardware
+		 * (for rate adaptive)
+		 */
 		rx_pwr_all = (((pPhyStaRpt->cck_sig_qual_ofdm_pwdb_all) >> 1)&0x7f)-110;
 
 		PWDB_ALL_BT = PWDB_ALL = odm_QueryRxPwrPercentage(rx_pwr_all);
-- 
2.20.1


