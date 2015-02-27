X-GM-THRID: 4475579269120
X-Received: by 10.194.178.234 with SMTP id db10mr2038083wjc.2.1425041499520;
        Fri, 27 Feb 2015 04:51:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.9.6 with SMTP id v6ls166667laa.13.gmail; Fri, 27 Feb 2015
 04:51:39 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr2034891lan.1.1425041499086;
        Fri, 27 Feb 2015 04:51:39 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id l8si147524wia.0.2015.02.27.04.51.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:51:39 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevm14 with SMTP id m14so20169177wev.13
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=kXnLVM5qsrUU03ITbIZhhZ3A+/9Fb+D/orhl8o+a4U8=;
        b=CAJSk3ds1WGqFA6KZHr7957xt0B5Fy7kuWMcCtPS4P03mtlvihfeqvde3FzDC5hbjV
         b9deIm2xKkuaYL5cjy93+2E5cCf7P2ivLuhzNEVLaTXaJLnwpWocWHWO/J/IikXqi9Ta
         QzMLzFWNKhzHyTG92IHLbPmzI0ihCfa9xH+Nv46ojBYAtfXicd9pM/Bw4CWQVDDu/zXO
         kyFr587RU1vRkavKmFhjOHt8D76tUreLHLshQk3P+WuN5iKn++yvPWvpzPYfvGp+7n2Y
         ONyq2U8QwGs7iVYQ4bxARjPjSlNPDrIfeThflvbW6ptxoRv1UUPoI6jDKaVLlAD+l/CE
         NtBg==
X-Received: by 10.181.8.225 with SMTP id dn1mr6238483wid.55.1425041498996;
        Fri, 27 Feb 2015 04:51:38 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id jy7sm2660017wid.22.2015.02.27.04.51.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:51:38 -0800 (PST)
Date: Fri, 27 Feb 2015 14:51:29 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 03/24] staging: vt6655: remove unused variable
Message-ID: <2a259425c6cec24c758ac350dafc709fb670a241.1425035004.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes a variable that was simply used to
store the return value of a function call before
returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 07ce3fd..ac8c8b5 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -1505,8 +1505,6 @@ int vnt_beacon_make(struct vnt_private *priv, struct ieee80211_vif *vif)
 int vnt_beacon_enable(struct vnt_private *priv, struct ieee80211_vif *vif,
 		      struct ieee80211_bss_conf *conf)
 {
-	int ret;
-
 	VNSvOutPortB(priv->PortOffset + MAC_REG_TFTCTL, TFTCTL_TSFCNTRST);
 
 	VNSvOutPortB(priv->PortOffset + MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);
@@ -1515,7 +1513,5 @@ int vnt_beacon_enable(struct vnt_private *priv, struct ieee80211_vif *vif,
 
 	CARDbSetBeaconPeriod(priv, conf->beacon_int);
 
-	ret = vnt_beacon_make(priv, vif);
-
-	return ret;
+	return vnt_beacon_make(priv, vif);
 }
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

