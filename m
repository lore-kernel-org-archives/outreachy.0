X-GM-THRID: 6388342428982575104
X-Received: by 10.99.168.71 with SMTP id i7mr4345169pgp.116.1487425372396;
        Sat, 18 Feb 2017 05:42:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.48.159 with SMTP id s31ls167635otc.10.gmail; Sat, 18 Feb
 2017 05:42:51 -0800 (PST)
X-Received: by 10.157.14.66 with SMTP id n2mr1885720otd.89.1487425371771;
        Sat, 18 Feb 2017 05:42:51 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z73si1343022pfa.2.2017.02.18.05.42.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 05:42:51 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e4so6201635pfg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 05:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Dv4nIhKjG5OKCAAXJ6OLywtIIDMIwiPSI1TjcoK4lao=;
        b=uWse4fCONFp5TXKC3KGbubdPSEvECY628udJDMZwQmx1r6ziESLP+ZRzQTknHGofS3
         cWo+YUDm6aUvKULo3AVZlLfyGX8jJgiYxUSVhgPRwIsIsLQGiY/noxQgfut0BhEzvJXD
         hyOx5UcrbzyZF6Gg7EvGA5mnz36cwM47BdXVqh/wt9YnUfQEzXRI6oEC8pGhV4RW+gFT
         Dc37+p1xHhH1/x+gIsHd1Gt501LdLNdsj6HGbFfG3J32bgSbOb66YAwk9+xtIZyI1rmn
         svXouwWXPg9hULU+Xws/S4kQqk0lUw4+DVv0uw71bRByyu8w/+2iu3cE4xK+owzBfiAM
         XsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Dv4nIhKjG5OKCAAXJ6OLywtIIDMIwiPSI1TjcoK4lao=;
        b=sw4EIn5IdJa/qZW6m81Zy3SPS+R83vIypE+wgpDzDLxXHrHI9/W0t2Z2iy62q2+yRu
         LMcj2CY0Cy6nZBlxWf9FGnMfWIwyAIEQ1XT/Tmz+vwD1jwlsPKM89rNy3pZNiAQRNFfp
         h0LMxedLByjtPKccx91veM3xM/QDwz/1FqIGn0oj554b9+BmvEz5GOFwDxqBl6fnVNDf
         0M9heTDaz4XnWxYJbAWC5Chr7k/O/tsMPU0wgu293XEjjzNgTn7BbLeHhBXRGwSroRTn
         dE2hr/Z7X5n7kls6CvmkQmPc/ldfBnSqwG3+4C6C85GZg0cZ+7dIE8ahyNJ71htFsCAw
         VmHw==
X-Gm-Message-State: AMke39nc6k35U0neI4Cq4LZXQ9u+qxPmdOc3ZziGtD+jUY2rHD8fAd+Rhj941qqnZqLzDw==
X-Received: by 10.99.1.87 with SMTP id 84mr16286370pgb.142.1487425371543;
        Sat, 18 Feb 2017 05:42:51 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n123sm25644042pga.9.2017.02.18.05.42.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 05:42:50 -0800 (PST)
Date: Sat, 18 Feb 2017 19:12:48 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] staging: rtl8192e: Replaced comparison to NULL
 statements
Message-ID: <20170218134248.GA21186@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes the explicit NULL comparison. This issue was found by
checkpatch.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v2:
   -Modified commit message

 drivers/staging/rtl8192e/rtl819x_BAProc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 20260af..bdbd21c 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -83,12 +83,12 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 	netdev_dbg(ieee->dev, "%s(): frame(%d) sentd to: %pM, ieee->dev:%p\n",
 		   __func__, type, Dst, ieee->dev);
 
-	if (pBA == NULL) {
+	if (!pBA) {
 		netdev_warn(ieee->dev, "pBA is NULL\n");
 		return NULL;
 	}
 	skb = dev_alloc_skb(len + sizeof(struct rtllib_hdr_3addr));
-	if (skb == NULL)
+	if (!skb)
 		return NULL;
 
 	memset(skb->data, 0, sizeof(struct rtllib_hdr_3addr));
@@ -154,7 +154,7 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
 	DelbaParamSet.field.TID	= pBA->BaParamSet.field.TID;
 
 	skb = dev_alloc_skb(len + sizeof(struct rtllib_hdr_3addr));
-	if (skb == NULL)
+	if (!skb)
 		return NULL;
 
 	skb_reserve(skb, ieee->tx_headroom);
-- 
2.7.4


