X-GM-THRID: 6674267883353145344
X-Received: by 2002:a63:dd10:: with SMTP id t16mr797345pgg.16.1554149448963;
        Mon, 01 Apr 2019 13:10:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9f86:: with SMTP id g6ls5141825plq.3.gmail; Mon, 01
 Apr 2019 13:10:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxtIYug9nObtHHZ0zTD8iBk+QQXvgv8p/3XPqDLc08dB2dyiC3TyIyXiA/8QvLC9TxZcBhm
X-Received: by 2002:a17:902:6a3:: with SMTP id 32mr1967959plh.80.1554149448192;
        Mon, 01 Apr 2019 13:10:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554149448; cv=none;
        d=google.com; s=arc-20160816;
        b=X1LoGAGMQGA0wofva3kS+M6QuOWb9dt5UYR4t6l/Fzufbr2ncewwBJ9miB79PusCM1
         QlDgPb4KGz+1+xuHK8kAIMvP9sGDbfuDFamOT77bSsul1Tm49B/cgARTiUDU9rZCDcYH
         Zrc4M5UZH9JU1pUVaD4j6bk9QTxjEqVIgYuR7eIJ/NYbZh+w8b0vyHd7bJf4+04x12Oa
         M/sSFPKFUTduvTCQXzYimWBDcE3UNC29FuIS+em5mMIuZvDJDaMPsM51cU5aJJhin4uI
         GHyGr+Nzzr8efijrY80aCc0/3x7zkMe5LuqYGV47BJuS7pJCsZccC/DGHYcNeIctIcGY
         71Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=m4TRulVSjKRCCEsNA5EStm2hzQe0u0FzIvL+cSB/kwg=;
        b=sfBYz4tdtucfQaW8gnl94wCG/hJMnksVhWziYNQLytLp2u8Umdcw734JOq11sQufFt
         zxT9VtRnxAm6v6z1DtZsqgxBw2i4+zHzOy9Gpm88FHkaK4cvz4RknV+zfQQn89mZO8FQ
         iOPo/zHuyiJgA1mpf7dlqMfmc1Pry3q29FETfX7rLG1msujAx6xcOHqD/JKXK/b11Kg9
         LuJ7+ItndN6d5aGr+Am3ORBuqdc2cSJYVCFPPeAeUpPjO4P/ki/D5d9r65YEtYnbLbQ5
         20L/wvRAg4Cj2rB/HoIzdQ0b9gsNMwgGBb6wUFpYkkB6YKiwqN1UyoE8cbN8oTLZKcDB
         57uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nuKs1s2W;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id e124si656007pgc.3.2019.04.01.13.10.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nuKs1s2W;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x431.google.com with SMTP id z5so4093349pfn.3
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 13:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=m4TRulVSjKRCCEsNA5EStm2hzQe0u0FzIvL+cSB/kwg=;
        b=nuKs1s2W2EEjrPLa7di+ma5GCIhMZHHUkNjmF+yLxpbw6H0hUOkM8zWGVC23TpVAF+
         wSrQLVVQFgXHgrFsUokMU+bxcj8kWf1uaXm150HteEpWWTagJkZ5qXwG727s8uF/dJGI
         X+GYV3qaUwerN+KR+u7fWJm0JJPYfXkGTOE8nfkm5K3Q4q9A9nrsuHATQ9RC5TbAMH3W
         auZWLBINjdhwIPEVjodrWsyhcic5OLK01ySrBOYgAJuYvBmWCFYnbDyvK5+F8et4Ltwx
         rchN1IkWOqBsxMPKVIDv0ClMAWbSIxYEmrE/X646PydyUN9sMWp9ypbYulkLAqMx+W0M
         da9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=m4TRulVSjKRCCEsNA5EStm2hzQe0u0FzIvL+cSB/kwg=;
        b=s6DsGsmyF2z9YIUN4rAKVgmZhG6qHf0AdN/VQM0mRCYsVZjYlxduCiPNMK0CA1DTQU
         BToP4/Tk3a9i0yOtFYIlVLr/nrJvnYxs7nvO328fhiuxDl6+gNEhddaA5HcZN5NKRdLU
         bC5tIq0AM4DSL5wKHHgGfTOAXGlZPh6VUfW+9rqIoQLvxk0MVYlh/S9dGrB29r0F5xxI
         CISHicCOG6eo39NCfEwWvb2JKw9l0bX+Z0LiqpRPQCNx0XVK8NL9RU7N27T7l2GRahLZ
         O8B09buexJCXzcy2gtbDUnjbdWW5FPD5S1LhtW/zPMCeHpVTN8IJbPlHZL7G9vL5XzOE
         /9yg==
X-Gm-Message-State: APjAAAUqS+858SQahnINL1uS5Mp0/yrKnwD/uz7KNfPwChwLCeGW+go0
	DnVJXxcbhAgEUWqIjjqedcNf3ouk
X-Received: by 2002:a63:1654:: with SMTP id 20mr16877769pgw.166.1554149447846;
        Mon, 01 Apr 2019 13:10:47 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id t22sm13540004pgu.45.2019.04.01.13.10.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:47 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 3/6] staging: rtl8712: use list_entry in function _free_network_queue
Date: Tue,  2 Apr 2019 01:39:52 +0530
Message-Id: <20190401200955.98744-4-himadri18.07@gmail.com>
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


