X-GM-THRID: 6332397835299848192
X-Received: by 10.28.193.78 with SMTP id r75mr56547wmf.3.1474611269661;
        Thu, 22 Sep 2016 23:14:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.71.16 with SMTP id u16ls141050wma.12.gmail; Thu, 22 Sep
 2016 23:14:29 -0700 (PDT)
X-Received: by 10.28.35.203 with SMTP id j194mr55850wmj.18.1474611268968;
        Thu, 22 Sep 2016 23:14:28 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id y6si130910wmg.0.2016.09.22.23.14.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 23:14:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id w84so985404wmg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 23:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JXp5GEwt05ra1Uh00cQWDdVm9VAaMlokMFjILSB1eBc=;
        b=kwp/My75Ul9PohXL4/HhLVda7wYzDOTY16kQ3CsCQ8G5FYNYYOa/2ARE8V/G4Cakvk
         hmZZrvDaK97/lN2hQWp5hMOMlrpmQRn4uoMeubgWUeDb5Wi6CbrkzWgOadlaCqUGgggc
         uLGfF0erCOgnuY23VCS75cegUKsAHKc8D2ApILrBLCNrRMtEmngapd/o/U8Cc6X5wr4O
         LvuEaNhrgDr0kEmSl2YSdDDpoTzNwdxkaNmDb9b9uoK/mT5IPArUN1izj5bsPjVj/GGA
         Kvx/qCBEAk+dDNn7y+kojhGipF9eHSclHDAQPnj0ONqA/cVk0Os3xzTBMJwsUx/Wld2R
         z+xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JXp5GEwt05ra1Uh00cQWDdVm9VAaMlokMFjILSB1eBc=;
        b=nJHCB/mdEYi3tPCyudqKNfl6E1EA0VaVzrRTeDIqQbWubmFQxL0cY3QPlkqV5IW6dM
         nvV0LjJZHnIuYxHl1QrbHwsKcXE6kAKMlrrqu7Lc9ibbyVMJOCgl4ordBcJcvQ6HfXr4
         eGXt9rHyP4TPuF+ug0linWcfLR2/uvMnkRbs9ndZ8fK8kM7/oLwNZiGwTaamHGqyctO0
         1qjX16unSU6/3HKWtnGOGAJ3HLbaLqq/MexF3RzNC5cTBTbKqOZEHchAnVPZ23GeQ0lX
         5Z+0VMCx3qqeAchpqUYE2+L6tZJNuYC4Loo4AV6BufC+diuduQmYSipuU5uIjrZOKbrc
         SVuQ==
X-Gm-Message-State: AA6/9RmV9xXJW45aEWz0ojaS9AMGBqBRJSy2I2D11txgRjCVWtRgKr2q4NXxZnob71BccQ==
X-Received: by 10.28.48.71 with SMTP id w68mr1117354wmw.4.1474611268731;
        Thu, 22 Sep 2016 23:14:28 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id r194sm1375509wmf.22.2016.09.22.23.14.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Sep 2016 23:14:27 -0700 (PDT)
Date: Fri, 23 Sep 2016 09:14:27 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8188eu: hal: rtl8188e_cmd: Use
 ether_addr_copy() instead of memcpy()
Message-ID: <20160923061427.GA3996@fireworks>
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
        __le16                     frame_control;        /*     0     2 */
        __le16                     duration_id;          /*     2     2 */
        u8                         addr1[6];             /*     4     6 */
        u8                         addr2[6];             /*    10     6 */
        u8                         addr3[6];             /*    16     6 */
        __le16                     seq_ctrl;             /*    22     2 */
        u8                         addr4[6];             /*    24     6 */

        /* size: 30, cachelines: 1, members: 7 */
        /* last cacheline: 30 bytes */
};

Both eeprompriv from struct adapter and MacAddress from struct
wlan_bssid_ex have the offset multiple of sizeof(u16).

Also, the array bc_addr and the pointers: StaAddr, mac, and bssid,
start from an even offset.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
Changes in v2:
        - Do not break the comments in the commit message

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


