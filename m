X-GM-THRID: 6806516278512058368
X-Received: by 2002:a05:6000:1212:: with SMTP id e18mr16049557wrx.371.1584765574472;
        Fri, 20 Mar 2020 21:39:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:230e:: with SMTP id j14ls3987435wmj.0.canary-gmail; Fri,
 20 Mar 2020 21:39:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuTCGNohl1BAH8M4BnTiUtsXEpLjGF6Ea60J+A+8jL0Q/5PSz9DPTAM5PpKPnsjdAJTdy2P
X-Received: by 2002:a05:600c:da:: with SMTP id u26mr7531790wmm.117.1584765573199;
        Fri, 20 Mar 2020 21:39:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584765573; cv=none;
        d=google.com; s=arc-20160816;
        b=a+rqdxhkUfIk4fbpBGMX3MWuXeJt4Vlo4JsmT4XJPgmjULcwDszwYq0MlwmCvHAy/X
         5v640PA0LK8punmaUHHfLIbBKq7DeLZJaSsuoo4NM00aKKuZo/yFcGzw6lDpioKJxcVw
         PCqizVGb5n3JH+IgnnSpLD6M6N5K1T3ty1A6laJ/o+KEKLB9O/Nj8SJ4oPSqbG8T+jTN
         IlQLLafW3AZrUpfQlVuUXeyz5OKUHWcFWopWHcrp0DM0nxgS4cimHrfibm9a8LrK7vU1
         SbxtWJc6/mWP0NtmmpR481V8nTY8qdLdLhHV7AQd2OIlYKLunXYeFlpcfxQbi8huc51Z
         PrKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=HtgUr4DgavSJFL82xSrMbnxYC6PJwFk4IkvinzKTUFo=;
        b=Mu2csCT0EMQ3nOOW0NAWHzpU7kFIt5zYZZHWIcV4yp14lnmQD7ouSz1qXx1t37mFGV
         4ThAa7GAB41R/VgoC8Nk4hcmd3MXppmbVjvFzPdFM95k7OJRx0p2LqNmvTt/Oycm5kpi
         Lqyz7cUqD7LD60O9Brf00CEmHrkmCAdna2XvhguVnPotTnJlj6fJU9olw8vgwpZz+qh7
         Qtl7QPsDRAp99vCp00u4G4hwcUohdjX2Vk7jjjaWtgv1KvwfRP2zJz//aRm/roZ75x0x
         e2NsJ+LPQ+ht2wthySHiuR1ShzXOHIl39LA/6YKSD8RBbkE7spb9RRquhhy0kd4kfugT
         Z0fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id y201si552451wmc.0.2020.03.20.21.39.33
        for <outreachy-kernel@googlegroups.com>;
        Fri, 20 Mar 2020 21:39:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 24261 invoked from network); 21 Mar 2020 04:39:31 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.250.241)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 21 Mar 2020 04:39:31 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 2/3] staging: rtl8723bs: os_dep: Correct long line comments
Date: Sat, 21 Mar 2020 10:08:58 +0530
Message-Id: <16399fc057c6dd1c78e77ddd3b3224f4b2e37da5.1584764104.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584764104.git.vkor@vkten.in>
References: <cover.1584764104.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct long line comments to respect 80 character per
line limit.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v4:
 - Drop commented out code lines as not longlines
Changes in v3:
 - Remove extra ' ' character before comment
Changes in v2:
 - Remove an extra blank line added by error
---
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 271b680e4388..9e1b42852500 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -35,7 +35,8 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
 
 	for (i = 0; i < NR_RECVFRAME; i++) {
 		if (precvframe->u.hdr.pkt) {
-			dev_kfree_skb_any(precvframe->u.hdr.pkt);/* free skb by driver */
+			/* free skb by driver */
+			dev_kfree_skb_any(precvframe->u.hdr.pkt);
 			precvframe->u.hdr.pkt = NULL;
 		}
 		precvframe++;
@@ -80,7 +81,10 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
 		((!memcmp(sub_skb->data, rtw_rfc1042_header, SNAP_SIZE) &&
 		  eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
 		 !memcmp(sub_skb->data, rtw_bridge_tunnel_header, SNAP_SIZE))) {
-		/* remove RFC1042 or Bridge-Tunnel encapsulation and replace EtherType */
+		/*
+		 * remove RFC1042 or Bridge-Tunnel encapsulation and replace
+		 * EtherType
+		 */
 		skb_pull(sub_skb, SNAP_SIZE);
 		memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src, ETH_ALEN);
 		memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst, ETH_ALEN);
@@ -280,7 +284,8 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 
 	rtw_os_recv_indicate_pkt(padapter, skb, pattrib);
 
-	precv_frame->u.hdr.pkt = NULL; /*  pointers to NULL before rtw_free_recvframe() */
+	/* pointers to NULL before rtw_free_recvframe() */
+	precv_frame->u.hdr.pkt = NULL;
 
 	rtw_free_recvframe(precv_frame, pfree_recv_queue);
 
-- 
2.20.1


