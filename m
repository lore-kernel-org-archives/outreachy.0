X-GM-THRID: 6249264575111233536
X-Received: by 10.129.58.16 with SMTP id h16mr31422375ywa.56.1455020293352;
        Tue, 09 Feb 2016 04:18:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.226 with SMTP id l95ls1868650ioi.95.gmail; Tue, 09 Feb
 2016 04:18:13 -0800 (PST)
X-Received: by 10.66.141.102 with SMTP id rn6mr32802498pab.26.1455020292965;
        Tue, 09 Feb 2016 04:18:12 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22e.google.com (mail-qg0-x22e.google.com. [2607:f8b0:400d:c04::22e])
        by gmr-mx.google.com with ESMTPS id y131si2061232ywc.0.2016.02.09.04.18.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 04:18:12 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) client-ip=2607:f8b0:400d:c04::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22e.google.com with SMTP id b67so51616165qgb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 04:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nM8U62H8KZL/velktuXD5Z8ac623WgVYUwT+ytC83Ss=;
        b=jYJbb1mIbbP9FywfVQbUK14OO11DtC+u0FrbNMHPLwuY05sTAf6IzhJ8B9MilQxT97
         W+FpQBOMfsrn3gav0uW9n1dtSFHKbYUBML6WNCD0KKEbJIpMhxKL/dleZsEIs2ZWiDLM
         Vjz6MKyA0Sya9GYSLdbS4njsfYdYNxIdOyrRLvISVpTiX9eIVKbv56iOetwKqtfWtLtq
         w0e5WzaxTggubozNu1Fs+esPIKYtxuHfQcwt+iJIjsj9/FqP8ZoXBfqre8no7F1bMOKe
         aEvGwyslRZSmbRL0SYYJwEJcmjsPNAVjPaB7GJQCwGquKGa8jU2Re2AmbusJrvrUJzlf
         xivg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=nM8U62H8KZL/velktuXD5Z8ac623WgVYUwT+ytC83Ss=;
        b=TXPUkjNyDWFlw0EYvi2kmlt773AgFC2zutGRwtwF70CLyxZyQGtBm2Gf1ykX2JTTmw
         7l1TSjvKV/mdnVJYXq5/pqDVr2/D+s+6n3vx5y0cawRhKRefq6Gr/jTa0Kris25RJ42b
         OHeyHMkBGxli/fJV/mA5k6Sfkdmd+qGKQOybbyh9DI7fvxm7cEfj5azGgO8kPqRXgnQY
         /qietlzzTDwZmRMsqUgAu6QnghiyU7WH+vaXd5DA/Fciw3R9cnf2bMud6bnbw0Ft8V+D
         A1ggeStOXw04oKFG7AvXX0cMH7hJ4lSN+yZmQm3nst3PslPHA6dIrAc460pnA9eHk31g
         gNfQ==
X-Gm-Message-State: AG10YOTbFeC+dgA+XKKrliJ5sVZb+AHgVlISRXhRfW2nDw91nBIaqEBuaDNsonRVvgawaw==
X-Received: by 10.140.95.119 with SMTP id h110mr40991288qge.105.1455020292744;
        Tue, 09 Feb 2016 04:18:12 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id a88sm3720492qkj.32.2016.02.09.04.18.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 04:18:12 -0800 (PST)
Date: Tue, 9 Feb 2016 12:17:35 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: dgap: Merge two separate if conditions
Message-ID: <20160209171735.GA4048@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Merge two if conditions with the same statements to avoid code
duplication.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/dgap/dgap.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
index bad3551..d7eb879 100644
--- a/drivers/staging/dgap/dgap.c
+++ b/drivers/staging/dgap/dgap.c
@@ -2014,11 +2014,7 @@ static void dgap_poll_tasklet(unsigned long data)
 	if (bd->state == BOARD_READY) {
 		struct ev_t __iomem *eaddr;
 
-		if (!bd->re_map_membase) {
-			spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
-			return;
-		}
-		if (!bd->re_map_port) {
+		if (!bd->re_map_membase || !bd->re_map_port) {
 			spin_unlock_irqrestore(&bd->bd_lock, lock_flags);
 			return;
 		}
-- 
2.5.0


