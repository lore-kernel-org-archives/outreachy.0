X-GM-THRID: 6254907703797219328
X-Received: by 10.66.139.138 with SMTP id qy10mr37707910pab.46.1456334186245;
        Wed, 24 Feb 2016 09:16:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.195 with SMTP id l3ls160095igx.6.gmail; Wed, 24 Feb 2016
 09:16:25 -0800 (PST)
X-Received: by 10.66.150.68 with SMTP id ug4mr36966132pab.33.1456334185391;
        Wed, 24 Feb 2016 09:16:25 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ui7si551559pab.0.2016.02.24.09.16.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 09:16:25 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fl4so15815452pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 09:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jwQorfJ1hodDtbVKZCvQwwK9TCKDTalXRaRyH4QR5bI=;
        b=t165buYyBLEci1gigrRBXM0w80NBTvOChLGNpQI3OuRBzEsBf0xFsPBEdypq3hC79b
         vs5WQW2J+VSmMfAi7Mhyt1X3vH/LYJ6OzOQj+7omVSYp4BUIwRk+I8+LNXy9EI12o4F+
         nHin0BJX6G5uRXrobHYZu9Xeu/8H07oAdEN9iDPdizKUK3dftjBGo4H6n9Xu+dS/KFWy
         HxFk867EoVRdBCQiMmX8g8tsBhlm+3ObLFEOStGv/slNvhKT+hWZaPSzOPbnBIlLG6vL
         yF3VSgpnaeyDipU4zijes2zakY6XADegoI8972nFuAm5Kcr8nY6SNC/ExFkG5T0GD2IV
         iGzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jwQorfJ1hodDtbVKZCvQwwK9TCKDTalXRaRyH4QR5bI=;
        b=RKAlrD2pMfXBuTHUh5bZ1iATmqNW7D8ljNYDz9a6gTsYY1hu8plF1Hyvv3dKQu04Tb
         2sKrKxHbjx8uNN5PxZFHaooowp0IOBZA9ezKNVwFNWmP5DbyYPYSJlpQM7TjTeap6Bk4
         Q+zRqWRtJ2osIqDN+S41Er8dB+Wb3cDU2kVWRZ3c//LSUJDFc0PVUxrk5tvCMDWJMCCo
         LDHOnpPhwQCDzMye/8mdMP6Y2i2QeeO7IEo4Jc70BrdBRcg158gq1keRDpt/kdb4265s
         TB9ubkyIzVfmZYSSLAnAjpOfasQ8skaaiVad+IeYlrdqmaUhtknLD27mIW8VsB+55u0B
         RuKw==
X-Gm-Message-State: AG10YOTwgevnf2xQyRVte1TUeLg8Jqxqr9KvnG+1b9sfc6Ep0c0ghg9WQU7uRTosLXsW7A==
X-Received: by 10.66.62.132 with SMTP id y4mr54998704par.55.1456334185211;
        Wed, 24 Feb 2016 09:16:25 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.129.85])
        by smtp.gmail.com with ESMTPSA id fa3sm6350950pab.45.2016.02.24.09.16.19
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 09:16:24 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 24 Feb 2016 22:46:12 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Remove debug messages
Date: Wed, 24 Feb 2016 22:46:00 +0530
Message-Id: <1456334160-6675-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

As kmalloc generates a backtrace on failure so there is no need of
these debug messages when kmalloc fails. Also remove unwanted {} around if
block after removal of these messages.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 879c413..b38ab3a 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -460,10 +460,8 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 	//	if (memcmp(entry->mac, mac, ETH_ALEN)){
 		if (p == &ieee->ibss_mac_hash[index]) {
 			entry = kmalloc(sizeof(struct ieee_ibss_seq), GFP_ATOMIC);
-			if (!entry) {
-				printk(KERN_WARNING "Cannot malloc new mac entry\n");
+			if (!entry)
 				return 0;
-			}
 			memcpy(entry->mac, mac, ETH_ALEN);
 			entry->seq_num[tid] = seq;
 			entry->frag_num[tid] = frag;
@@ -1290,10 +1288,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	//ethertype = (payload[6] << 8) | payload[7];
 	rxb = kmalloc(sizeof(struct ieee80211_rxb), GFP_ATOMIC);
 	if (!rxb)
-	{
-		IEEE80211_DEBUG(IEEE80211_DL_ERR,"%s(): kmalloc rxb error\n",__func__);
 		goto rx_dropped;
-	}
 	/* to parse amsdu packets */
 	/* qos data packets & reserved bit is 1 */
 	if (parse_subframe(skb, rx_stats, rxb, src, dst) == 0) {
-- 
1.9.1


