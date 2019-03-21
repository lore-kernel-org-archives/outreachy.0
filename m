X-GM-THRID: 6670905589378318336
X-Received: by 2002:a0c:d849:: with SMTP id i9mr4214471qvj.207.1553191242816;
        Thu, 21 Mar 2019 11:00:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:444:: with SMTP id 65ls2835816qke.1.gmail; Thu, 21 Mar
 2019 11:00:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwebPnbjRvuv3d7VUwSePiEJ9qJntzHE35qDB5shijOPPGV9/O88YOcctU2EspBNKiFb/E8
X-Received: by 2002:a37:bd81:: with SMTP id n123mr3896938qkf.249.1553191238909;
        Thu, 21 Mar 2019 11:00:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553191238; cv=none;
        d=google.com; s=arc-20160816;
        b=EiEmMfOjB5Aw6mH+d44612JSA64POY/uar+KzURtuY4Ap3fZfp6hLbWYblZWa4WVnM
         RRHDZoH4eRVtbgbJOh/A3IIPwJzIf85X9ZKQii6i+8OP2Oik2A9XSMlfl9lGwgJeIcMN
         q9gkYxd/D0v5NnsKXcVIfHF3FOh+3RLkToKRwqDHs9UwUSvgaqiKsB2hxSMzuWJVr0ik
         RXRXMC1fdOaZz9I7jOX9AMnye1wVH28GibaVtVB9MANW3aIOQmylJ2QZhiKc8Ud8tE8b
         I6xUh70cq74VvfDDmJsiNEZNxo9BLw/CXxdBBAStuVnXf2t/s58RUzujeTWt0JzekBmJ
         Ym4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=dLh9UDNU3XNyGXYt/bYGphSaduiTgcX5Q49Zo91GsOo=;
        b=kWhX3O9VgBCEpw9ze+KnW0nfNJSLZeursgVNQrDPnlJtTDVcL/3R/JtQOx1U5B8uAM
         QfoLhxK4ASUuWn+thJQ/3yHHMI5F91KNgIC0NY0Qim7MLP5NM74O3RVHBSiBcDSaMrtw
         EJDJD5jQ3h1mQdwv45u6UDhdBKw1yiAfSTNyYwcUQUqIYkaG2BlWidZYjP93DTwK8ZSK
         pz4I2ZSQ1DziOEvoWcshUwOb5kx0nE1BhuoAR6OuA1eGNbjJopAaeasOCiLCkV3Ql2BV
         EjKPfAh+OY2u6YVen3BofA6n/ab/EU8JnZp4paoGtAAzAnB02Ux0Oyuiu89R2YaqHFVx
         /4DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VWKLwjfr;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <anushkacharu9@gmail.com>
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id h186si496933qkc.1.2019.03.21.11.00.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:00:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VWKLwjfr;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x534.google.com with SMTP id u9so4705556pgo.7
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 11:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=dLh9UDNU3XNyGXYt/bYGphSaduiTgcX5Q49Zo91GsOo=;
        b=VWKLwjfr+sbckHgOmATRwlrWeTbTElA92pq8rAtdsVDPcQwT9zPNjSApP/SBRXW108
         u02C+Z3OhUwWm+lTNz4/JIslX0hoUsYAK2aAlnv66+tpUnrL1o75V9OFOH7D6Om7yOLn
         Yf+alxa75rpkJaGLjNsRkwr/GGgvAiWB3BYDrkHn+RSNAELYHQFjD06PkZ72cAHehOaZ
         tuAGvidaJ5IiQ8omjA7rPyVnCYPOPX4pFAHDX1PDHzgNs7x72rsAg63oJToV9VhJOwX9
         C2B3QOeVCiozoDQqvlFowVtG4MG9uiXbMiw7DpjBRbQ2Hb0GvpwxWGPNVQtpSH8xYnfx
         8ApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=dLh9UDNU3XNyGXYt/bYGphSaduiTgcX5Q49Zo91GsOo=;
        b=oMwSixjewuXz45wAObTXUK0+TLvSrZcitymYD4yvgmPYbQwxlxQjIIFVJFGlYTPC6p
         036pPgaR6s3d1x05hSr4YY7Udeczn9YgCSzUYF2SpbtxxaLkfMAmW/+53g/fVwCDKoEa
         8CKeUDC9K5m//66lGV1audnrJCG73O41D6uzL4ggtLPR8lSJkh50SqYeQJwNnKLj++82
         1VHjACMsKWjgAP3O4XiRBXf9U/uur0PCWBTbzClUyOhs3t4+/pc2phZyAKZ5hj3KaFSp
         NNHHQLr1WSlIo19JX1gB/45raxTXOnw7Uyoia/YqPerxLDc04HiGgmmqJZxz2u9yhIDf
         uH6Q==
X-Gm-Message-State: APjAAAUOFV4D7s+Bex09LEi8AXbma3Gk8SYWQ1FGmGHHWqz1T9rgyokS
	ourmQ3Qm5Cf7j+UkN37onPA=
X-Received: by 2002:a17:902:29ca:: with SMTP id h68mr4878129plb.297.1553191238351;
        Thu, 21 Mar 2019 11:00:38 -0700 (PDT)
Return-Path: <anushkacharu9@gmail.com>
Received: from localhost.localdomain ([42.110.161.175])
        by smtp.gmail.com with ESMTPSA id z128sm8948177pfz.107.2019.03.21.11.00.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:00:36 -0700 (PDT)
From: anushkacharu9@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Anushka Shukla <anushkacharu9@gmail.com>
Subject: [PATCH] staging: rtl8192e: fix line over 80 caharacters
Date: Thu, 21 Mar 2019 23:29:55 +0530
Message-Id: <20190321175955.4921-1-anushkacharu9@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <anushkacharu9@gmail.com>
References: <anushkacharu9@gmail.com>

From: Anushka Shukla <anushkacharu9@gmail.com>

 -Fix line over 80 character issue in dot11d.c file 
 -Define a new variable tri_first_channel of u8  data type. 
 -Assign triple->first_channel as tri_first_channel

Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 68f53013cb95..62f34b38be21 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -140,12 +140,13 @@ void dot11d_update_country(struct rtllib_device *dev, u8 *address,
 				    __func__);
 			return;
 		}
+		u8 tri_first_channel = triple->first_channel;
 
 		for (j = 0; j < triple->num_channels; j++) {
-			dot11d_info->channel_map[triple->first_channel + j] = 1;
-			dot11d_info->max_tx_power_list[triple->first_channel + j] =
+			dot11d_info->channel_map[tri_first_channel + j] = 1;
+			dot11d_info->max_tx_power_list[tri_first_channel + j] =
 						 triple->max_tx_power;
-			max_channel_number = triple->first_channel + j;
+			max_channel_number = tri_first_channel + j;
 		}
 
 		triple = (struct chnl_txpow_triple *)((u8 *)triple + 3);
-- 
2.17.1


