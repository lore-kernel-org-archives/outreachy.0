X-GM-THRID: 6201793060535271424
X-Received: by 10.112.40.17 with SMTP id t17mr4282966lbk.10.1443967471716;
        Sun, 04 Oct 2015 07:04:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.152.83 with SMTP id a80ls348423lfe.96.gmail; Sun, 04 Oct
 2015 07:04:31 -0700 (PDT)
X-Received: by 10.112.173.136 with SMTP id bk8mr833811lbc.20.1443967471186;
        Sun, 04 Oct 2015 07:04:31 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id ch7si232016wib.2.2015.10.04.07.04.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 07:04:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id lk2so87335357wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 07:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6yw+yTaNRT2h5vMzy0mW/BB5VAgHMBc29/0xtTqID+I=;
        b=DVUr6IU6S7Sq5Uj5vM8v/wQD/YARCV8bOlE6n0eKybvb83QJ3HJBv3h6qSzQL68/U+
         H1YW70ixJ4sjPeOEGv9YadbAz+mEvVt/cvR3StgQNgaXl7hUHaPB8BC0mt93H6MwyFEJ
         ZVWQ4V5W2IWtA+vbo8lsBoY79ZLTKs1Ezj/oGx3CjM5l9AsMuLEnwdhi3QL5waqu8kpS
         AfsgHvGrQY/eZKW8ECBQmvPbvhAy9Rt/1pM5j/mQjKH2gIUlz6uLNkqLWKIEgxONGAgB
         Y7x6YBD9hpHZSvJDi63Hu1C5cy48mk58e7976UVQCFX2H7La6nmKiYBM7kcdfyEYr3ZC
         G5ww==
X-Received: by 10.180.101.137 with SMTP id fg9mr6939020wib.35.1443967471094;
        Sun, 04 Oct 2015 07:04:31 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.43])
        by smtp.gmail.com with ESMTPSA id x7sm9468756wia.10.2015.10.04.07.04.30
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 07:04:30 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 2/2] Staging: wilc1000: Added 'function' word.
Date: Sun,  4 Oct 2015 17:04:20 +0300
Message-Id: <1443967460-14302-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443967460-14302-1-git-send-email-aybuke.147@gmail.com>
References: <1443967460-14302-1-git-send-email-aybuke.147@gmail.com>

This patch organizing missing written word missing.
Found by checkpatch.pl:
CHECK: 'funcion' may be misspelled - perhaps 'function'?

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 439c828..08f5675 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -296,7 +296,7 @@ static inline u16 get_assoc_resp_cap_info(u8 *data)
 	return cap_info;
 }
 
-/* This funcion extracts the association status code from the incoming       */
+/* This function extracts the association status code from the incoming       */
 /* association response frame and returns association status code            */
 static inline u16 get_asoc_status(u8 *data)
 {
-- 
2.1.4


