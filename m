X-GM-THRID: 6332397835299848192
X-Received: by 10.28.197.65 with SMTP id v62mr205353wmf.6.1474376263716;
        Tue, 20 Sep 2016 05:57:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.232.195 with SMTP id f64ls2201861wmi.5.gmail; Tue, 20 Sep
 2016 05:57:42 -0700 (PDT)
X-Received: by 10.28.29.13 with SMTP id d13mr208940wmd.19.1474376262850;
        Tue, 20 Sep 2016 05:57:42 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id p199si2531814wmd.1.2016.09.20.05.57.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 05:57:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id b184so3305105wma.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 05:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HfF3vcyVMOTmw7lDqhtiTzh7aVCqwMeysz9+zzOgGjY=;
        b=LGCVd0RVT/EFKiLSTfei2vLzTnaA6izDnQcdIEXHlcOIIszM1gYPSFU9rvEiQXQUrn
         vg0hTYybmAyera9TjFn0sO1fiO6HmYw7laLXs6SW6FSbnsIm/UDYFvYmnC7bqWgdCF5y
         1zKbWLXsY2otQIsaS+icOwIw5/+LwpRGykEvE5wGoGfS5+0kivsc1wUD47EIODUK/EXZ
         WMj28rD/w8E6EZ7Nz3Lx16DTOeuHwBTXeYco8Ifqdk798pTlQzFPXQlUhFqJ5fvyDS1f
         8PEhZ88MhD39HVbROEUybbamnHp9El3XDPXCaL3UiKCWW7in3vM5IkXKvsEOA+LhHUcd
         +LPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HfF3vcyVMOTmw7lDqhtiTzh7aVCqwMeysz9+zzOgGjY=;
        b=kuMErKR69stbAD+Xbw+LANDHeFYPIY1NoNZcJ0UzzYz+BeZSbs+5XwNRRVCvKliYzV
         1ZcyTKBbOBiJtsBmdoDSLZC7Cf57aKko00woRIsPccEn8qp+b+1wwF3UCklNPjicpIen
         CNiQVkLEAXiwNdFek2Y08oQCRqdiyT59lIYBAVQ1isuZV/lYceitJQRwf0cGzxBh2SZs
         1PqwGQPa76uyPv0+hUBFlWZZEx/1B+RiWk3YqxCgupfLVQ4sisGAAsSPyg4G84MqZenb
         tfceYHNiPP2eFh34Coiuzr/ZX60SZ6bLa5H5TJrZB3C4fzODPoBhKEv3kyf7uErOojV6
         +g+A==
X-Gm-Message-State: AE9vXwMCTZzXmvpT7AA1cs4ss77hJO7cuAJkFXeTfnuXoAMQAGLI+P+Y80K+2ifVBYXibA==
X-Received: by 10.28.43.129 with SMTP id r123mr3513250wmr.1.1474376262616;
        Tue, 20 Sep 2016 05:57:42 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id z12sm5073711wmz.11.2016.09.20.05.57.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 05:57:41 -0700 (PDT)
Date: Tue, 20 Sep 2016 15:57:40 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: hal: rtl8188e_cmd: Use ether_addr_copy()
 instead of memcpy()
Message-ID: <20160920125740.GA13784@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The checkpatch.pl found the warning:
WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
addresses are __aligned(2)

Checked if the the Ethernet addresses are __aligned(2) by using pahole
tool. The type of pwlanhdr is struct ieee80211_hdr and pahole shows that
addr1, addr2, and addr3 are aligned to u16.

struct ieee80211_hdr {
	__le16                     frame_control;        /*     0     2
*/
	__le16                     duration_id;          /*     2     2
*/
	u8                         addr1[6];             /*     4     6
*/
	u8                         addr2[6];             /*    10     6
*/
	u8                         addr3[6];             /*    16     6
*/
	__le16                     seq_ctrl;             /*    22     2
*/
	u8                         addr4[6];             /*    24     6
*/

	/* size: 30, cachelines: 1, members: 7 */
	/* last cacheline: 30 bytes */
};

Both eeprompriv from struct adapter and MacAddress from struct
wlan_bssid_ex have the offset multiple of sizeof(u16).

Also, the array bc_addr and the pointers: StaAddr, mac, and bssid,
start from an even offset.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c | 34 ++++++++++++++--------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
index 18f69b8..5bd47c8 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
@@ -232,9 +232,9 @@ static void ConstructBeacon(struct adapter *adapt, u8 *pframe, u32 *pLength)
 	fctrl = &pwlanhdr->frame_control;
 	*(fctrl) = 0;
 
-	memcpy(pwlanhdr->addr1, bc_addr, ETH_ALEN);
-	memcpy(pwlanhdr->addr2, myid(&(adapt->eeprompriv)), ETH_ALEN);
-	memcpy(pwlanhdr->addr3, cur_network->MacAddress, ETH_ALEN);
+	ether_addr_copy(pwlanhdr->addr1, bc_addr);
+	ether_addr_copy(pwlanhdr->addr2, myid(&(adapt->eeprompriv)));
+	ether_addr_copy(pwlanhdr->addr3, cur_network->MacAddress);
 
 	SetSeqNum(pwlanhdr, 0/*pmlmeext->mgnt_seq*/);
 	SetFrameSubType(pframe, WIFI_BEACON);
@@ -322,10 +322,10 @@ static void ConstructPSPoll(struct adapter *adapt, u8 *pframe, u32 *pLength)
 	SetDuration(pframe, (pmlmeinfo->aid | 0xc000));
 
 	/*  BSSID. */
-	memcpy(pwlanhdr->addr1, pnetwork->MacAddress, ETH_ALEN);
+	ether_addr_copy(pwlanhdr->addr1, pnetwork->MacAddress);
 
 	/*  TA. */
-	memcpy(pwlanhdr->addr2, myid(&(adapt->eeprompriv)), ETH_ALEN);
+	ether_addr_copy(pwlanhdr->addr2, myid(&(adapt->eeprompriv)));
 
 	*pLength = 16;
 }
@@ -357,21 +357,21 @@ static void ConstructNullFunctionData(struct adapter *adapt, u8 *pframe,
 	switch (cur_network->network.InfrastructureMode) {
 	case Ndis802_11Infrastructure:
 		SetToDs(fctrl);
-		memcpy(pwlanhdr->addr1, pnetwork->MacAddress, ETH_ALEN);
-		memcpy(pwlanhdr->addr2, myid(&(adapt->eeprompriv)), ETH_ALEN);
-		memcpy(pwlanhdr->addr3, StaAddr, ETH_ALEN);
+		ether_addr_copy(pwlanhdr->addr1, pnetwork->MacAddress);
+		ether_addr_copy(pwlanhdr->addr2, myid(&(adapt->eeprompriv)));
+		ether_addr_copy(pwlanhdr->addr3, StaAddr);
 		break;
 	case Ndis802_11APMode:
 		SetFrDs(fctrl);
-		memcpy(pwlanhdr->addr1, StaAddr, ETH_ALEN);
-		memcpy(pwlanhdr->addr2, pnetwork->MacAddress, ETH_ALEN);
-		memcpy(pwlanhdr->addr3, myid(&(adapt->eeprompriv)), ETH_ALEN);
+		ether_addr_copy(pwlanhdr->addr1, StaAddr);
+		ether_addr_copy(pwlanhdr->addr2, pnetwork->MacAddress);
+		ether_addr_copy(pwlanhdr->addr3, myid(&(adapt->eeprompriv)));
 		break;
 	case Ndis802_11IBSS:
 	default:
-		memcpy(pwlanhdr->addr1, StaAddr, ETH_ALEN);
-		memcpy(pwlanhdr->addr2, myid(&(adapt->eeprompriv)), ETH_ALEN);
-		memcpy(pwlanhdr->addr3, pnetwork->MacAddress, ETH_ALEN);
+		ether_addr_copy(pwlanhdr->addr1, StaAddr);
+		ether_addr_copy(pwlanhdr->addr2, myid(&(adapt->eeprompriv)));
+		ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
 		break;
 	}
 
@@ -413,9 +413,9 @@ static void ConstructProbeRsp(struct adapter *adapt, u8 *pframe, u32 *pLength, u
 
 	fctrl = &pwlanhdr->frame_control;
 	*(fctrl) = 0;
-	memcpy(pwlanhdr->addr1, StaAddr, ETH_ALEN);
-	memcpy(pwlanhdr->addr2, mac, ETH_ALEN);
-	memcpy(pwlanhdr->addr3, bssid, ETH_ALEN);
+	ether_addr_copy(pwlanhdr->addr1, StaAddr);
+	ether_addr_copy(pwlanhdr->addr2, mac);
+	ether_addr_copy(pwlanhdr->addr3, bssid);
 
 	SetSeqNum(pwlanhdr, 0);
 	SetFrameSubType(fctrl, WIFI_PROBERSP);
-- 
2.7.4


