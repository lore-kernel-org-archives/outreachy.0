X-GM-THRID: 6395948698410418176
X-Received: by 10.25.26.80 with SMTP id a77mr2824589lfa.18.1489172852159;
        Fri, 10 Mar 2017 11:07:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.111.74 with SMTP id k71ls42555wmc.25.canary-gmail; Fri, 10
 Mar 2017 11:07:30 -0800 (PST)
X-Received: by 10.223.165.17 with SMTP id i17mr336386wrb.23.1489172850902;
        Fri, 10 Mar 2017 11:07:30 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id t131si29794wmf.1.2017.03.10.11.07.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 11:07:30 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u48so12723127wrc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 11:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5T89HcfDs4N5g6/km66GHsv4zhinjgWP24DjXmsIbj0=;
        b=oDDJEaS/eCkVKSBdFGB0Zui4di0QqVCYWq3VZ3XRcM4ybvWiv7yybvkw17nm32kJjQ
         ZQOM3CPb9/djpzmvYOVLs2hw2lipfuHRRq8zQgtkEedxWOz8y1xjFKbTtjOjwv5hOykm
         +S8TBQXaoVFlVo10lmJDx89JRzZ3Aprf1Zl0DTnWg2igK/8aSBqGXwj0D4n9rkukOi3d
         Mjz4+A2lsfucsa7Lhs/9nKY8EWmxjAde4OAoAzO+yV2HS4xRm/PExg7EqRNw4uPJfHO0
         vpQSgcSpqQjjXuYOpohr+jg1S2jEifW66fpChWTNX3hufDZiGdz7QEIlT6IQIiyzBja6
         p1Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5T89HcfDs4N5g6/km66GHsv4zhinjgWP24DjXmsIbj0=;
        b=RGej60LGDJgT9Yfu6WCF3twP04XrYxHWXH2EkQflQKdD/SKk6HXs1cajMn8b78o6uu
         vZ5FGshagR04x/z6Tdw2EJ2+sI98xDlDI/TqzZwvU/dyTXbq3mS5QbbFnlyGJdG05bd0
         s//OKHJ8RGoSGFYvi+9VUlmpThiFLM1UT9Z+AO7aaOLk4yieaxPzosDDvvFgND54c+ph
         ykW8hSPimO+RWpKqj4EUJa3izsm7yX7dJNWdiD1xcsbqTuVZv0EeUciXjgF4o9EKV0vj
         B5MXftG5PnoKYaWXdHVFFEVpH5LZFo94ImeBXNyYrIae+Xtx18Cl90ucx9aKAoJXKskc
         aC+Q==
X-Gm-Message-State: AMke39loRdJVtui9sc2xSSe4J8M0Jz00qYcpxJlXmj0xbiEWM3CQAoQlvD3TYofm/YZBzA==
X-Received: by 10.223.151.198 with SMTP id t6mr17454903wrb.9.1489172850732;
        Fri, 10 Mar 2017 11:07:30 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:9935:36c4:c373:a2cc])
        by smtp.gmail.com with ESMTPSA id m83sm362289wmc.33.2017.03.10.11.07.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 11:07:29 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 4/7] staging: wilc1000: Add blank line
Date: Fri, 10 Mar 2017 21:07:28 +0200
Message-Id: <20170310190728.19968-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Add blank line after a function to match the kernel coding style and
improve code readability.

Problem found with checkpatch.pl.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 414ef21..667164c 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -1123,6 +1123,7 @@ static int wilc_spi_sync_ext(struct wilc *wilc, int nint)
 
 	return 1;
 }
+
 /********************************************
  *
  *      Global spi HIF function table
-- 
2.9.3


