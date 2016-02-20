X-GM-THRID: 6253429251296460800
X-Received: by 10.107.198.137 with SMTP id w131mr20493483iof.9.1455989957874;
        Sat, 20 Feb 2016 09:39:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.214.7 with SMTP id nw7ls369323obc.93.gmail; Sat, 20 Feb
 2016 09:39:17 -0800 (PST)
X-Received: by 10.182.72.137 with SMTP id d9mr18614615obv.31.1455989957245;
        Sat, 20 Feb 2016 09:39:17 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id u66si2477664pfa.2.2016.02.20.09.39.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 09:39:17 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fy10so67494672pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 09:39:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=cGu8/5JulbfNJ6e6n8StlZFeFMtw/s8s1r/X0gEWz6I=;
        b=yJ/k0Y0PDvqwv0ep3I08P4CtDLk0rMpt3dVEqbHEVbV0FDA3xaUJazEcvBewOo9sfo
         s9veM9WPhFEow2ZHUvn03Cg0oo4SPAkQB8oXmSyp/xFC9qNXIqi6k/jNThdcZEjKn9Co
         tjYykPhN+5+QMW7JMq/iBDhnooqKAx7BNxky/dn73/4c70SNl3q2jXZjwwM5/T+JDhS6
         /m2IxXkZs3juWzYPaMtm0NpdPwAu1xJgyGmZyQlda0cy84reEhQ+B4wkTfaXOc2rpHhA
         5zFcFetE8a9aolKKV5nf53I/YJKxHkZTJmdkYXNoSEBPkg6YE5aTLXVTL0lAozJLwy/w
         taTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=cGu8/5JulbfNJ6e6n8StlZFeFMtw/s8s1r/X0gEWz6I=;
        b=KF+FogU3IEY44SaZVaI8/z5UCcXXOP5BpAXtMMS3Xr1RD4oYakft8GL21xEYHwIlHU
         00v3Fjw0l4e6QEjzi9vg7vebSTyYVhxf+BBKZHOweD798GgE9NQTi8iJLDsiibzNBJlx
         vZWqhcybTUeW3l5b0nh+jlw14HS4AeblI/LOmLe6Rel13pn769d7CFjPyEkBwoXV8Ik/
         +Ed69BpwjvaOq9f9YvVlEvipALIwaifUQ79Za/bn9YE0WKzlKsKEtKOGmhE0yBKVEnTx
         zVdFulK3XuyT5ZAddM1fA4iVfPIxpHjOJeHi4v6STJp9dcLFJb9h8jujkwzkuMKCxWO0
         OoAA==
X-Gm-Message-State: AG10YOQqG0IG0KVYuq9b0nolYdn63UuZeZWYnSfM4aYhvP8OyvWc3begTOMMyzXfnlSIGw==
X-Received: by 10.66.97.7 with SMTP id dw7mr13856155pab.33.1455989957111;
        Sat, 20 Feb 2016 09:39:17 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.155])
        by smtp.gmail.com with ESMTPSA id 3sm25818850pfn.59.2016.02.20.09.39.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 09:39:16 -0800 (PST)
Date: Sat, 20 Feb 2016 15:09:18 +0530
From: Sandhya <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: Convert explicit comparison to NULL to !x.
Message-ID: <20160220093918.GA3487@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Convert explicit comparison to NULL to !x.

Signed-off-by: Sandhya <bankarsandhya512@gmail.com>
---
 drivers/staging/wlan-ng/p80211conv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index 1b02cdf..86fd23f 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -613,7 +613,7 @@ int p80211skb_rxmeta_attach(struct wlandevice *wlandev, struct sk_buff *skb)
 	/* Allocate the rxmeta */
 	rxmeta = kzalloc(sizeof(struct p80211_rxmeta), GFP_ATOMIC);
 
-	if (rxmeta == NULL) {
+	if (!rxmeta) {
 		netdev_err(wlandev->netdev,
 			   "%s: Failed to allocate rxmeta.\n", wlandev->name);
 		result = 1;
-- 
1.8.3.4


