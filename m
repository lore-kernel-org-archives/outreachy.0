X-GM-THRID: 6393296356207755264
X-Received: by 10.157.29.37 with SMTP id m34mr1326828otm.69.1488555308458;
        Fri, 03 Mar 2017 07:35:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.235 with SMTP id f98ls7658747otf.16.gmail; Fri, 03 Mar
 2017 07:35:08 -0800 (PST)
X-Received: by 10.31.114.6 with SMTP id n6mr255128vkc.6.1488555308021;
        Fri, 03 Mar 2017 07:35:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 207si87860pfu.8.2017.03.03.07.35.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:35:07 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so10208271pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=caa4crWwTQK3iU6DDvbb6HlHGxlJff3/JaTTqqY0/Rs=;
        b=lq72YJ1+U1nhbs9KOoB+EAlAPHQxPeBNSeFkBYY+85Y+AkAlHJAuwmRM9A6rwxozIf
         ou5En79rQ/7yWCwE7gsZPa4Wpaq8H/OUfsBpW0GaqTnjSXigCbZi35QUhQSliyfKGKYV
         PTkkCOk0pvrdkzCttc4P1XRR1SRORNAkJARWXeJjrFAd7shp8zAlyLqmSWnbfSWrn6SO
         axc8acUY46YcJ64joRhNiqzQsgRP0+di61dfon+pCqnAtM+qtr0VENGSqBL4MEd49Ans
         SgYveNs2NQd1XzaOQxsb4sMlDA9V/D4EQSci9JXNHwTLsoUQ+toze53bHn7zFSTY9rUK
         ISvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=caa4crWwTQK3iU6DDvbb6HlHGxlJff3/JaTTqqY0/Rs=;
        b=Tweb9ROpIH0GiBsB7p37ZRPCAem90mKwf19fZsCSQJ60BjfVTs1I5By80eZXCBuFyx
         ABQHiM9HoGiW3PkZz7T/8TYmGf9idz4TfFNDsFQY5dWrdcnu5UCCOSkTennFmSmAEgXH
         m1tRA1HMdQvWIdnR2uWFepW4gUia3/6sxI5lexqeeyKdIuhg23nh00LxNG1aBEHml8g+
         cof9MyivxlITqef6tmekvMm0wdJJ2FQdkQw2cEypql29HYhAe/meajS60+R0pq/5QLDR
         4YP02dwG9v7ObXohFRQr8IwlFF2xdRff3fiqPBoBx+cRs+jmd7ncypwf+z7badfB1QMT
         qUNA==
X-Gm-Message-State: AMke39kMKKL9jzJi2GNApVWHTpCJYKB8HjaM3CeypPcgog20UfOUODbLO42C94AP/i5/nA==
X-Received: by 10.99.60.76 with SMTP id i12mr4226325pgn.30.1488555307789;
        Fri, 03 Mar 2017 07:35:07 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v9sm12351232pfg.133.2017.03.03.07.35.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:35:06 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: wlan-ng: Replace "the the " with "the"
Date: Fri,  3 Mar 2017 21:04:58 +0530
Message-Id: <1488555300-9140-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488555300-9140-1-git-send-email-singhalsimran0@gmail.com>
References: <1488555300-9140-1-git-send-email-singhalsimran0@gmail.com>

This patch replace "the the " with "the". The replacement couldn't be
automated because sometimes the first "the" was meant to be another
word.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 82d3a70..3ef85ac 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1310,7 +1310,7 @@ void prism2sta_processing_defer(struct work_struct *data)
 		/* This one indicates that the MAC has decided to and
 		 * successfully completed a change to another AP.  We
 		 * should probably implement a reassociation indication
-		 * in response to this one.  I'm thinking that the the
+		 * in response to this one.  I'm thinking that the
 		 * p80211 layer needs to be notified in case of
 		 * buffering/queueing issues.  User mode also needs to be
 		 * notified so that any BSS dependent elements can be
-- 
2.7.4


