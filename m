X-GM-THRID: 6466329510613614592
X-Received: by 10.159.37.42 with SMTP id 39mr17010082uaz.70.1505559709636;
        Sat, 16 Sep 2017 04:01:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.94 with SMTP id s91ls7995964ioe.35.gmail; Sat, 16 Sep
 2017 04:01:49 -0700 (PDT)
X-Received: by 10.36.101.212 with SMTP id u203mr676162itb.7.1505559709241;
        Sat, 16 Sep 2017 04:01:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505559709; cv=none;
        d=google.com; s=arc-20160816;
        b=Vua4X7nnZGgXrWynmXnivgkFMPckWUuhrxgrPjtzBvUjoP7MndRaBHgyw2NYj4HjBV
         sYPSv8BzWjnndJtao9B9+PINFMbZ1CduGFZrlN+cyTl6p9EkKg2LaMUvGTpgq2NcZbPQ
         y6aCKWjR93ThHgsM5RPNcryCREw2MCXgwMVMWWtsQWnfe40YyD/Gus/n5wGBBvq/7uGo
         yiUaHeh+zINIyWJ6fCcPgLSc0yr9syWzTujeMytxYEbPvgxlMEgmUPNaq9Y8samIeV0l
         L9k4VXxssLvdObmgQc6CURFtteVVYW+rDJYxkt18HMQzuJbvuxhhnoZJHnximF3vMmq3
         dsLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=gvEHhH1WsU2G/osCMYCWZqHXQC1Mnpxayo8klfw6J8U=;
        b=rjHFsgygRSroacqC1oVAkhUAAA0jePpqHfU8EfFMtuMKT1GbUQOkc7kzyIAPWVbbYf
         2SNoOcX1UOGKUwu/iXO6SxK0lAp19vLEerLO2e6ub0X39zMZ5SELrOkKfV+/yO/HViWy
         r25Z2DZMea6TNfqCxubwpW8Ct1xUlOjNic3NvE13cQmqEhcV5lKX8rpFDbkQK3ZgfCqf
         1m+TF6aOTiC1kNMUs2k9NkTh63kucqJF9W/fUWnYzXWGWmFXy/NCxMy/aP0sWx+2Hx2Z
         TQhAVbvhWGOXyqeVtqCIgZYCHeGE4aYJ2XwaFzX2HZ1QOP4Dd1hBKHTFJartZJBIdzHR
         WQSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GKvmoQrW;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id d207si267112pfd.16.2017.09.16.04.01.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:01:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GKvmoQrW;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id d8so2622253pgt.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 04:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=gvEHhH1WsU2G/osCMYCWZqHXQC1Mnpxayo8klfw6J8U=;
        b=GKvmoQrWJ3yE8s42AVG9y8AyzMMDGODYq4RmfuEJjCr4XS75mbNFhdt3dlHRuptZ+n
         YzrIol3mVjA3Fcg05obQT2WBFeT4y/y+k9VuhiB6u/F2NkmFN1l/kIgCfofkEHFwHPy2
         Pvzv+HoWWFlFIx/6ZMWuDFo33d/d2YfbGv+m6pfwz6JjWTYJ5OZc9L6yfMjkT6Dq2jEq
         GRa6X+McZqXuHg/9yrV5NVYVof/vaWKTrc0yRbMswBgmvb+bSEB6Og5VW1ecvt2+92Jl
         PTpYgNty8gpKfhX/ueuS3Qb8h09S4d78yd/TqCv8xsnXD3YYmiJr6YMn5gligfpdGdUc
         +xLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=gvEHhH1WsU2G/osCMYCWZqHXQC1Mnpxayo8klfw6J8U=;
        b=HFYHkNS/A7Cnu96pUEi5ao1i6iLUZ7QrpanGJvM1YXoQG0/T55ZaSpbMvv1CG2vW96
         4XsxSkjc03lSKYzX9UJyufEZchTsjyat+yEvZc+fAQi/+mH6uEiAPOA1tW3r1dlagjH/
         40YeDmmEqUsdX1F5lgR3PpWTdXjyXrAUE6dBtaecLyqI6mWYHbGc2u9M93sFA7N5yhiC
         keek9oZuNHjXN+oGXn9W50JbGKnAYjbofUfq3ya5b0T+BEIyVpdQ0OCAJdqYbVo9P+Mn
         1+tW/A9UEU3h0u16mJfTJJWfQhdtXRvFn82Z1tBiiSO1EuoZ5Il9tXcRUgy6StKkBGDz
         0BIg==
X-Gm-Message-State: AHPjjUhWxQipBO3GFye273R5jJPBh6ROAgD/tqYtbxBFixO4XF2cvMsK
	DSHNxBRs4EhZ+A8YVV8=
X-Google-Smtp-Source: ADKCNb5fM+24hpt3qqzNxXpBdQJrjwaktUKwsFmJQsv7CGMT3sd/qzkSpfoHP5tif8XqAFaXwfdcgg==
X-Received: by 10.84.216.21 with SMTP id m21mr30876620pli.273.1505559708977;
        Sat, 16 Sep 2017 04:01:48 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id x8sm6099442pff.104.2017.09.16.04.01.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 04:01:48 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 10/11] staging: rtl8192u: remove space before semicolon
Date: Sat, 16 Sep 2017 16:30:53 +0530
Message-Id: <405d2014478c1c7e127c7308a4680f069d4690b8.1505559000.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>

Fixex checkpatch.pl warning:
WARNING: space prohibited before semicolon

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index f19aaeb..816c496 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -2376,7 +2376,7 @@ void HTUpdateSelfAndPeerSetting(struct ieee80211_device *ieee,
 u8 HTGetHighestMCSRate(struct ieee80211_device *ieee,
 		       u8 *pMCSRateSet, u8 *pMCSFilter);
 extern u8 MCS_FILTER_ALL[];
-extern u16 MCS_DATA_RATE[2][2][77] ;
+extern u16 MCS_DATA_RATE[2][2][77];
 u8 HTCCheck(struct ieee80211_device *ieee, u8 *pFrame);
 //extern void HTSetConnectBwModeCallback(unsigned long data);
 void HTResetIOTSetting(PRT_HIGH_THROUGHPUT pHTInfo);
-- 
2.7.4


