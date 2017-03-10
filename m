X-GM-THRID: 6395538220161957888
X-Received: by 10.157.41.66 with SMTP id d60mr7239840otb.113.1489143042386;
        Fri, 10 Mar 2017 02:50:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.184.8 with SMTP id i8ls2451285iof.24.gmail; Fri, 10 Mar
 2017 02:50:41 -0800 (PST)
X-Received: by 10.99.161.10 with SMTP id b10mr7579009pgf.159.1489143041544;
        Fri, 10 Mar 2017 02:50:41 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r66si1675883pfb.7.2017.03.10.02.50.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 02:50:41 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so10422536pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 02:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tyy82Tfd1ykBa9St8rdpszxqJQ0h4USkkiLKsuIsAj0=;
        b=ovU//6+zy/EpAkFo+FDdIjN91qZZ+okkvr/WjMr3xJmj9UMX+5VYlh8Y86QrZ+vKq0
         HA4+Rr7FZ5mfU0sLWvklvJsgz1GPJCRduUy2iMEaXys73qHRXIsCj/tMjWCNGUcDWwlu
         vkie8/He1677RyZkhcmyZgO+XVtWWggz0RSNZNEbmuZyiYBQbtesWuMZLa/1WN12I2dP
         fgRO+Sq5Oe5eYAAT7UVDwbPNqP53YX1Va9qG6E1lk7O40/nJH7m1rlwPrjD8JzPa7xEu
         VJf6MCYtKTEeH/FKEbKYRX4QjN58PKjcctn8ghjsHNXCHrkZXdgRzVj9vJK4uvAcmkOM
         757Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tyy82Tfd1ykBa9St8rdpszxqJQ0h4USkkiLKsuIsAj0=;
        b=IQMEUwCcZvMfxomwxoBpa4esKVWLMFkjaXu+0/7iPkbOiD8TZtNrAm53p2Pgk6slmH
         Df7qTzdIzwkA90ruaj94B+Tkw9j95isODN/yY2iqAfnab9LeTbxV5teBKjvhIKet7gAm
         zghvqVX7a+k/ozw58rXXO4rjV4BYGUhHhbwBQMbesnbnd4q9rPFhA27qQaXrmKnEqRj3
         mElZPRPD/zJZrUQ9TDKq/uHKWGwbZ5nj9DRDzLSrVE6FHf7bmN+8woQb6ZRq/R9mhMo3
         PxFnKfFvY3PEXuO7Sp917bipmNfdFjl7mV2Y7e9SidvT37rHyzqgLJligk7oTFWzb6Yb
         er/w==
X-Gm-Message-State: AMke39mQWA4GSveB1TzNWXnyJAX0bGEegJyAG7jCxJz5S9Znp7zc+dJWfl4zvxkC0XdLDg==
X-Received: by 10.84.194.1 with SMTP id g1mr24297590pld.98.1489143041393;
        Fri, 10 Mar 2017 02:50:41 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c11sm17940210pfe.68.2017.03.10.02.50.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 02:50:40 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 1/2] staging: speakup: Placed Logical on the previous line
Date: Fri, 10 Mar 2017 16:20:30 +0530
Message-Id: <20170310105031.2144-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170310105031.2144-1-arushisinghal19971997@gmail.com>
References: <20170310105031.2144-1-arushisinghal19971997@gmail.com>

Placed Logical continuations on the previous line as reported by
checkpatch.pl.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 6d9c9c858c75..00335eb2ff20 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -2159,10 +2159,10 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 	if (up_flag || spk_killed || type == KT_SHIFT)
 		goto out;
 	spk_shut_up &= 0xfe;
-	kh = (value == KVAL(K_DOWN))
-	    || (value == KVAL(K_UP))
-	    || (value == KVAL(K_LEFT))
-	    || (value == KVAL(K_RIGHT));
+	kh = ((value == KVAL(K_DOWN)) ||
+	      (value == KVAL(K_UP)) ||
+	      (value == KVAL(K_LEFT)) ||
+	      (value == KVAL(K_RIGHT)));
 	if ((cursor_track != read_all_mode) || !kh)
 		if (!spk_no_intr)
 			spk_do_flush();
-- 
2.11.0


