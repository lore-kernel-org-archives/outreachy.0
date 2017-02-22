X-GM-THRID: 6389791832562204672
X-Received: by 10.99.120.193 with SMTP id t184mr10372375pgc.26.1487739345796;
        Tue, 21 Feb 2017 20:55:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.209 with SMTP id r200ls86404itc.20.gmail; Tue, 21 Feb
 2017 20:55:44 -0800 (PST)
X-Received: by 10.107.15.79 with SMTP id x76mr10570814ioi.57.1487739344846;
        Tue, 21 Feb 2017 20:55:44 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id b188si135956ite.3.2017.02.21.20.55.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 20:55:44 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id r141so300889ita.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 20:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=EeQ86jBCzVvvbs4C1KRteOtoCJbJRYMO+8JffvNAeeQ=;
        b=ZzRvfZr59jGdQenGEMR0L/Q3JeeqUst0C4B1+Ueoqa1e7kFyaT+i63STKgHQDqhWsq
         AdROqe5u5z+6hV24Mi35EpH2W4n1sEEyZ7go8OWA50/fNBjAtiGofV/DgoJL6LTtlujT
         YFDgUbDAe6XA3PI5T18mFDbfFF9ZJu1JdQzm4E++X0cJP5vAXx9AFUfxFv6bOcj6oP3a
         EQtjG4myNC/OoQesX8OwP0X+ySKktjjvGqtXHhF1Eoh/f9dzuGppDZZy+KH1ek7CXsmI
         TGg+7foLfjm07t1t10IeXDSpfbJhjuQITLiKNMDkz0yVrlJZ1s8JOsBx+7fNLQjx50jf
         pwZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=EeQ86jBCzVvvbs4C1KRteOtoCJbJRYMO+8JffvNAeeQ=;
        b=NFijzVH9jDPRqtufjd1rwbl+TQrFzrrEOEmy4NB95G3LJossODK4YTkxKwP9NDyq8v
         /DvntHn64ma8oKq2c+oHC/+fTLVn2TWTyeT1lmvCNg0c1ZUjIcxKIcsVjqRxB8NbKQcT
         LvQ1eqrjAnDvcvDcPxNS1icNKQRmhkAwbkbpjzRAnr6gr3w7SqmXfHM9mDrQJDLdpSKH
         NX7JOG+lxdSjPUiEdwtLvn//rF/c1AAJpVJLpTEWWXiqAIWm5NdWJXk+Y0384o3Fqe6V
         A1998HyVo36SLdvfh2eTjXlYVIMHtYSZ54VpI1e5yC+Ca3OhM+vKCGvXPsqb1SDUSXuL
         yppg==
X-Gm-Message-State: AMke39kL99yoJd/jFYMDy3vwTtbA84FM6Cqq1adeunZgEiok+KxHFovjJDJIZTK2OpGw8w==
X-Received: by 10.36.10.3 with SMTP id 3mr460816itw.108.1487739344669;
        Tue, 21 Feb 2017 20:55:44 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id e139sm172468iof.54.2017.02.21.20.55.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 20:55:43 -0800 (PST)
Date: Tue, 21 Feb 2017 23:55:43 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org,
	linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wilc1000: renames struct tstrRSSI and its members
 u8Index, u8Full
Message-ID: <20170222045543.GA27847@coolbox>
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
index cff1698..c9cf23b 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -70,9 +70,9 @@ enum connect_status {
 	CONNECT_STS_FORCE_16_BIT = 0xFFFF
 };
 
-struct tstrRSSI {
-	u8 u8Full;
-	u8 u8Index;
+struct tstr_RSSI {
+	u8 u8_full;
+	u8 u8_index;
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
index f7ce47c..30285b9 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -205,8 +205,8 @@ static u32 get_rssi_avg(struct network_info *network_info)
 {
 	u8 i;
 	int rssi_v = 0;
-	u8 num_rssi = (network_info->str_rssi.u8Full) ?
-		       NUM_RSSI : (network_info->str_rssi.u8Index);
+	u8 num_rssi = (network_info->str_rssi.u8_full) ?
+		       NUM_RSSI : (network_info->str_rssi.u8_index);
 
 	for (i = 0; i < num_rssi; i++)
 		rssi_v += network_info->str_rssi.as8RSSI[i];
@@ -346,13 +346,13 @@ static void add_network_to_shadow(struct network_info *pstrNetworkInfo,
 	} else {
 		ap_index = ap_found;
 	}
-	rssi_index = last_scanned_shadow[ap_index].str_rssi.u8Index;
+	rssi_index = last_scanned_shadow[ap_index].str_rssi.u8_index;
 	last_scanned_shadow[ap_index].str_rssi.as8RSSI[rssi_index++] = pstrNetworkInfo->rssi;
 	if (rssi_index == NUM_RSSI) {
 		rssi_index = 0;
-		last_scanned_shadow[ap_index].str_rssi.u8Full = 1;
+		last_scanned_shadow[ap_index].str_rssi.u8_full = 1;
 	}
-	last_scanned_shadow[ap_index].str_rssi.u8Index = rssi_index;
+	last_scanned_shadow[ap_index].str_rssi.u8_index = rssi_index;
 	last_scanned_shadow[ap_index].rssi = pstrNetworkInfo->rssi;
 	last_scanned_shadow[ap_index].cap_info = pstrNetworkInfo->cap_info;
 	last_scanned_shadow[ap_index].ssid_len = pstrNetworkInfo->ssid_len;
-- 
2.7.4


