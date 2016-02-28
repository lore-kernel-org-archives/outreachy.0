X-GM-THRID: 6256431065023381504
X-Received: by 10.50.171.137 with SMTP id au9mr372692igc.7.1456688871316;
        Sun, 28 Feb 2016 11:47:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.230 with SMTP id j93ls1970977qgd.64.gmail; Sun, 28 Feb
 2016 11:47:50 -0800 (PST)
X-Received: by 10.129.27.3 with SMTP id b3mr10149168ywb.0.1456688870900;
        Sun, 28 Feb 2016 11:47:50 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ff2si3439190pad.2.2016.02.28.11.47.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:47:50 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id t66so3501865pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 11:47:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wQF/5KEIV32Z1dm0ZDJ+TOViqWZBicGYnuSQJDAddaY=;
        b=D9T1fyExLTVReXb+Ib2musQSuer7CLdq57wfVpm3AaJggoqhlkfQrrPXr0BI/Kg/1h
         p1iH/fB0i6wUxLZZfP2B9ezQZI+lLwvNo/4RQUdUGJGOdyk5q/i7u5/wnY/iKShPHOur
         2J+N4pU3fx6xHEGR5i6OqjGlqJDwTxkdxN/TorQ2IZwQgDcrWVyAI+NEJd+ofcCn/Ed7
         WO8I5wauB9Qrem+XY5V/oCHxPhzat2UKsp/k7yAPmzOcnYYwo2g+GKuMf75rqczFxB7i
         V1fJ8Zn9PmorqL+JLjbqvBl+1oNFSdtXUnwt9PO7YtTAIiVf3WeiJCOpJQJgZPSjn4et
         lwJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wQF/5KEIV32Z1dm0ZDJ+TOViqWZBicGYnuSQJDAddaY=;
        b=FrhMGJkFYiETNxdAC0a4amUaYMeim/h0N4i2pbGSFld43eBH/eskRU16+OCAHvzKDn
         yOjwO1A/ULbwx3rUl469o2LNui9P1eqeMaPl6o7ni/v6gaS/tmUzaCNd6AcWi13SylS1
         AcqIjSKuWD32RRogdC2ZqCwPuVe3HltSEUi7gLkazh5nVcVpINKVLZ+cnw+XomA9lSHO
         XxKxuzPS3xzUWA4PzJntQ4VsGAM6bOTspURoMhE/Ke9YyrRRkPISiIUwO4beZciJKJXG
         V0RV2l7Wf7eYD/eKbqlia2ysgGjELXtyjrfXGT1cjPqvjXvENm83SPw0Q2Rkakpwt0ao
         yc8Q==
X-Gm-Message-State: AD7BkJLzFh38McPTtT61SCJS41YKSjsRrtcHEVY1pXj4zIg2suc8TShA8dlinBJxcmjCpQ==
X-Received: by 10.98.67.92 with SMTP id q89mr17154470pfa.137.1456688870720;
        Sun, 28 Feb 2016 11:47:50 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id fk9sm32880407pad.9.2016.02.28.11.47.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 11:47:50 -0800 (PST)
Date: Mon, 29 Feb 2016 01:15:03 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: rtl8188eu: os_dep: Remove NULL test before vfree
Message-ID: <20160228194503.GA1774@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

vfree frees the virtually continuous memory area starting at addr.
If addr is NULL, no operation is performed. So NULL test is not needed
before vfree.

This was done using Coccinelle:

@@
expression x;
@@
-if (x != NULL)
    vfree(x);

@@
expression x;
@@

-if (x != NULL) {
    vfree(x);
    x = NULL;
-}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/usb_intf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index 6a68f17..e8d2236 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -442,7 +442,7 @@ free_adapter:
 	if (status != _SUCCESS) {
 		if (pnetdev)
 			rtw_free_netdev(pnetdev);
-		else if (padapter)
+		else
 			vfree(padapter);
 		padapter = NULL;
 	}
--
2.1.4


