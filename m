X-GM-THRID: 6396276836280565760
X-Received: by 10.157.1.238 with SMTP id e101mr10566139ote.62.1489249252722;
        Sat, 11 Mar 2017 08:20:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.1 with SMTP id a1ls11854759otd.37.gmail; Sat, 11 Mar
 2017 08:20:52 -0800 (PST)
X-Received: by 10.13.234.5 with SMTP id t5mr11530536ywe.166.1489249252274;
        Sat, 11 Mar 2017 08:20:52 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a3si2318740pfb.2.2017.03.11.08.20.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 08:20:52 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so14159506pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 08:20:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Sgi1xwbfQxT9rFpoPfiJDpguSG4Bq+GVArXLr/9nhzU=;
        b=Dhz2fKir7j+RwEx2Utcg3iE4qilpeJzNG8h1sANzIrS66r/8FA2FVrbmiKu8pYocMk
         HWoCnZlFse+u1uwBSZF2Wz/9rw20wDfeYIPo8Qb/8Jha7hdzw39DKSwMaQc3gmANxw0U
         xSTdsEML4vCIq/JYHJSznh5BLL98FflB7/VHI1CNzy9zx5mczMNgTu2578o2XcfvAL3o
         HnfeAGeBD6HGLBdMoCnrVj6AUKoVMCL/IY9Is4kOAKPB+grygbcwGqNg38muvBPTITBY
         uPuqMgK1LV0mj/yYmGtwRcjcoMUcN4Rn6jXoZb0b2YFMW+9BVUyqoZy1WCzG2MEGbSbc
         RHGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Sgi1xwbfQxT9rFpoPfiJDpguSG4Bq+GVArXLr/9nhzU=;
        b=jb2BEkuzVsq2hLCD6LTGN/ljhADDqeP4xOOzdIlu4a58KbCc7ACoRuf9kozfvSH+Ha
         /7FL8u+t57HkYAKDbIAg2hAueNT2g62K3bLFlHaop4Jjq3sWBU7C9kJUKpb1RH0POeb0
         F5ddNYZ/55u8CSXNyDiqB5FXR9wH567nnxLk85G3DaS3MABuClp5sJtce3iJf8FIq4we
         DdlvQA1u0nVejQzKeTMBG9t/IvCIQsXH5bf1QUPZxdQkxwEBfLPRjn7bGSUAh9XFwpCU
         S7nceGNwxYaBmIxvx1pGQ1K+HV2zaTiUEfUAbgPz2hKYCfGaaLE6cP8n2zuoD+Ck5cI9
         I+DA==
X-Gm-Message-State: AMke39mwUt5APK27Q2OYuWAo7ADUq5ZxUR5vFV2zhQvjMKKuVzYZUihdZI1YLtdhr7T5HQ==
X-Received: by 10.99.62.202 with SMTP id l193mr27492841pga.172.1489249252044;
        Sat, 11 Mar 2017 08:20:52 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 78sm24939134pfm.122.2017.03.11.08.20.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 08:20:50 -0800 (PST)
Date: Sat, 11 Mar 2017 21:50:45 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: Remove typedef
 phy_ofdm_rx_status_rxsc_sgien_exintfflag
Message-ID: <20170311162045.GA21103@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove typdef phy_ofdm_rx_status_rxsc_sgien_exintfflag and replace its uses
in the code.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192u/r8192U.h      | 4 ++--
 drivers/staging/rtl8192u/r8192U_core.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
index a7ba8f3..cd3e922 100644
--- a/drivers/staging/rtl8192u/r8192U.h
+++ b/drivers/staging/rtl8192u/r8192U.h
@@ -793,12 +793,12 @@ typedef struct _phy_cck_rx_status_report_819xusb {
 } phy_sts_cck_819xusb_t;
 
 
-typedef struct _phy_ofdm_rx_status_rxsc_sgien_exintfflag {
+struct _phy_ofdm_rx_status_rxsc_sgien_exintfflag {
 	u8			reserved:4;
 	u8			rxsc:2;
 	u8			sgi_en:1;
 	u8			ex_intf_flag:1;
-} phy_ofdm_rx_status_rxsc_sgien_exintfflag;
+};
 
 typedef enum _RT_CUSTOMER_ID {
 	RT_CID_DEFAULT = 0,
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 13239f4..0d830f6 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -4242,7 +4242,7 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
 {
 	phy_sts_ofdm_819xusb_t *pofdm_buf;
 	phy_sts_cck_819xusb_t	*pcck_buf;
-	phy_ofdm_rx_status_rxsc_sgien_exintfflag *prxsc;
+	struct _phy_ofdm_rx_status_rxsc_sgien_exintfflag *prxsc;
 	u8	*prxpkt;
 	u8	i, max_spatial_stream, tmp_rxsnr, tmp_rxevm, rxsc_sgien_exflg;
 	s8	rx_pwr[4], rx_pwr_all = 0;
@@ -4432,7 +4432,7 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
 
 		/* record rx statistics for debug */
 		rxsc_sgien_exflg = pofdm_buf->rxsc_sgien_exflg;
-		prxsc =	(phy_ofdm_rx_status_rxsc_sgien_exintfflag *)
+		prxsc =	(struct _phy_ofdm_rx_status_rxsc_sgien_exintfflag *)
 			&rxsc_sgien_exflg;
 		if (pdrvinfo->BW)	/* 40M channel */
 			priv->stats.received_bwtype[1 + prxsc->rxsc]++;
-- 
2.7.4


