X-GM-THRID: 6389791832562204672
X-Received: by 10.157.67.161 with SMTP id t33mr10776007ote.35.1487783684662;
        Wed, 22 Feb 2017 09:14:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.218 with SMTP id o87ls475856ioi.23.gmail; Wed, 22 Feb
 2017 09:14:43 -0800 (PST)
X-Received: by 10.99.53.12 with SMTP id c12mr10618434pga.11.1487783683924;
        Wed, 22 Feb 2017 09:14:43 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-qt0-x242.google.com (mail-qt0-x242.google.com. [2607:f8b0:400d:c0d::242])
        by gmr-mx.google.com with ESMTPS id r198si165517ywe.4.2017.02.22.09.14.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 09:14:43 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) client-ip=2607:f8b0:400d:c0d::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x242.google.com with SMTP id x35so1195702qtc.1
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 09:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KQPSZcdq342k7YDwBI7WRny4ReeW5Aa5BPJn9p/BDFA=;
        b=c09gFi/W6dgzp11Zt6ASyXU6XXi6V8RgMeasraPu1+X9wyKp9syVHT2j7fSFoaMiq0
         6CpWOsZX+dDrWMlbidYDxG6N/XeHiX16zx8G/576GnTSMXsR2RAunyr5pcD44+1OlrQ9
         JVg1hBdGLULjM6lZcpvQG9s4HfKCjIAs5IaUoHZ0GkLoDVJqN8fwVq7oI2aHvqEWq5WO
         /87fRt8EC0YMzKiq4lSuM7inHyTUQSLp2z390QJp1DfqYPuD3LAY7Fxx1WYNxDgC4ovy
         jIwnz020nkIfF30Jy++1XlwhoWQyzks7geQjmrzheppCQt6s+7gJXdYDyRsdsyfC0UxR
         SWWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KQPSZcdq342k7YDwBI7WRny4ReeW5Aa5BPJn9p/BDFA=;
        b=NHYb1NN13Z8KehNxRdGlhwOe2I1051DWAlRcRpnZYvFyPCW2+rgL18fgCrC4quG1qw
         AGWe2YMyvsjZv4bnOJ19wiFIJlT+Hfl43TqBVW5YiplFiISnleTnn/Htl5lwOVbYSck8
         /Al2UiEJdBoVR5IghpPcLCA33tlbskQKO4/0gXf3TsmIQqRhqBq2S4GXsqbx8tIzi9Fw
         f/TURtBxO7guSLekOIgbNvEiOvoKQ+Ohte38z0KrUrwS1d9jDDGWTwuBJL/w1DVD+foJ
         eeMht1efc0V/BskI414dH7AXoB0YmLweuRSuKwaSkM63dh56xRbr9Xfk7E5Pc9VTvWs+
         7XTw==
X-Gm-Message-State: AMke39l+mdiozxo2U6WLvhwNxMBUz3bylu+MDN/O184pqLQoGgaepARNK+SDFthJ/NLEEg==
X-Received: by 10.237.50.66 with SMTP id y60mr33794614qtd.12.1487783683557;
        Wed, 22 Feb 2017 09:14:43 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox ([66.207.196.194])
        by smtp.gmail.com with ESMTPSA id j95sm1030694qte.52.2017.02.22.09.14.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Feb 2017 09:14:42 -0800 (PST)
Date: Wed, 22 Feb 2017 12:14:41 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org,
	linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: wilc1000: renames struct tstrRSSI and its
 members u8Index, u8Full
Message-ID: <20170222171403.GA20626@coolbox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes multiple camel case checks on struct tstrRSSI from checkpatch.pl:

Avoid CamelCase: <tstrRSSI>
Avoid CamelCase: <u8Full>
Avoid CamelCase: <u8Index>

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h       |  8 ++++----
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 10 +++++-----
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index cff1698..5b65c4f 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -70,9 +70,9 @@ enum connect_status {
 	CONNECT_STS_FORCE_16_BIT = 0xFFFF
 };
 
-struct tstrRSSI {
-	u8 u8Full;
-	u8 u8Index;
+struct tstr_RSSI {
+	u8 full;
+	u8 index;
 	s8 as8RSSI[NUM_RSSI];
 };
 
@@ -93,7 +93,7 @@ struct network_info {
 	u8 *ies;
 	u16 ies_len;
 	void *join_params;
-	struct tstrRSSI str_rssi;
+	struct tstr_RSSI str_rssi;
 	u64 tsf_hi;
 };
 
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index f7ce47c..56f133e 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -205,8 +205,8 @@ static u32 get_rssi_avg(struct network_info *network_info)
 {
 	u8 i;
 	int rssi_v = 0;
-	u8 num_rssi = (network_info->str_rssi.u8Full) ?
-		       NUM_RSSI : (network_info->str_rssi.u8Index);
+	u8 num_rssi = (network_info->str_rssi.full) ?
+		       NUM_RSSI : (network_info->str_rssi.index);
 
 	for (i = 0; i < num_rssi; i++)
 		rssi_v += network_info->str_rssi.as8RSSI[i];
@@ -346,13 +346,13 @@ static void add_network_to_shadow(struct network_info *pstrNetworkInfo,
 	} else {
 		ap_index = ap_found;
 	}
-	rssi_index = last_scanned_shadow[ap_index].str_rssi.u8Index;
+	rssi_index = last_scanned_shadow[ap_index].str_rssi.index;
 	last_scanned_shadow[ap_index].str_rssi.as8RSSI[rssi_index++] = pstrNetworkInfo->rssi;
 	if (rssi_index == NUM_RSSI) {
 		rssi_index = 0;
-		last_scanned_shadow[ap_index].str_rssi.u8Full = 1;
+		last_scanned_shadow[ap_index].str_rssi.full = 1;
 	}
-	last_scanned_shadow[ap_index].str_rssi.u8Index = rssi_index;
+	last_scanned_shadow[ap_index].str_rssi.index = rssi_index;
 	last_scanned_shadow[ap_index].rssi = pstrNetworkInfo->rssi;
 	last_scanned_shadow[ap_index].cap_info = pstrNetworkInfo->cap_info;
 	last_scanned_shadow[ap_index].ssid_len = pstrNetworkInfo->ssid_len;
-- 
2.7.4


