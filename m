X-GM-THRID: 7122168315904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,99b69ea22516648c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.25.137 with SMTP id c9mr36794610igg.0.1425834472195;
        Sun, 08 Mar 2015 10:07:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.68.76 with SMTP id u12ls370395obt.31.gmail; Sun, 08 Mar
 2015 10:07:52 -0700 (PDT)
X-Received: by 10.182.104.37 with SMTP id gb5mr23706554obb.45.1425834472025;
        Sun, 08 Mar 2015 10:07:52 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id xj4si2112686pbc.2.2015.03.08.10.07.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 10:07:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id li10so66564422pab.2
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 10:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=V2pwRuaH72tRK5EC/DNOMfaJwuLkihBz0eLxjOKc61g=;
        b=EWWYZVGxY1Ru+nd+kgwQ9siwgUXZudF2Gn2Wkh5OqqycGaQXawzDEYSwjQbUwbRWvp
         4fuKjxeDXuWc/LLPLh3tLqYnDvXXcGnwBqgsWTNAkKQR2pAWxv4LGuTlRgod3w2mfTps
         p/ayEtINqdA0bOJm2/tqGsH/B0+JFvBEZDGQBKU02C5r8wIg9Rhvok30tOvbbZt4TgSR
         Ghm5RvgQr4KvLjM15xgEAsi3M+ZWpMM29Tmy+7Dkk1SR6f3NUpHo4XZs8NvpjBWcCDdJ
         A2PMdF6fOKyg471PKz0Cb346RgBRjrQjafamn2Rb4SDJa3GbJptMXYTWGiE6TVyv2bDU
         KhQQ==
X-Received: by 10.70.108.195 with SMTP id hm3mr43849081pdb.105.1425834471904;
        Sun, 08 Mar 2015 10:07:51 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([122.174.223.151])
        by mx.google.com with ESMTPSA id sg4sm15300888pac.11.2015.03.08.10.07.48
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 10:07:50 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 2/3] staging: rtl8192e: Replace min with min_t
Date: Sun,  8 Mar 2015 22:36:31 +0530
Message-Id: <4e1526d0654a77e3df0f924f3bad671243a11ba9.1425833758.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425833758.git.darshanapadmadas@gmail.com>
References: <cover.1425833758.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1425833758.git.darshanapadmadas@gmail.com>
References: <cover.1425833758.git.darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch replaces min with min_t and eliminates the
following warnings found by checkpatch.pl:

WARNING: min() should probably be min_t(u8, info_element->len, MAX_IE_LEN)
WARNING: min() should probably be min_t(u8, info_element->len, MAX_IE_LEN)
WARNING: min() should probably be min_t(u8, info_element->len, MAX_IE_LEN)
WARNING: min() should probably be min_t(u8, info_element->len, MAX_IE_LEN)
WARNING: min() should probably be min_t(u8, info_element->len, MAX_IE_LEN)

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_rx.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

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
-- 
1.9.1


