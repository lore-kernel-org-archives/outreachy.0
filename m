X-GM-THRID: 6395538220161957888
X-Received: by 10.13.243.65 with SMTP id c62mr7372209ywf.5.1489141794638;
        Fri, 10 Mar 2017 02:29:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.81 with SMTP id c78ls2516087iod.28.gmail; Fri, 10 Mar
 2017 02:29:54 -0800 (PST)
X-Received: by 10.99.55.4 with SMTP id e4mr8807693pga.156.1489141794161;
        Fri, 10 Mar 2017 02:29:54 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y90si1672395pfa.6.2017.03.10.02.29.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 02:29:54 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so10375260pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 02:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tyy82Tfd1ykBa9St8rdpszxqJQ0h4USkkiLKsuIsAj0=;
        b=N7iTehzhJkuY6FHmvH23UydJjxwXJTMwCt7amctdwH/vKcuCj/83p4zx/HB1AhMmnY
         rsegMd4iU1vdLFPhfAKgRc1ZRdz5P7ScBliVJaAYJ4OzfUIo4Op7nDvZFf82TAZtrk+m
         iYE7stYoMPWjMa675Nrj0VhsGoSbivaN/sg+MsL97i/eA+Rudl6zgSWtQ2LjnRSpigkT
         u+Q82JUCnvJD9ZmwPhFAzEDTGwW53JjF0DO/593FUzqEcAfsm+PAM+8a7LrakGPtH4mZ
         qfGwyt2lt8pinFessC5KxJi75XxNE/w4UZP+HQ5xa8wxAkggtp+oc0EJGGJOOPw8ZS98
         ++UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tyy82Tfd1ykBa9St8rdpszxqJQ0h4USkkiLKsuIsAj0=;
        b=Hr5RnUzTPI33LctpH3v/NLnn5rkZkmy3OJz2qPYw+MV434KK2Vf6z2vAqp0TRWAVZj
         5Py/EDGsUJ7Olbk9VaO2Ym4JAUrUEDDxvABeUTT9tikF07y/O8IaW2RJn95LzWFEgP1E
         mtL4QDVRbpw20O0ToProIwISHHJdjvu4uMgkFyMHcdU2JZr+5pMkrqxTw3HaaB0ppI6h
         R5co8MumP/6pwlhJwh7DJeDG1wtsYknv3ViOZubXO6Bg32+yaJerkIUzr53/K0Bx6VGU
         8uVo6RnfIwjhAKFIuxsPppy9c6GqdNjdDw1kFUnCLurUYjWSiQU9WxhCwNlemqruRQci
         +Q6Q==
X-Gm-Message-State: AMke39l1n7NtzeINTQVymj9acXoEmMY6CG5myyLO6+fSbk9TsmYA3qF9rMX1UcczI9EInQ==
X-Received: by 10.99.232.5 with SMTP id s5mr19757170pgh.66.1489141793982;
        Fri, 10 Mar 2017 02:29:53 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e2sm17876258pga.61.2017.03.10.02.29.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 02:29:52 -0800 (PST)
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
Subject: [PATCH 1/2] staging: speakup: Placed Logical on the previous line
Date: Fri, 10 Mar 2017 15:59:42 +0530
Message-Id: <20170310102943.1970-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170310102943.1970-1-arushisinghal19971997@gmail.com>
References: <20170310102943.1970-1-arushisinghal19971997@gmail.com>

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


