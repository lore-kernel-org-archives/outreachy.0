X-GM-THRID: 6250074723420471296
X-Received: by 10.50.56.19 with SMTP id w19mr15608102igp.13.1455208920737;
        Thu, 11 Feb 2016 08:42:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.87.4 with SMTP id t4ls611458obz.56.gmail; Thu, 11 Feb 2016
 08:42:00 -0800 (PST)
X-Received: by 10.182.87.2 with SMTP id t2mr44036252obz.20.1455208920336;
        Thu, 11 Feb 2016 08:42:00 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x230.google.com (mail-qg0-x230.google.com. [2607:f8b0:400d:c04::230])
        by gmr-mx.google.com with ESMTPS id y131si658882ywc.0.2016.02.11.08.42.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 08:42:00 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) client-ip=2607:f8b0:400d:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x230.google.com with SMTP id b67so41982804qgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 08:42:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ZSzvHjbkpd9mVb3gB0mjqICmPLI0+gvr8op8JXXUp5U=;
        b=eCLqQA3r81zvUZVR82h61YDBRn4b2+Kbljx/uDFcz8XaRfEDAhMmbLsdxl5DEIpHxi
         yhxSpfeN8snY0aRpAe7ftrtM+Ju70oTJ9SBbLzqL0QLjVnfE6Gg2AZPgfUwhkOOsarKb
         JyR310kYKPYuypP2YDlekKwiLKz/Xc+CIekSUK1Zk6hUI3CttJmnorK+eAk/6ibY37Zt
         qQYrtKkEIkfd+bssoKNg609CVE1zCq88OJGaTTRkS4QkU0CxcEqjlrvQILgOhJ5ViHCB
         m+dQg80Bkx8ZNSjc/GawwQ8pRCWYprLR+ILuNemCcZAcTdZVC6aSTJWMd6I0ALfYABVp
         ab8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ZSzvHjbkpd9mVb3gB0mjqICmPLI0+gvr8op8JXXUp5U=;
        b=IEO5oE34AgU3oRqdUYtoPLulYhQ2NLBs/dzdYTCkcWG7Ktwpc/WmPeNG0xFf6ownS+
         6aA9AqDPu8pcTfcgi8MzSzpoyMe90KhZSRCrD6cUqEwK1wQeQ7R3oHjdrpneYfNQPdRJ
         QggdO5LNpdevsk2oQWHRawAVX+b0O+uMBD1d6zScd5G17LNUUMQu1XswT/AdiHT+Jn47
         paRcNNh5AACCmhDo4JQxX81KjH7n77FAALpNXLo0TpvY/YmVpMowmrta5g/glmtm1ZKN
         BJ1w3YUX/NNtoolQJrWPR+W1au4rdaw8BL9Kx8XWCXMQpMWg527OOD17TJJHz6ZbkA/g
         N3Ag==
X-Gm-Message-State: AG10YOSVcEXQLX++yiOShxxKoiM5Ua7h6Jst8xixRXX5KqMDdQgVV7I4NH/RRpHopA9WxA==
X-Received: by 10.140.135.147 with SMTP id 141mr40217294qhh.74.1455208920154;
        Thu, 11 Feb 2016 08:42:00 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id w140sm3629607qhb.37.2016.02.11.08.41.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 08:41:59 -0800 (PST)
Date: Thu, 11 Feb 2016 16:41:21 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove unneeded parentheses in assignment
Message-ID: <20160211214121.GA4385@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parentheses around the right hand side of assignments. They are
unnecessary.
Semantic patch:

@@
expression a, b, c;
@@

(
  a = (b == c)
|
  a = 
- (
  b 
- )
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/wilc_sdio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_sdio.c b/drivers/staging/wilc1000/wilc_sdio.c
index 7c20c8c..963875af 100644
--- a/drivers/staging/wilc1000/wilc_sdio.c
+++ b/drivers/staging/wilc1000/wilc_sdio.c
@@ -676,7 +676,7 @@ static int sdio_init(struct wilc *wilc, bool resume)
 
 	if (!resume) {
 		memset(&g_sdio, 0, sizeof(wilc_sdio_t));
-		g_sdio.irq_gpio = (wilc->dev_irq_num);
+		g_sdio.irq_gpio = wilc->dev_irq_num;
 	}
 
 	/**
-- 
2.5.0


