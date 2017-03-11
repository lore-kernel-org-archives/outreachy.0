X-GM-THRID: 6396276836280565760
X-Received: by 10.13.245.67 with SMTP id e64mr11441028ywf.127.1489252870949;
        Sat, 11 Mar 2017 09:21:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls11752709otc.30.gmail; Sat, 11 Mar
 2017 09:21:10 -0800 (PST)
X-Received: by 10.129.50.12 with SMTP id y12mr12549192ywy.111.1489252870548;
        Sat, 11 Mar 2017 09:21:10 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a3si2343719pfb.2.2017.03.11.09.21.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 09:21:10 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g2so9168629pge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 09:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FzMHsF6AWPst62cBOCCmmK7rFLKvPUadjwtW8HWvNgU=;
        b=kic/T/1OkqBNfPLq+0CI2gDzPf43oEP5L0KGWo6RtH1ItPVGdTVjnvEb9lhsXfvRs6
         frzT1gr4cddDqum8m2cbN4FyOUq8putkN4hNl/A5r3W8sFhmQuUcKeAxrsD0wXYJtgKg
         ijR4eiW198ooRcKpR7f/E3QQxetn4tlHb8yRsQk/yBjTa4PdeVeim3Z0XWHZPJGzyAbk
         A+I/Z0uKvdTr61EXuGug1oWwv1gRFq6ZAOE1hqEguJgoNc0u2rcLVxQx8zPc+Te0e8+r
         St7yJ8hK3jt6GlneMCiVpf6bhjKGDSUEiyYCrs6KwZbSVfzYLIHiGJIoe7soFb4hSdu7
         OjLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FzMHsF6AWPst62cBOCCmmK7rFLKvPUadjwtW8HWvNgU=;
        b=DTQwxNlRoTZK/Fg+QFBiSipB8vNHUeOLgvSsPmHzOx0NC3LdVi/XcEKkA2mGXxesbF
         L0BlJdoy5cExyH+XqiCo6TAWnyqFPtBolDZaST2plgtl9BWYbhUV+qkx3NRxcpY6YyBT
         hkpMOtZmQkjVmv7ODhechKt6iqc3Xz8W/5q5Xj8bw2jgvdKSlyk/4fW8Gn1UfzG/1xTW
         AH9AxN3SGQpi2VjYNClHTYsLeOYSGBuoTvXrYhV1v8kx1VN8Aob+ZkduV708NWGQbO4h
         W7Meh+A+8F5KJ6nld5TjZVR3pUTgLpXL8PdTMfsNgwgM+lVDphLOanOqQwSw77YYhvOR
         PQpw==
X-Gm-Message-State: AMke39lac/XOogb5pSuGFKSPcJ0potnBaDrXr4CyOh8ofyHSevG1mgetWtwIcCOaioKGSQ==
X-Received: by 10.99.117.11 with SMTP id q11mr27737757pgc.9.1489252870312;
        Sat, 11 Mar 2017 09:21:10 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w14sm25308696pgo.37.2017.03.11.09.21.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 09:21:08 -0800 (PST)
Date: Sat, 11 Mar 2017 22:51:00 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8192u: Remove typedef
 phy_ofdm_rx_status_rxsc_sgien_exintfflag
Message-ID: <20170311172100.GA18682@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove typdef phy_ofdm_rx_status_rxsc_sgien_exintfflag and replace its uses
in the code.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 v2:
   -Drop the "_" at the beginning of the name of the structure
 
 drivers/staging/rtl8192u/r8192U.h      | 4 ++--
 drivers/staging/rtl8192u/r8192U_core.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
index a7ba8f3..524c1c9 100644
--- a/drivers/staging/rtl8192u/r8192U.h
+++ b/drivers/staging/rtl8192u/r8192U.h
@@ -793,12 +793,12 @@ typedef struct _phy_cck_rx_status_report_819xusb {
 } phy_sts_cck_819xusb_t;
 
 
-typedef struct _phy_ofdm_rx_status_rxsc_sgien_exintfflag {
+struct phy_ofdm_rx_status_rxsc_sgien_exintfflag {
 	u8			reserved:4;
 	u8			rxsc:2;
 	u8			sgi_en:1;
 	u8			ex_intf_flag:1;
-} phy_ofdm_rx_status_rxsc_sgien_exintfflag;
+};
 
 typedef enum _RT_CUSTOMER_ID {
 	RT_CID_DEFAULT = 0,
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 13239f4..8448e83 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -4242,7 +4242,7 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
 {
 	phy_sts_ofdm_819xusb_t *pofdm_buf;
 	phy_sts_cck_819xusb_t	*pcck_buf;
-	phy_ofdm_rx_status_rxsc_sgien_exintfflag *prxsc;
+	struct phy_ofdm_rx_status_rxsc_sgien_exintfflag *prxsc;
 	u8	*prxpkt;
 	u8	i, max_spatial_stream, tmp_rxsnr, tmp_rxevm, rxsc_sgien_exflg;
 	s8	rx_pwr[4], rx_pwr_all = 0;
@@ -4432,7 +4432,7 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
 
 		/* record rx statistics for debug */
 		rxsc_sgien_exflg = pofdm_buf->rxsc_sgien_exflg;
-		prxsc =	(phy_ofdm_rx_status_rxsc_sgien_exintfflag *)
+		prxsc =	(struct phy_ofdm_rx_status_rxsc_sgien_exintfflag *)
 			&rxsc_sgien_exflg;
 		if (pdrvinfo->BW)	/* 40M channel */
 			priv->stats.received_bwtype[1 + prxsc->rxsc]++;
-- 
2.7.4


