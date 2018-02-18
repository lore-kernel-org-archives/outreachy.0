X-GM-THRID: 6523773996804079616
X-Received: by 10.28.138.138 with SMTP id m132mr752997wmd.11.1518934498797;
        Sat, 17 Feb 2018 22:14:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.20.17 with SMTP id 17ls407174wmu.8.canary-gmail; Sat, 17
 Feb 2018 22:14:57 -0800 (PST)
X-Google-Smtp-Source: AH8x224pmgnyOTUfPh94X13fWDycfpdVY2rSc5XcFXHJGeydKFevEE3k8Fwt5rr1RnWQe3I4epd5
X-Received: by 10.28.173.203 with SMTP id w194mr1786963wme.24.1518934497696;
        Sat, 17 Feb 2018 22:14:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518934497; cv=none;
        d=google.com; s=arc-20160816;
        b=LtS5uLP20Vx42OlMqMTcBB9wb3rlLpyPClFyvQsdnlpSzG3IY1Sy9qTN/Gb4zU+sqI
         luWEeL/Voch/QeFjzIjXwmIOzgM9u0ZNtzUSnaCbS4kNhAj/LzaP9etrT37RRqUOsYGJ
         9+uqC5hjYNYtSopqUVQxle1wj6vdvY3Ug0SS0FWEZJMMpJ/ivgsRdiSED365XTcZbCUJ
         w18nL6y9jUqZDoVhTKnlFmqezIdB7Lci4qHjhtrymvOuGrS9gBIAvdLltKZyqFtZAp6C
         Ckd3QOOwUK+r9VtPJYdB5gbITPzZsOWQidCW/DOqt9L3PHx+FkREezY1qn/gRqRAlrrf
         q+lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=vX3kAdLNyQvorrfKyaNeAtyMRgDJqJ6x/gO5qfWP1DA=;
        b=a5fkqABMtKs6qnDdS27rc/9amQ/PcCdnUkO8TWlFYcry6dR37K0rTt0kIGYZ4J8KsD
         xO+40HVK6IMfOOpBgy4in7TJYNxumCp5raYx+BhE0xuPHi4APLUexpTaIsVzb/K3Al9s
         veyfu9gtSSM5xj9T8GzIJdA0I6r54Wff/wIIZHmO3Kpbi1ut6a6L76jwhKJV/uKX4GtT
         FvtQUt3O9dbIVkU5E+BjiVnN1EZgQCjxV5XGB+N5xs0F7UNO12+XIQHa9SuIEkAkGms2
         sFDOZ7fxJP10EszO3N/TDNqtdXZkZNH1a6lKpK5WUy3d0ZrlUfHyYKpLNiIQDrE48vX5
         +zuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G2VBZlDj;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id e14si324911wmg.0.2018.02.17.22.14.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 22:14:57 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G2VBZlDj;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id z12so404647wrg.4
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Feb 2018 22:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vX3kAdLNyQvorrfKyaNeAtyMRgDJqJ6x/gO5qfWP1DA=;
        b=G2VBZlDjAzBJtv6206Yw9219uofT/myz8E3U1vqh4z4JhI2sNE6pX0yON8XVSdubz3
         LOajct8zzogL6wmVeUT7F9efuyi0+xzJk8UhkXquzmSVb3aObFPcjZ/flXaStsBS2n1r
         divuO2Cl3vExmrB1sOadKdDzyKFwfNm+rnhiMJ/1jv+Z+ivR0EIcOq8hUw6chqo/eAht
         kExrIoRtvk280et04TyLUmyMef5JlAJh0msqRi1pWUcaJ5sDtvzP7fyEYuwJoJAcWadq
         3Ng6klNBL5sOEv37ccKrTalQk3XH72LokHwYNXbca2qv2RnoEcyuj+iwuXI4vn03+aEa
         NagA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vX3kAdLNyQvorrfKyaNeAtyMRgDJqJ6x/gO5qfWP1DA=;
        b=sah1jbKT49qz/oIcYwhq5qSxhL2aJtcgIMkAplipYVJF18CyyPSe2lKlWBRA9BJIso
         LvvitxlCqJb/6LvCDWW1J4CkJ0P/aJUDGntX/tePcpXkox1NgCWUrWmh9E2TFSByf0BH
         T4ysx4xG/kb5gQ3aXDYXL0IRGopsejxb6WEWSVBUb+kyQMVJ/nxGveYUHDnnAs/xzIHf
         6Ne+Uy/hljRYBF/953nPQiNjYKNJ4r9FDQFMphD1bdU1/JiOnW3bLECbPjtVd0HqJ/CL
         erv9R1SWiyPLOK4PfxCFoHAMTw2CQnwsPetGvQhxxfm1xjK3R7CT7g+AUuqSVZebab/t
         VCyQ==
X-Gm-Message-State: APf1xPAXZ8hw9t+QYouNYZqeiernMu1GsIRX/wX+xjSqSOXXp3eBn5fE
	B08IOTCfVd5vf6fFlcCpRSU=
X-Received: by 10.223.173.75 with SMTP id p69mr9535992wrc.222.1518934497322;
        Sat, 17 Feb 2018 22:14:57 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com ([87.71.142.168])
        by smtp.gmail.com with ESMTPSA id u63sm6002017wrc.26.2018.02.17.22.14.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 22:14:56 -0800 (PST)
Date: Sun, 18 Feb 2018 08:14:53 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8723bs: clean up conditionals
Message-ID: <20180218061449.GA16247@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move closing braces and paranthes to the end of the line.
Remove braces from 'if' statements with a single 'then' line.
Move logical operators to end of lines
in multiline conditional.
Remove unnecessary paranthes.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
Changes in v2:
- No breaking line is needed
- Move logical operators to end of lines
in multiline conditional where possible
- Move closing parentheses to the end of line
- Remove unnecessary paranthes

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


