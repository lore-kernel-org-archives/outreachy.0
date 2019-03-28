X-GM-THRID: 6673507471560015872
X-Received: by 2002:a25:355:: with SMTP id 82mr2708760ybd.60.1553797040472;
        Thu, 28 Mar 2019 11:17:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5bc4:: with SMTP id p187ls8460097ybb.14.gmail; Thu, 28
 Mar 2019 11:17:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz1H+F9FWA/iJ2nDeqqH4bF77TpfroaqfVxEtcUOES9YShmxAH7vKt0HNsjxq7AU6q2hP5t
X-Received: by 2002:a5b:44e:: with SMTP id s14mr2835766ybp.100.1553797039721;
        Thu, 28 Mar 2019 11:17:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553797039; cv=none;
        d=google.com; s=arc-20160816;
        b=cFHmgWDKr4XeZ3Xq/R45InWLdJ3EkI0DUgdjNl4Igq83Q6LRXOz9O+w0nbI9Wt++BW
         wq7NQmhjOmEtvpML17NhC03m4WOVFjCzywbrfB4uClLiS3+8nhf0fhx9JcHU7AVNzwTU
         cF5vzv2+w6pKfENMOl7DbKaRaDhlVvPhw+OjooJCNUh5OgBrsX2yu+j6j18BDDw9lCZY
         KX8Z8SmxHaKcIHTBS69DmnRwPeMT5axXoPoEoRp3oG9BbEmM7inaE+uIBY7KVKB3N26r
         syNcJcApM3igE7oFyJKSKqXFDSgvDnX/jFZAODkDhetGLm2YRM6xOc0mmdnQSdJ4vDXm
         UT7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=AF1POr1kzrZSWz5R1fBZnK5yaSdNWnWTcrxsQom1FpA=;
        b=Z12qfDNrFw4J8VFSyHLyncVrIMgN8KWPQW89ovOdMz3mbvODfrYXmkwLPXfBrAZKvR
         2379kFP3zAWwjPDtyRLPUD2gLQjJpMhD2CXYkFgpHv6BjoKIjZQCKuGO0apnZiA/sAku
         D7Pg52SnRuQE15xNKqphqR5JxdlR+G7MmQJm5tjSJ9y+6GP1YC5ve/3Q4+QrKjaH1LfE
         qKzRb6RenkKiDot7FzrFGJTVaIk8gkjN1EYnyK67MMm1JpD6KZipis3NEJVBeB2rZlTo
         BWRPwNC1mGaFYDf6+cmdsKmpN5g15qe0wmGFcsIxc9XYaehU761C30dWO/2aTvuMuhgW
         oEUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=INtynTkZ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id s11si1495240ywg.3.2019.03.28.11.17.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:17:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=INtynTkZ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id j26so9989539pgl.5
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 11:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=AF1POr1kzrZSWz5R1fBZnK5yaSdNWnWTcrxsQom1FpA=;
        b=INtynTkZnB4zYAYJX40fVlV3UZQxKxXvwM34SP24FN3gUIbCt4YGpLWIQ4V1uFwaGk
         gW2i4Z3z5il3ka/8uET2ddlAVICFEAXgx1AY8pl/2PHCN4XkI3/VIPcOpZcAJXpH1S3F
         JuSWeWVe0FM+AaTq9aizNcx8zKsmlOXlAXsxs7DiBdrlIsJE9cwdNB2f7Y6VhAd0xQaQ
         uHuC2v1BZJVk1cxrU1CjAI+xtkPyzK42BY8v8eOloaIpm86X1ucS/BcNFfXa1n5wOv3R
         yQnOAONJASm8ek6HqJbSuKNN+4l6DMs+yd3qsPPFb1Fhn7Bd/e5JJgAQU59AyA3F1tjW
         RyRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=AF1POr1kzrZSWz5R1fBZnK5yaSdNWnWTcrxsQom1FpA=;
        b=SQrVbhiubukAzRmpWN4mQRt3Ka5Ew0xgqHBKfa70kiHyixfQmCUhKatbSVAY1qAkwl
         L/YJw5BOVm+w9Pkdr/RlLOmzbcvRhU9SCfP+ZC59JTu3cQEUDWuohp6S0eiw/rAaVqRl
         tfeb+/sKIO0EimxFNnrKqqYiF+RtYHAaDy829i5vLvGJYZekrLFxmtGZ+ck49alVCwpu
         W3cFZCvSd6JCWHq6nRHUEi22wgL6LtkOYJE89sT9UZk1UAZmn9oEiP8FMSXj6eRgp1+E
         0MmCF05zZGwmJyxrSs4XlxMRchfFY1XqhUut1aub0OpgQadH9PZh3CJMStteB4vUXMOC
         yrNQ==
X-Gm-Message-State: APjAAAWW8pxYlYtkl/tRyrw7080QfD4a+KICeZBmuJxPPbjBk0pzwxZF
	OTdxCJdgvwt6qcXa6GBkkVs=
X-Received: by 2002:a62:6f06:: with SMTP id k6mr42228337pfc.257.1553797038990;
        Thu, 28 Mar 2019 11:17:18 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6105:9194:4d26:756d:e157:1b31])
        by smtp.googlemail.com with ESMTPSA id z6sm39320531pfz.65.2019.03.28.11.17.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:17:17 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Avoid unnecessary braces around else.
Date: Thu, 28 Mar 2019 23:47:05 +0530
Message-Id: <20190328181705.32572-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary brace around else statement.
Issue found using checkpatch.pl

WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index a10c31bce07f..150ba033198f 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1399,9 +1399,8 @@ int wilc_set_join_req(struct wilc_vif *vif, u8 *bssid, const u8 *ies,
 	if (ies) {
 		conn_info->req_ies_len = ies_len;
 		conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
-		if (!conn_info->req_ies) {
+		if (!conn_info->req_ies)
 			return -ENOMEM;
-		}
 	}
 
 	result = wilc_send_connect_wid(vif);
-- 
2.17.1


