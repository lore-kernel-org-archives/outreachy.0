X-GM-THRID: 6390544093665034240
X-Received: by 10.129.76.138 with SMTP id z132mr278048ywa.172.1487914510619;
        Thu, 23 Feb 2017 21:35:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.34 with SMTP id n31ls4968082ota.4.gmail; Thu, 23 Feb
 2017 21:35:06 -0800 (PST)
X-Received: by 10.129.80.11 with SMTP id e11mr281057ywb.133.1487914506916;
        Thu, 23 Feb 2017 21:35:06 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id b188si86971ite.3.2017.02.23.21.35.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 21:35:06 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x241.google.com with SMTP id r141so1745087ita.1
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 21:35:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=A7nzdixwdt+HJaDPd9/9iqiy/LbJbDnB9jXRJJqydU4=;
        b=QxWy3LuCPdCFbXc14m+W8jPOa4rfjzFJVtJp9ZJtD3Fiw9AeiPwpiqMXndqDGecxdV
         TS+tvCUjycmPIBPDdvOZiiNkzGzbiAnhUP7zGgkHGRB9IyAQC89ApJj6lYJx0OkqwW1m
         oXNU4Qimvb1omM0e/vdpMLJdO8fDSa326XUG379o847WTf1BpXPGM5w/Wu9vvfZ4vN7M
         7op2REZoH2u8okXdYtdBlbfg/QFG2VaHM0Q0iXRFvaDEmaOjwasBb/dhQaTGalGHZa1y
         1RzpHD+JwMn+Fm1HnIHf+F6QTgiQUzjboB0VzyNUBIBlBE3IKIK2Wikp0UniiFXKdq8a
         /R5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=A7nzdixwdt+HJaDPd9/9iqiy/LbJbDnB9jXRJJqydU4=;
        b=bRc2waTF0Wu2ovfrvQZh5qejckKhWARIsAlVv3Mw+bzr38r1unqkWO0qIYBgWVOyh6
         lV3tD1m6HoV7Y26KXks8YNl9ohjsWYAtDRCA/PE6WQxuoiBItsw213wRpZ7TuAIhUQCN
         /ASKCJzL7NFPpnWPdspspTH4GIXCj5w8OeIrR8uZYiU8/wZP1xO8EH3xd+oCdsPMXq3s
         aMljJ30zyF9qi3xxuGI9HO+AlvRQRzKyWA43egYpU+bQ+hr5sqEcnrNBYha0w4nQIHPs
         6XY1KLrrNwodvS+zUmHpDpQoNe4oZK1OFEyoAcMhlRtsDpBzpYys8VYMYSqt8jMVxRHj
         Y2bA==
X-Gm-Message-State: AMke39k5rnYXNPng6qAyR1+03c7Tmn0NYlVKZaNAvzkbgohgX96zXXZZgPlilHWiZaY6JA==
X-Received: by 10.107.168.74 with SMTP id r71mr1070373ioe.133.1487914506665;
        Thu, 23 Feb 2017 21:35:06 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id i203sm2747142ioi.45.2017.02.23.21.35.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Feb 2017 21:35:06 -0800 (PST)
Date: Fri, 24 Feb 2017 00:35:05 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org,
	linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] staging: wilc1000: Rename tstrRSSI members and change
 type of u8Full to bool
Message-ID: <e4e0e4da09635d0cb7ef43223022490b6de739a8.1487912400.git.tahia.khan@gmail.com>
References: <cover.1487912400.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487912400.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove Hungarian notation and camel casing from all tstrRSSI members' names. 
Additionally, change type of u8Full to bool since it only takes values 1 or 0.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
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


