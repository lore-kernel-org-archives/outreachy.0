X-GM-THRID: 6474128496939499520
X-Received: by 10.80.145.13 with SMTP id e13mr1412299eda.12.1508012612862;
        Sat, 14 Oct 2017 13:23:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.167.100 with SMTP id h91ls1104186edc.8.gmail; Sat, 14 Oct
 2017 13:23:32 -0700 (PDT)
X-Received: by 10.80.202.69 with SMTP id e5mr1417278edi.0.1508012612034;
        Sat, 14 Oct 2017 13:23:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508012612; cv=none;
        d=google.com; s=arc-20160816;
        b=MndnM5A6LBkKcTJaZVvuADHOCmIOZgzPK/kiAfMZHNcyY4xj07UJ8bXwl4vQIPvv+q
         S3bVuU9tV25Ex3k6gsQxR9PeDnmrvCSsW1SuZxiUe4575pEfzXX8zMO1Daym4bIYyqAr
         et8CabWQ27gCWVoDIlTDUpHQ9Q0to4T4wQYhEIa/116uuEpvWGxtWcr/RKsLXeH+evZy
         8+vAFKFddnqehDjrzYaJftYgjWQPXUcF2d4tL/lRxSSLUIhJ+rWmDI/LK4ovTZzuj6jv
         EaKNhzVOLukF3oPU4BXGxe3rFfy84iK8I4rY/9g8H8HmRAqYTPQgF+GiKx+iDjR7QN8g
         9HNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=MYLou4AjcG02HBpasF4/fKiDF7oz8+QAxOw3av0Ydnc=;
        b=GNv+rhX+m0HkZAm3cyHOsn8uDZ1a5rS7cOxGJ7lkcDMuWvgjPFJmS/8W/eW0QKQGtb
         5kxOu14HF+bTCS/fr0dJyl6LfFIK3yGEkvCXelMM+iaGWBbVUju4MimFjuQdLfPYf3/R
         V5xjUOTmH2PhQBfE12dtJsEO+/bbwmcYfc9SNAterDB6OojQiJyVHe4PbH9hsE5MJTSq
         pd4A7X4xRyRUU/L41bPKALv9FFXY+6NiCtpOnaaDPmV6zenoCLbozR4e1X8B/tZJusPG
         oE6ACouGbmyoCQfwWfJyMDOXJk+Fj/TkC7LjgcLZSvxTieZO35d7s/tK13aorYgkru4v
         qUHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a1V7KKgS;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id w24si185730edl.5.2017.10.14.13.23.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 13:23:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a1V7KKgS;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id k15so2612436wrc.4
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 13:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MYLou4AjcG02HBpasF4/fKiDF7oz8+QAxOw3av0Ydnc=;
        b=a1V7KKgShSz5u87kyQZk8DGoueD7T2j8iYsKfbu0qyzRU18Cm3l2nG5ILMF9UYNrSA
         jEuayym7670t9gxsNJwPQBYHWh2bWv7xWp07A40fXgl8K+btBzTRRMtZnKID8xTxiHzl
         78Nr3BnEMNzd0pc+IMqnXWP78dqpBNO8vmwgcXCZQhjKSzuTVms8zk5wic49cUfqNT+u
         JxQWpNigY3GAQdDtW/TMDdkvshQYVDcLLnU8yPIdfaYkCSV3ef+uR2HD396UjuGd7uER
         lt34GeIm5G65zVeY+exm4q0zTEajmysnHItYs4e4ArLsAdR0d5t1mYDBrtRg2D5CeaV6
         /T5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MYLou4AjcG02HBpasF4/fKiDF7oz8+QAxOw3av0Ydnc=;
        b=NZaBpkAoMiJIiGzukap9G/00t11nivT5YiQFKbOsxrNFwIjOu9/kVo/x5tphOzI4s2
         RRHZc5O/+uv4RBX0O9TApMECht7EyvEgKVJu9AbOjeFK8dvT5zOw2FjRfrvR+tbfKKP8
         TqLRZQ11YBVlL2ICjpzGyEnVDuan8qXDyaILdWTxOnk8DPbgwaY1hnBJmVnPPq22xWOn
         cOFadSYtp5xeQPpqhb2KVp+wU/x+wmsoqFaaRng83dvtCxx0k1Bwrb2k4Pah3UwlwvpZ
         WkriqXnuOmg8oY0V9UkvE8Z4Bve1fkoFpHvuKxfvRcRuXJrnjJO1vTn9G9vHya3o2LZM
         +u+w==
X-Gm-Message-State: AMCzsaU2VZllapnafqmqjsTbNm/D3TcQyQxXDTaUaEdfUyUjRt9urlGQ
	N4Pm4h+7j7K7doHGo9vEHZk=
X-Google-Smtp-Source: AOwi7QBZBqBD5ChVcVxfCKSe6eLmkyWo3mXbjgHDD7s0KyR4AWxq0/8HE9FyYN90Bo2QRxsVr92LvQ==
X-Received: by 10.223.186.201 with SMTP id w9mr4312981wrg.230.1508012611731;
        Sat, 14 Oct 2017 13:23:31 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id h5sm6165616wrb.89.2017.10.14.13.23.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Oct 2017 13:23:31 -0700 (PDT)
Date: Sat, 14 Oct 2017 23:23:28 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4] staging: rtl8192e: Use __func__ instead of function name
Message-ID: <20171014202328.GA4580@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use identifier __func__ instead of the name of the function.

Issue found by checkpatch.pl.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
Changes in v4:
        -removes two points from the string and whitespaces from the 
	front of the arguments to meet the condition no more than 80
	characters per line.

 drivers/staging/rtl8192e/dot11d.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 017fe04..88f89d7 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -128,12 +128,16 @@ void Dot11d_UpdateCountryIe(struct rtllib_device *dev, u8 *pTaddr,
 	pTriple = (struct chnl_txpow_triple *)(pCoutryIe + 3);
 	for (i = 0; i < NumTriples; i++) {
 		if (MaxChnlNum >= pTriple->FirstChnl) {
-			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
+			netdev_info(dev->dev,
+				    "%s: Invalid country IE, skip it......1\n",
+				    __func__);
 			return;
 		}
 		if (MAX_CHANNEL_NUMBER < (pTriple->FirstChnl +
 		    pTriple->NumChnls)) {
-			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........2\n");
+			netdev_info(dev->dev,
+				    "%s: Invalid country IE, skip it......2\n",
+				    __func__);
 			return;
 		}
 
-- 
2.7.4


