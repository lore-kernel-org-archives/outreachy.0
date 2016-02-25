X-GM-THRID: 6254962790992183296
X-Received: by 10.129.132.213 with SMTP id u204mr6128505ywf.5.1456395314879;
        Thu, 25 Feb 2016 02:15:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.205 with SMTP id e196ls337171ioe.47.gmail; Thu, 25 Feb
 2016 02:15:14 -0800 (PST)
X-Received: by 10.107.8.216 with SMTP id h85mr1854708ioi.0.1456395314473;
        Thu, 25 Feb 2016 02:15:14 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id yd9si1075476pab.1.2016.02.25.02.15.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 02:15:14 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id c10so2583555pfc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 02:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8cw2TpiYTi0b1NtpZgid32zlEILQF7SFP9TsVCQBSlw=;
        b=QkFesl8mt4uYp0Z6k3liKmPew0tJJBdGK48LJZ+kKE26t6ev9nLLF5Pb/xD14JHSEO
         H/OLjNJA2SF2ldvchiEI4HW1TpH7eXWHew+GyHOrZPmV3Czxrxnfn9JqVL9AbqgtuKz3
         z53BVNgHgxW+qNWY+5xEVYxhQPsNA0CoUYtclCLhlxrukL4w1oZwxqf3SR3yTUe45bjH
         TFojJqaLUuXj8BHBPbRS7V1dnfdy1eqcWAQHUbGXyq85f9VmGq+a6J49alcr6qnsFusw
         PUPyNMGdoDYNA1ZbN8rOqJw/qeM2nNxQt7JRikH6oc/7TdqdcByr9ZvDGeXaMrpxaUi6
         NF3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=8cw2TpiYTi0b1NtpZgid32zlEILQF7SFP9TsVCQBSlw=;
        b=BMc5UNyDhPa0C7TtSZbdDbL6qi7syheDNasDqR8eD9cQfll+jNOQCj9av0ZxSfmUGp
         l7Dp5HPj2BIBVJWOwOPBgCopbPiBzNBJn59roUddFXmKhcCFnNVy4Q/9yWKFul/5iDWh
         yaDMQRUWcYyu8P7wvHz4aSYAybSjlJFQySjTyUXvNUa9HipePqjeNWw9RkTqjCIyuelI
         JnbzH2hEo8ZI1nvgChnR0iEG5MYmqIxEFsFfi79dQytwYxO5B88b9LY21v/GezCb5I05
         i/1A+PoBHcs0B1kLgo5A3rv/S12Dw/pH8Stpf6Brb2AAXa1xCXx61pldVp/BdGEps0dF
         d32w==
X-Gm-Message-State: AG10YOTscr+7tpb23ndqp/du1fFLJJWQh4PzFcY1bpAmPp8t5Fik8cXHjHnKK6NvA/j66A==
X-Received: by 10.98.43.194 with SMTP id r185mr61723054pfr.24.1456395314315;
        Thu, 25 Feb 2016 02:15:14 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ux2sm11071682pac.46.2016.02.25.02.15.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 02:15:13 -0800 (PST)
Date: Thu, 25 Feb 2016 15:45:49 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8712: Make return of 0 explicit
Message-ID: <20160225101549.GA27308@Karyakshetra>
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


