X-GM-THRID: 6754101895701200896
X-Received: by 2002:a17:90a:a88e:: with SMTP id h14mr11063357pjq.42.1572561938723;
        Thu, 31 Oct 2019 15:45:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:322b:: with SMTP id k40ls1167395pjb.3.canary-gmail;
 Thu, 31 Oct 2019 15:45:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqznvF4OM3+lbdohjG4SA4Dk1KPYwpzgZAxejFFc29xCFJ589gWLdB3hHURhHbdS5NhA1IQ8
X-Received: by 2002:a17:90b:f15:: with SMTP id br21mr10906592pjb.107.1572561937652;
        Thu, 31 Oct 2019 15:45:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572561937; cv=none;
        d=google.com; s=arc-20160816;
        b=Rkdrj7ccju3lsoNGDbFkN1k+B7wLeNJQ0Ecm+8Clm0IRxiBDE+59NC2rufq2mDszcU
         Cf83WheLl0Zfj1B4MJJGoTHMGNqCz2qquDPwYeYURrHQsQ1UT5pN5n6VqUDTBQorYS8k
         A5gNnq3stAYUjkNmBOIel3YTirDVbDtnDKZiqG5vA3aFqSTycqSD2nl7JRA5u/5nm70j
         8YhrGgVc3ImBr3CxhDMchfGxMfM6ntfKfUoKGcmsySX7lT0a8BcjNONb3L/xa0sXSCl0
         yIgp9hyPql9ogIvRKq+SiWECPPt21+p9pjXj7w3yvio4N5E8GVRb3x4qb0Fzco5JoQWT
         SDRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=55clRCOcz854Eepvvtl/ziydLkw+LcPLE6VKq1ZLPt8=;
        b=MtsLVoqFqCLWQ/AOHggOuT0K9udfgZbXDIU4NkIe6oCr8xyey58Vssy8j2eCGI1D0q
         Edm8SUHLFfacF6Gr/6xKgaWWe8TLhrD7iJRHubpSDRYs8ukWicQ6jmSVx+SQ8hzWzyxb
         W5bPyIsZhxMxzRtFCZlKxNR6jWXY3jeiLO7utHYsczBXkxkC9/PHv4q2lpAFI7Yprb1Q
         oGpdiocEMounwCLln7DqUCzi0TuCdqnQhD0MPvpU6QWq/JXs0oLTfC+2+Rv0qWSrfdLK
         q0gZ2lm1cncMvVsJf1I1pGqaQrpLnnay1QnVQqu3tGQnEu6LNXI/hNTNgQ/lM36snQoh
         Pfbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=AWqOp5Gt;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id be9si297119plb.3.2019.10.31.15.45.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 15:45:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=AWqOp5Gt;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vs1-xe42.google.com with SMTP id k1so5241101vsm.0
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 15:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=55clRCOcz854Eepvvtl/ziydLkw+LcPLE6VKq1ZLPt8=;
        b=AWqOp5GtCgVY0PkB5kvXDnHfzPdzEdyYYRB+TZg8qfQGH5EpIei8J2tdNHF84CgPzJ
         YkrWGYlMt+JkVCJA2jJL7MUzqILbakfVH/N3BknijMHCmaPBP6Q82thqmHLhkf4H48ow
         WWCbZ+K5p91NfChbHPpRPliKbtYiOkiU1tnUauQPtdumZAsJV7iuvqqZWzN4rbTgUdxV
         sDYgue5nHHySyL7ianb4TxMywDVauRi6khVmbv5EiWflrQsuSAiF30IxMUtY4Lcpr5Ww
         6rTTO4nah/gc2RqNCQ40vhvs6/CqBoSPOQ3qb45wrzJA1l3ZSgRAwlFJosPgKnDy5+GT
         KNEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=55clRCOcz854Eepvvtl/ziydLkw+LcPLE6VKq1ZLPt8=;
        b=Vhrs1T8od5De2ISgezKOdQBxhdtJG1G8PyZ3C+q6SfEP/zq6zeE396RaqjcUu+yTh0
         V4yh47sfQlEK6uKlGODccqwxNs3DR4ZHvcmyxhmqD9VnL6JZNczlKxeo38nh3der18wf
         8i34Ba252QmvzWUIeXSU7HO1rMU1SB+eaecvuhhAFLOOzNNg8vQZd34HESGf48ey+RHC
         Z8Sfhix+C/abN73LAGY9Y0y4Cf7ToXJRFKYdI8GDhxGsyaP/NcXL0DRfiI7KrgBer9aW
         7j2o7nBVZjjAo4YMIAqPC7Ev+z/SPvIavSpMlVnI/1CarX8NP+Xe8s3KkUMMY9MK66qU
         t7Mw==
X-Gm-Message-State: APjAAAXZygFIxKRgL29gJDb9uSKTGljHRtJ5XMs29WKfmqgbZSDwMu5y
	Kg/deslzIksr3VL0J9vlc8pzrnjYLXRizBxb
X-Received: by 2002:a05:6102:318e:: with SMTP id c14mr4381589vsh.45.1572561936444;
        Thu, 31 Oct 2019 15:45:36 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.52])
        by smtp.gmail.com with ESMTPSA id v188sm1502704vka.34.2019.10.31.15.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 15:45:35 -0700 (PDT)
Date: Thu, 31 Oct 2019 22:45:33 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Subject: [PATCH 1/3] staging: rtl8712: Fix parentheses alignment
Message-ID: <b405fafb99fd920a2480c728d29791ebc8d919bf.1572561194.git.frank@generalsoftwareinc.com>
References: <cover.1572561194.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572561194.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

checkpatch message:
CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/rtl8712/os_intfs.c      |  2 +-
 drivers/staging/rtl8712/osdep_service.h |  2 +-
 drivers/staging/rtl8712/rtl8712_xmit.c  | 21 +++++++++++----------
 3 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 0c3ae8495afb..6371b1620ef8 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -222,7 +222,7 @@ struct net_device *r8712_init_netdev(void)
 static u32 start_drv_threads(struct _adapter *padapter)
 {
 	padapter->cmd_thread = kthread_run(r8712_cmd_thread, padapter, "%s",
-					  padapter->pnetdev->name);
+					   padapter->pnetdev->name);
 	if (IS_ERR(padapter->cmd_thread))
 		return _FAIL;
 	return _SUCCESS;
diff --git a/drivers/staging/rtl8712/osdep_service.h b/drivers/staging/rtl8712/osdep_service.h
index e939c4a954b3..d33ddffb7ad9 100644
--- a/drivers/staging/rtl8712/osdep_service.h
+++ b/drivers/staging/rtl8712/osdep_service.h
@@ -46,7 +46,7 @@ struct	__queue	{
 	} while (0)
 
 static inline u32 end_of_queue_search(struct list_head *head,
-		struct list_head *plist)
+				      struct list_head *plist)
 {
 	return (head == plist);
 }
diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index c247f92207f5..9cc835dff915 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -147,9 +147,9 @@ static u32 get_ff_hwaddr(struct xmit_frame *pxmitframe)
 }
 
 static struct xmit_frame *dequeue_one_xmitframe(struct xmit_priv *pxmitpriv,
-					 struct hw_xmit *phwxmit,
-					 struct tx_servq *ptxservq,
-					 struct  __queue *pframe_queue)
+						struct hw_xmit *phwxmit,
+						struct tx_servq *ptxservq,
+						struct  __queue *pframe_queue)
 {
 	struct list_head *xmitframe_plist, *xmitframe_phead;
 	struct	xmit_frame *pxmitframe = NULL;
@@ -167,7 +167,8 @@ static struct xmit_frame *dequeue_one_xmitframe(struct xmit_priv *pxmitpriv,
 }
 
 static struct xmit_frame *dequeue_xframe_ex(struct xmit_priv *pxmitpriv,
-				     struct hw_xmit *phwxmit_i, sint entry)
+					    struct hw_xmit *phwxmit_i,
+					    sint entry)
 {
 	unsigned long irqL0;
 	struct list_head *sta_plist, *sta_phead;
@@ -292,14 +293,14 @@ void r8712_append_mpdu_unit(struct xmit_buf *pxmitbuf,
 	r8712_xmit_complete(padapter, pxmitframe);
 	if (pxmitframe->attrib.ether_type != 0x0806) {
 		if ((pxmitframe->attrib.ether_type != 0x888e) &&
-			(pxmitframe->attrib.dhcp_pkt != 1)) {
+		    (pxmitframe->attrib.dhcp_pkt != 1)) {
 			r8712_issue_addbareq_cmd(padapter,
 					pxmitframe->attrib.priority);
 		}
 	}
 	pxmitframe->last[0] = 1;
 	update_txdesc(pxmitframe, (uint *)(pxmitframe->buf_addr),
-		pxmitframe->attrib.last_txcmdsz);
+		      pxmitframe->attrib.last_txcmdsz);
 	/*padding zero */
 	last_txcmdsz = pxmitframe->attrib.last_txcmdsz;
 	padding_sz = (8 - (last_txcmdsz % 8));
@@ -389,7 +390,7 @@ void r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
 		/*default = 32 bytes for TX Desc*/
 	}
 	r8712_write_port(pxmitframe->padapter, RTL8712_DMA_H2CCMD,
-			total_length + TXDESC_SIZE, (u8 *)pxmitframe);
+			 total_length + TXDESC_SIZE, (u8 *)pxmitframe);
 }
 
 #endif
@@ -626,7 +627,7 @@ int r8712_xmitframe_complete(struct _adapter *padapter,
 		 */
 		if (AGGR_NR_HIGH_BOUND > 1)
 			p2ndxmitframe = dequeue_xframe_ex(pxmitpriv, phwxmits,
-							hwentry);
+							  hwentry);
 		if (pxmitframe->frame_tag != DATA_FRAMETAG) {
 			r8712_free_xmitbuf(pxmitpriv, pxmitbuf);
 			return false;
@@ -716,10 +717,10 @@ static void dump_xframe(struct _adapter *padapter,
 		ff_hwaddr = get_ff_hwaddr(pxmitframe);
 #ifdef CONFIG_R8712_TX_AGGR
 		r8712_write_port(padapter, RTL8712_DMA_H2CCMD, w_sz,
-				(unsigned char *)pxmitframe);
+				 (unsigned char *)pxmitframe);
 #else
 		r8712_write_port(padapter, ff_hwaddr, w_sz,
-			   (unsigned char *)pxmitframe);
+				 (unsigned char *)pxmitframe);
 #endif
 		mem_addr += w_sz;
 		mem_addr = (u8 *)RND4(((addr_t)(mem_addr)));
-- 
2.17.1


