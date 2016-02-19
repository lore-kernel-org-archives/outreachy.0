X-GM-THRID: 6252998244395122688
X-Received: by 10.67.5.233 with SMTP id cp9mr11880625pad.43.1455889633426;
        Fri, 19 Feb 2016 05:47:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.251.202 with SMTP id zm10ls84602obc.51.gmail; Fri, 19 Feb
 2016 05:47:13 -0800 (PST)
X-Received: by 10.182.87.2 with SMTP id t2mr12618246obz.20.1455889633102;
        Fri, 19 Feb 2016 05:47:13 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id u66si1699581pfa.2.2016.02.19.05.47.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 05:47:13 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id e127so51529763pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 05:47:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=as33ITIIas1/oVL/gZjWfL/uuPyyarsSj9jq+MkP/k4=;
        b=bbRx8p7xM6DX2YdGb7vl3YQDhBbMgoh7k21xN+OYNIHIWrf8eAflehNLedwadNebKD
         lLBvzVMpNGFWCWg6e+fziXiH+3XsA8CdTopWa2NaW8ERWlf7bjWEg6eP3AYMnAcJQx2x
         0oZ61PKz/adfnQXLKbb1vr0/t5ylNABZNg3KFxUc9ZmAxnu0raReRitziZ2mDCCrTepp
         //41xaK8iyLa6Xu1IIFB63i2Ssu7N9sVlA72qFD5EvmtkZv5Pc4MEH+2Xmt9BrzUWJ6G
         8PkRrYNhqUtU2Azl+KJxG8nAxKIwDD8jGLNYa/veOku3WlzVEv8y7Ba0xSTH3jPtwy2V
         ZU6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=as33ITIIas1/oVL/gZjWfL/uuPyyarsSj9jq+MkP/k4=;
        b=YmouQfvLuMOzSZkDmSPNGHwEIEniT7C0f1D8rA/CNMfbM9iTQ9kTrG6p0jYLeGEc27
         IHI35vN3xpO8yUoGmBJd1IBPR+HJozRtd+hbK0Qeg3gyKU9PbLlo49vnK8KMSDMIKnR3
         RYlUYqoHuSxaXYBkbV/vH14ViPiXHP1W4QM5cpEemX872y+cq+RNsFhcWdFd9wVxKoEx
         K1lTdZfIqzNdR3lh9eBoIYKCon+URxaEMUhe22FND115I0k7dLNQ/FSbjGt2Cx8+LsKz
         F7Cgd5pBmZcMJjd+1SnS/nFMPlEOtmF/vIneoIM/rrV248lnPrda4YWn33Zcnh0TeVk0
         QABQ==
X-Gm-Message-State: AG10YOScEHs+a4vnWicaOtXVs0a8fsCPcQgBa3+tA/5Ju4j7lfPKUj0XDuVLr7HSoSG+ug==
X-Received: by 10.98.11.134 with SMTP id 6mr18386617pfl.109.1455889632983;
        Fri, 19 Feb 2016 05:47:12 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id yj1sm18205521pac.16.2016.02.19.05.47.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 05:47:12 -0800 (PST)
Date: Fri, 19 Feb 2016 19:17:43 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: rtl8712: Place constants on the right side
Message-ID: <20160219134743.GA19996@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move constants to the right of binary operators.
This issue was identified using the Coccinelle script:
misc/compare_const_fl.cocci

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index d187508..4fd106a 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -1109,7 +1109,7 @@ static void recv_tasklet(void *priv)
 	struct _adapter *padapter = (struct _adapter *)priv;
 	struct recv_priv *precvpriv = &padapter->recvpriv;

-	while (NULL != (pskb = skb_dequeue(&precvpriv->rx_skb_queue))) {
+	while ((pskb = skb_dequeue(&precvpriv->rx_skb_queue)) != NULL) {
 		recvbuf2recvframe(padapter, pskb);
 		skb_reset_tail_pointer(pskb);
 		pskb->len = 0;
--
2.1.4


