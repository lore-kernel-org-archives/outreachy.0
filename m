X-GM-THRID: 6390544093665034240
X-Received: by 10.13.249.2 with SMTP id j2mr263667ywf.86.1487914514647;
        Thu, 23 Feb 2017 21:35:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.191.134 with SMTP id p128ls1713933iof.31.gmail; Thu, 23
 Feb 2017 21:35:13 -0800 (PST)
X-Received: by 10.99.185.1 with SMTP id z1mr293445pge.40.1487914513916;
        Thu, 23 Feb 2017 21:35:13 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id f73si107948ita.1.2017.02.23.21.35.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 21:35:13 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x242.google.com with SMTP id w185so1738339ita.3
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 21:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fL6RBd79buMa3kRtyEgVUaWDUpW4y+Og1+VkrW9LQXM=;
        b=nxKv6ZL0ynJePo19s2ieb85MZfO6Ys9g7UW6FH4Fln3GshVFtNzaaG9bb1+3qc/NMd
         EsKRUpl07pe+tL4+OE8R4DDIEC3VGYK6k9ocYWf5irb1apz0GAxGK6mxbTuFQ9SY39Po
         zaIpaDhmvQlQBfZozVkKjk4G6VlgT1nfCUfQJEOpNZFrwqRz3T2YpZ4ha9SE8vcOOcmv
         lhUxkezybBgcFE22YXun8x7GNlZ9AL1Vxf+5jkchzKoqT9eYXfM+8WJQXakB6cvnBrES
         bqEs09PoHJjD9GqiUGS2pLRMuLprpdK1SNYAM1nz+BNn26FuO1K200xpiyUc0UH0ai9B
         kyZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fL6RBd79buMa3kRtyEgVUaWDUpW4y+Og1+VkrW9LQXM=;
        b=Ko5k69AlGjZ/ZVs+Yp+Pf2VZRoqqJZKUYDEN5FAnmOKH88XOUuZS9+id7w8l7tLeKj
         a/w6qAgPaDYmvA6BrikfxGKKexeB7WzAXnaBQg1vvZmC7UD1qj/mTmXn+YyXfoTFoPXq
         MbF2GX7qYMRtn9iH4kTdycttCHvrYsDZyHKcoK3MOdZAkMAcoNhTn+Xz7vj6DiKJw32d
         1G0313Ho5WHecX99jmi53Ih7G7m+jQ8OxjHrneXKlUgY1J0MwsjcPBFBvUebm87RmfKk
         s0XCSmAxk/78WKTnhaAvNTBd6ClracKm/oA2rZjl1VtDmZVuDF7YN0oQZU1XGPAiXDjZ
         rjrg==
X-Gm-Message-State: AMke39lnDCgRf+KPqZfmwtwm+VKFhrinpicQuAlGmcpdGTYWTLRMg5+VnnZEStB1gQ/VUQ==
X-Received: by 10.36.81.142 with SMTP id s136mr1012510ita.119.1487914513682;
        Thu, 23 Feb 2017 21:35:13 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id f187sm333303ita.28.2017.02.23.21.35.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Feb 2017 21:35:13 -0800 (PST)
Date: Fri, 24 Feb 2017 00:35:12 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org,
	linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] staging: wilc1000: Rename network_info member
 str_rssi to rssi_history
Message-ID: <6fd3f34baa31c00a77e2805d5d8a820b3ac7a43f.1487912400.git.tahia.khan@gmail.com>
References: <cover.1487912400.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487912400.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Change name of str_rssi to rssi_history within the network_info struct for clarity.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h       |  2 +-
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 14 +++++++-------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index 9712d89..10101f8 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -93,7 +93,7 @@ struct network_info {
 	u8 *ies;
 	u16 ies_len;
 	void *join_params;
-	struct rssi_history_buffer str_rssi;
+	struct rssi_history_buffer rssi_history;
 	u64 tsf_hi;
 };
 
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 9601ab8..4a6fe90 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -205,11 +205,11 @@ static u32 get_rssi_avg(struct network_info *network_info)
 {
 	u8 i;
 	int rssi_v = 0;
-	u8 num_rssi = (network_info->str_rssi.full) ?
-		       NUM_RSSI : (network_info->str_rssi.index);
+	u8 num_rssi = (network_info->rssi_history.full) ?
+		       NUM_RSSI : (network_info->rssi_history.index);
 
 	for (i = 0; i < num_rssi; i++)
-		rssi_v += network_info->str_rssi.samples[i];
+		rssi_v += network_info->rssi_history.samples[i];
 
 	rssi_v /= num_rssi;
 	return rssi_v;
@@ -346,13 +346,13 @@ static void add_network_to_shadow(struct network_info *pstrNetworkInfo,
 	} else {
 		ap_index = ap_found;
 	}
-	rssi_index = last_scanned_shadow[ap_index].str_rssi.index;
-	last_scanned_shadow[ap_index].str_rssi.samples[rssi_index++] = pstrNetworkInfo->rssi;
+	rssi_index = last_scanned_shadow[ap_index].rssi_history.index;
+	last_scanned_shadow[ap_index].rssi_history.samples[rssi_index++] = pstrNetworkInfo->rssi;
 	if (rssi_index == NUM_RSSI) {
 		rssi_index = 0;
-		last_scanned_shadow[ap_index].str_rssi.full = true;
+		last_scanned_shadow[ap_index].rssi_history.full = true;
 	}
-	last_scanned_shadow[ap_index].str_rssi.index = rssi_index;
+	last_scanned_shadow[ap_index].rssi_history.index = rssi_index;
 	last_scanned_shadow[ap_index].rssi = pstrNetworkInfo->rssi;
 	last_scanned_shadow[ap_index].cap_info = pstrNetworkInfo->cap_info;
 	last_scanned_shadow[ap_index].ssid_len = pstrNetworkInfo->ssid_len;
-- 
2.7.4


