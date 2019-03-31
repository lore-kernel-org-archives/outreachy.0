X-GM-THRID: 6674267883353145344
X-Received: by 2002:a05:660c:288:: with SMTP id s8mr4325826itl.25.1553998931892;
        Sat, 30 Mar 2019 19:22:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7a07:: with SMTP id h7ls2244648iom.5.gmail; Sat, 30 Mar
 2019 19:22:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwhACGQIu1rF2Su9Edte8lc+Johmz5XBY2RuKKvMa/MWTVo1FZR12B4ch6YtVpTpV+XvprC
X-Received: by 2002:a5d:899a:: with SMTP id m26mr8289402iol.5.1553998930883;
        Sat, 30 Mar 2019 19:22:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553998930; cv=none;
        d=google.com; s=arc-20160816;
        b=zenGzgHoHbIAu3esY2KQ9rE37gNrtZY6BdTUbNqE+N1br2aj60cG3DJE7qYeqzKJbt
         ZZyT08WU2CXIml7tArgho7LrvjIUars0U1laM5muvgLvdkjdZH6Jj5kcbvRajbvtJ2XR
         6s8QDZ8THjywxJMOqBWMEpOpflj9xmABlBOOX8ZhrfxQGa1Q+Fpy86vlbbEZRgluLCk1
         KfhybiJ3quIXKTAomRgt3w1rw9Y149degDsli3sL1lM+wO/G9V54/xR8YVKNsSAPmiig
         QyDwfMQD12aHYzoa/0Qxf5wa9KGaMaToNlCjuU7wQXjhQCXdiURSKuWHQHwpVM1PqD7n
         iyrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=eu9g+BNYO4puoKJ+8Zltkk2JCBoG+9mTJdKB4Lq2Fs0=;
        b=n+ZU6wvKPc0ofRe6tEq6F3PfbVC6I/ARFOVoeZNgCywMQlK84wplo49uHDyTjOvzc0
         Fv6De9Ej1Td7w9jGnQ1+MKayQczQaCvXeAMr7ksF+ea+CCKPpnWQIz9XZEDQ3gwSLZjk
         bBZXGydR0yVyZJrsohzM4xILCoIsQIBhtlalpCkU48RevA7Fn+AGChR04SEgPUn4440x
         Ktu8dpAj+mdEjQ02jR67TCY5JqrxsyJuhqK8BW47BhpaMrPfO071T1Hys7f6tOkp1wb8
         T4e6VnsfAPKO8e3ZpR+yZzLOhfuciec5xbgTNy2s4k75b7RSrtHoeMJz/n6GJSRvRhGo
         Ap8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="TntRN6/p";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id 3si353560itz.0.2019.03.30.19.22.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="TntRN6/p";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yb1-xb43.google.com with SMTP id u75so2273255ybi.4
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 19:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eu9g+BNYO4puoKJ+8Zltkk2JCBoG+9mTJdKB4Lq2Fs0=;
        b=TntRN6/p45xTLji7uk+nVcdlCz98H3+EkmusxudkkU0W4cXRchAe8aM+qAr6Hdm4wF
         gdIHV7Xv6MATnU7z948Dmr5RyaX/fLt1eyaOmCfw1nx+HqEitMfHC7C+21YzLXBLBnmH
         qAJ25nB/yBd0oBDk+a4wGjBX4QsvfvN6aKVX+0hiavmC2L81VUGIKvmlVz39zYZ0mj9C
         AGO7KVOBm5YbDBsIHHO+A6C5u5fdWIBeIiuE3pW40bZbciXu1D9I//bweBbEOBvwX15X
         uAru5vzgru0smU9CSMnByX2E08NrXfcP3Tfjgx1XbGXOF5A9XRa4IP9TUU0LOQ9iA4LC
         AqRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eu9g+BNYO4puoKJ+8Zltkk2JCBoG+9mTJdKB4Lq2Fs0=;
        b=AQ7V9MCuclbNU2CBVqhgzIfvOFy/WrProadPScoX9qZTuLqy1xZpc7V9i843fL23q9
         8V2hEvTgcVRKy9SdNEZziJGo6czcx1EQoX7HgE1kFg4Xa3d4YlVdaMDbouTfHYCCydZS
         oVQ+ESSkl716l8l7azAvTR+j9kcO0h3Jo7yW2F84qT1t+0/Mm5Fh29IlIPmmDa/8LQ11
         bCf9maLKObUsozGt0n5VtvCNZvmcRktEyF7c23g8HbcFatQ2/ZZtyJP8sdkWHlidq3hv
         bLI/fOcNJ18f2/P3nBr0E2KYTf5B3+uupZyIWnWtmDx8vcJD7NEvms2kPTAoEHI1VNFq
         +SNQ==
X-Gm-Message-State: APjAAAU8DA7Lk0P64SuHMbBAiNRVtuXsf7Th5FKSxeVCIqZpHaba52Gk
	GHREUtvrgQ8p8YkbCZKv8oQ=
X-Received: by 2002:a25:7610:: with SMTP id r16mr2968921ybc.439.1553998930309;
        Sat, 30 Mar 2019 19:22:10 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id x126sm2425558ywf.92.2019.03.30.19.22.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:09 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 1/7] staging: rtl8712: use list_entry in function _r8712_find_network
Date: Sun, 31 Mar 2019 07:51:49 +0530
Message-Id: <20190331022155.68569-2-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331022155.68569-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>
 <20190331022155.68569-1-himadri18.07@gmail.com>

Use list_entry instead of container_of for conversion to
wlan_network in function _r8712_find_network() because it is a better
practice to use list_entry for list manipulations in kerel.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V3:
	- Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index c666e038f43e..9bfceaeaa05e 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -142,7 +142,7 @@ static struct wlan_network *_r8712_find_network(struct  __queue *scanned_queue,
 	phead = &scanned_queue->queue;
 	plist = phead->next;
 	while (plist != phead) {
-		pnetwork = container_of(plist, struct wlan_network, list);
+		pnetwork = list_entry(plist, struct wlan_network, list);
 		plist = plist->next;
 		if (!memcmp(addr, pnetwork->network.MacAddress, ETH_ALEN))
 			break;
-- 
2.17.1


