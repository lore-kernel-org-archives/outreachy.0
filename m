X-GM-THRID: 6253656670961926144
X-Received: by 10.67.30.161 with SMTP id kf1mr21435080pad.21.1456042907257;
        Sun, 21 Feb 2016 00:21:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.168.83 with SMTP id r80ls571967ioe.88.gmail; Sun, 21 Feb
 2016 00:21:47 -0800 (PST)
X-Received: by 10.66.141.102 with SMTP id rn6mr21609550pab.26.1456042906995;
        Sun, 21 Feb 2016 00:21:46 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id ui7si2555631pab.0.2016.02.21.00.21.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 00:21:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id x65so75464684pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 00:21:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=oxHbGK4Rc15Orf+e0h5QtvpIuvNEO+yiKer6VnHjg1o=;
        b=GJTAmysCB3k98/itq1vgh7nalmiVRAr040LaA6fu6YMCLoDmYiT5L2OaKFFCiIZFEt
         r9P6jT9tCaY/mHsxRwepnP1hs+zaSNjWTrr87bW4+nAZvFQc5jHMG1GShMCVhFWuLbK4
         pQ4qRhS5KcNN8CRwAXyASGrSpopV37I8Q2UU5Sia4zxFIpgEAoOPIRZP48PhsXBL5LmG
         kFEASDStvmqH1v4CdYxzHFRZnCxxyOvE8qQ2ps1+jIkv6/JQjTidDdifUHYo1Soc4JSP
         BrPBAuXhrWhZ/AdCIfdoxI9533C/EDhxg3sYW3H+DB33Pv5wlguRYLO8eHhPZDu00tUE
         oHIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=oxHbGK4Rc15Orf+e0h5QtvpIuvNEO+yiKer6VnHjg1o=;
        b=JZV8nJUZ/cmjemJ+eDEeXo4Sv+yzef6rYyZLE30N3bF997zcjd7PBZMKZmgqyj5zQB
         nyjRlrQ/A8rcPB+x5otf0zxuFVGmyNdjEoM7IXzs/tLphFMfLTXU6lW26ZF9TTK7RJUo
         obZpSY4seZ1cxSTy/Rs5kCCjb+Hv34AGpPkH1LQ6AjE91OwcdTuPcQKmA6YfF+S1dPd5
         x4FzmB2pRQNsCH8Mr72v+kXNkCJp4bWE3uqgUOWB/qHhG6QOwy+CoZfhx7dDl6BGWjN2
         XEUk8E6MxomgJVGQOxG4rivD2UHn5I3pj32VFfBfg0TmhCyZQs542O2d8eDQ7/LrCXjo
         SlsQ==
X-Gm-Message-State: AG10YOR+Ez39AaHpLkhbR7rRVwKsPeqI/vVKBH/gkQUbv+yJjIwRB2Q//On3CJF7XlB88g==
X-Received: by 10.98.64.132 with SMTP id f4mr29739686pfd.159.1456042906890;
        Sun, 21 Feb 2016 00:21:46 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 70sm28623353pfs.78.2016.02.21.00.21.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 00:21:46 -0800 (PST)
Date: Sun, 21 Feb 2016 13:52:18 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: rtl8712: Place constants on the right side
 of '!'
Message-ID: <20160221082218.GA24246@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move constants to the right of binary operator '!'.
This issue was identified using the Coccinelle script:
@@
constant c,c1;
expression e,e1,e2;
local idexpression i;
binary operator b = {==,!=,&,|};
@@

(
c b (c1)
|
i b e1
|
c | e1 | e2 | ...
|
c | (e ? e1 : e2)
|
- c
+ e
b
- e
+ c
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-change subject line
	-inserted Coccinelle script
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


