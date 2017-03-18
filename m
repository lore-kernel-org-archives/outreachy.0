X-GM-THRID: 6398937623266590720
X-Received: by 10.129.145.65 with SMTP id i62mr11319719ywg.151.1489868776650;
        Sat, 18 Mar 2017 13:26:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.103 with SMTP id f36ls2648974otd.0.gmail; Sat, 18 Mar
 2017 13:26:16 -0700 (PDT)
X-Received: by 10.157.6.76 with SMTP id 70mr9983607otn.5.1489868776291;
        Sat, 18 Mar 2017 13:26:16 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y203si1988887pfb.0.2017.03.18.13.26.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 13:26:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so14388712pgg.1
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 13:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eI3G6H2nCBO0D8kC4N+Q0UEX43RkgvfJLX+3NCQ5UBM=;
        b=vLOa8K107paUAe6IyuscXPKWOZE5I1hB1rO1bcbfdvq69uu0BpMbbxUa303aB9WqdH
         LnkkrvK3Ul+R7dAO6RAheUjBj4NPA0U1Ywqhh0nacfPYHOOH1k7MQ/DJfdHCY2XibWFv
         iYApWvsmfTvEqO1hf2Grg1cvvThKJMDNBKcEAookTgnpm+QXjjJhc2dneIyMayfv8p/l
         HPpbLWNcmS0IlhCa+jkwJa+U9Jmr4FsEAXohel+utq9F6qTQLrzZ/trE1Uc6zA5jYJ/I
         Fj5DmS7WA9tBR/80higRUu/T5pS/+vSfxxxuQ+2/vTg7Oc9eon6TDDym0ATZ8aMXZBMd
         73pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eI3G6H2nCBO0D8kC4N+Q0UEX43RkgvfJLX+3NCQ5UBM=;
        b=rQv/uYK4PdQNpRlBM7hGXtNFvjib6hgkUPp2bU8Pmue20yy0hu0ojXJBn445JCU+b3
         3hSDeDzYZEr1vV95FEUSCdEkOHtVPVDnwgHmBOlfnEjb+5QkIdKIo+oKPdYU77GeJASv
         G7uIP28RBF4E4cbZSxHNDOYb3nIm8vMW1kutcgVJCfGdK8MkOAiiRVbXfmrOvDSZgys8
         usY5kldzFtaaO3qfV02Fo0pOa6Q1he4PqNlrGzNixAVSxb6PllUCKYqhxiE/tS2t+1O+
         /rg7TZyxdxiqpM+ITK1A+lsfvz3PkyCIWJK8VyRLGBCfQ+allpQrcyEliLKtOrCwOAcU
         a+kQ==
X-Gm-Message-State: AFeK/H31EHZZF5VeEj5j09aM+FDRtG6VPqSiBURrxpFmPnFZCkUS44YQdPgcgI/gAz/4hQ==
X-Received: by 10.98.61.5 with SMTP id k5mr24461233pfa.229.1489868776096;
        Sat, 18 Mar 2017 13:26:16 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n8sm24467892pgd.5.2017.03.18.13.26.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 13:26:15 -0700 (PDT)
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
Subject: [PATCH 2/3] staging: speakup: Remove multiple assignments
Date: Sun, 19 Mar 2017 01:55:58 +0530
Message-Id: <20170318202559.10886-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170318202559.10886-1-arushisinghal19971997@gmail.com>
References: <20170318202559.10886-1-arushisinghal19971997@gmail.com>

This patch fixes the checkpatch.pl warning "multiple assignments
should be avoided."

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/main.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index f71206878363..f8fccc8bf6b2 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -270,9 +270,12 @@ static unsigned char get_attributes(struct vc_data *vc, u16 *pos)
 
 static void speakup_date(struct vc_data *vc)
 {
-	spk_x = spk_cx = vc->vc_x;
-	spk_y = spk_cy = vc->vc_y;
-	spk_pos = spk_cp = vc->vc_pos;
+	spk_x = vc->vc_x;
+	spk_cx = spk_x;
+	spk_y = vc->vc_y;
+	spk_cy = spk_y;
+	spk_pos = vc->vc_pos;
+	spk_cp = spk_pos;
 	spk_old_attr = spk_attr;
 	spk_attr = get_attributes(vc, (u_short *)spk_pos);
 }
@@ -1655,9 +1658,12 @@ static int speak_highlight(struct vc_data *vc)
 		spk_do_flush();
 		spkup_write(speakup_console[vc_num]->ht.highbuf[hc],
 			    speakup_console[vc_num]->ht.highsize[hc]);
-		spk_pos = spk_cp = speakup_console[vc_num]->ht.rpos[hc];
-		spk_x = spk_cx = speakup_console[vc_num]->ht.rx[hc];
-		spk_y = spk_cy = speakup_console[vc_num]->ht.ry[hc];
+		spk_pos = speakup_console[vc_num]->ht.rpos[hc];
+		spk_cp = spk_pos;
+		spk_x = speakup_console[vc_num]->ht.rx[hc];
+		spk_cx = spk_x;
+		spk_y = speakup_console[vc_num]->ht.ry[hc];
+		spk_cy = spk_y;
 		return 1;
 	}
 	return 0;
-- 
2.11.0


