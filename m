X-GM-THRID: 6205501309830823936
X-Received: by 10.182.215.226 with SMTP id ol2mr2700205obc.11.1444830864927;
        Wed, 14 Oct 2015 06:54:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.88.42 with SMTP id bd10ls181886igb.27.gmail; Wed, 14 Oct
 2015 06:54:24 -0700 (PDT)
X-Received: by 10.68.131.193 with SMTP id oo1mr2678997pbb.6.1444830864581;
        Wed, 14 Oct 2015 06:54:24 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id zg1si904502pbb.2.2015.10.14.06.54.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 06:54:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id ur7so6344649pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 06:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=qyYsnS62xi4sNYvqafOKyPUdHYO7+ZX/IJ5LJ/dxHuY=;
        b=Vb8rcrcTpxOfyUkTK8vW3HwkZpUj0JrxwJwiqgNaFWOU3GIgHbEjENQuyBD/fUeg09
         ezgJdTy2aPLPjWWipBPN8tjbssXV8dnuy2jYeiXU4JZ+U0LJVP4Qvk/AU5sctNowuyDa
         4sYhgjfHToW1gbmtJ9aCi/ik30A3yDEfJknaSKSHOwTkxBtFC41EzIQuSYu3Z7RVSZ8X
         fWTaOmNtz6DbW4s/9xwvWUoKgIBRsns1YoGDe4ieWqkC5AZfoj30uLUZRo/Pk+Se5R0e
         i7k9HV3fBwn5KihjytHDnUgU5sQeV8iVRoXFaaHAA7P8IG2ra6XMxC73hjc8b6N7j4Mp
         zYkw==
X-Received: by 10.68.93.194 with SMTP id cw2mr3922624pbb.36.1444830864498;
        Wed, 14 Oct 2015 06:54:24 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id q8sm9962634pap.34.2015.10.14.06.54.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 06:54:23 -0700 (PDT)
Date: Wed, 14 Oct 2015 19:24:10 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: usb_ops_linux: Remove useless cast
Message-ID: <20151014135410.GA15869@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Explicit type conversion is not required and should be removed.
Semantic patch used:
@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8712/usb_ops_linux.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index 9d0d031..c940722 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
@@ -170,7 +170,7 @@ void r8712_usb_write_mem(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *wmem)
 	unsigned int pipe;
 	struct _adapter *padapter = (struct _adapter *)pintfhdl->adapter;
 	struct intf_priv *pintfpriv = pintfhdl->pintfpriv;
-	struct io_queue *pio_queue = (struct io_queue *)padapter->pio_queue;
+	struct io_queue *pio_queue = padapter->pio_queue;
 	struct dvobj_priv *pdvobj = (struct dvobj_priv *)pintfpriv->intf_dev;
 	struct usb_device *pusbd = pdvobj->pusbdev;
 	struct urb *piorw_urb = pintfpriv->piorw_urb;
@@ -259,7 +259,7 @@ u32 r8712_usb_read_port(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *rmem)
 	struct recv_buf	*precvbuf = (struct recv_buf *)rmem;
 	struct intf_priv *pintfpriv = pintfhdl->pintfpriv;
 	struct dvobj_priv *pdvobj = (struct dvobj_priv *)pintfpriv->intf_dev;
-	struct _adapter *adapter = (struct _adapter *)pdvobj->padapter;
+	struct _adapter *adapter = pdvobj->padapter;
 	struct recv_priv *precvpriv = &adapter->recvpriv;
 	struct usb_device *pusbd = pdvobj->pusbdev;
 
@@ -400,7 +400,7 @@ u32 r8712_usb_write_port(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *wmem)
 	u32 ret, bwritezero;
 	struct urb *purb = NULL;
 	struct _adapter *padapter = (struct _adapter *)pintfhdl->adapter;
-	struct dvobj_priv *pdvobj = (struct dvobj_priv   *)&padapter->dvobjpriv;
+	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct xmit_frame *pxmitframe = (struct xmit_frame *)wmem;
 	struct usb_device *pusbd = pdvobj->pusbdev;
-- 
2.1.0


