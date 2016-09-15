X-GM-THRID: 6330196266384883712
X-Received: by 10.157.30.131 with SMTP id n3mr4555763otn.18.1473901351891;
        Wed, 14 Sep 2016 18:02:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls2284356otj.7.gmail; Wed, 14 Sep
 2016 18:02:31 -0700 (PDT)
X-Received: by 10.157.7.7 with SMTP id 7mr4231014ote.50.1473901351383;
        Wed, 14 Sep 2016 18:02:31 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id l185si76148ywb.5.2016.09.14.18.02.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 18:02:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=ronladred@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id p47so1116315qtc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 18:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=H0yiUpf/hSF6R4rZ2gH7rppk4Fzztr+EF+vqYVUe8lA=;
        b=VYpbcZ8YDps82YKIHEQWh3eCE3bVb6XL5X02t9SquxAx8lxvqxuGfpPvxi2N6OZtRg
         v2UnC6jrNhLtM0e5dVheFUZp/8eI2ZY0TXhzAufoV8EWSmOgaU9ng0yoP3LBYkk9m9dU
         ZyOeLK/CO+Lp+uuNTvM9BWm5BTDkiYz3CWjjV6w2wKfZHGrUXdOazQILFIjsqYkJE3Ka
         CpTvORoXOhcqWAy1OWjEBXq9nOlA7V9yyHgfSCOpbEn/wESL11yjgAP+pnDcUzUj4XE/
         fIa/7hnXhmKDPeMhKn8oac7WruzNVVAXK8OKlXCFCJC+3XrYbwZXoEAlGG6H2xrxdRZK
         4xwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=H0yiUpf/hSF6R4rZ2gH7rppk4Fzztr+EF+vqYVUe8lA=;
        b=UrOHQl/MLqNfMc1DbZgaxMxtcOdAV79LKh/14vRC1T81EH3sitBbTtp9jgzASxSkbt
         rMKK+lGE37kCkGrBw+XWR9emVwnpxhRUY+0jFUK3/mysbf64BFkhx00NY+dAWQ7orWCJ
         D0sNeOaevGgYKlnbAHK0ZwEgrUq2hknzBt8j7CUnxN5e6Dsz9BFmH4delNnbXs5Ea8cH
         dqhWSJz2OlwGfd2WRPTBB0sI3Du2i/Ha/Mlri+5yRKtoXSApp26AZGsss91iZJBOlQUx
         yvXR9uUlJxQqDhpvjYR7rU6AvuHZ9exZLA3iJe0zVPepTPFd6EVpZkzms20hIsCv7WWW
         dNRw==
X-Gm-Message-State: AE9vXwNSyfMUU4PERy7O4l7UbLq4hb5t8cHhx4/k611RZR4YiccHTR8EOHdKgqjV9SIB9A==
X-Received: by 10.237.34.47 with SMTP id n44mr6840918qtc.89.1473901350994;
        Wed, 14 Sep 2016 18:02:30 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from fedora (NYUFWA-WLESSAUTHCLIENTS-17.NATPOOL.NYU.EDU. [216.165.95.6])
        by smtp.gmail.com with ESMTPSA id s23sm562655qka.10.2016.09.14.18.02.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 18:02:30 -0700 (PDT)
Date: Wed, 14 Sep 2016 21:02:30 -0400
From: Ronald Rojas <ronladred@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] Staging: ethernet: Fixes checkpatch blank lines warnings
Message-ID: <20160915010230.GA15390@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes several of the checkpatch.pl warning
CHECK: Please don't use multiple blank lines

Signed-off-by: Ronald Rojas <ronladred@gmail.com>
v4: changes to commit log
---
 drivers/staging/octeon/ethernet.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index e9cd5f2..79571d6 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -86,7 +86,6 @@ int rx_napi_weight = 32;
 module_param(rx_napi_weight, int, 0444);
 MODULE_PARM_DESC(rx_napi_weight, "The NAPI WEIGHT parameter.");
 
-
 /*
  * cvm_oct_poll_queue_stopping - flag to indicate polling should stop.
  *
@@ -665,7 +664,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-
 	cvm_oct_configure_common_hw();
 
 	cvmx_helper_initialize_packet_io_global();
@@ -878,7 +876,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
 		}
 	}
 
-
 	cvmx_pko_shutdown();
 
 	cvmx_ipd_free_ptr();
-- 
2.7.4


