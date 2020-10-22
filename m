X-GM-THRID: 6886423136117456896
X-Received: by 2002:a2e:989a:: with SMTP id b26mr826670ljj.276.1603370331714;
        Thu, 22 Oct 2020 05:38:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7313:: with SMTP id o19ls297190ljc.11.gmail; Thu, 22 Oct
 2020 05:38:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxjmcN8drl4R4G350zNUFbTQ0xWF5Ew0S1YqiHSl27uhV20aUZjz6/brUwk6Cm8uor8op7E
X-Received: by 2002:a2e:97c5:: with SMTP id m5mr998991ljj.22.1603370329610;
        Thu, 22 Oct 2020 05:38:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603370329; cv=none;
        d=google.com; s=arc-20160816;
        b=qmsB9Anf+mo7/pOcLvk087o4qyf8N3b/hCKWs8zqaH64GX9i9kpf99yxPJKZ+GkpWu
         TNAXKu/YuCwi+RMaSZvpxZjLR3+RfSHfCiHwoNVkQkduimnhG02rJB7UjoK7wfOMWUt5
         orzQVS1dnJNrt8umlDJAqB/wU/VfjaIWUPTryvTecdaD2OZCB64hCOhv5UrvAby5wo7V
         oDtXQc4O8Fg4kAEn1m6sHOV8R1vYVci9hwmNuAroxjDCPjPq0UQHD0bcTA9HIfD+ykTR
         MlBAwhzR+HVBVkrn6YP3ooz0BAiIWsfTvgyL8GXv15JczL7BuQDhkHs+xYGsTzj9+jd2
         XDHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=oiRF2TVvC2JKxZjhWhHlnAiwNuh4ArQq7xIf42QtBeY=;
        b=F4tSvqnLfPKgfYw31zsCx1RtOgEOtglX9Vj/Egdsi7v9rrv6cDdIUP2vODSbYCb/7A
         epK7POtsynl98aVWpJ52n+/pAGsnZN+nU1NitXKagQmDNMhCqlQ46az2xJirtDMT78n3
         XQAh1Bo5AJG1PYvWzp6K7X8bmx3VTWdhRA35iBb0q/HFjydKLl/GF8KMpMT7P/KFcnYa
         tQ2vRC3mIr4j/XPrRXjrGFmszP9C9iJW28yQpT83e8oOml5KXTs1z2Li5Lku/rx0FNIX
         DWKXot3lLF3KL6c71E/iNPuN0H2toiGuruggq/+SGQx67PzV7j7rjIH+v/g9LQCbavgI
         KUnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oeKXu2zW;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id e1si77475ljg.6.2020.10.22.05.38.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 05:38:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oeKXu2zW;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x241.google.com with SMTP id 23so1741672ljv.7
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 05:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oiRF2TVvC2JKxZjhWhHlnAiwNuh4ArQq7xIf42QtBeY=;
        b=oeKXu2zWy4qLY/qcxmuPbxmk5RVDc95obP9hCD4UsUjpjM3NEg7y03p3nagoNOPC5y
         dm8sYIQEMaETxUJUCsKxpgmgFcVVAxmy3Wv9DzHAZpQj8ljaf1fY1//ZMn4GkV7hMKWr
         7R/xgpcyNChO5OE/BvDD8+KBGROtmK9d0yfg5gB6T8e2Wyqj8xmmrVFWLqrjcklvRoQm
         FzWAgNPfUJjJw5AdbMRWE0b20sKD+vGS9b9ELNB7JKX/Hdeu1BJR76UokXN5pnTaZkeh
         58jXMt3nLGtwf/DT+eXwL9DdElejtrrNt1oejo8M10B4XVUVdoSh5uO+S8NpjVNXnegP
         MWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oiRF2TVvC2JKxZjhWhHlnAiwNuh4ArQq7xIf42QtBeY=;
        b=hAPDyNp6reQy9F3+e8nQcNCoz2L/QixH/q5BMY75woD1rxo5b1UGhi4xp5Fwlr2wi1
         2BWA5TUmT8RCGF0mr7x49Ef+bKRk0tNgoykrpXoOslLjJU05PWQmk2P7O67YcpHFqSkn
         aItReaPJj9oyBCXjV8S2CS0DB/yXBrQ28MV0WnKlAoJ9pUFEpbcv/KjBE3e18/ZDpLM6
         pAMUj6REZxNP000w4/Zf4EvEiLgtv1AyIOo4A0C4D5OqidA67zIO+KokHIMZHZ098zpu
         qpB5fgbH83rzZrgQdQKAYoF51dUKjI4ZiRkKxWylPi0YaYauceL0WbFQ1U7DXcMzX237
         QVag==
X-Gm-Message-State: AOAM530RGt7EG91mjL/sVzLVnQNf4TeISjimaBVW7Zy56gs640nAqr0Q
	rwgFuGa6yAVPX+NAO7tGrkU=
X-Received: by 2002:a2e:b890:: with SMTP id r16mr859706ljp.7.1603370329378;
        Thu, 22 Oct 2020 05:38:49 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id u26sm261631lfu.13.2020.10.22.05.38.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 05:38:48 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Elena Afanasova <eafanasova@gmail.com>
Subject: [PATCH] staging/rtl8192u/ieee80211: remove debugging line
Date: Thu, 22 Oct 2020 05:35:45 -0700
Message-Id: <20201022123545.4530-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary debug line from rtl8192u_dot11d_init().

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/dot11d.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.c b/drivers/staging/rtl8192u/ieee80211/dot11d.c
index f972edcde8a0..ddaf66fa0f93 100644
--- a/drivers/staging/rtl8192u/ieee80211/dot11d.c
+++ b/drivers/staging/rtl8192u/ieee80211/dot11d.c
@@ -14,8 +14,6 @@ void rtl8192u_dot11d_init(struct ieee80211_device *ieee)
 	memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
 	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	RESET_CIE_WATCHDOG(ieee);
-
-	netdev_info(ieee->dev, "%s\n", __func__);
 }
 EXPORT_SYMBOL(rtl8192u_dot11d_init);
 
-- 
2.25.1


