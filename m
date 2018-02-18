X-GM-THRID: 6523773996804079616
X-Received: by 10.25.19.24 with SMTP id j24mr853266lfi.12.1518972190965;
        Sun, 18 Feb 2018 08:43:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.26.13 with SMTP id a13ls606016lfa.5.gmail; Sun, 18 Feb 2018
 08:43:08 -0800 (PST)
X-Google-Smtp-Source: AH8x227+3AZc93IrMPM+aYKCYx8Z6yWxm+EdN3IMZgDBeWG3IypNhpbmlXSkqYDQdvlu/3FfwxAh
X-Received: by 10.25.19.24 with SMTP id j24mr853261lfi.12.1518972188489;
        Sun, 18 Feb 2018 08:43:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518972188; cv=none;
        d=google.com; s=arc-20160816;
        b=Syam4RMbgRLcr+Kvr/UW4S7rK9II+8Q7stnmGJa+xy0M9ZAFbv5dQGE2HG7KE5ajys
         5CksESQpkWklpceV/P8otJ0olfXeTA4vWXbCroROmHh8sueutl2F7PjhDosfKKoQtAG/
         /0XDYqUDPYiyTdKipOmSYIEM/d32QxrXRnJcH2p/03inIWCB2jWyvk77fLN7fZketQSx
         PZy6meAmFFEgUazyRBVeskQAOlyn/pMHIFrWWWo0LPak6A4MNvwTKCOjKwEti9Du42ki
         BiRgZo4019UIEoix5zINsKZBrpGJ6rh1Ib/DUy7qSYKu8Ku+f/kY6PsNBbhbL+lFPloR
         tzsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=kikNw+b8xHLzPN3CJ11zIoMl5RQAMbVO1QsH72ju/GA=;
        b=pVhYwBqnCEBBswE9wVbmeYLDdrkktWmX7pmV8C3LDKHqtvgf+1xjKpm0sLjp0ZPsuZ
         EslWF0v647/dDaCTEHYXd/QJrcEYt8LYHFbVY6GCfGppdtRRBUogGLWqI55DAe0coacF
         PFYPO33Iu7Q8HoFiunPYNXrQ0n+x0kjtkP7xGwHD3LG23UtkqQgfbUG365CfRl0OgYlQ
         MbK3LqAl3plRgTsSdjVEaiNVzeGJHE6Cn+o4Dt2kIuWdmwoQYG5DAte0yGDllN094kEg
         Fe4CFIPsMjIMtMlB/esOT0PqUCypPotQ+SgtDeqOXX/V9l2u+dnxxAMEseTKNeZnmRqw
         IW6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NVttTyof;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id u16si389311lfc.3.2018.02.18.08.43.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 08:43:08 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NVttTyof;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id q83so1717285wme.5
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 08:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kikNw+b8xHLzPN3CJ11zIoMl5RQAMbVO1QsH72ju/GA=;
        b=NVttTyofV1S2Vte7PuneJhLJYzYmCFGbIBfGYmiFwTn2OXN+MES5Uo4d3Jvd/qMe3I
         914TdGPE39/etJDFpU+H7M8ecDWnLqOygMyt7HitccmrCUiVY9MOR23fecI3FgZlq2Od
         Mpn4E0rsM765oDzkD/EfxsZo2dbYqs5VVy1//+GBpQPyvZdKQgLTEVGvUZnmUYS+Vf+C
         sGpsY9vf0mUeGrJLSMgncqZnqvQ6mwS5OO7PACIcvFs+lqIguj+uLuH1iiTfDQs/prMa
         c+ReQvO4mKDBQ2OPXzGOqPQ4qlhY5yVUg4yl/4PBQow3gJ2Jkjl9/qEVgipNIg2nPudL
         dQwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kikNw+b8xHLzPN3CJ11zIoMl5RQAMbVO1QsH72ju/GA=;
        b=DUnhTvbnbF9OCVWfzS71S76bIbAzi6DKrpjFQ79h4/U3YZCRFsEWECdS32VREulCBD
         2gSh2dmxoda8bZuXnQUT7/lKbtk2a1WpjMLrJ4qzZCegmmtVxBnlfxUMuN5NQhvbq2xp
         Shvsr/byu7w6uUM+ruZU9OOyArWV4SFNaKSend3sVqBhUSHG3KiVCTqiqw76ijTewLLv
         qMzHxv7RjalAgha9wWHgj3C+tams3hVq2HjLvQif2UEucC17G3u6hElZXhIvrFmCONMo
         cYWzKEgCmS37IMeIVj9YMiRAdOOh2gzjdPejzWf2ijIG/9Yk2KrPu6sG3TCBClSsd5dE
         o3fQ==
X-Gm-Message-State: APf1xPD68YmRDD7kEU9eXkjWx7bgs3mdy1k6GkpNG+CaJXFp+Fkzl8Yp
	sPcH7keZQ37lAk1dei79BJQ=
X-Received: by 10.28.19.199 with SMTP id 190mr9938722wmt.41.1518972187735;
        Sun, 18 Feb 2018 08:43:07 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com ([31.154.102.92])
        by smtp.gmail.com with ESMTPSA id q15sm23986960wra.54.2018.02.18.08.43.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 08:43:07 -0800 (PST)
Date: Sun, 18 Feb 2018 18:43:04 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: rtl8723bs: clean up conditionals
Message-ID: <20180218164300.GA22789@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move all closing braces and parentheses to the end of the line.
Remove braces from 'if' statements with a single 'then' line.
Move logical operators to the end of lines in multiline conditional.
Remove unnecessary parentheses.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
Changes in v4:
- Fix commit body spelling and lines

 drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 24 +++++++-----------------
 1 file changed, 7 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index f29e110..21e1b81 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -64,9 +64,7 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter, struct xmit_buf *pxmitb
 	if (alloc_sz > 0) {
 		pxmitbuf->pallocated_buf = rtw_zmalloc(alloc_sz);
 		if (pxmitbuf->pallocated_buf == NULL)
-		{
 			return _FAIL;
-		}
 
 		pxmitbuf->pbuf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(pxmitbuf->pallocated_buf), XMITBUF_ALIGN_SZ);
 	}
@@ -90,10 +88,8 @@ void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt)
 	queue = skb_get_queue_mapping(pkt);
 	if (padapter->registrypriv.wifi_spec) {
 		if (__netif_subqueue_stopped(padapter->pnetdev, queue) &&
-			(pxmitpriv->hwxmits[queue].accnt < WMM_XMIT_THRESHOLD))
-		{
+		    (pxmitpriv->hwxmits[queue].accnt < WMM_XMIT_THRESHOLD))
 			netif_wake_subqueue(padapter->pnetdev, queue);
-		}
 	} else {
 		if (__netif_subqueue_stopped(padapter->pnetdev, queue))
 			netif_wake_subqueue(padapter->pnetdev, queue);
@@ -177,18 +173,15 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 
 	for (i = 0; i < chk_alive_num; i++) {
 		psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
-		if (!(psta->state & _FW_LINKED))
-		{
+		if (!(psta->state & _FW_LINKED)) {
 			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_fw_linked);
 			continue;
 		}
 
 		/* avoid come from STA1 and send back STA1 */
-		if (!memcmp(psta->hwaddr, &skb->data[6], 6)
-			|| !memcmp(psta->hwaddr, null_addr, 6)
-			|| !memcmp(psta->hwaddr, bc_addr, 6)
-		)
-		{
+		if (!memcmp(psta->hwaddr, &skb->data[6], 6) ||
+		    !memcmp(psta->hwaddr, null_addr, 6) ||
+		    !memcmp(psta->hwaddr, bc_addr, 6)) {
 			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_self);
 			continue;
 		}
@@ -248,14 +241,11 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
 			|| is_broadcast_mac_addr(pkt->data)
 			#endif
 			)
-		&& (padapter->registrypriv.wifi_spec == 0)
-		)
-	{
+		&& padapter->registrypriv.wifi_spec == 0) {
 		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME/4)) {
 			res = rtw_mlcst2unicst(padapter, pkt);
-			if (res == true) {
+			if (res == true)
 				goto exit;
-			}
 		} else {
 			/* DBG_871X("Stop M2U(%d, %d)! ", pxmitpriv->free_xmitframe_cnt, pxmitpriv->free_xmitbuf_cnt); */
 			/* DBG_871X("!m2u); */
-- 
2.7.4


