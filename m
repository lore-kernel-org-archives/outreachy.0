X-GM-THRID: 6674267883353145344
X-Received: by 2002:a1f:9d44:: with SMTP id g65mr1920329vke.10.1553974099882;
        Sat, 30 Mar 2019 12:28:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2743:: with SMTP id a61ls942423uaa.0.gmail; Sat, 30 Mar
 2019 12:28:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxupBwpGuLq9zfoispAJ28QoEfO5yW8gKwsGclFBQsZ+IP8mnCZjiwAQz9Omvru/XFliUFi
X-Received: by 2002:ab0:74d5:: with SMTP id f21mr4543421uaq.27.1553974099367;
        Sat, 30 Mar 2019 12:28:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553974099; cv=none;
        d=google.com; s=arc-20160816;
        b=jRfwQgNsp6nkflysjCMe6VrKR5oiQXZkZ8KXJ8GHPhmA0a9VfgTIMzklWpc512CC4q
         ZM3fOHlCQTMwdODqbd5ncHNJPFCwyPgOu0Da7I1F60mALlwRZopK3p7l/eCLL/iv9gLh
         QTcm24rVidWj3AWHedPzFEtMb6N6EpuTIwdcjIndy4NYA5SiI3vTZWP7dLfO5IX4gFsq
         rYjeuFMEyhZ+oTaK1kgp3zbo/BX3/kiShSXqyGZAajbdkyd89tJlVKinHd8y6UAc6/o5
         aUtzn72f0UcEmXyOTQh6Xnvcbz6gamoMCn61lNRhxaylig1Qo68MWz8V1/nhKTkJ8Xxp
         6Ysg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=9nRkNdztDKd/yofI5avwJ8niJyUyLfnwN4WpGUXr7Cg=;
        b=e5iNuMSSJx+TJwutuRQoK2RNaqZJWJqx5aLKxuAPHRBkQnMzT7AS3nloK2xTWegPzU
         qFTfB1tj1c9g6/AnBv/IxIeF0Z+vpun/++sCxFFvCPQ1SPhMAZet/m5njDbQBYcOLVEG
         dOAGkB9qUPsul+xMk5r19BeBogLckp+hQOr0R/DMI4FHs6HH/G9oLNY21czUFhKG3gR1
         mxXolCaAY+HWd1TORVYiNrnSGa1CgOSPOr1i3yaONCdJ3skepraDOy8+wAuU37SzPLJw
         SMlYv385VR25ZLzKUzyzeNtRikszaE5SNM4djdyL/HYr0QC9i8IZKpwmgbAKhyXJkm98
         EoEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O+jDfMwB;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h13si386720vkf.4.2019.03.30.12.28.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O+jDfMwB;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id e24so2576136pfi.12
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 12:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9nRkNdztDKd/yofI5avwJ8niJyUyLfnwN4WpGUXr7Cg=;
        b=O+jDfMwBXk+fr2gRTsRvxK8ZjJr6ISbrp6Z6CFXc06MVAKEniWRRn76A9XF7a9qCci
         qJbqtZYF/P9haRoM9tQf23SbG9BdOez3Aa5Vj0aqJ5K6RXWLlUpEzdFuJfD7JoddMeMd
         uQUzpWVpm7IDiciFKnrdysBSBSKIk1u/7lVh6xG8PN2IyqjsIAq4wYK/mb0rRC/ZyWHX
         /L5BLZkTYs7ZxDlgnC2OXmeeHdZQ0CTTg5j3b6obwy08p4+8h0e0uCqVL0NPyVmh1+rn
         7POOkM6RpaEW3aiVsuS9gZwSVg3Gc+Yz37gOSl1o3psAHA+JAK16i9QI0mP9CqsidwN6
         JGRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9nRkNdztDKd/yofI5avwJ8niJyUyLfnwN4WpGUXr7Cg=;
        b=YsiODNnte07ELCQWhn3QzA0N4/14xfymYYBje//gIGqqF0sq9Sd66Q2MA671G2aKGD
         xtTraZ4Sk3eluA4Os21W0FgeA1veIv/QpUl4Av379ENKQ8+rnIr/uJWYL02PXoJBRnBT
         qnEwguU9Nyc79OZEWq0QJBNw+F2GDmNnGGRMEzOu0v3xWisRobmrMpB3Dj09jTigjsTI
         RxbP7NFT+wNykzB0giB9jdFirlSor/nAXvvswgIkD+FiIQ8zAhx4aEV7qW50uczEzxhq
         0WslDZNiYldiX4Y5Kb4zCS7CRha/RM39xEAOQKdAITSoiBF0ONABUZ4k+0kF6STBrtlq
         6XYQ==
X-Gm-Message-State: APjAAAXqY+pYAM+sM4NHYtw3l3CP1N5HC8IQKed8gC+iaD8lYOD4ZzwS
	MYv1ApyE/eGfW8a4nJLvU4k=
X-Received: by 2002:a63:707:: with SMTP id 7mr31154089pgh.390.1553974098423;
        Sat, 30 Mar 2019 12:28:18 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id m2sm7984189pgr.74.2019.03.30.12.28.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:17 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 4/7] staging: rtl8712: use list_entry in function r8712_get_oldest_wlan_network
Date: Sun, 31 Mar 2019 00:57:39 +0530
Message-Id: <20190330192742.65250-5-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330192742.65250-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>

Use list_entry instead of container_of for conversion to
wlan_network in function r8712_get_oldest_wlan_network().

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index e0b4b8fbcc0e..05bfc2a60eb9 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -289,7 +289,7 @@ struct	wlan_network *r8712_get_oldest_wlan_network(
 	while (1) {
 		if (end_of_queue_search(phead, plist) ==  true)
 			break;
-		pwlan = container_of(plist, struct wlan_network, list);
+		pwlan = list_entry(plist, struct wlan_network, list);
 		if (pwlan->fixed != true) {
 			if (oldest == NULL ||
 			    time_after((unsigned long)oldest->last_scanned,
-- 
2.17.1


