X-GM-THRID: 7280184524800
X-Received: by 10.180.75.232 with SMTP id f8mr7129658wiw.0.1425908764594;
        Mon, 09 Mar 2015 06:46:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.198.225 with SMTP id jf1ls542099wic.12.gmail; Mon, 09 Mar
 2015 06:46:03 -0700 (PDT)
X-Received: by 10.180.80.35 with SMTP id o3mr7138237wix.0.1425908763224;
        Mon, 09 Mar 2015 06:46:03 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id r6si828517wix.0.2015.03.09.06.46.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 06:46:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id em10so5906617wid.2
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 06:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=bkdNIh2odH8vsZ/5Qi9ZhxKO4fL8GMukz95llOx1qHo=;
        b=qphNlarx5CuQOg0T8Sk/sJKfMnc7Om6NYmhzL7rOZ7zywi+TN81OifccQjwWYiF4Uh
         Yizln756Qzwtd5l1q9nXEtaedDG7Houiy8VQI5efo96OBNVCK9U7StEu4Z5hi8nZcbkT
         Hb775Nv3C80S/hcmXi5z+2sXNL6loZOk9zDb/4/iZ99G+4/Jgn9YkJFVyaXCylNpy72Z
         gfoW4RrQuLxKURoTG8HzJM23SAQN5ZoBHWTSxXtieKjW2Pi5gAnlG+JY/s9aMWuPknHD
         3GgaGPaOPvmMVvY+D3s7QjP7BVqsLL5vjgNTcdh3Y6pBmI9vWEAZhm+sGgcfVgaxLQ60
         hx8Q==
X-Received: by 10.180.171.35 with SMTP id ar3mr61562549wic.24.1425908763099;
        Mon, 09 Mar 2015 06:46:03 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id kr5sm28350443wjc.1.2015.03.09.06.46.00
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 09 Mar 2015 06:46:01 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] drivers: staging: rtl8188eu: core: rtw_xmt: Delete spaces before tabs
Date: Mon,  9 Mar 2015 15:45:52 +0200
Message-Id: <1425908752-7321-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:

WARNING: please, no space before tabs

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 7a71df1..7a35c47 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -94,7 +94,7 @@ s32	_rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	}
 	pxmitpriv->pxmit_frame_buf = (u8 *)N_BYTE_ALIGMENT((size_t)(pxmitpriv->pallocated_frame_buf), 4);
 	/* pxmitpriv->pxmit_frame_buf = pxmitpriv->pallocated_frame_buf + 4 - */
-	/* 						((size_t) (pxmitpriv->pallocated_frame_buf) &3); */
+	/*						((size_t) (pxmitpriv->pallocated_frame_buf) &3); */
 
 	pxframe = (struct xmit_frame *)pxmitpriv->pxmit_frame_buf;
 
@@ -132,7 +132,7 @@ s32	_rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 	pxmitpriv->pxmitbuf = (u8 *)N_BYTE_ALIGMENT((size_t)(pxmitpriv->pallocated_xmitbuf), 4);
 	/* pxmitpriv->pxmitbuf = pxmitpriv->pallocated_xmitbuf + 4 - */
-	/* 						((size_t) (pxmitpriv->pallocated_xmitbuf) &3); */
+	/*						((size_t) (pxmitpriv->pallocated_xmitbuf) &3); */
 
 	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;
 
@@ -283,8 +283,8 @@ static void update_attrib_vcs_info(struct adapter *padapter, struct xmit_frame *
 
 	/*  (1) RTS_Threshold is compared to the MPDU, not MSDU. */
 	/*  (2) If there are more than one frag in  this MSDU, only the first frag uses protection frame. */
-	/* 		Other fragments are protected by previous fragment. */
-	/* 		So we only need to check the length of first fragment. */
+	/*		Other fragments are protected by previous fragment. */
+	/*		So we only need to check the length of first fragment. */
 	if (pmlmeext->cur_wireless_mode < WIRELESS_11_24N  || padapter->registrypriv.wifi_spec) {
 		if (sz > padapter->registrypriv.rts_thresh) {
 			pattrib->vcs_mode = RTS_CTS;
@@ -413,7 +413,7 @@ static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
 	/*  get user_prio from IP hdr */
 	if (pattrib->ether_type == 0x0800) {
 		_rtw_pktfile_read(ppktfile, (u8 *)&ip_hdr, sizeof(ip_hdr));
-/* 		user_prio = (ntohs(ip_hdr.tos) >> 5) & 0x3; */
+/*		user_prio = (ntohs(ip_hdr.tos) >> 5) & 0x3; */
 		user_prio = ip_hdr.tos >> 5;
 	} else if (pattrib->ether_type == 0x888e) {
 		/*  "When priority processing of data frames is supported, */
@@ -1469,7 +1469,7 @@ s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitfram
 	if (rtw_xmit_classifier(padapter, pxmitframe) == _FAIL) {
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
 			 ("rtw_xmitframe_enqueue: drop xmit pkt for classifier fail\n"));
-/* 		pxmitframe->pkt = NULL; */
+/*		pxmitframe->pkt = NULL; */
 		return _FAIL;
 	}
 
-- 
1.9.1


