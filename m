X-GM-THRID: 6390544093665034240
X-Received: by 10.200.34.203 with SMTP id g11mr1606836qta.14.1487973912486;
        Fri, 24 Feb 2017 14:05:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.206 with SMTP id 75ls1644357ios.3.gmail; Fri, 24 Feb
 2017 14:05:11 -0800 (PST)
X-Received: by 10.99.157.142 with SMTP id i136mr1721435pgd.78.1487973911763;
        Fri, 24 Feb 2017 14:05:11 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id 13si627214iti.0.2017.02.24.14.05.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 14:05:11 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x244.google.com with SMTP id v13so366092iov.2
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 14:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nF2svKOxujJjEx0m2xWcazZbhPl+84B/Dv6JFcP02Io=;
        b=YuENBn7PXN2V066QYq6hsAYZc6xgR1FpuodmNo0SmgCDk22OnIKj89jVNF8iQ0jzvF
         WxEmUs57+3DGmCQfMlCddmi+a2CUZez7Oi9oI3Qmt0DYzBKE1fQn0g9bLWDLMfT+XO8C
         KUozwfeCWaYqNDKooTYp+2HaQx0JRRukpg1s2ZRGvK98jzM+NXUOfwHDxgL0C7r9UdAb
         UcImmTPMNOsOIIUVAAyKOBBChWhQjxpUqson4gu3SD+pnEdj1aC26dGRNwpZ/WPLBHfX
         faU18due4+/HrNXJVSazDlX2BYt33m21ZpGetayWJfpslwjwFlAzb5RHW/6tccemoek+
         44sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nF2svKOxujJjEx0m2xWcazZbhPl+84B/Dv6JFcP02Io=;
        b=gAKzJtt8kljxRg/AFe3qPp/fEElKykVavwI7LkMqYnFGiYSug0gf7039RqXfxXkwRU
         vB0muujDI6MLZhnqUOQJnWxqK+sxtN4+9Glfb2OON+Ghv2eWSqyDEuwAka5K/UhKHzQb
         wmhWgIA0dhXxfLN/m/GM4W62NvQ30v3wPNeGItyWuK+SbtT1Dt+lAo8gUsCrPd5V86OB
         wq7UZtUyFZGCreIwBag6pXktzaHoSiGjXhdvNlRJLBp67qlY+L3qODcnyAZ0LMaeLS9w
         PVRUsG6TI38J/HvJIzenFws4RRzeuTh/udlrIwVk4uHvaSgqvrAKjnq4kwtehkESPb0l
         9ufg==
X-Gm-Message-State: AMke39nGpm66Y8cOClFMYiwACapDBnjZeFrizP/BbTHL/SSAUzwgv5YerzTXv3mRPxqouw==
X-Received: by 10.107.159.14 with SMTP id i14mr4355604ioe.143.1487973911521;
        Fri, 24 Feb 2017 14:05:11 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id c100sm1222683itd.20.2017.02.24.14.05.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 14:05:11 -0800 (PST)
Date: Fri, 24 Feb 2017 17:05:10 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org,
	linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/3] staging: wilc1000: Rename network_info member
 str_rssi to rssi_history
Message-ID: <6fd3f34baa31c00a77e2805d5d8a820b3ac7a43f.1487947616.git.tahia.khan@gmail.com>
References: <cover.1487947616.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487947616.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Change name of str_rssi to rssi_history within the network_info 
struct for clarity.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
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


