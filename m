X-GM-THRID: 6806098614327181312
X-Received: by 2002:a19:550c:: with SMTP id n12mr3730374lfe.11.1584668330924;
        Thu, 19 Mar 2020 18:38:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8541:: with SMTP id u1ls967200ljj.10.gmail; Thu, 19 Mar
 2020 18:38:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vusGRNbCulWEAggDvZrU0XAW6FKwdvDTiHuGmchlHdcTl3F4wNLOgWwINMXcC57m6yFfUdr
X-Received: by 2002:a2e:9d84:: with SMTP id c4mr3892702ljj.51.1584668329570;
        Thu, 19 Mar 2020 18:38:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584668329; cv=none;
        d=google.com; s=arc-20160816;
        b=iLwgn1GI1dYqhdL3ypVctFSt/XQ+yhF2ikobA4deoJqco/GhpKO+YVFnupJel0uP4y
         nkUZicunaZnRatjRROAxErxthTw3OXIm0snqd92SzCW4UDMOy4a5JVKVhrcd5Nk75F1i
         wsC0NwG2tEGF8QJWBE0MuqR36CSmmlGwkDoTOWyqZPgIUIGS0RSu5+e8w/hMUmbm4h5X
         jpD/qeDaPij1Yp9D9Jgg7FTiEqpmUvebublwi3juW8Oo/nZfb4x0Pyy48yOlANQYUcU/
         daZx4ypKCRqMSD79YpbIbOky55o+8KPxTHekViMHeh9RDOuqL8te41ucsZ/Sisk9Ouyx
         boMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=FxiHJzGo516xefENnZkYDB40rvFLUeFJ6hwZ5kTAMiI=;
        b=aqxBx9AmTjmc2jdsybZGUPerD1PEHiDbFGqtfC31RTpvWQf0Ni4r7AS5vk2XZA1vOV
         PRfyjNsofeIbRKrcvLmzZS301dOuINW0UoHAdXeKtXTo3gRTx1dsRMXuX0Y5QYHceaEk
         IFkWCkyj9PcIj3leEsWHOyl1LALVeV2BAR3HTuVnUSc4LhZ853PTk7Cta3mnBR3G1HRf
         3D7yKkKc0PVjjs1AbCDaXlFO2R6s9j3IVmsfN/qMFat5XdT33v6heVvTj5etS+IW/dUv
         hFUmp/GFo8ZXe08DQ89ScvhoRhhmrB87dyfqoWLoGcEAp1EYFVa2grA1pdJbMtLB0nGC
         j3GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id m11si141075ljj.2.2020.03.19.18.38.49
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 18:38:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 3127 invoked from network); 20 Mar 2020 01:38:48 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.188.29)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 20 Mar 2020 01:38:48 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] staging: rtl8723bs: os_dep: Remove whitespace characters in code line
Date: Fri, 20 Mar 2020 07:08:23 +0530
Message-Id: <7cf2a33375608b6c00713ba55234c9686af499a4.1584667932.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584667932.git.vkor@vkten.in>
References: <cover.1584667932.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove five leading whitespace characters in code line.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 87090af7d776..1502477e48bb 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -79,8 +79,8 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
 
 	if (sub_skb->len >= 8 &&
 		((!memcmp(sub_skb->data, rtw_rfc1042_header, SNAP_SIZE) &&
-		  eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
-		 !memcmp(sub_skb->data, rtw_bridge_tunnel_header, SNAP_SIZE))) {
+		eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
+		!memcmp(sub_skb->data, rtw_bridge_tunnel_header, SNAP_SIZE))) {
 		/*
 		 * remove RFC1042 or Bridge-Tunnel encapsulation and replace
 		 * EtherType
@@ -315,11 +315,11 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 
 _recv_indicatepkt_drop:
 
-	 /* enqueue back to free_recv_queue */
-	 rtw_free_recvframe(precv_frame, pfree_recv_queue);
+	/* enqueue back to free_recv_queue */
+	rtw_free_recvframe(precv_frame, pfree_recv_queue);
 
-	 DBG_COUNTER(padapter->rx_logs.os_indicate_err);
-	 return _FAIL;
+	DBG_COUNTER(padapter->rx_logs.os_indicate_err);
+	return _FAIL;
 }
 
 void rtw_init_recv_timer(struct recv_reorder_ctrl *preorder_ctrl)
-- 
2.20.1


