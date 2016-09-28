X-GM-THRID: 6335483864335515648
X-Received: by 10.28.221.9 with SMTP id u9mr712805wmg.2.1475094785331;
        Wed, 28 Sep 2016 13:33:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.80 with SMTP id g77ls167445ljg.40.gmail; Wed, 28 Sep
 2016 13:33:04 -0700 (PDT)
X-Received: by 10.46.0.196 with SMTP id e65mr2031757lji.25.1475094784294;
        Wed, 28 Sep 2016 13:33:04 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id c13si1534681wme.3.2016.09.28.13.33.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 13:33:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id b184so7657205wma.3
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 13:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DfKdM3MPM0hsUyFcpJHhK2ugqqzBLE1+ji/N4q/y0H8=;
        b=zRw+sC8+c8jWIu1GC09BFTh5LQlE0hSOcgEsv4TuHUfQr6ToZT2Eso3FEkx48A+ESh
         mPsIhQTqm96RFc5ea3D7QGHDoYEc3dk5KUsj0YTbp25B8YE9F2LVf+D517zlEMcicqik
         CZCONL2MLuXOM2a4NJI8zqSGR2IU2D8H8ZdWzg0cIDTUyIVI/kKJ8Qa4aoBzyuuUJDrI
         uWcvm5Bd7fBO4+eTxdNLHYJyl+QnA7AefoF1KOlbj24dm1udV64PqSGOPevgulcmdILY
         h7vAqyGShNXlo+iQ7f+KvDzWkGoN0a+ce+ifa3thnAiF1kpnPMjIvmlTZFPPrE0Z6/Ra
         UERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DfKdM3MPM0hsUyFcpJHhK2ugqqzBLE1+ji/N4q/y0H8=;
        b=bHWv7XlYQpRSSw9bm8i6fDtzJ/gNXG8PD0itGKs9/TacB1AvEFplqcBqBWpHOEg+9h
         Y90Ny+DuvA2VITQHNhxel2q96nRqNOXZyhbnMbF92UfXcxKefw3n959VInnpUgAdpR8H
         nCgAuOZGygpjE2T+DdB5RsBkfzGa3ZGiAh4y8Vi4sUzgWL98pDdfiAOVP6KVPjc+5RqY
         NBSOA4PXzcX94ciT9YnfAYawVlg52qqbP2AzyZDRlsPYvZex4gORotZIKvdV0Shgb4Ej
         SIGf4Lgn9VS/9iTuWAFwpGLPia/pUTb4zYGYPCQnfmNaob6OsCvwiA/rwj+zCnYt69i+
         yeng==
X-Gm-Message-State: AE9vXwOf3OAzEvCFjxqAMOl/IlYDVRhFz/NykAQd76l1+cJ82sUfOcu+1fjVn7ij7YO3cA==
X-Received: by 10.194.202.166 with SMTP id kj6mr29000379wjc.72.1475094784062;
        Wed, 28 Sep 2016 13:33:04 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id f15sm10648681wmf.8.2016.09.28.13.33.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 13:33:03 -0700 (PDT)
Date: Wed, 28 Sep 2016 23:33:02 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: core: rtw_xmit: Move constant of the
 right side
Message-ID: <20160928203302.GA19044@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Constants should be on the right side of comparisons.

Issue found by checkpatch.pl script.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 1d2817b..1392899 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -451,14 +451,14 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 
 	pattrib->pktlen = pktfile.pkt_len;
 
-	if (ETH_P_IP == pattrib->ether_type) {
+	if (pattrib->ether_type == ETH_P_IP) {
 		/*  The following is for DHCP and ARP packet, we use cck1M to tx these packets and let LPS awake some time */
 		/*  to prevent DHCP protocol fail */
 		u8 tmp[24];
 		_rtw_pktfile_read(&pktfile, &tmp[0], 24);
 		pattrib->dhcp_pkt = 0;
 		if (pktfile.pkt_len > 282) {/* MINIMUM_DHCP_PACKET_SIZE) { */
-			if (ETH_P_IP == pattrib->ether_type) {/*  IP header */
+			if (pattrib->ether_type == ETH_P_IP) {/*  IP header */
 				if (((tmp[21] == 68) && (tmp[23] == 67)) ||
 				    ((tmp[21] == 67) && (tmp[23] == 68))) {
 					/*  68 : UDP BOOTP client */
@@ -469,7 +469,7 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 				}
 			}
 		}
-	} else if (0x888e == pattrib->ether_type) {
+	} else if (pattrib->ether_type == 0x888e) {
 		DBG_88E_LEVEL(_drv_info_, "send eapol packet\n");
 	}
 
-- 
2.7.4


