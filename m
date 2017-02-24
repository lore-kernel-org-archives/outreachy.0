X-GM-THRID: 6390544093665034240
X-Received: by 10.36.40.144 with SMTP id h138mr1396096ith.19.1487973909755;
        Fri, 24 Feb 2017 14:05:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.149.5 with SMTP id x5ls2203815iod.42.gmail; Fri, 24 Feb
 2017 14:05:09 -0800 (PST)
X-Received: by 10.99.210.21 with SMTP id a21mr1847239pgg.44.1487973909051;
        Fri, 24 Feb 2017 14:05:09 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id a17si440743itd.1.2017.02.24.14.05.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 14:05:09 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id w185so5726232ita.3
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 14:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=n7RIqmlwDla1dls/fmwLSInZSqFA9VcnjlpZs03H+MI=;
        b=ELuGj1fBRnHSdwaJJXUy/LvItYOkl3QZ9fmT97uW+ilww8yKMi6Gc425ttzRNfEaXD
         NMdgnSbCqjv8PFEHftuTd9ebDBMoYpDi0TVsO8/dO7ER+3aRNIiIv9lGgOvaH+RDAkoz
         9Ywrbs/t/NtBLM2Ao3XqFmHC9EEwIHuInQ6EICXa1zJchHAQHEYTiIr+ZxsATm3ZhQf1
         jkqjs0HUuo8RvhQzTs4WTCIs5ARehcDDRYksOfHe3YXrv5YIekaIfiph41adYi6vPWZH
         ybUWjMPfgwubOd9geruM7Zvvjv3ZhY+UYnB8lInndf1a6ut7uVT8miosu7gtgVYttxE5
         iR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=n7RIqmlwDla1dls/fmwLSInZSqFA9VcnjlpZs03H+MI=;
        b=nUk0z1omX4wiVgPcMQnSKo6tvZJqq2sU6yI4uKaGPDOQzWXK54/98/9uTYwZAi/X1H
         jgfzlbxdtPb1+k8wu8GNbmRkoZnV6J/J4slhsUT4XELkeGHnH+k/1QWkduG4B0bVTxbo
         ofkLoBZeAgUkq5X6LUb+MaznYad5VVpjZV5ee9VvDE27h3GvFrpwKIdbQBRqcob1ASrd
         JHRfJtrTaqCtN4iS85l/9aMi2CZpFPObXLCINnzcV9uTYeCq0XFiVRP/T3aFnXG+UZUl
         c3ceumbFwrDEJtf08e7iM28IChUxDx/srwQUR4S3N3zH6zjinWNS7Lj7mFBmabpEHmoF
         ymeA==
X-Gm-Message-State: AMke39m5xCL7dnXRYmjM1mrWuv0ZbqwJk0aK3OmdgWRqJWGHmGlxNDvtbQ0RajyCgYR/Ug==
X-Received: by 10.36.219.3 with SMTP id c3mr4643136itg.52.1487973908743;
        Fri, 24 Feb 2017 14:05:08 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id w77sm3620325ioi.20.2017.02.24.14.05.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 14:05:08 -0800 (PST)
Date: Fri, 24 Feb 2017 17:05:07 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org,
	linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/3] staging: wilc1000: Rename tstrRSSI members and change
 type of u8Full to bool
Message-ID: <e4e0e4da09635d0cb7ef43223022490b6de739a8.1487947616.git.tahia.khan@gmail.com>
References: <cover.1487947616.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487947616.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove Hungarian notation and camel casing from all tstrRSSI members' 
names. Additionally, change type of u8Full to bool since it only takes 
values 1 or 0.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
 drivers/staging/wilc1000/coreconfigurator.h       |  6 +++---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 14 +++++++-------
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index 1c77529..9712d89 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -71,9 +71,9 @@ enum connect_status {
 };
 
 struct rssi_history_buffer {
-	u8 u8Full;
-	u8 u8Index;
-	s8 as8RSSI[NUM_RSSI];
+	bool full;
+	u8 index;
+	s8 samples[NUM_RSSI];
 };
 
 struct network_info {
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index f7ce47c..9601ab8 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -205,11 +205,11 @@ static u32 get_rssi_avg(struct network_info *network_info)
 {
 	u8 i;
 	int rssi_v = 0;
-	u8 num_rssi = (network_info->str_rssi.u8Full) ?
-		       NUM_RSSI : (network_info->str_rssi.u8Index);
+	u8 num_rssi = (network_info->str_rssi.full) ?
+		       NUM_RSSI : (network_info->str_rssi.index);
 
 	for (i = 0; i < num_rssi; i++)
-		rssi_v += network_info->str_rssi.as8RSSI[i];
+		rssi_v += network_info->str_rssi.samples[i];
 
 	rssi_v /= num_rssi;
 	return rssi_v;
@@ -346,13 +346,13 @@ static void add_network_to_shadow(struct network_info *pstrNetworkInfo,
 	} else {
 		ap_index = ap_found;
 	}
-	rssi_index = last_scanned_shadow[ap_index].str_rssi.u8Index;
-	last_scanned_shadow[ap_index].str_rssi.as8RSSI[rssi_index++] = pstrNetworkInfo->rssi;
+	rssi_index = last_scanned_shadow[ap_index].str_rssi.index;
+	last_scanned_shadow[ap_index].str_rssi.samples[rssi_index++] = pstrNetworkInfo->rssi;
 	if (rssi_index == NUM_RSSI) {
 		rssi_index = 0;
-		last_scanned_shadow[ap_index].str_rssi.u8Full = 1;
+		last_scanned_shadow[ap_index].str_rssi.full = true;
 	}
-	last_scanned_shadow[ap_index].str_rssi.u8Index = rssi_index;
+	last_scanned_shadow[ap_index].str_rssi.index = rssi_index;
 	last_scanned_shadow[ap_index].rssi = pstrNetworkInfo->rssi;
 	last_scanned_shadow[ap_index].cap_info = pstrNetworkInfo->cap_info;
 	last_scanned_shadow[ap_index].ssid_len = pstrNetworkInfo->ssid_len;
-- 
2.7.4


