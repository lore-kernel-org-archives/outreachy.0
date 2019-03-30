X-GM-THRID: 6674267883353145344
X-Received: by 2002:a67:ed96:: with SMTP id d22mr5836322vsp.7.1553974096601;
        Sat, 30 Mar 2019 12:28:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7a89:: with SMTP id v131ls189257vsc.3.gmail; Sat, 30 Mar
 2019 12:28:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwZJcJfOPr8SsXo5ua8iOTqkzF06yZhGFzd9154t7I29jfSqRDv0XlEoVVOiYFruC+0xFtn
X-Received: by 2002:a67:6910:: with SMTP id e16mr836086vsc.9.1553974095975;
        Sat, 30 Mar 2019 12:28:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553974095; cv=none;
        d=google.com; s=arc-20160816;
        b=RoVwXWDmgYexB7GpBXgbPmDJMKFKEByZRk0WJ5k2YVzA6WZnGjO8QgA5pAsVq0319T
         /7myHHcleWOwCXCWRnr+10NvdsL6BtYSGUNz/J3PHlcacb4GKHXzTBfa6t0TaqPB6i7E
         9LacA8I/5w+6TdqGg3i/KPf6pOeK/UxwAfz4Y3MoTJZ0lzxvO5XvN0j6j1pL0YIXxX4I
         VzyWkV6zmId3pjUfKavq4jDRL8I6L3g+2gjCM8wjw9/JS/l+bS0lhvwEnKXGNGbzBznY
         PFN6G2kM2qHCTXKr88+txcmCD40VaNVlaAJKWOiZPKoRd0XgBo2lHqiO/ykV3W6YSDDy
         8+bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=RjPGKMqNt5xn/BEWPOJUJg3Ipn+34ZDdq55LjAtaMGw=;
        b=exKSw02aRJmzRw19I2DiyZH/uvuyskpOiF/m7/a2YvqI60/lJZ8twwtEvR40JI4nvB
         xAWB9KFrv39vlbZfacpH/F3k3JcmHUkJISx4pN8hvXI4emGtmC047idkuom8omi2sRqS
         k47qASAmBHA0uh/0Uznx2rNZNuV6h0mN/8z4VFRpwS3FFmMGyWihKHzYeJ9gaHU+AglJ
         wF10lxYWJZBFG/SNLvomFyvgIcTXYidpXa45+bnCDuSQ7GQVe3IsKp28ZbNWGwj3UZ6H
         1vkop5mQAGvgtW/hUr50Oxex6UEEArPnvfGsTzZ6Fu2Q2bU4rCXH3FxZ5CgQQunTPGSy
         i79w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="brdEz/Nh";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id h13si386668vkf.4.2019.03.30.12.28.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="brdEz/Nh";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x631.google.com with SMTP id y6so2561468plt.1
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 12:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RjPGKMqNt5xn/BEWPOJUJg3Ipn+34ZDdq55LjAtaMGw=;
        b=brdEz/NhzEwHH5qSUXL5hIMSkrQfw4g+LWNze/srsguzQje1iO8UHlTEAS8kFQZDLA
         5iVs6y0nLf85TDTtfSJgjOt1YVJyBG0itLUHptnM4FjsevLRnfb56hLSn6TPFCMolutA
         azBnj+EBiSnOwZ2Sw0MIP3xFaDntRomv2rOHmgjuDzClcZhw9lt2j7c6ufuPUDO4n1ci
         wTmtevCisUrLGYSRUU0VKqfkBbPvypRKWaurqFcFBmy/u2EozIamKECusV48IOVmMCJ1
         eBZK4yFwR4Zkj/fO31vf4O266xFkYdFT9sLUo9zjZ9q56cwaWZRprx070OUreeOjjgkZ
         MtEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RjPGKMqNt5xn/BEWPOJUJg3Ipn+34ZDdq55LjAtaMGw=;
        b=I2b68Y+R836WBV+la4fMY6UfwNi9QNAbbzuHlEZV93wKE0pPQhEQ0123KQnuxLig2k
         +/Kam29qA6r4eBBffZilAi6rINmQPlewld6dSvGCjAahaAEgIcBpiSzqfYALFbEsw/+K
         bdmKnVJnq74cCTWDZ1PWZ4oFaejI/3b3K0vKg78QAGJDYIldvQaH8bPLNjxXP4zAYhUD
         h85kBuaZxsmiC8DdI+Nh3Y+R68ZN2cIdGfHbiF6fiO+OKS/fCtk8ejEal1HygDj75O8H
         ivd1T7XBYR2GVbs1TNiTumZhK/7Rktfn/aQ6hKgGKuqOcTO2CP0mncghAUziGclI7Oc1
         txNA==
X-Gm-Message-State: APjAAAWbxpxs69+YZDsNyL17fhOzkUNsNsdCZFmZQI9SL8psuYIAXO2E
	dpzWqqFZfXeH4ME+fwzdzs1WyCKA
X-Received: by 2002:a17:902:1:: with SMTP id 1mr54500631pla.226.1553974095567;
        Sat, 30 Mar 2019 12:28:15 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id m2sm7984189pgr.74.2019.03.30.12.28.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:14 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 3/7] staging: rtl8712: use list_entry in function _free_network_queue
Date: Sun, 31 Mar 2019 00:57:38 +0530
Message-Id: <20190330192742.65250-4-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330192742.65250-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>

Use list_entry instead of container_of for conversion to wlan_network
in function _free_network_queue()

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 6912d73e8172..e0b4b8fbcc0e 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -162,7 +162,7 @@ static void _free_network_queue(struct _adapter *padapter)
 	phead = &scanned_queue->queue;
 	plist = phead->next;
 	while (!end_of_queue_search(phead, plist)) {
-		pnetwork = container_of(plist, struct wlan_network, list);
+		pnetwork = list_entry(plist, struct wlan_network, list);
 		plist = plist->next;
 		_free_network(pmlmepriv, pnetwork);
 	}
-- 
2.17.1


