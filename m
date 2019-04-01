X-GM-THRID: 6674267883353145344
X-Received: by 2002:aca:b887:: with SMTP id i129mr4005663oif.47.1554149446693;
        Mon, 01 Apr 2019 13:10:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7591:: with SMTP id s17ls2967111otk.5.gmail; Mon, 01 Apr
 2019 13:10:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxIwW9yb2vkxukQY12rBWaDL2B4SRlYbK6ma2LBGs2VUMwYo0oQ8JDhO0clsfxaSX7hMTW5
X-Received: by 2002:a9d:ea1:: with SMTP id 30mr4491195otj.66.1554149445636;
        Mon, 01 Apr 2019 13:10:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554149445; cv=none;
        d=google.com; s=arc-20160816;
        b=XThnS1X6fPUXmBFoDgo152UUq4q4hiUVM3eYP80V6aN4qO6a9jwG2Gv8hfWJmsgpTu
         2SiT00PuhOpl3T50YQqASBPLz2sJblcQOqNp2cwBT/KqwrJPzgjWmu1Bs5kCybJwGw+Y
         /CwkL6osbGly58T6rhu0Ma62KbKPNBHkAY7F6w+JoP3t5JNMDsEyehY85zja+Muwhg1b
         kRJHdO9SpuB5DKWX6OvwRI2uHcKH/bIgWyWkFNjD0kUOcWFQevB0eeJd2XgViN+fYMIE
         6Ay/NnEmNQSS42qHKy0p6xoBt6NwtMSVfz7Nd494h2769LofhEyUBSXK213qiO0C5pHR
         BM6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=t5V6OmpeKy8/Mp05hZvtuR/JlPJYyW9CBgsn2GBJD34=;
        b=TxsdJZ+VrxkDU2fL/EPXcrOON9MH/ATGy7c0WOuobe7iq/zlG3UURDiEicXvSgJykO
         NSmfHspTRN9bDo/QnZ5SDwG4I2EFFKa+Ll1QIThBpA5skgzqO5EiP0eY3Eb1M+b5prem
         29Ti1yYj07Kx+pLkjmnzAAHlTNI8/0hYDPkJcUOLVDKYZW5MN/XpqSVccs9JHKgbtaVd
         NR4ydlm+BU+Kc11miglgX9s6SdLlh0UUo+xQeablwSrYZnSZQ56CapwQbUJxMHLfX9Mb
         XeDCbqyh/PgMzY6leVy20HVrbbu95Svu6gpHqOnj6cSrieGbGuUydPGfg9nVF1Mx6p2v
         6Egg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CVP51msb;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id k23si68328otl.2.2019.04.01.13.10.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CVP51msb;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id t16so3146637plo.0
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 13:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=t5V6OmpeKy8/Mp05hZvtuR/JlPJYyW9CBgsn2GBJD34=;
        b=CVP51msbLMlRRkD3YQ445uuwAh1+gCM2G36ya43wUiQcfrrX+D2aUwof+QfRd1Ecpz
         IO0cqmZMOCcxIc/uU1Cn7ecKhMy9cYFPcL6Kmm0E2w08dUNgfHNIvSafC84MwB2vwzLl
         RQJKxd6c7IMvm3CkQpbInZo95AQZiLxpGQbp2KurIHS5eR4E9LigmBG7emgs9GfBWkyW
         I6Jy7gjAlgNtZFbzdh9ZLKpHxLFsCUxvBd9H3KMePkxlX87FpC2BJsD34KbzPwY+BBr+
         olRYUPu95wW4OaFtHXR3zzvG3GVfhhKKdpxIVVs2pYZraPDfnZJBzkB60CxqmnoZukj8
         9Ptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=t5V6OmpeKy8/Mp05hZvtuR/JlPJYyW9CBgsn2GBJD34=;
        b=tzaGP9IJFxX5hQ212VhC2GxyZEax6fLNIK6krjEe0XCgYlRyifc6OthY4PFxR0ZdFV
         k+XL1g2j9B8CYBmypGQ5RUmjOTVBzF8dCU5aSyshvl74NADJXTyQnWtwnLJpDXRff9/V
         YNkxrr8KmzfySj3EUHh+t0iex3EUuH5RwxidckVtNwlU+g+bwG14kqRWp+m+YuuPGnOl
         L5K0mg0KkVB8j3keTvKintbUA7SydhQyT89vpuMv4BuxKe0Pvr+U90EDfVYFMwH9WZQe
         69PY1EmbHO5c0FwmhYjC+RvzySbys9zCA9Z7d3aQCmK2bq4UiKPECWaZArfdQd4D3Uq6
         GLsA==
X-Gm-Message-State: APjAAAVDZnMeVlNGObiUnyeyBk8c47p9zTAPLtKPfb8O85W3XgyzeBNU
	2CbGVsgM6wHspIg4uw4W68Y=
X-Received: by 2002:a17:902:e302:: with SMTP id cg2mr19571197plb.285.1554149444848;
        Mon, 01 Apr 2019 13:10:44 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id t22sm13540004pgu.45.2019.04.01.13.10.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:43 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 2/6] staging: rtl8712: use list_for_each in function _r8712_find_network
Date: Tue,  2 Apr 2019 01:39:51 +0530
Message-Id: <20190401200955.98744-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190401200955.98744-1-himadri18.07@gmail.com>
References: <20190401200955.98744-1-himadri18.07@gmail.com>

struct queue is of type list_head and member of struct __queue. Hence,
using list_for_each to iterate over queue is a better choice.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V4:
	- Change log message
Changes in V3:
	- Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 9bfceaeaa05e..6912d73e8172 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -141,9 +141,8 @@ static struct wlan_network *_r8712_find_network(struct  __queue *scanned_queue,
 	spin_lock_irqsave(&scanned_queue->lock, irqL);
 	phead = &scanned_queue->queue;
 	plist = phead->next;
-	while (plist != phead) {
+	list_for_each(plist, phead) {
 		pnetwork = list_entry(plist, struct wlan_network, list);
-		plist = plist->next;
 		if (!memcmp(addr, pnetwork->network.MacAddress, ETH_ALEN))
 			break;
 	}
-- 
2.17.1


