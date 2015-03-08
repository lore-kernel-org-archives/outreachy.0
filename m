X-GM-THRID: 7122168315904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,99b69ea22516648c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.25.137 with SMTP id c9mr36971755igg.0.1425837859469;
        Sun, 08 Mar 2015 11:04:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.12 with SMTP id l12ls745276ioe.48.gmail; Sun, 08 Mar
 2015 11:04:19 -0700 (PDT)
X-Received: by 10.42.37.202 with SMTP id z10mr16363671icd.31.1425837859334;
        Sun, 08 Mar 2015 11:04:19 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ri9si2160286pdb.1.2015.03.08.11.04.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 11:04:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabli10 with SMTP id li10so66798126pab.2
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 11:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=zjSU/T9KsPxOjfKd97C0btVOmUVFAQBcIDMOLvQFns0=;
        b=jD/q1EMZxx6P01RmsQ5J7oM4dZVaxkOiG75Ta6X4qXh7cikqVWdJazI/5RsUIue0AK
         pnpASNc9wOKtIYFxZtH4ZPGtGVvsQqL3enp4yljjR5+4zpu0Cg0pJ6d2Zqm0zhFHRKOt
         IDqSSn1LetOdMTG0/vTD9GxNR8hRhJ7jQ2RXhHrFx5Cqi2WC4BMRgGi6muoQ/oCWtK4u
         sf93YTnsd+dSp+y8g5ulWkrkNz3RD1rFIflniafuEKu0ouhMmWYBAoSdnlhFYkfVXASy
         OTWgpBSh4QxD6g1WlzD9/ksbmF8Toh2rXOsCBRkNcu3q0TIlq7J/YYe53o8y/byatadG
         Q+Eg==
X-Received: by 10.66.164.163 with SMTP id yr3mr11108783pab.154.1425837858825;
        Sun, 08 Mar 2015 11:04:18 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([122.174.223.151])
        by mx.google.com with ESMTPSA id ba12sm15399647pac.23.2015.03.08.11.04.14
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 11:04:17 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2 2/2] staging: rtl8192e: Replace min with min_t
Date: Sun,  8 Mar 2015 23:33:40 +0530
Message-Id: <b7b9a94aef025cd486bb79319b5a0e6fe88d758f.1425837526.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425837526.git.darshanapadmadas@gmail.com>
References: <cover.1425837526.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1425837526.git.darshanapadmadas@gmail.com>
References: <cover.1425837526.git.darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch replaces min with min_t and eliminates the
following warnings found by checkpatch.pl:

WARNING: min() should probably be min_t

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_rx.c | 10 +++++-----
 drivers/staging/rtl8192e/rtllib_wx.c |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 1664040..0386568 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1908,7 +1908,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
 				   info_element->data[2] == 0x4c &&
 				   info_element->data[3] == 0x033) {
 
-						tmp_htcap_len = min(info_element->len, (u8)MAX_IE_LEN);
+						tmp_htcap_len = min_t(u8, info_element->len, MAX_IE_LEN);
 						if (tmp_htcap_len != 0) {
 							network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
 							network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf) ?
@@ -1932,7 +1932,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
 				    info_element->data[1] == 0x90 &&
 				    info_element->data[2] == 0x4c &&
 				    info_element->data[3] == 0x034) {
-					tmp_htinfo_len = min(info_element->len, (u8)MAX_IE_LEN);
+					tmp_htinfo_len = min_t(u8, info_element->len, MAX_IE_LEN);
 					if (tmp_htinfo_len != 0) {
 						network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
 						if (tmp_htinfo_len) {
@@ -1953,7 +1953,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
 					    info_element->data[1] == 0xe0 &&
 					    info_element->data[2] == 0x4c &&
 					    info_element->data[3] == 0x02) {
-						ht_realtek_agg_len = min(info_element->len, (u8)MAX_IE_LEN);
+						ht_realtek_agg_len = min_t(u8, info_element->len, MAX_IE_LEN);
 						memcpy(ht_realtek_agg_buf, info_element->data, info_element->len);
 					}
 					if (ht_realtek_agg_len >= 5) {
@@ -2083,7 +2083,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
 		case MFIE_TYPE_HT_CAP:
 			RTLLIB_DEBUG_SCAN("MFIE_TYPE_HT_CAP: %d bytes\n",
 					     info_element->len);
-			tmp_htcap_len = min(info_element->len, (u8)MAX_IE_LEN);
+			tmp_htcap_len = min_t(u8, info_element->len, MAX_IE_LEN);
 			if (tmp_htcap_len != 0) {
 				network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
 				network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf) ?
@@ -2110,7 +2110,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
 		case MFIE_TYPE_HT_INFO:
 			RTLLIB_DEBUG_SCAN("MFIE_TYPE_HT_INFO: %d bytes\n",
 					     info_element->len);
-			tmp_htinfo_len = min(info_element->len, (u8)MAX_IE_LEN);
+			tmp_htinfo_len = min_t(u8, info_element->len, MAX_IE_LEN);
 			if (tmp_htinfo_len) {
 				network->bssht.bdHTSpecVer = HT_SPEC_VER_IEEE;
 				network->bssht.bdHTInfoLen = tmp_htinfo_len >
diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index 309cda0..2e665ed 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -74,7 +74,7 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
 	iwe.cmd = SIOCGIWESSID;
 	iwe.u.data.flags = 1;
 	if (network->ssid_len > 0) {
-		iwe.u.data.length = min(network->ssid_len, (u8)32);
+		iwe.u.data.length = min_t(u8, network->ssid_len, 32);
 		start = iwe_stream_add_point_rsl(info, start, stop, &iwe,
 						 network->ssid);
 	} else if (network->hidden_ssid_len == 0) {
@@ -82,7 +82,7 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
 		start = iwe_stream_add_point_rsl(info, start, stop,
 						 &iwe, "<hidden>");
 	} else {
-		iwe.u.data.length = min(network->hidden_ssid_len, (u8)32);
+		iwe.u.data.length = min_t(u8, network->hidden_ssid_len, 32);
 		start = iwe_stream_add_point_rsl(info, start, stop, &iwe,
 						 network->hidden_ssid);
 	}
-- 
1.9.1


