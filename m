X-GM-THRID: 6330295530641424384
X-Received: by 10.200.37.77 with SMTP id 13mr3763201qtn.10.1473886782407;
        Wed, 14 Sep 2016 13:59:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.41 with SMTP id g38ls2091871ote.34.gmail; Wed, 14 Sep
 2016 13:59:42 -0700 (PDT)
X-Received: by 10.200.52.137 with SMTP id w9mr3668460qtb.4.1473886781936;
        Wed, 14 Sep 2016 13:59:41 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si12400pab.2.2016.09.14.13.59.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 13:59:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 128so1249070pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 13:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=j38YdbMnzODOORBxfakQAWmZ/aXeX14UWBxAb1/c3Ds=;
        b=Csa0x7KirzRUoVw33yNQfBFI2lfXiIOz4oj3R0aEw5hLvwTxCnA6Oq/y2AUA8g5nUT
         FWiEWhqvMxhQuQ08sFkFltrtuOoonGBdG394t28OiKtw8yLuaK3sWlxkD+nWuBmU1TC+
         KiILZOKrCcCHflf6rb7ok1GRe61svHDcXrBtchuRCD4R9XdmF0cXSoYwldb+g7W3c98i
         nkH2IkglVi/TDTVMzx2QWbQVQd5dAC772FnXqckw4c91ljBoOTLIbwLLjGQHgIBvtdA8
         ZXe9LLxxfB29S4NfRwUG6YFpm6E5Elfz5sz8a4DklBbDiG1wEBkaPdzdKq7S5lV2gSJO
         Mt5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=j38YdbMnzODOORBxfakQAWmZ/aXeX14UWBxAb1/c3Ds=;
        b=LC6NvjWtEGv9ozL5u36KNrlBdRrIN6W3zO5tDa9G8Ih5MiJpmPvZWt3rng8AX+dnGm
         /TR2ZwNtdEyP1e/ZP4MYcWAcZpgMywtxXN7eYx2a46GoVM9w3zZ+xTFzZjdzPp91wOxP
         CQpBvaPPn5jW0+REWiOStVLCvgwKUqAJ17IpnEjkkm7WeXu2JIbYxl5g9sGY5W77BDO5
         8BLxsIi2s5zkwtcznLLLMP05VxcxeqeeJV0gSBDYVT93BwwbAe9Y1RCQWEoLhaNgGmse
         FLDI/6a9/OzYIyUqAsmOMiNkhOYRf0wlm0aOYR9LvhuJmpfIALPPwPvGXGidQGEQImDf
         J4Iw==
X-Gm-Message-State: AE9vXwMqj7fektBA+6stO2OySupaUUmUNr3MPe9RXhifO2fH7Adm56qsQPhXaaQh0hpdmg==
X-Received: by 10.98.4.71 with SMTP id 68mr5096421pfe.18.1473886781686;
        Wed, 14 Sep 2016 13:59:41 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.240.22])
        by smtp.gmail.com with ESMTPSA id q82sm40100089pfk.80.2016.09.14.13.59.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 13:59:41 -0700 (PDT)
Date: Thu, 15 Sep 2016 02:29:27 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: ks7010: Remove explicit cast to kmalloc
Message-ID: <20160914205927.GA28351@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The assignment operator implicitly converts a void pointer to the type of the 
pointer it is assigned to. Hence an explicit cast to result of the kmalloc
function is not required.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v2: Fixed the commit message, corrected a spelling error in the subject
 drivers/staging/ks7010/ks_hostif.c | 47 +++++++++++++-------------------------
 1 file changed, 16 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index f32ce5a..0a897c5 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -1172,9 +1172,8 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *packet)
 	}
 
 	DPRINTK(4, "skb_buff length=%d\n", packet_len);
-	pp = (struct hostif_data_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp) + 6 + packet_len + 8),
-		    KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp) + 6 + packet_len + 8),
+		     KS_WLAN_MEM_FLAG);
 
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
@@ -1313,8 +1312,7 @@ void hostif_mib_get_request(struct ks_wlan_private *priv,
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_mib_get_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1344,8 +1342,7 @@ void hostif_mib_set_request(struct ks_wlan_private *priv,
 	}
 
 	/* make primitive */
-	pp = (struct hostif_mib_set_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp) + size), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp) + size), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1374,8 +1371,7 @@ void hostif_start_request(struct ks_wlan_private *priv, unsigned char mode)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_start_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1402,8 +1398,7 @@ void hostif_ps_adhoc_set_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_ps_adhoc_set_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1446,8 +1441,7 @@ void hostif_infrastructure_set_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "ssid.size=%d \n", priv->reg.ssid.size);
 
 	/* make primitive */
-	pp = (struct hostif_infrastructure_set_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1513,8 +1507,7 @@ void hostif_infrastructure_set2_request(struct ks_wlan_private *priv)
 	DPRINTK(2, "ssid.size=%d \n", priv->reg.ssid.size);
 
 	/* make primitive */
-	pp = (struct hostif_infrastructure_set2_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1583,8 +1576,7 @@ void hostif_adhoc_set_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_adhoc_set_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1629,8 +1621,7 @@ void hostif_adhoc_set2_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_adhoc_set2_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1677,8 +1668,7 @@ void hostif_stop_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_stop_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1700,8 +1690,7 @@ void hostif_phy_information_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_phy_information_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1732,8 +1721,7 @@ void hostif_power_mngmt_request(struct ks_wlan_private *priv,
 	DPRINTK(3, "mode=%lu wake_up=%lu receiveDTIMs=%lu\n", mode, wake_up,
 		receiveDTIMs);
 	/* make primitive */
-	pp = (struct hostif_power_mngmt_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1759,8 +1747,7 @@ void hostif_sleep_request(struct ks_wlan_private *priv, unsigned long mode)
 
 	if (mode == SLP_SLEEP) {
 		/* make primitive */
-		pp = (struct hostif_sleep_request_t *)
-		    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+		pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 		if (!pp) {
 			DPRINTK(3, "allocate memory failed..\n");
 			return;
@@ -1793,8 +1780,7 @@ void hostif_bss_scan_request(struct ks_wlan_private *priv,
 
 	DPRINTK(2, "\n");
 	/* make primitive */
-	pp = (struct hostif_bss_scan_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1850,8 +1836,7 @@ void hostif_mic_failure_request(struct ks_wlan_private *priv,
 
 	DPRINTK(3, "count=%d :: timer=%d\n", failure_count, timer);
 	/* make primitive */
-	pp = (struct hostif_mic_failure_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
-- 
2.7.4


