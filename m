X-GM-THRID: 6465677729933033472
X-Received: by 10.36.53.149 with SMTP id k143mr358485ita.21.1505407907149;
        Thu, 14 Sep 2017 09:51:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.190.79 with SMTP id i76ls5547658itf.17.gmail; Thu, 14 Sep
 2017 09:51:41 -0700 (PDT)
X-Received: by 10.55.187.7 with SMTP id l7mr11589156qkf.48.1505407901151;
        Thu, 14 Sep 2017 09:51:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505407901; cv=none;
        d=google.com; s=arc-20160816;
        b=T5zojaJrxXxui+KxnQf//rCq46vWXMsz3cGPXLbsmjx9Ih92hZymaHzGUh20ItoyAE
         hp2jAvU46hp4bCInVGbJ5Nys4nWn6AeecSh/6yDbHFntayDNRQoGud/IcuKr3ggs7F2c
         D4tZHO2NYB4+p+nH2IuLKQPNHdXz/0/hpVyV95PViT2qUVQdxZzNzlMZ1Tyf9B3oAVvw
         VRcjIyBcEPdunhAgjWSz30iaceasGgc2WSgpdou7SLu1N4pkhU5IXg0wnKPr4scdENNl
         Hj/lTgQSBKEe83cx6PgZtkGMjID/yiq9oxF0dpURsOM6FcVbPJe8Oz1f/NsjFc9/lsNa
         WntA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=dldf/RvTrDL2C5CNcBaqyjgRXVs+I9O+I911LodaJaY=;
        b=VPen2lsS3W5htfVz2oCReGsN5getf49HKZHgXkRLoSzTgyZjgQ2vF5vA9/sZpKINIg
         ABXLGQZmAi6mzD6EYo6w26okThN1yC/mxV9cD4cp6AAMKGvB5H7h+jq1AL2poKBmnGuV
         pXJWj/ZRtV8eHUNn81Jrg9gdjtwZWQifLkH2K9wa10awkEBhUDN//+0d+E1XogPuuaQ5
         +ueXpRQe6Oul/BXUTTzoyiy52Iw+j2eb31Q5y5mGyGD5rbxjcKgNvY1hhyfI4B6R4sAD
         cwmrQ24yvoa7RgF6NgsPS7yOv/IOnQmVZAWlrjCKej/6s0NB3JL3SpDG0T6aS1dOpupv
         RmWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uruGh5GW;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id k76si159578pfa.10.2017.09.14.09.51.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 09:51:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uruGh5GW;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i130so1985020pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 09:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=dldf/RvTrDL2C5CNcBaqyjgRXVs+I9O+I911LodaJaY=;
        b=uruGh5GWZElBFxjMtIXr0JDy+ckgkeMooDy9bRSfEx1kwpfCJuHSeg7ZS0MOwtfzi9
         PIImHt1mFhks/5CB8eQDbk+VKdSZQfAQ4ako1cchWfIib/6XinxIEDvpSEuOT0mUNNLb
         U9B3OnGml55VrW/ulutmQRxG/2Eq9T8ymEs05Ly5MSSMo53lpaXGOhiKLGUtF7xvEiJq
         roTLSHqjJmduBeVDu1h6OKRpmWmY0BtKwDePgW5CFD3bBgehntF8KkS5tbiI3zrxCLUR
         NrGbb2JU9W2tPSJMeEQzhvoEgKbW0FaQ61rOVBXIQ9G8qSF7iLxlUJ4iwOppYQhp/LOO
         iTIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dldf/RvTrDL2C5CNcBaqyjgRXVs+I9O+I911LodaJaY=;
        b=T0slu6Cb3+rtdgX4TnoOAO+XZ6vWPWUfqH8kVC6hKVV8rRYR49UKHJvh+cxHysnWe/
         cTO6BIc3bkms1rz3BfYqtdHPzVMdy3ZvxeviOWqE2kenPOnXkVD65by0nIdXtkNg1v6F
         zN+FVZii8uYrwhZFaftkIaRB6tZQZbDtSk25iy4wL00JWjmwkYS5tkq7scxWLp4wbQc8
         6XefOO73Xu7WMcyK/U01530uglb2FaWYWP7NpBdH0lBjHlYKyeR8v8Cj24o/WeyP4R9g
         /lhKIVa5evkMzUOlhWH2B3AlN3kXiLpys8OstUS6DCu7r0aaBj5RdZOY4rliVifFL68o
         Ix8g==
X-Gm-Message-State: AHPjjUjYofq8FUdPDcx2r6wT8GyEBZ4LIrettuZLee5TZ/BkseV2zr46
	4ydDZKfvRjJB91Jt60A=
X-Google-Smtp-Source: AOwi7QCZ5w0BjSScaUPDUzLCp9T56AVe3v9gceSbIvy4th/FuW5m+FQRwwjqdEo3zvxcJP95kx0Zhw==
X-Received: by 10.159.244.24 with SMTP id x24mr3077293plr.434.1505407900327;
        Thu, 14 Sep 2017 09:51:40 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id r11sm31023480pfg.180.2017.09.14.09.51.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 09:51:39 -0700 (PDT)
Date: Thu, 14 Sep 2017 22:21:34 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH] Staging: octeon: Remove unnecessary parentheses
Message-ID: <20170914165129.GA19272@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes unnecessary parentheses inside the conditional
statement.

Found by checkpath.pl

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/octeon/ethernet-spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet-spi.c b/drivers/staging/octeon/ethernet-spi.c
index 063dcd0..8c6bb93 100644
--- a/drivers/staging/octeon/ethernet-spi.c
+++ b/drivers/staging/octeon/ethernet-spi.c
@@ -213,7 +213,7 @@ int cvm_oct_spi_init(struct net_device *dev)
 	}
 	number_spi_ports++;
 
-	if ((priv->port == 0) || (priv->port == 16)) {
+	if (priv->port == 0 || priv->port == 16) {
 		cvm_oct_spi_enable_error_reporting(INTERFACE(priv->port));
 		priv->poll = cvm_oct_spi_poll;
 	}
-- 
2.7.4


