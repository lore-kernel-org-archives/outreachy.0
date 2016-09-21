X-GM-THRID: 6332646746296942592
X-Received: by 10.237.53.90 with SMTP id b26mr12831597qte.8.1474434217279;
        Tue, 20 Sep 2016 22:03:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.177 with SMTP id 46ls3362782oth.38.gmail; Tue, 20 Sep
 2016 22:03:36 -0700 (PDT)
X-Received: by 10.157.13.112 with SMTP id 103mr2263576oti.51.1474434216772;
        Tue, 20 Sep 2016 22:03:36 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si7273680pfw.1.2016.09.20.22.03.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 22:03:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q2so1844910pfj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 22:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/UThsnOmJxQopDOR5r5cNao1J2nPmssFyDFOhOLSvs4=;
        b=ZPDZXC8/i2B5+A8OQBQmxIX3Q58/P/ztsETYY5lo7TjFH2MYWDm7XwRRLkX4vn1m6P
         xwyQkFNmkLk9kdJmLKYY9LWwKFr4RqrWJHj/44zImP5/j0VByMyDlvMsA4ejWf0MHA1V
         0EeAYWeF6jmZrUeO9NAt48lUjordgy7DvyEP9wLIQyc8D8Y0hRF1nl8OJzpXcdOh3hLR
         3WfZvMZJIM+esiFgcC4x8yGZGYRB/0nmVV00Ro08C1cfBxGDtMuUfmALwXhjTVK5OFIS
         hUyrZfhQ8BObtQoU50BYm9jTaaHo95qyKErAGZojsgb8viRPQQLzJBnY4ZTzMc1WkucJ
         9Pog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/UThsnOmJxQopDOR5r5cNao1J2nPmssFyDFOhOLSvs4=;
        b=YW8pg8StE+KQVPjdyGF+QH/M5rNUj9TzcI+qYbrV/KNKo1NafM11Xy02gwdlz+vPCC
         +EYzEavceNGfJ0Ihb40C4EMn/PUCqKnqfGK48m3aMqEmq4O4Hp2OBYWNjCBoN2ajOkxD
         krCAZ3lz5pZ1k80wpthonuu7gXo9409D3xQj4WYPfyM9Ofw0R35SIrUn96NVI3g2Qs/t
         Vc4v+5ss4idclMTFo3C3+sSjvGYGYuLYEmUkNkz4cVTD03tfxlIJ55Vz7mjSs8ZIMAkF
         TlCl1KPYKagcLkiDr0ukcKaLhFR2f1rhqH2l8ZCGUw1ZA2FrLf6hPrLzDPMNlHE+paMQ
         23ag==
X-Gm-Message-State: AE9vXwPQDV75tONSGR8ocB6RV/qoUWjwrYCEz1RD9dEU6Uug0M8nsooOj2aVEBv5WoYt6w==
X-Received: by 10.98.87.90 with SMTP id l87mr61936664pfb.133.1474434216599;
        Tue, 20 Sep 2016 22:03:36 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.62])
        by smtp.gmail.com with ESMTPSA id fm6sm39785356pab.37.2016.09.20.22.03.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 22:03:36 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: greybus: audio: delete unnecessary parentheses
Date: Wed, 21 Sep 2016 13:03:24 +0800
Message-Id: <1474434204-7107-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Eliminate unneeded parentheses around the right hand side of an assignment.
Coccinelle semantic patch used:

@@
expression e1, e2;
identifier v;
@@

(
 v = (e1 == e2)
|
 v = (e1 != e2)
|
 v = (e1 <= e2)
|
 v = (e1 >= e2)
|
 v =
- (
	e1
- )
)

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/greybus/audio_topology.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 5eef536..f9f3381 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -459,7 +459,7 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 
 	max = info->value.integer.max;
 	mask = (1 << fls(max)) - 1;
-	val = (ucontrol->value.integer.value[0] & mask);
+	val = ucontrol->value.integer.value[0] & mask;
 	connect = !!val;
 
 	/* update ucontrol */
-- 
2.7.4


