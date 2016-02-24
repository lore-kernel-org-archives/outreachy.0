X-GM-THRID: 6254805477248466944
X-Received: by 10.66.163.4 with SMTP id ye4mr36391214pab.23.1456310385342;
        Wed, 24 Feb 2016 02:39:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.112 with SMTP id j103ls2889608qge.57.gmail; Wed, 24 Feb
 2016 02:39:44 -0800 (PST)
X-Received: by 10.129.3.69 with SMTP id 66mr35280291ywd.41.1456310384432;
        Wed, 24 Feb 2016 02:39:44 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id yd9si312020pab.1.2016.02.24.02.39.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 02:39:44 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id c10so11360020pfc.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 02:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Ct8kiE5TjZjZbtywdZi/JBeOm8tNlkOkYe8Xzl2zMm0=;
        b=ozikkqD7H1IFsCYumMEy1X0y6VAo3C+itwzrNKUwjlPkLBCW0XtP7KXdyeLylAjICM
         f9IyC0uf+P0GCXxKEPo3m82eizQt+aNneqFqYmoB3ePgxLxYQ5kfcJUHOHAWSmGTWP1M
         JNm2z7cr2yB7l2YyqVNVUAZZBlAR5ANmxYhgc2HC8aRj6L+T18rpuwADgbgaZ89hCMNs
         gGVfoEXn7cc8ceTt4enDRPBf5GkDQXUccdPQcS+F1cbpNcByrWmJh/f2BzrPrA5RoQwX
         UkNkB7I3DVVmbD3AfqhtA9o/Yue2NsjRchbh+3PW2i7sEeDbvBjUlq8cyuAkQ0OvU/Eq
         onRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ct8kiE5TjZjZbtywdZi/JBeOm8tNlkOkYe8Xzl2zMm0=;
        b=e898JElzd6fb0MQBD/xKpAz5EJY9iML/vuefLb3tEyRTqbzGkea04cheEey+DpdB5A
         PcnTMK3GhcrD99S6D3Skw/rOAbuUtdjzfspnBIWKYJLDER5is5i+n77Eb/vPPw8g40+4
         wLA+I951/fmDDMxmTqslo0nijv75QlPfddqhKY2kyqNoMCXFURrJnE7nXyJTJRbQ+G/S
         hAnd0f6ev/dH4pv233TdiLgL52euYyEzhUm09zr5rZcsjPssWjVrKbhun7gQzajpCCGe
         kAdTPU5CW634FKYYppgyyKX+M9h6yZzcEgCjvzJPVUTqmNupKF1dTPDUK47dKlTx1yBu
         uy4A==
X-Gm-Message-State: AG10YOQ1leBldkFD2RVXxz9Wup8pcrjWvTx5kDPry7SEwe4qBjZa8ZKENHBXhTaLGdSkPA==
X-Received: by 10.98.12.133 with SMTP id 5mr54073579pfm.20.1456310384223;
        Wed, 24 Feb 2016 02:39:44 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.141.103])
        by smtp.gmail.com with ESMTPSA id xm10sm4028923pab.12.2016.02.24.02.39.39
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 02:39:43 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 24 Feb 2016 16:09:32 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8712: Clean up tests if NULL returned on failure
Date: Wed, 24 Feb 2016 16:09:31 +0530
Message-Id: <1456310371-7930-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Some functions like kmalloc/usb_alloc_urb/kmalloc_array returns NULL as
their return value on failure. !x is generally preferred over x==NULL
or NULL==x so make use of !x if the value returned on failure
by these functions is NULL.
Done using coccinelle:

@@
expression e;
statement S;
@@
e = \(kmalloc\|devm_kzalloc\|kmalloc_array
     \|devm_ioremap\|usb_alloc_urb\|alloc_netdev\)(...);
- if(e==NULL)
+ if(!e)
  S

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c      | 2 +-
 drivers/staging/rtl8712/rtl871x_io.c      | 2 +-
 drivers/staging/rtl8712/rtl871x_mlme.c    | 6 +++---
 drivers/staging/rtl8712/rtl871x_mp.c      | 4 ++--
 drivers/staging/rtl8712/rtl871x_sta_mgt.c | 2 +-
 drivers/staging/rtl8712/rtl871x_xmit.c    | 8 ++++----
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 2f5460d..be970ef 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -56,7 +56,7 @@ int r8712_os_recvbuf_resource_alloc(struct _adapter *padapter,
 
 	precvbuf->irp_pending = false;
 	precvbuf->purb = usb_alloc_urb(0, GFP_KERNEL);
-	if (precvbuf->purb == NULL)
+	if (!precvbuf->purb)
 		res = _FAIL;
 	precvbuf->pskb = NULL;
 	precvbuf->reuse = false;
diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
index fbbc635..3a10940 100644
--- a/drivers/staging/rtl8712/rtl871x_io.c
+++ b/drivers/staging/rtl8712/rtl871x_io.c
@@ -113,7 +113,7 @@ uint r8712_alloc_io_queue(struct _adapter *adapter)
 	struct io_req *pio_req;
 
 	pio_queue = kmalloc(sizeof(*pio_queue), GFP_ATOMIC);
-	if (pio_queue == NULL)
+	if (!pio_queue)
 		goto alloc_io_queue_fail;
 	INIT_LIST_HEAD(&pio_queue->free_ioreqs);
 	INIT_LIST_HEAD(&pio_queue->processing);
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 1b022db..14a780e 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -64,7 +64,7 @@ static sint _init_mlme_priv(struct _adapter *padapter)
 	memset(&pmlmepriv->assoc_ssid, 0, sizeof(struct ndis_802_11_ssid));
 	pbuf = kmalloc_array(MAX_BSS_CNT, sizeof(struct wlan_network),
 			     GFP_ATOMIC);
-	if (pbuf == NULL)
+	if (!pbuf)
 		return _FAIL;
 	pmlmepriv->free_bss_buf = pbuf;
 	pnetwork = (struct wlan_network *)pbuf;
@@ -1202,7 +1202,7 @@ sint r8712_set_auth(struct _adapter *adapter,
 	struct setauth_parm *psetauthparm;
 
 	pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
-	if (pcmd == NULL)
+	if (!pcmd)
 		return _FAIL;
 
 	psetauthparm = kzalloc(sizeof(*psetauthparm), GFP_ATOMIC);
@@ -1232,7 +1232,7 @@ sint r8712_set_key(struct _adapter *adapter,
 	sint ret = _SUCCESS;
 
 	pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
-	if (pcmd == NULL)
+	if (!pcmd)
 		return _FAIL;
 	psetkeyparm = kzalloc(sizeof(*psetkeyparm), GFP_ATOMIC);
 	if (psetkeyparm == NULL) {
diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index 44da4fe..9b5a4e7 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -281,10 +281,10 @@ void r8712_SetChannel(struct _adapter *pAdapter)
 	u16 code = GEN_CMD_CODE(_SetChannel);
 
 	pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
-	if (pcmd == NULL)
+	if (!pcmd)
 		return;
 	pparm = kmalloc(sizeof(*pparm), GFP_ATOMIC);
-	if (pparm == NULL) {
+	if (!pparm) {
 		kfree(pcmd);
 		return;
 	}
diff --git a/drivers/staging/rtl8712/rtl871x_sta_mgt.c b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
index 3fe45b6..e90c00d 100644
--- a/drivers/staging/rtl8712/rtl871x_sta_mgt.c
+++ b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
@@ -53,7 +53,7 @@ u32 _r8712_init_sta_priv(struct	sta_priv *pstapriv)
 
 	pstapriv->pallocated_stainfo_buf = kmalloc(sizeof(struct sta_info) *
 						   NUM_STA + 4, GFP_ATOMIC);
-	if (pstapriv->pallocated_stainfo_buf == NULL)
+	if (!pstapriv->pallocated_stainfo_buf)
 		return _FAIL;
 	pstapriv->pstainfo_buf = pstapriv->pallocated_stainfo_buf + 4 -
 		((addr_t)(pstapriv->pallocated_stainfo_buf) & 3);
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 7089ebd..8e455f0 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -89,7 +89,7 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	*/
 	pxmitpriv->pallocated_frame_buf = kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4,
 						  GFP_ATOMIC);
-	if (pxmitpriv->pallocated_frame_buf == NULL) {
+	if (!pxmitpriv->pallocated_frame_buf) {
 		pxmitpriv->pxmit_frame_buf = NULL;
 		return _FAIL;
 	}
@@ -128,7 +128,7 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	_init_queue(&pxmitpriv->pending_xmitbuf_queue);
 	pxmitpriv->pallocated_xmitbuf = kmalloc(NR_XMITBUFF * sizeof(struct xmit_buf) + 4,
 						GFP_ATOMIC);
-	if (pxmitpriv->pallocated_xmitbuf  == NULL)
+	if (!pxmitpriv->pallocated_xmitbuf)
 		return _FAIL;
 	pxmitpriv->pxmitbuf = pxmitpriv->pallocated_xmitbuf + 4 -
 			      ((addr_t)(pxmitpriv->pallocated_xmitbuf) & 3);
@@ -137,7 +137,7 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 		INIT_LIST_HEAD(&pxmitbuf->list);
 		pxmitbuf->pallocated_buf = kmalloc(MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ,
 						   GFP_ATOMIC);
-		if (pxmitbuf->pallocated_buf == NULL)
+		if (!pxmitbuf->pallocated_buf)
 			return _FAIL;
 		pxmitbuf->pbuf = pxmitbuf->pallocated_buf + XMITBUF_ALIGN_SZ -
 				 ((addr_t) (pxmitbuf->pallocated_buf) &
@@ -943,7 +943,7 @@ static void alloc_hwxmits(struct _adapter *padapter)
 	pxmitpriv->hwxmit_entry = HWXMIT_ENTRY;
 	pxmitpriv->hwxmits = kmalloc_array(pxmitpriv->hwxmit_entry,
 				sizeof(struct hw_xmit), GFP_ATOMIC);
-	if (pxmitpriv->hwxmits == NULL)
+	if (!pxmitpriv->hwxmits)
 		return;
 	hwxmits = pxmitpriv->hwxmits;
 	if (pxmitpriv->hwxmit_entry == 5) {
-- 
1.9.1


