X-GM-THRID: 6674267883353145344
X-Received: by 2002:a6b:b58c:: with SMTP id e134mr7524343iof.29.1553974090565;
        Sat, 30 Mar 2019 12:28:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls1974433jad.0.gmail; Sat, 30 Mar
 2019 12:28:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxum6+gHD0GwgyaTMp04iRO7msOsycWBhGsV1xeNboIBrAuTGjC5OGP1ky8U4t1b+0VlFsy
X-Received: by 2002:a05:6638:388:: with SMTP id y8mr7604797jap.12.1553974089656;
        Sat, 30 Mar 2019 12:28:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553974089; cv=none;
        d=google.com; s=arc-20160816;
        b=HBU9OGF0O5sO1wHxa3bXjYdG9YpOBJCA/nz0Z8bMerJy226BkXNGTxlKv87fPrI1DY
         KtP2kYSubL42lRsiOLuY5nvd4cFVNm7vku/AvgWlGB8oNXwUFyxm+8JL8pjjX/5xtmsn
         Eo7DVl4YzOHl5mKjFV71YgriIK76OGKNQp6N+C3soNBsNTr6JYrASt7Lb2rYGGPnGY0o
         Ccvv23z8NZDiIbz+frrnNdPEXe/Ll0NoObSLTUIPMJLVCtRl+5l4r+6wr1VRkfVofngw
         cTmIggRtFB0cW0oPkbdTSgysBmbaLHNhF3oNINmqfr2UNQqROhAS3x+ct4Q2mUB4GToW
         /n+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=FAISJL4rluZnQjKnokoBs6zaAnZZ3Q0MUmWmCAvXE78=;
        b=m6jrAqLQjI4IUR+K4uXcoprDcND6wrQPs4azIYQgCiCyAHySfXxpb8geNLGHoMvebf
         eK2VdZhPpnfRL+ciWVOimXz1WlSzuvbKAacBByCk901IC6jMayADMTJKGlCtCtr7za+d
         TuBJs0v0HbNQ+AKcCcw8IhfgR8sX2E4iPPKVPfmV2w2BzjA1Z9xzOo8G5HNh+CmUUfex
         S/Osy8OyVuCXzogjWbuwb/4Dmb5AnrlGD1wxYEUfMUsr8f/5V7lEMQibtnGL44lIW6O9
         VkitL3tYYz1FGBQE72ECoaCqn8jhZyYjHYImSE3tmw92jcLuPRUK5E3KC++seuq2FmIl
         aC2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rkewi/3k";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id 3si314313itz.0.2019.03.30.12.28.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rkewi/3k";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x430.google.com with SMTP id z5so1566165pfn.3
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 12:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FAISJL4rluZnQjKnokoBs6zaAnZZ3Q0MUmWmCAvXE78=;
        b=rkewi/3k18NU6Uy+4FAR+aZYBb2GdojYQhKZFRwpb6EnU8D7uGMUp7DOYMltc6Cq3s
         WopmMy8tRrAG/clv5TG8ES5AFvj7fDGpUXY5nCyWmuffuCMglMnrD7t6wUHnYtrfQzfc
         nqg1f9StjORUEI9UmEFslK1EYHypgZwUlGiVjNHCyqwF0uFeVOQYMT0uV2bjuWp+7poT
         g1BbSLg7DacPOHPEyTvTcfLgeWa9AaGWIEk1EfN9GJJ+ZcHMznLXp8WR3LBGXgujgwVn
         /5ipCOx+2t0Cs58ixq1Ng/TBbwzbKxhsBcP/FO+kHBvl7k1k4y+bxDvzrqz9sPu7pfn0
         IAwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=FAISJL4rluZnQjKnokoBs6zaAnZZ3Q0MUmWmCAvXE78=;
        b=lvCy9k+s3BBzAvJsrgmpOvXk8ZENyc61cI1b9BV7rc99NVfNGPR6OoLK62IobFtp1p
         cVXPa+qVF5VThqTPNsmqNKAWYeCH/cXubJMldtntgY6UZp3lCkbwcG2WQE8bUvhgEkVW
         qMEblayI4QaLReTxSMdsaROrxCl1xHEe+3aWG2G8uKZvuBIiH3xPv/9SYkuoS0eerpzj
         HlvIbxE4OBw25aIIdp/0s4VApP8GxhY13cJkJkfuHPE62YSOgpG+7xhtJYXzPwqSs9+e
         Lz3hYU/dk039DgndWXGoKwQVeYh7MvTPJO7e1NkaM/70cEwNa8TFNoT1GZzKtl7PKxA9
         24Sw==
X-Gm-Message-State: APjAAAXoH5Xpx6InPS99lYBghSq5JIxF9in/He9xnMu2cDt2s46UMhdB
	yQkOHpilFZyX5nWpkpPVinw=
X-Received: by 2002:a62:6306:: with SMTP id x6mr53276927pfb.244.1553974089228;
        Sat, 30 Mar 2019 12:28:09 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id m2sm7984189pgr.74.2019.03.30.12.28.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:08 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 1/7] staging: rtl8712: use list_entry in function _r8712_find_network
Date: Sun, 31 Mar 2019 00:57:36 +0530
Message-Id: <20190330192742.65250-2-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330192742.65250-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>

Use list_entry instead of container_of for conversion to
wlan_network in function _r8712_find_network().

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
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


