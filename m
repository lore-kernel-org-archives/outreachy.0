X-GM-THRID: 6254962790992183296
X-Received: by 10.50.150.98 with SMTP id uh2mr2050453igb.2.1456397218804;
        Thu, 25 Feb 2016 02:46:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.58.110 with SMTP id p14ls46319obq.6.gmail; Thu, 25 Feb
 2016 02:46:58 -0800 (PST)
X-Received: by 10.182.247.68 with SMTP id yc4mr40944182obc.34.1456397218509;
        Thu, 25 Feb 2016 02:46:58 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u66si1178956pfa.2.2016.02.25.02.46.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 02:46:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id w128so2612839pfb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 02:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Tf7m2Hy8kwX2ZY25xvrXPwDHCzUFMYax9V18oVlFE2o=;
        b=MAIz1mQhfNkCxDdbhdbtNPenQfg3+RS2WC0F12bcYQJaSDR7374/wKDKVrYz2HbVFC
         pDhYYJYT3O8izaFTbffdQ9CMUUX4KnEYjQzRXGewKYu0GI95jVx2ScqClJ1xMf2tMcpB
         NLOvHl5ACWg+Ql8QgmTsFLTWTu42qoYk6b9m60DXkgE2HyIG0wQgKd8mi3C8XUpbsMCH
         4yWuh7GuFSWGv3gyMf7CE3TBB0y1D33EAJ2qvnt9dJyCWxY+us4Tk9So1Mu2dHh9tdUx
         szMWJmmms6KCBkCJxtX29uh5a9iTgfNuPjkXAMSsAGCDyRSSXHE429mnwJqw12RQHgPp
         CmpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Tf7m2Hy8kwX2ZY25xvrXPwDHCzUFMYax9V18oVlFE2o=;
        b=Btwz5yqu89kBXyZ7KAN02fNUsLo1yF/lv8HB19ZpyG2tUObQ9m01HABx3sSaCMz0WM
         TK86LKA1s/v/iUUGgZgQz+QIIryp5ki1UomAdcCoYbwZ+1UO3lv+hujHB2X3UFNLJiEH
         tI+tdCdqHC2A3QVq+/JXRUi/4yQRptiGo3460PVJQ3W6+t9I8Mo/FaWGz7/o8dGrx+Lv
         Ocz7gtthcNdW3d3Qdm04y4dxwBmGNQ9N+BnZFSu7iN0dT1Ozdjn11GrX7IHfkVk9gfQC
         hYqrHTM7PP88vBQRkFlljwiZG6QoqhR2UMkVu0bSsh/0VjCkbgbn9wlgzb+TV/706SKp
         J4XA==
X-Gm-Message-State: AG10YORoOhB/0LbDFXEOhV3fvymCFwMKWvTRvy1DGuLHKA639DGrNzZdjWM6MGAFfKsfPg==
X-Received: by 10.98.10.86 with SMTP id s83mr61902579pfi.85.1456397218341;
        Thu, 25 Feb 2016 02:46:58 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ko9sm11332304pab.37.2016.02.25.02.46.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 02:46:57 -0800 (PST)
Date: Thu, 25 Feb 2016 16:17:33 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rtl8712: Make return of 0 explicit
Message-ID: <20160225104732.GA27930@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Delete unnecessary local variable whose value is always 0 and
return 0 as the result.

The following Coccinelle script was used:

@@
identifier ret; expression E;
type T;
@@
(
- T ret;
|
- T ret = 0;
)

... when != \(ret=E
\|ret--\|ret++\|--ret\|++ret\|ret-=E\|ret+=E\|ret|=E\|ret&=E\)
(
?-ret = 0;
)
... when != \(ret=E
\|ret--\|ret++\|--ret\|++ret\|ret-=E\|ret+=E\|ret|=E\|ret&=E\)
(
return
- ret
+ 0
;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v3:
	-Changed Coccinelle script to remove all occurrences of the variable
	-Changed Coccinelle script to replace every return associated with the
	 variable with return 0

 drivers/staging/rtl8712/xmit_linux.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
index adb51f0..8c15308 100644
--- a/drivers/staging/rtl8712/xmit_linux.c
+++ b/drivers/staging/rtl8712/xmit_linux.c
@@ -163,19 +163,15 @@ int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev)
 	struct xmit_frame *pxmitframe = NULL;
 	struct _adapter *padapter = netdev_priv(pnetdev);
 	struct xmit_priv *pxmitpriv = &(padapter->xmitpriv);
-	int ret = 0;

 	if (!r8712_if_up(padapter)) {
-		ret = 0;
 		goto _xmit_entry_drop;
 	}
 	pxmitframe = r8712_alloc_xmitframe(pxmitpriv);
 	if (!pxmitframe) {
-		ret = 0;
 		goto _xmit_entry_drop;
 	}
 	if ((!r8712_update_attrib(padapter, pkt, &pxmitframe->attrib))) {
-		ret = 0;
 		goto _xmit_entry_drop;
 	}
 	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_TX);
@@ -187,11 +183,11 @@ int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev)
 	}
 	pxmitpriv->tx_pkts++;
 	pxmitpriv->tx_bytes += pxmitframe->attrib.last_txcmdsz;
-	return ret;
+	return 0;
 _xmit_entry_drop:
 	if (pxmitframe)
 		r8712_free_xmitframe(pxmitpriv, pxmitframe);
 	pxmitpriv->tx_drop++;
 	dev_kfree_skb_any(pkt);
-	return ret;
+	return 0;
 }
--
2.1.4


