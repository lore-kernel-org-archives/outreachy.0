X-GM-THRID: 6674267883353145344
X-Received: by 2002:a24:7f52:: with SMTP id r79mr6901706itc.33.1554149443500;
        Mon, 01 Apr 2019 13:10:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:80c6:: with SMTP id h6ls4012781ior.2.gmail; Mon, 01 Apr
 2019 13:10:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyE1NNF75Qt3LuyUWnVnbVCZITm2mSrARFhb0DjP6pcsEd8TUmAReoI+ryD0tl+WncQ/hum
X-Received: by 2002:a6b:7614:: with SMTP id g20mr10445330iom.14.1554149442435;
        Mon, 01 Apr 2019 13:10:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554149442; cv=none;
        d=google.com; s=arc-20160816;
        b=LmfGzknzZUoQLKY0gEM9tFHWj7HDLo0LycvkyoCUUlfFfmtNX6tCUJTRexYIbukD5M
         7Y2j3YvRRfwDg0iqgQeqpX5nAkzA7wgdZ+ybRjEi2y6VAF4fity64Uyv428xxiQYmfQ5
         UqFTEeHGWs2G8d/wUvKxeJhj5VAxD09FWDJZtZD51cX+C8NfagViTTeIYHo0sacILG2r
         IfaC0xXBSRZpXprWzZVFz2xN4WEU70EJf+PWAe6UattQ4jqARhgPS7asaXHyBIMsEB2G
         TfAOFr9AA8Qz8nqzizyPBxIl14vtJgaK53g+rqz/82q23G9oxfTFKHOKWp6xSRULNCKP
         tiMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Dcx/3yoiG5j6TfLv3XOGFq3/tx1r212QBrv6DPCndj4=;
        b=xQx/UK3lUyKn8fKRraB4qZvNj/a4wb1InT3wM4rkH4sX4qYY9A3lRh9ZoWAwQWFN5R
         PG7FoyVGXUVUcrIn730jV3G7yQBssoW/JUChLAkwxhTJma/JBgwpQYLJa0Hcm1etbdwJ
         HgsMqvrFuRS7u35SPKrI/WJR4nFeBXgJB7eTLODt+oPXgciQCK9VuP2X6V5mrHPWkqOt
         ufxZmE40JXmntUZviwzObzCsiuVhdvLoHWLv+tSaZ8cr9TlmtwZS2LuZu11g/m/XNtp7
         xOT/GEXG9NrPNpdc/kFkv7+wo/YrgkXIy6QxmrD7n+7cqP3rO426fO/jnWh7IsHsBO3T
         e/Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iyD6PHJC;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id j2si544381iop.0.2019.04.01.13.10.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iyD6PHJC;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id g8so5323779pgf.2
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 13:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Dcx/3yoiG5j6TfLv3XOGFq3/tx1r212QBrv6DPCndj4=;
        b=iyD6PHJCk8j8n09A8uUvi0mPGucU9e+JlKj1JMadx/bVI+Xdd2MbA1gjSZOS8DPpWa
         sNOIrI2au7uN9TABFp+buNgm4D/G9NXydJQHVpGxpEtklipQNMxqXNB1kLJ8pRKzU4bj
         +HHeTM+FYt3jxVDsANpKQOPGNWq5xbNSyx319pHo4OnQJ5AVz3YSBhvYj4wWXmPvNCEK
         sFEf1e3YLB/o+zK6R5iOt7C3jqwFYnd2dgQjpCu6MU+gVBTSXc9oogOmFix9IGOOCQ+u
         2udZaDiC3MYCK0OVeWrHjd2xnX05SrXCnfCeuQ8iKJ0vhG1hotHvVBMxL56TSK19hrUO
         fHdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Dcx/3yoiG5j6TfLv3XOGFq3/tx1r212QBrv6DPCndj4=;
        b=LWALah9TgcKCTsMntmCEsmPQ5g93yVcRdPCdQ/SXgPnJ8G7PmlkXAEMVdrVaupmveI
         z9AdAZz1U1SUHxv5pUOkIcGBTWPg68Kyzt3epjz7vQyw4uNYo2q2eX0i7ee5vuNiyS+L
         Nqv3ylcfVQhQTK/K/y8yFoBoEyQaqEjt8X8o+D+9eSUhH0y5EVTM+L5QT9/UeLlkCwFx
         YWYtFYyQc0KqtxHkSmUKtph/6LhP7Fbq72SW1cAjITnCJJdJogp+vw/zZaVJok/vMjSQ
         eq6UvIfMm1Uxky5DPg0boYwRH6/g6r7ouMklBPG+0Z4PEk4mQDb923IWudq1wSUbr3fN
         wncA==
X-Gm-Message-State: APjAAAXQ2u7ktaUWXgu2h8+wpe8w1YNhrD/9FvySWZScYIb358jaq/EU
	kyw9LysDFx8Mp7kXWsZS4os=
X-Received: by 2002:a63:4b0a:: with SMTP id y10mr62246257pga.66.1554149441750;
        Mon, 01 Apr 2019 13:10:41 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id t22sm13540004pgu.45.2019.04.01.13.10.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:40 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 1/6] staging: rtl8712: use list_entry in function _r8712_find_network
Date: Tue,  2 Apr 2019 01:39:50 +0530
Message-Id: <20190401200955.98744-2-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190401200955.98744-1-himadri18.07@gmail.com>
References: <20190401200955.98744-1-himadri18.07@gmail.com>

struct wlan_network contains field list of type list_head. Hence,
getting the address of wlan_network using list_entry is equivalent
of using container_of to do the same. And to use list_entry for list
manipulations is a better choice.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V4:
	- Change log message
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


