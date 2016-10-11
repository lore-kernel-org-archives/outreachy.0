X-GM-THRID: 6340251719489814528
X-Received: by 10.129.166.21 with SMTP id d21mr1229615ywh.166.1476204888320;
        Tue, 11 Oct 2016 09:54:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.176.201 with SMTP id z192ls625059ioe.43.gmail; Tue, 11 Oct
 2016 09:54:45 -0700 (PDT)
X-Received: by 10.66.135.7 with SMTP id po7mr975718pab.102.1476204885239;
        Tue, 11 Oct 2016 09:54:45 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id p193si202922ywe.6.2016.10.11.09.54.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 09:54:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id z190so1863812qkc.3
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 09:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qqftMUZXcZs2ev60v2GG12gBD66iw0+tcvE9G7yCHqE=;
        b=JeNRu+HFNnKVmumUVgKKKNNVkaVFYYtQTsTylMkcJnbnuFkxtI3JGDZp2zuaJOhGV7
         GAT661sAPesm1rd0J6hHmcGxltNlYRMABxf9Q3Th3joU8EJlTnwTEjymQiUYf3sj7f60
         beyTNSjUDTrhJtWCzTCeK1Gb9tJ24WQVblDcPj43HWvsOhhIZIpDxPYOXv18+ccLmrXg
         9EpSlKYSvlRR3OYB3pdvjvR4s6d9Wp25meIjdSHLcVxZGzvaFYnFRYqLSPOaUjDBKI0F
         X5SFEg5KXxKMLPpvNJFwdaMna9ihon64FW+0c6sevo4RhST+qVk3eI73R5BDWDuTZQCQ
         H7Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qqftMUZXcZs2ev60v2GG12gBD66iw0+tcvE9G7yCHqE=;
        b=ZBo3s6C5ftrUGKIsMFxOu2XqlBWaZByhaGLBufg3eSM4HDIIVx39wRRKpUbFg8/SG2
         Ir4agk2kcdjz1d7etIOs0HqYYCRvFcsLgTV8wEEHvSwHzdRR59KWb/JOCtnj5osGcuN+
         NNfVDvBlv9+bnIAkndjBSdz0H4QfzERwV6Ko9yDpJG8oL6FDyvy9lU8BcFY3LGZdDSQx
         7/kBv1YGOt/LSSAYpc+WtvJNWLk+GVmbDg63v0ew1mJ7tZcI/aT3K2X3SsOZkAc48dgx
         4+MVxPwIkkwdYdSg7h4WXKh9ic1o0IE9URi2fJ7ZZLgi5jt9eYm2JvF+DinuVdgBB6KC
         Wq1Q==
X-Gm-Message-State: AA6/9Rl0aLF1ttLMnETz3fz6TYgmK9WRPtYQknxgg4RTeh8brPLRk4Lao+vwt8b+V24P0Q==
X-Received: by 10.194.117.135 with SMTP id ke7mr6417803wjb.46.1476204883905;
        Tue, 11 Oct 2016 09:54:43 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id g17sm7765425wjs.38.2016.10.11.09.54.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Oct 2016 09:54:43 -0700 (PDT)
Date: Tue, 11 Oct 2016 19:54:42 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: Replace memcpy by ether_addr_copy
Message-ID: <20161011165442.GA2384@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following checkpatch.pl warning: Prefer

ether_addr_copy() over memcpy() if the Ethernet addresses are
__aligned(2)

According to ether_addr_copy() description and functionality, all
Ethernet addresses should align to the u16 datatype.

Here is the output of pahole for the relevant datastructures:
struct del_sta {
	u8                         mac_addr[6];          /*     0     6 */

	/* size: 6, cachelines: 1, members: 1 */
	/* last cacheline: 6 bytes */
};

struct sta_inactive_t {
	u8                         mac[6];               /*     0     6 */

	/* size: 6, cachelines: 1, members: 1 */
	/* last cacheline: 6 bytes */
};

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 78f5613..c636982 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1932,7 +1932,7 @@ static s32 Handle_Get_InActiveTime(struct wilc_vif *vif,
 	wid.val = kmalloc(wid.size, GFP_KERNEL);
 
 	stamac = wid.val;
-	memcpy(stamac, strHostIfStaInactiveT->mac, ETH_ALEN);
+	ether_addr_copy(stamac, strHostIfStaInactiveT->mac);
 
 	result = wilc_send_config_pkt(vif, SET_CFG, &wid, 1,
 				      wilc_get_vif_idx(vif));
@@ -2168,7 +2168,7 @@ static void Handle_DelStation(struct wilc_vif *vif,
 
 	pu8CurrByte = wid.val;
 
-	memcpy(pu8CurrByte, pstrDelStaParam->mac_addr, ETH_ALEN);
+	ether_addr_copy(pu8CurrByte, pstrDelStaParam->mac_addr);
 
 	result = wilc_send_config_pkt(vif, SET_CFG, &wid, 1,
 				      wilc_get_vif_idx(vif));
-- 
2.7.4


