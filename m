X-GM-THRID: 6801809120095633408
X-Received: by 2002:a37:6e42:: with SMTP id j63mr10810787qkc.400.1583669595675;
        Sun, 08 Mar 2020 05:13:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:a0c:: with SMTP id i12ls1835550qka.8.gmail; Sun, 08
 Mar 2020 05:13:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsRxHWW7FHFCOu0ttGcafsq90rfviVQDuqUZ8iOWWHPipZPuLYjZqLN9vQxcgJARXdHdZiv
X-Received: by 2002:a37:4a41:: with SMTP id x62mr10885214qka.178.1583669594521;
        Sun, 08 Mar 2020 05:13:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583669594; cv=none;
        d=google.com; s=arc-20160816;
        b=WKJ0h9QFZPPu+x8O2ALoQ8mKe6uGNZAwE/93vFdjH/QJhN7JnnYjZ3ET1AiJYt6O/I
         IhH4v0fgYVFpeU49tOF1Acn4hIWZJAHnbudqPvZ8kQboaOa4JWcOQ7euUJVz8qvlCV8M
         W++3A80pdKuX52gHNJaOOaCkOcKdsI1HpuKqUu5GMvbcfft3xFum05YZTG/1Rycp6E4C
         zjc6Pp/39LTZ/ionwFpVSZnqRh9l730wVSKI/z5manMUzT0nJNVn34aWFu0GmOHgmVo5
         ZxwvjaNxsDkCATdBF+ciNHCOxB2oEWkXi/IWBIc4q7q4H2qX6aSAlEa36zSnsD+XvMtj
         MxJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=I+04YAn9rDeEDBlLO5jjBOa/zHhsHdIV4NLEV0LXT48=;
        b=NlykLGBxXy8iS0PVt3liReKb6v9og/PLkaBpZzIW7AWpqrzq4AHDRL0LckQLcylImA
         AOdtidqXCDzFeW+0TNdrdSbEZ2bfleM/uagP30BMA7tCwuL9xFZNhsvEqGcwhijTySww
         7CvLG3jT13N/VEUiijYcHnjx9145n/tM5YVusVpCBT9wg6HzeVeh8XF8JFiUxblxG0AX
         g+ixvxDx1vVwRCaV4E2uXz17ezbdu11eAXOxpM39AeOP4rMRChL5R4J4OMmLcFWDGq+g
         ciuu2cYYD/i1GBU8+5EOg/q/eyqiPix3buBsK6IAM8CGR5mKWfDZHNQknBBB/YZ93ofo
         RaeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ouHmyJDZ;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id w10si403116qtn.1.2020.03.08.05.13.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 05:13:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ouHmyJDZ;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id w12so2849767pll.13
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 05:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=I+04YAn9rDeEDBlLO5jjBOa/zHhsHdIV4NLEV0LXT48=;
        b=ouHmyJDZin17MmiOuOE7gkLwiCOEgZfFL00/HWMAqNiJBAKLov6+aENaaBLbrUkU7A
         IWfERgPdfR9PXxshfmO99pjDmVOQI2O3MLtOxHjgTn1vIfUtu/V3EOyvfYogFhh0DWOD
         2HEkKep6QKt7p2sS2OtEG8/JborK2v0YhG+9NDB9QRGBtT/uE6ip6qZzDCGwGjwrjjpO
         HAwTNDUdp1iXBODuahHy8dTj+AEsIm2fIzVMblveCOvUYeTsmcXC2XvmqjUOnvNzBkYq
         Ht4NbonLFEpLvN2A7OPWvgEygfERGQhKxe7OjBbvVRbumxJmMlY5VSix87PbAkFkyHgu
         wkzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=I+04YAn9rDeEDBlLO5jjBOa/zHhsHdIV4NLEV0LXT48=;
        b=si4OaN8Z9PxZNbQ8WH/tDPfaRNEbi6puFFeng+AKbiR5h4orgC5b5nDDDzn/IvYvbp
         yCYJGc4qNcuKCJoTwdtr6iAuhrDgHtAzoxt7QVDYy5A6mvexa2GB2xx2RXExJbZVUaql
         zTXKhrimeooTEUI9YDYMap1g6R+0SxwLpYGWxk3pbzlbbOIkW6G0HSJwBvvBiRB6heZk
         YLpS41UDOysPw81WXlac5lLtROHD1uWH6BemajCwcdju1+Rtu6+uWZXnGPjFb/1OowJr
         ykmiF5zzsK2EfJO/00M6SAyc1S1Ga5InXI3pqsiKGFt/lHBFfSAqen6HT44fj7hZ8b3Y
         HxeA==
X-Gm-Message-State: ANhLgQ0qogpNTNg0WbwP/ZjbLZMbjqGX5yepuVysMuDJ7AmoyOt+Jx+n
	iIChNs5VtyY9OFQUg1ArtEA=
X-Received: by 2002:a17:902:780b:: with SMTP id p11mr11346898pll.61.1583669593509;
        Sun, 08 Mar 2020 05:13:13 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.184.119])
        by smtp.gmail.com with ESMTPSA id v8sm15262300pjr.10.2020.03.08.05.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 05:13:12 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: greybus: remove line over 80 characters
Date: Sun,  8 Mar 2020 17:43:07 +0530
Message-Id: <20200308121307.2783-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove line over 80 characters.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/greybus/arche-platform.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index eebf0deb39f5..633b90adcc45 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -47,7 +47,8 @@ struct arche_platform_drvdata {
 	struct gpio_desc *svc_reset;
 	bool is_reset_act_hi;
 	struct gpio_desc *svc_sysboot;
-	struct gpio_desc *wake_detect; /* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
+	struct gpio_desc *wake_detect;
+	/* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
 
 	enum arche_platform_state state;
 
-- 
2.17.1


