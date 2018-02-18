X-GM-THRID: 6523773996804079616
X-Received: by 10.25.160.195 with SMTP id j186mr807831lfe.44.1518938815730;
        Sat, 17 Feb 2018 23:26:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.80 with SMTP id 77ls182936ljj.12.gmail; Sat, 17 Feb 2018
 23:26:52 -0800 (PST)
X-Google-Smtp-Source: AH8x226uX2mndNcMZywuyF0wM/t/quBKWVLMGrPQampN5DdmFO7DXC0JcJW4zG6on3NoHExD/jba
X-Received: by 10.46.122.16 with SMTP id v16mr669872ljc.13.1518938812943;
        Sat, 17 Feb 2018 23:26:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518938812; cv=none;
        d=google.com; s=arc-20160816;
        b=ksACwhtsuhHPEoo+dxGbvWi9Gohgf0sp8SqKgmi9Egbp3ZOCSf2BnNTQy6s5W39LHv
         aVCMjoOMXz33moZFwlGaXZCUfY0y7hCtuCU0n1J0+vyOpflhbC3g7k6Z5Ocy1uqP7WpN
         5iEF7fNkBW6ZL773pkfwoECcGyD7R+hP4M6ZmUh0SIBRNoDWZN92EGnlKr2JoAt9UVdH
         WZueQHCRo2fmzRVLmUYBkixjfuMYZebp92Liy8MiaZKrXsILPTtGdm0nloqhLM8F1CQr
         52q3NbkW5qubCXrYuxEATHXrR8bn90n8bOWda1sJk7NuAdckngczwySxCrevIg/ictIf
         2NUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=6WiLdVjT+u8LkyjiFMKxzb/ev8mhsOIORqfF2F2SUcg=;
        b=QvBFYCSzI/id52Ux5C0je2DKRKXDJylinDUYcWas4HC2T2S/0pTvrYfzUcACXOY3E6
         DJIBJu4QG6P1Eg1dU0eHqE4FNakzwPeA9BPkYDENrhpLDlfTBT5AWeVaFFTApmxIc0J2
         WG63b7qhM85OQvGbI2evNP1EIrUGRaaFC+3wGuWLQ90URBwAn+6/OxTPxZc/WhERwbgq
         oeQWKdyrAVVXzu3bIVTkHDE0+XSM6pwgo44HnwV1TJi7wLNJPy65qa3LEYe5IuBJyOYQ
         XHslnc7NHcxa7B/Onr0xAgvyZY3N3dXvsP//qxTQ8fTxtulm36JPisw7hL8c54F822cR
         28xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DhVajVva;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id b10si2424lfe.4.2018.02.17.23.26.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 23:26:52 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DhVajVva;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id x4so10981673wmc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Feb 2018 23:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6WiLdVjT+u8LkyjiFMKxzb/ev8mhsOIORqfF2F2SUcg=;
        b=DhVajVvazRxtDQx7wX84pUmQtLC0Mj4zTG5/WzmKCrRq948jmz94FIP28Mf7qceVnb
         /BeBL224rYM6WFK3rrYapwWfW6Th+q9iYtUZLTQ1evpRyYrCbIuQo2JCIMkhthUxroeh
         MgmFtUdgcraFYef3GpkyOALF2BfhDvU3NjPheaKRC4M2TFM24EMVlRAjNn+XNO+iRL8d
         bf839/I0Uqum4vgDDWrFIUbuulrb2YcOdDFrEBiX8T3OaHYgUe9EKdslKrZMgZjUbZDc
         pS551eeZ3JJRdvq8ozY2MbSYeE7LNOeVREcBJ8Grb41qzyajlHNfrJCEc5Gvu3v0HWIh
         pKQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6WiLdVjT+u8LkyjiFMKxzb/ev8mhsOIORqfF2F2SUcg=;
        b=a+6gkl0uqgCuV+TR+vtYxWWN12pVNxpRUhIVNWGKRgDBI6e8Cz1rY8ptmig8uA9O/j
         8Y1KkPSadPhkfVH6r5D/4SKgYOXKMPLAIj+NYg65DQM5LZaHGMvG7fZ4em5CJia1h3eS
         OZsXWiMOa7QMc50/866c5A9fnuXmEYy3gLYGs1jHYGu3cACQR3Zv8gQDz4iY5AQz6WGe
         8USkl08CU/qUQcCXEL2FEuB2WeqAWfNRY9XogmmpviHw9GQu8yBb2YfiLRsawxl7vE8B
         rzS2kICgxzElt+pfde9tR4P1SoSWVaRdVMufD0hdpZ4j+BghOs9dIPlgcv17vnSgYp7P
         lxjA==
X-Gm-Message-State: APf1xPCDU9it/z65aN8DUZWCA2AhOAQ21MgG3fiBhnSMEvFvHCTb2a/z
	bBflf19MsSpK+jdou+1AEvspfg==
X-Received: by 10.28.179.66 with SMTP id c63mr9009944wmf.160.1518938812312;
        Sat, 17 Feb 2018 23:26:52 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com ([87.71.142.168])
        by smtp.gmail.com with ESMTPSA id 62sm23698900wml.24.2018.02.17.23.26.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 23:26:51 -0800 (PST)
Date: Sun, 18 Feb 2018 09:26:48 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rtl8723bs: clean up conditionals
Message-ID: <20180218072644.GA18258@gmail.com>
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
Changes in v2:
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


