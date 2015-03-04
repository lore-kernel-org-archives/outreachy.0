X-GM-THRID: 6528407961600
X-Received: by 10.182.29.102 with SMTP id j6mr3334097obh.46.1425458375940;
        Wed, 04 Mar 2015 00:39:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.234 with SMTP id t10ls123537igr.15.gmail; Wed, 04 Mar
 2015 00:39:35 -0800 (PST)
X-Received: by 10.66.117.203 with SMTP id kg11mr3244890pab.25.1425458375493;
        Wed, 04 Mar 2015 00:39:35 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id ri9si430894pdb.1.2015.03.04.00.39.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 00:39:35 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id eu11so17755412pac.4
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 00:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4e2R8F6wIz1xn4ZkHKsQ6c2QJgNLzdzA3s/LsRxJTvs=;
        b=oYe/2ukzdGzqn6uwI9JyFcNMppQHHE82jhoy577fRGtIHMUuki4IVDzly0byDjayFu
         kGrGQkIH5ud81FdxRsCcrQ7rWzaeNvXLkq+tWQBk/eRSVh8rqLr9P+WeeCOeKO5MbDJW
         rHRAQlX4NxOkwSGPcX+vJbOUrUY8O3g8Q7qh1lREfRlfC3VF4LA3/sjwLZWVCCAVHNc3
         9n7CJXBB9YTGSsEvhHsMXujCgD9rRs3Pg74Oa2zHFmIp1zMmoDDvogVzBEr4lgWKyycQ
         Nl8/qjcuN+56swhDK9L29sLqci/7pnHyCDNBXPLkNpVSW7eXW5Gu4czH9vkdormJv5Lj
         uITw==
X-Received: by 10.68.236.162 with SMTP id uv2mr5020069pbc.98.1425458375399;
        Wed, 04 Mar 2015 00:39:35 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.48])
        by mx.google.com with ESMTPSA id eb4sm3174792pbc.82.2015.03.04.00.39.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 00:39:34 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 2/3] Staging: rtl8188eu: Add blank line after declaration
Date: Wed,  4 Mar 2015 14:10:45 +0530
Message-Id: <1425458446-27117-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425458446-27117-1-git-send-email-somyaanand214@gmail.com>
References: <1425458446-27117-1-git-send-email-somyaanand214@gmail.com>

This patch fixes checkpatch.pl warning by adding a blank line after
declaration for better readability.

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 6917abf..dac4246 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -101,7 +101,7 @@ unsigned char networktype_to_raid(unsigned char network_type)
 		return RATR_INX_WIRELESS_N;
 	case WIRELESS_11A_5N:
 	case WIRELESS_11G_24N:
-		return  RATR_INX_WIRELESS_NG;
+		return RATR_INX_WIRELESS_NG;
 	case WIRELESS_11BG_24N:
 		return RATR_INX_WIRELESS_NGB;
 	default:
@@ -398,6 +398,7 @@ int get_bsstype(unsigned short capability)
 u16 get_beacon_interval(struct wlan_bssid_ex *bss)
 {
 	__le16 val;
+
 	memcpy((unsigned char *)&val, rtw_get_beacon_interval_from_ie(bss->IEs), 2);
 
 	return le16_to_cpu(val);
@@ -1212,6 +1213,7 @@ unsigned int is_ap_in_wep(struct adapter *padapter)
 static int wifirate2_ratetbl_inx(unsigned char rate)
 {
 	int	inx = 0;
+
 	rate = rate & 0x7f;
 
 	switch (rate) {
@@ -1344,6 +1346,7 @@ void set_sta_rate(struct adapter *padapter, struct sta_info *psta)
 void update_tx_basic_rate(struct adapter *padapter, u8 wirelessmode)
 {
 	unsigned char supported_rates[NDIS_802_11_LENGTH_RATES_EX];
+
 	memset(supported_rates, 0, NDIS_802_11_LENGTH_RATES_EX);
 
 	if ((wirelessmode & WIRELESS_11B) && (wirelessmode == WIRELESS_11B))
@@ -1368,6 +1371,7 @@ unsigned char check_assoc_AP(u8 *pframe, uint len)
 	struct ndis_802_11_var_ie *pIE;
 	u8	epigram_vendor_flag;
 	u8	ralink_vendor_flag;
+
 	epigram_vendor_flag = 0;
 	ralink_vendor_flag = 0;
 
-- 
1.9.1


