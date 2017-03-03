X-GM-THRID: 6393296356207755264
X-Received: by 10.13.224.70 with SMTP id j67mr1390420ywe.44.1488556756323;
        Fri, 03 Mar 2017 07:59:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.77 with SMTP id c74ls3012862ioe.29.gmail; Fri, 03 Mar
 2017 07:59:15 -0800 (PST)
X-Received: by 10.99.49.77 with SMTP id x74mr1495917pgx.2.1488556755391;
        Fri, 03 Mar 2017 07:59:15 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r66si102286pfb.7.2017.03.03.07.59.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:59:15 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so5850268pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=caa4crWwTQK3iU6DDvbb6HlHGxlJff3/JaTTqqY0/Rs=;
        b=b0WT1H/QzCN/E1azH3xkWYcmLk/nkw9b7ViWqyC7vlLWTq2J+tGH5FF9ITSX4AEtxd
         +n9nNjql5OvqArA4eqx7SwRoGoJflwimWlSOhkIe5NetcnibsfTmsre2pFucDMMP+PIz
         nFCEc1Gv2/yCWNLhmjZf+DHd2J2CCjLmxRMmky/pgdi82OqjFLQHNQtxSqJVnxP8Knpw
         9MJDWgvkexdVWWBUBwv4JNO5/acFBj6RhZji6P5UcEkO66sSORnHT7lshu61LwlUBgdT
         FofwKSyI0x9/NO+Ke8Md3EEXzMnVfZBt1BIXVDV4YZf1jxh65ZVUOlvBhzeRO8hP1Sb/
         JBcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=caa4crWwTQK3iU6DDvbb6HlHGxlJff3/JaTTqqY0/Rs=;
        b=bSqigr2trjGuAm1EuW/3rnJYSIXWjA/T2LljFKxXMNiFYGdpiU7BlpQP82Ip+PgbkD
         LDHgWK0AZD5zby9KDYjgSqBMJkR+k4j72ndz6WLjEEYmRasorbYQDMBrqQyCzIOjaaKT
         a4488KGGKtUZGQ0o/GNhrbUlfgosXKA7amArNrEjujMVgC7c+8JKxPdoWZ6NBg5yaZr+
         BtIKMKxVioUUDR/B/7VBWC1SARYDC9slBMu1ZL9gxqFMof2enYZP8s/ey3/KZRL0qBEW
         Xz2mU/k8g+0WsLo+NGw+jxBI9TyRvCTd43Jv4+ioIRK6i7QiQlfiHPcMB4wH+wtAWVBe
         9yfg==
X-Gm-Message-State: AMke39k0ZLM/FDKh6hb15aDENVDmSQVKLxZYNALY1fm4hbsxEmH0vj+VpOMn6GP5RT6Sng==
X-Received: by 10.84.134.36 with SMTP id 33mr5363582plg.34.1488556754868;
        Fri, 03 Mar 2017 07:59:14 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 129sm24400858pgj.59.2017.03.03.07.59.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:59:13 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/3] staging: wlan-ng: Replace "the the " with "the"
Date: Fri,  3 Mar 2017 21:29:04 +0530
Message-Id: <1488556746-599-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488556746-599-1-git-send-email-singhalsimran0@gmail.com>
References: <1488556746-599-1-git-send-email-singhalsimran0@gmail.com>

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


