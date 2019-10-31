X-GM-THRID: 6754101895701200896
X-Received: by 2002:ab0:5949:: with SMTP id o9mr4141411uad.65.1572561982398;
        Thu, 31 Oct 2019 15:46:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:c883:: with SMTP id v3ls394232vsk.2.gmail; Thu, 31 Oct
 2019 15:46:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwxv/NFaO3hZY1TNlTmnTEbaVeiqMbVYpgy6a5+83aArjihkW8rFtnCLGTX64lCWf8RvOjH
X-Received: by 2002:a67:fd7b:: with SMTP id h27mr4236199vsa.42.1572561981139;
        Thu, 31 Oct 2019 15:46:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572561981; cv=none;
        d=google.com; s=arc-20160816;
        b=CuebDtxQysEzIA3rvgNexYecR6n4Vfx19e5BHOSm53CHx63yn6h/voATaabwpH+MBq
         CrbF8CXaZctI7TPoaswXRCqiZF3l8eHCyn2rwOjXZdC48bTyXR/nNAPzMOLr9ZG47KMM
         f5yY2EA6WFKrGMgXdH8g9K9ecPIhcsWBb4C5u2s4xmydh/8ECV6ZQQ3QUBJT6W6GjpfH
         UsDMnFjoPRcYC8DnXeNYT8oA18WFOlMes2d63t7HqKRd+bFE4CYFO1ctLQ3UIybjUers
         jDRHdvefpCdV7yJCR3priUE3Rfo3LPOYG+sBt+tjHVjOqMwtYvacqmg6V67hetYt8TGt
         KkDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FnIbXeT7KcGFPRTksAUDdiH1FZ1KhLUI2Tsflpffh2g=;
        b=T1Hxg9lV6jDLUJHXqY0bi/i9gfrr52yDCxff8rRWvAlSZDpsxzIFyfAKDKgjvu8L+4
         5MOWWSJxFALwYW2ON582OuzPSiQMI1L1BKhzwTIymNPI7gJW9PBvzPcfzuESk28qoak2
         wRQHcO46m72xfPogyl+OKU9Ie+x0L9S/231215Q9aRDmR3ZbRX57FamGQBR7jyaWrhaK
         1o29er0F4DRai+L8dvreMbH3s1/K79pYWpLpJ92iLADIIs2wyaYiJWDbypsdzU/GcSFH
         RzOhGokds2tgdrWK5K08xJU2K6tIuu0BRK0Rxuyia348vKUqphwqmLNyMSx9x7EBFvll
         SaDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=YUalIqEd;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id o206si373787vka.4.2019.10.31.15.46.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 15:46:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=YUalIqEd;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua1-x942.google.com with SMTP id i13so2396165uaq.7
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 15:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FnIbXeT7KcGFPRTksAUDdiH1FZ1KhLUI2Tsflpffh2g=;
        b=YUalIqEdDpcOPbyC6SNsOaOKHlpkYnPGfMLvaVAnOaJ7SnnIt8bSpeAkA9b2FLwWS0
         PJTQJDn6xTot0z2Hu+t2TMr0+j9ArRHzTz4oNQIokBP46P8scv7JHD+fimbvPYZuHre4
         sJUTzqjRXlE4YsXhnscGNOmrQmcI9ixTR2cAxlQTi/hZtBSwkcedgkJO7pw5i+K1kD87
         zDpb7mr+jR3IW8cIKMq8LEZaJC4IboybGTkxakcG+0OCOoy8wqS7UMaINA5STbwGNsmW
         g+YVIQf6FZ/2eN0UwkJWv7QDivlt4AkBz5I67Y+CKmwgqONeCZ4OjvgvdkH3Kz9ZovP5
         euvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FnIbXeT7KcGFPRTksAUDdiH1FZ1KhLUI2Tsflpffh2g=;
        b=d7PEMEKOr/k6Cc7pWe03csAQIBH4cS9BkiHEpaLHdhVKGHbBfT49ZfDoi/qgT08vQx
         P6RMEEHs3z+0NJg9BNtpbEbKVJpovOVdQd6dvwgbSyfXTP5hZFzjX5cKcD7cXGkuczDE
         TrQWic0nbDRFjZBUHARTv/d2c74TJjbkiG01/VgHyMGRImCjCkzOI1Lf2i58rlWkbDiZ
         sxzkTBfb7Wu/U9TCuK0e62uI3CTBF2odIp0nZvopVjsXA8RZqqPaEpDk3d2B5qs+BlGV
         tq/FR5p6t4dzVdTBs3/tpHAaTRlEugyHJe+ftDL1zT6XYvK5eBUgK8Js/NDN7ZC2tJ0A
         nGvw==
X-Gm-Message-State: APjAAAUdGZx/zs2BGAw3tQLYaQiX4/kBYra8moR1y+aeeJc3CRJrEcCx
	ftQpcJSBRTU9gDmAznfC+x5VxQ==
X-Received: by 2002:ab0:1553:: with SMTP id p19mr4194798uae.80.1572561980636;
        Thu, 31 Oct 2019 15:46:20 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.52])
        by smtp.gmail.com with ESMTPSA id y7sm1577639vkl.2.2019.10.31.15.46.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 15:46:20 -0700 (PDT)
Date: Thu, 31 Oct 2019 22:46:17 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Subject: [PATCH 3/3] staging: rtl8712: Remove unnecessary parentheses
Message-ID: <9d9c9cfdcee83ca68ef559f25b6d5ee74a098a71.1572561194.git.frank@generalsoftwareinc.com>
References: <cover.1572561194.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572561194.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

checkpatch message:
CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around...

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 06de031be6a9..e829f5f891a0 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -61,7 +61,7 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
 		precvbuf->ref_cnt = 0;
 		precvbuf->adapter = padapter;
 		list_add_tail(&precvbuf->list,
-			      &(precvpriv->free_recv_buf_queue.queue));
+			      &precvpriv->free_recv_buf_queue.queue);
 		precvbuf++;
 	}
 	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
@@ -130,8 +130,8 @@ void r8712_free_recvframe(union recv_frame *precvframe,
 		precvframe->u.hdr.pkt = NULL;
 	}
 	spin_lock_irqsave(&pfree_recv_queue->lock, irqL);
-	list_del_init(&(precvframe->u.hdr.list));
-	list_add_tail(&(precvframe->u.hdr.list), &pfree_recv_queue->queue);
+	list_del_init(&precvframe->u.hdr.list);
+	list_add_tail(&precvframe->u.hdr.list, &pfree_recv_queue->queue);
 	if (padapter) {
 		if (pfree_recv_queue == &precvpriv->free_recv_queue)
 			precvpriv->free_recvframe_cnt++;
@@ -327,7 +327,7 @@ static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
 	struct rx_pkt_attrib *pattrib;
 	_pkt *sub_skb, *subframes[MAX_SUBFRAME_COUNT];
 	struct recv_priv *precvpriv = &padapter->recvpriv;
-	struct  __queue *pfree_recv_queue = &(precvpriv->free_recv_queue);
+	struct  __queue *pfree_recv_queue = &precvpriv->free_recv_queue;
 
 	nr_subframes = 0;
 	pattrib = &prframe->u.hdr.attrib;
@@ -491,8 +491,8 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
 		else
 			break;
 	}
-	list_del_init(&(prframe->u.hdr.list));
-	list_add_tail(&(prframe->u.hdr.list), plist);
+	list_del_init(&prframe->u.hdr.list);
+	list_add_tail(&prframe->u.hdr.list, plist);
 	return true;
 }
 
@@ -526,7 +526,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
 		pattrib = &prframe->u.hdr.attrib;
 		if (!SN_LESS(preorder_ctrl->indicate_seq, pattrib->seq_num)) {
 			plist = plist->next;
-			list_del_init(&(prframe->u.hdr.list));
+			list_del_init(&prframe->u.hdr.list);
 			if (SN_EQUAL(preorder_ctrl->indicate_seq,
 				     pattrib->seq_num))
 				preorder_ctrl->indicate_seq =
@@ -992,7 +992,7 @@ static void recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
 	union recv_frame *precvframe = NULL;
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 
-	pfree_recv_queue = &(precvpriv->free_recv_queue);
+	pfree_recv_queue = &precvpriv->free_recv_queue;
 	pbuf = pskb->data;
 	prxstat = (struct recv_stat *)pbuf;
 	pkt_cnt = (le32_to_cpu(prxstat->rxdw2) >> 16) & 0xff;
-- 
2.17.1


