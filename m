X-GM-THRID: 6332335989632008192
X-Received: by 10.157.47.73 with SMTP id h67mr1015441otb.5.1474362235486;
        Tue, 20 Sep 2016 02:03:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.72 with SMTP id p8ls1371713otd.48.gmail; Tue, 20 Sep
 2016 02:03:55 -0700 (PDT)
X-Received: by 10.157.34.165 with SMTP id y34mr865848ota.28.1474362235093;
        Tue, 20 Sep 2016 02:03:55 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id si10si6568496pab.1.2016.09.20.02.03.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 02:03:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so690877pfy.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 02:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SjrFLPjl1zpMnG/SUUSJlD6bTqEaJQ8MD06f/ZJGagY=;
        b=SY4gCEI+rwWC/ZpdgGa4nY1SwdhdPf0wFXf3kNEpQ8sNDCs6u+vFj385HIfQYds68h
         3I3BM1IQFd8OiSRKyr1XWdC7VQGlcLh9Nj219+PKyercrkLFzYOcd5hrhvtnxtRe8BAU
         6qBVeJblHd+1szcyeH1sTqR88gdPsxYsl5SpoKUKQ+8o/DJsU1SKfPy7flmqWfm2Hrv+
         cY3MiYeIHTW/PvxBiPI/2rmCnPk7h6m3NM3FxurfFowchD2Hgee134ZvVn7BV/lquFvk
         q0J1cuBYggyhpsbBqbezCuAUTQ6f1Wyihs123EXAiGI+cevEDBhaj6Uy8BYCkEDqip8s
         jqlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SjrFLPjl1zpMnG/SUUSJlD6bTqEaJQ8MD06f/ZJGagY=;
        b=khMBSmI0wqgi1Vd5NOpAj7VcubVhnJyZ63H1fP3/rQ0YGXeuPC2j8evjEQae7FxJZY
         9dvjMisrfDIZNpc8078yOZldMH5QprLFkS3G5l+AGT3tU+F0OXX6flko5om3FYT1Hh2q
         9amjiKhYDikgdRaxRXqxcSCnPCpucqizNpGJXVFARrB1b4lXjE13xOrSFHUyegGjN6vz
         PLV1XVplWIH7DGmGk9QTJXCxT8VFw1T2B336/aVuTUK2QXRR6WhU3gGqdM29LifYkxSk
         aTV6VtggXz8/gRq6R5yj8I6VQocC4YU/tiyWKyLUsJ4NM/sEYKZ2u4EoEBL6jHa1AUBu
         0wmA==
X-Gm-Message-State: AE9vXwPKLfarFsSj572MM5CsgpGleKDawc3KwiUJ4i48eZIjtLDwohtN14Ak0OJrU3hl7w==
X-Received: by 10.98.58.65 with SMTP id h62mr54120095pfa.82.1474362234696;
        Tue, 20 Sep 2016 02:03:54 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.179.109])
        by smtp.gmail.com with ESMTPSA id j1sm3395313pfg.95.2016.09.20.02.03.52
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 02:03:54 -0700 (PDT)
Date: Tue, 20 Sep 2016 14:34:36 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Subject: [PATCH 2/4] Staging: rtl8712: rtl8712_recv: Use !x instead of x ==
 NULL
Message-ID: <27343d51184cdabfc675105edc04caa8b8c50bbe.1474360940.git.bankarsandhya512@gmail.com>
References: <cover.1474360939.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474360939.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL. This patch was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 4027d1a..66f0e0a 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -60,7 +60,7 @@ int r8712_init_recv_priv(struct recv_priv *precvpriv, struct _adapter *padapter)
 	_init_queue(&precvpriv->free_recv_buf_queue);
 	precvpriv->pallocated_recv_buf =
 		kzalloc(NR_RECVBUFF * sizeof(struct recv_buf) + 4, GFP_ATOMIC);
-	if (precvpriv->pallocated_recv_buf == NULL)
+	if (!precvpriv->pallocated_recv_buf)
 		return _FAIL;
 	precvpriv->precv_buf = precvpriv->pallocated_recv_buf + 4 -
 			      ((addr_t) (precvpriv->pallocated_recv_buf) & 3);
@@ -274,7 +274,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
 	fragnum = pfhdr->attrib.frag_num;
 	psta_addr = pfhdr->attrib.ta;
 	psta = r8712_get_stainfo(pstapriv, psta_addr);
-	if (psta == NULL)
+	if (!psta)
 		pdefrag_q = NULL;
 	else
 		pdefrag_q = &psta->sta_recvpriv.defrag_q;
@@ -999,15 +999,15 @@ int recv_func(struct _adapter *padapter, void *pcontext)
 	}
 	process_phy_info(padapter, prframe);
 	prframe = r8712_decryptor(padapter, prframe);
-	if (prframe == NULL) {
+	if (!prframe) {
 		retval = _FAIL;
 		goto _exit_recv_func;
 	}
 	prframe = r8712_recvframe_chk_defrag(padapter, prframe);
-	if (prframe == NULL)
+	if (!prframe)
 		goto _exit_recv_func;
 	prframe = r8712_portctrl(padapter, prframe);
-	if (prframe == NULL) {
+	if (!prframe) {
 		retval = _FAIL;
 		goto _exit_recv_func;
 	}
@@ -1065,7 +1065,7 @@ static int recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
 		if ((le32_to_cpu(prxstat->rxdw0) >> 23) & 0x01)
 			shift_sz = 2;
 		precvframe = r8712_alloc_recvframe(pfree_recv_queue);
-		if (precvframe == NULL)
+		if (!precvframe)
 			goto  _exit_recvbuf2recvframe;
 		INIT_LIST_HEAD(&precvframe->u.hdr.list);
 		precvframe->u.hdr.precvbuf = NULL; /*can't access the precvbuf*/
-- 
1.7.1


