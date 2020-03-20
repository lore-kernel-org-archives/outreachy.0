X-GM-THRID: 6806100951859986432
X-Received: by 2002:a7b:cb83:: with SMTP id m3mr7416716wmi.52.1584668878251;
        Thu, 19 Mar 2020 18:47:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c771:: with SMTP id x17ls2154160wmk.2.canary-gmail; Thu,
 19 Mar 2020 18:47:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuUhITGt0HCwgQmIBPlFdYpL9bSqvbsJiqLn5uQJj8DS4jgR/UHo9jOTkBc2VZKxcNzqYcj
X-Received: by 2002:a7b:c92e:: with SMTP id h14mr7276306wml.90.1584668876753;
        Thu, 19 Mar 2020 18:47:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584668876; cv=none;
        d=google.com; s=arc-20160816;
        b=nP64Ry/bnjwjQZgGWCz6r5nfECfAD0xWJt205j5SlgbfcL04ailvd5+dnoZ47TEOlW
         S/hkUKDtE9FwpYOMrWaCqZdlQ+5Egt9qukYN/4mgzNsMw+R/JOcJGvy9J/5VjytjzmO3
         8B8Crlfny9Zx4CZUKfRaRNaO8l+uxWpVS51lKMRGI1JlNaXxK2mgZxhmuYxi7t7nh+Qz
         BVLXvKj0KMQRHyq5OrXmYsG2CbU+1zGTkOLa79Mc+K50p/AhE5SU7NJtypVjMBbsAoHO
         6/FxTqQZ/xHCshvKhNZLgNBpLnDGgxFc/9H9gxIxHjVUXYrJKKqKhUW6y2wvziNkPVNf
         NMaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=FxiHJzGo516xefENnZkYDB40rvFLUeFJ6hwZ5kTAMiI=;
        b=0aOSs4pX1Vmr8BmwHMpfNbq+xpkoU/PyJ0gr+JhZK4lewabZghCuOlB3fYd28qojvw
         XiTMzQ1pfBlnk9NUJAGo0DPwXLzJWwjWfb1EYV4qeQ5Qv/Vq4+WQepsaLxmbWejcJLYw
         nr7X10EjzozUJBCpj4Op39FW75ZfecfvU4Fa8zV5A8I/5mAT+Xn1yqfuOmJiElR93DfS
         F361SzzvFuzhi6SPR3esQPqDiwpXjIzJNawwNT92PWLI5jU5NP8KSl7vf9IkswKW04zT
         fIF7jsj7vYxbIVwA90HksSAko2rvehtkVudi/ZtFJCmsOSqJ+Ge7W2DPeMH8k/US6oaJ
         G93A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id e12si160354wru.1.2020.03.19.18.47.56
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 18:47:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 3261 invoked from network); 20 Mar 2020 01:47:55 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.188.29)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 20 Mar 2020 01:47:55 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/2] staging: rtl8723bs: os_dep: Remove whitespace characters in code line
Date: Fri, 20 Mar 2020 07:17:30 +0530
Message-Id: <7cf2a33375608b6c00713ba55234c9686af499a4.1584668433.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584668433.git.vkor@vkten.in>
References: <cover.1584668433.git.vkor@vkten.in>
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


