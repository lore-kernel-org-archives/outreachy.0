X-GM-THRID: 6806516278512058368
X-Received: by 2002:a05:6402:22c7:: with SMTP id dm7mr11553675edb.283.1584765569140;
        Fri, 20 Mar 2020 21:39:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:11c2:: with SMTP id va2ls4397668ejb.6.gmail; Fri, 20
 Mar 2020 21:39:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsvTmPjmzrg/vdytjBKbREPM0QvgYB4ry3YtNCUa7KFpd3GBnb9AIxZ3jQorx++sUy9H60B
X-Received: by 2002:a17:906:f0c2:: with SMTP id dk2mr11581345ejb.328.1584765568075;
        Fri, 20 Mar 2020 21:39:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584765568; cv=none;
        d=google.com; s=arc-20160816;
        b=GiNv7iqP5l6sFgHPgzgiUDPCcTjl19khb60Q9k3F/Lki67MGXVInIsh6hXcrg3MU+7
         0YAJvvdSrf5i7IIcSL01FZA/goC1EHrvSVZlRU+E0lD5wQXf//cd2NRuiz7KBB33eMHj
         fU2bZ4lH/DK5xyxzpQz6aSEY2VYJa4lYJP+tKN6DdliXzx3qUgibO/VhwTBIfRchiCBV
         GXk2VZBsnTF+x9zg1KMrI2FH/LrpWyPv/q3etMHtCqAt+eBZqUIlN4MBqksFAWqF6PZ9
         PplkfgX75Updir5MrgP5B+/+Oyw1+dS6QbVwsBz+v500crdHL5oI58mndqpMVncb+JqV
         6O+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=/qBbczJ4rJFlsONP/wOf28naybE8TBDvnq5nEk7PvGE=;
        b=S7WiTRDtXPu3CnDCU2oHaCTYxRkdddky9piG6WQUo6F9R5kFsDV9baLIHEVNqpyppI
         gYBAqVmgW6Y2ee2sb88ZiojQM1L7t4Uf1tnGU9k/5KTsq2YnLrICYffzWv38HGYEUjJC
         mE2DRGh9gxOuTMmEIeX/d6gVwb1Wu6sMxqLZUcGFT2nK4daAHNFuC1OXXRV6ZaCSueCD
         M3l/JhWE4o3Fkk1lRGgInRfcF1Oe2QY/KVno03lvWM4nEeE094Cwp2ukduyrfJQON98J
         z1dC7EQV8c/RJUeXxQQQyLqmBoG91XWiGx0rLmbMOVhAzTeBFvgcwd6T+iuebrGglH/E
         4PSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id k14si142930ejb.1.2020.03.20.21.39.27
        for <outreachy-kernel@googlegroups.com>;
        Fri, 20 Mar 2020 21:39:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 24249 invoked from network); 21 Mar 2020 04:39:26 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.250.241)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 21 Mar 2020 04:39:26 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 1/3] staging: rtl8723bs: os_dep: Remove commented out code lines
Date: Sat, 21 Mar 2020 10:08:57 +0530
Message-Id: <a62d2fbb77990210b939a5ec99ee27cfa5749a09.1584764104.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584764104.git.vkor@vkten.in>
References: <cover.1584764104.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove multiple commented out code lines.
Remove blank lines next to them.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index a6491f163272..271b680e4388 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -109,11 +109,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 			struct sta_priv *pstapriv = &padapter->stapriv;
 			int bmcast = IS_MCAST(pattrib->dst);
 
-			/* DBG_871X("bmcast =%d\n", bmcast); */
-
 			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
-				/* DBG_871X("not ap psta =%p, addr =%pM\n", psta, pattrib->dst); */
-
 				if (bmcast) {
 					psta = rtw_get_bcmc_stainfo(padapter);
 					pskb2 = rtw_skb_clone(pkt);
@@ -123,9 +119,6 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 
 				if (psta) {
 					struct net_device *pnetdev = (struct net_device*)padapter->pnetdev;
-
-					/* DBG_871X("directly forwarding to the rtw_xmit_entry\n"); */
-
 					/* skb->ip_summed = CHECKSUM_NONE; */
 					pkt->dev = pnetdev;
 					skb_set_queue_mapping(pkt, rtw_recv_select_queue(pkt));
@@ -234,14 +227,10 @@ static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *prec
 		if (rx_pid == psta->pid) {
 			int i;
 			u16 len = *(u16*)(skb->data+ETH_HLEN+2);
-			/* u16 ctrl_type = *(u16*)(skb->data+ETH_HLEN+4); */
-
-			/* DBG_871X("eth, RC: len = 0x%x, ctrl_type = 0x%x\n", len, ctrl_type); */
 			DBG_871X("eth, RC: len = 0x%x\n", len);
 
 			for (i = 0; i < len; i++)
 				DBG_871X("0x%x\n", *(skb->data+ETH_HLEN+4+i));
-				/* DBG_871X("0x%x\n", *(skb->data+ETH_HLEN+6+i)); */
 
 			DBG_871X("eth, RC-end\n");
 		}
-- 
2.20.1


