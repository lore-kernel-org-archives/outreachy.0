X-GM-THRID: 6255612600759877632
X-Received: by 10.31.154.65 with SMTP id c62mr1382710vke.8.1456498308183;
        Fri, 26 Feb 2016 06:51:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.232.169 with SMTP id tp9ls550033obc.82.gmail; Fri, 26 Feb
 2016 06:51:47 -0800 (PST)
X-Received: by 10.182.240.137 with SMTP id wa9mr1401912obc.16.1456498307532;
        Fri, 26 Feb 2016 06:51:47 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id u66si2103527pfa.2.2016.02.26.06.51.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 06:51:47 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id q63so53171351pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 06:51:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=t6Q2gZ6Xx9V4Yu0WFdxKQVsz5PNz77phSCkW2NtMT+A=;
        b=Z7/0rokDHrt/U84jcW01L4byylUIFZX/2pRsL7bEZoZZpqBRX/PLL1GiL9YfQcDbJ4
         lCoqoBWeqyiWAb4/M7RwP8D1+IWK83+e4ZdLQIqgw0CX7rXxTJn5i9sG5McxH7+Xve/W
         r2fixZVOoOIvyTfBjx7tvdSSksveYUIRgZSgxdJKbhaNgKFoneLTwkZVq5fd7Oy0/mGw
         N66X/rHVyCz51bThTLeQHu7ketVB0fKji1e1IuOQQOxgoKA/1QNjIhHYJFJYt3iqBKab
         TBQmvSqpXeTL1EwfrMWAVSTGf9FBwcipsdoewJ6psR/cNeaquhbKj97Qc5K3DwxYQnmH
         xTAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=t6Q2gZ6Xx9V4Yu0WFdxKQVsz5PNz77phSCkW2NtMT+A=;
        b=iqFEUpDzzAbF02jP0vLcVzHpwpDHsSlFTnDurYvDs9xqsnBSJFEnqmSjSS5inZuJyK
         mpUvCLWI5v7mV30hZ/vgk4BPOI9H5C5HGk1UR8y8d8ItCzEtAJsX/iR+7kgaYt++V+va
         Y4W93pibJQ40mT1gCzWCp14Mysoyij7A8wLYVWHGZLIOiroaf3L7Me/xwh3tLUdnz/Cl
         gYM0eNNGjAOjOgol9A0EsXGD7+lRvY+NCCzAx/LJGUFnGZlFY7f0Zj8dGHYz8MoHdvjN
         gz7JQlmjZtjxvTO543rQ5xvjMDW7ACAo1FS//vbQwvsR69bIE9cnLsQxRk9Z445oTw01
         3+lw==
X-Gm-Message-State: AD7BkJKS6xFl/zySFM9e9yMvz68xXqaoszn1xr8EJ8Zmb8et4V8bIebN8HUTUaYoamN4lg==
X-Received: by 10.98.1.197 with SMTP id 188mr2664789pfb.8.1456498307353;
        Fri, 26 Feb 2016 06:51:47 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.136.187])
        by smtp.gmail.com with ESMTPSA id g74sm20030688pfj.1.2016.02.26.06.51.42
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 06:51:46 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 26 Feb 2016 20:21:20 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: Replace for statement with list_for_each
Date: Fri, 26 Feb 2016 20:21:19 +0530
Message-Id: <1456498279-13486-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The macro list_for_each is used to iterate over a linked list
and here the for statement is doing the same. Therefore replace the for
statement with list_for_each macro.
Done using coccinelle:

@@
struct list_head *pos;
struct list_head *head;
statement S;
iterator name list_for_each;
iterator name list_for_each_prev;

@@
(
- for (pos = (head)->prev; pos != (head); pos = pos->prev)S
+ list_for_each_prev(pos,head)S
|
- for (pos = (head)->next; pos != (head); pos = pos->next)S
+ list_for_each(pos,head)S
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index a645a62..ab0002a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -361,9 +361,8 @@ struct	wlan_network	*rtw_get_oldest_wlan_network(struct __queue *scanned_queue)
 
 	phead = get_list_head(scanned_queue);
 
-	for (plist = phead->next; plist != phead; plist = plist->next) {
+	list_for_each(plist, phead) {
 		pwlan = container_of(plist, struct wlan_network, list);
-
 		if (!pwlan->fixed) {
 			if (oldest == NULL || time_after(oldest->last_scanned, pwlan->last_scanned))
 				oldest = pwlan;
-- 
1.9.1


