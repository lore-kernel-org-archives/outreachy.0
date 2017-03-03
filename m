X-GM-THRID: 6393296356207755264
X-Received: by 10.99.61.207 with SMTP id k198mr1270852pga.3.1488555689014;
        Fri, 03 Mar 2017 07:41:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.202 with SMTP id g193ls754441ita.15.gmail; Fri, 03 Mar
 2017 07:41:28 -0800 (PST)
X-Received: by 10.107.175.217 with SMTP id p86mr1329147ioo.101.1488555688392;
        Fri, 03 Mar 2017 07:41:28 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 207si90899pfu.8.2017.03.03.07.41.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:41:28 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so13002200pgy.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:41:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=caa4crWwTQK3iU6DDvbb6HlHGxlJff3/JaTTqqY0/Rs=;
        b=M/pZu6Xt7xxUrj2D6khT32IZ+/R0fIfled8svnuMsx25gYHLXG+Ivsvy7yYLS/3CeZ
         l0eU1lqgRupra0KqCRWGU5LhZSiD5+grFpGXmkGEuF//HHkwHebuxi0Kq8O2jJke0O7S
         PN+iJ+UKM4fXbbvjFO9ea9WeeesEAWVzh4oSsi+SY/GGSwxI8BcSYawUzxkBa+Pz0cME
         AqaYiMpJmP2Ttg8aw2x9cgsqHhCP33Y/XY5hrAeZCHst9CkeVHVe64WTBMFOK3oIaFbQ
         Gu8v3IpGGNwJ5tnLJoThfnQc24IC6+l4NRaKIxNWhr7YKsKsS1xHXqmNt76gx9m/9SAu
         wTtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=caa4crWwTQK3iU6DDvbb6HlHGxlJff3/JaTTqqY0/Rs=;
        b=PBdGvCOpXrDHLOEjsGzQRTE1ZsW/HJEhNPoJ+K24diHyDvtBYCDwjC1AkyliwpFkh3
         6q0GcFaI+c0M3HP8BQ5fUK1j2yxizOea/sZWlMNYkw+NnKv7teMxmhpbTBC/EIX7YcFr
         02Bay6f1Lq3MIvNsnDnoZdU+6RcxshvkFyhNK8c1HNVzXKr+H9lcgnfu0vIAPM/MIfkb
         z4excWL6NyHoq6PjUOOSQsDjr8Md2pxRH85GZZOXT4AlPZSEJ2DhSELNaoEWaHsgKSqX
         mAEU43OvhjLkzElOmvgqouLMvPBC3a8Hzv6+aKD46bB/cNXF/8ZHd1DP4VwHT2Zg9RWB
         14Hw==
X-Gm-Message-State: AMke39ncyw9UJxqoOhxVLRIMjNkfGgb9OLjZb+6U9ZV+3gRedjDKtAoxfXwFmGw/Gqf5Vg==
X-Received: by 10.99.181.3 with SMTP id y3mr602800pge.214.1488555688138;
        Fri, 03 Mar 2017 07:41:28 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f21sm5533197pfj.111.2017.03.03.07.41.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:41:26 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 1/3] staging: wlan-ng: Replace "the the " with "the"
Date: Fri,  3 Mar 2017 21:11:17 +0530
Message-Id: <1488555679-17028-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488555679-17028-1-git-send-email-singhalsimran0@gmail.com>
References: <1488555679-17028-1-git-send-email-singhalsimran0@gmail.com>

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


