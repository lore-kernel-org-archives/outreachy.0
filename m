X-GM-THRID: 6666820090157072384
X-Received: by 2002:ac8:1cb:: with SMTP id b11mr7873751qtg.30.1552318931461;
        Mon, 11 Mar 2019 08:42:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3fed:: with SMTP id w42ls4683302qth.2.gmail; Mon, 11 Mar
 2019 08:42:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyKxIM8UBeThJyvutsnstcGkGrZduPRxF3+Ej3/VxzTyN8XeJn24jgvR9zRNFtKTH/LgFfA
X-Received: by 2002:aed:3525:: with SMTP id a34mr18693081qte.42.1552318930902;
        Mon, 11 Mar 2019 08:42:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552318930; cv=none;
        d=google.com; s=arc-20160816;
        b=aqyxLcyjrOOS+pMqonGHotVLdZejJU2QMYkAHJCX+u+cC3FczhQ0syoMRBUb4mKfbI
         CHjX6O6ixKB5EaU9RzIZBvBq3jZQpMkRSygNjCehW5P90C4m4vOZ945lNldR5zd6EyYJ
         ba9UAw/fr6c0AfoX9eOSfnY0K5PSA31Ndi01xZHwrF7muxJ1IGLF4p3eJDiHyOej+QT0
         6INelUdHMCUfPNi3GttNcdMLeJPo4/nRrhr00zhvr0QUz4pfkaLagn7YY8bqcRf6sBoQ
         8LOQI/OEvlBgHWMaSGiUadxEBoVl8w85EI2RTgg9wqhq7IIYi22WUi4BMHrYaIsbvZ/B
         wjUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=StnBcFDB/papjseiTx8/V0UQEa9j4aGyLg1XNIlj8Kc=;
        b=f40jQnSYdERZp6eCgObzgcxbAhtg1zB7v9x0F6t65oCFsT7/SDcPZCM+SglbPlxrZi
         lfaWuoH040jV/muj8JJ2fGHYDqymQ19UWgNVfOd3iq413ltq+Hm/XCDSoSv0GXKf5v8g
         5EOmQnJvjsDrXOTe7btkvFufkln/XFnuj1qAfizL+LB+jJEJmv002Es+fNlcJ8qYGziy
         tyxaPEmIzt+yv8WyBGZysVBT5zFeo5Wa+GEQxGXFoG3TgC0VhI0GeilS881T/Ewajly9
         3JEJdYzln5zDT4w7pzjylVqyEoc6+O9C7TBvK3YQBS4Q0a72jVMywSCVZ/bahwWKjMw1
         +qCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fOPcbpaX;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id a62si282252qkf.1.2019.03.11.08.42.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:42:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fOPcbpaX;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id k11so4316919pgb.8
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=StnBcFDB/papjseiTx8/V0UQEa9j4aGyLg1XNIlj8Kc=;
        b=fOPcbpaX0+9+uI6DEASihGocgfgtxS2wfNQT3cG8P+zKJz7jt0piJccWQfV9ejzptR
         V2GXucYFfLCKuDd2+FCoIDZjP/mfkg0ux3FgIWrgICgK1YlpvW7tFQDTkhpkmSOLzjIm
         fXqH74WgNmChetVfgtLUvyjVUh6qA7QnePGzLoFf/IOYL6rtkU59SRC/aBTc6LR3V9tQ
         T6+dDfE8oh+mqRHcZwRAeK48zeCEjo3enm7YvMR00aEw9un8Ajjr0v0yQ3d2mgTt5o7N
         RJ5WV2kUrppyuEX1GtqcxW+la4MKweNB5CrvRHqZk/pb3gwtGObbdwO+/AxCD4lebtcL
         g7pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=StnBcFDB/papjseiTx8/V0UQEa9j4aGyLg1XNIlj8Kc=;
        b=DW0vmNgQs7jLGYF8gkUhnziPcgDTN5n8nFnUhxhU18nYh6jz/5Dd0PFfnNV7FIVfQV
         K0ZKKu0e9IkS2qnQkKVQzrYkgETQb01EhyyCfsQmW07/+J9lg5fKVZYUSI5Jbzc+lpxv
         3G+wa2ksg12irOP3VjCg68O2+4CK6vVEP2D7kBlqM98uxowpAWFV/BGWOjPfZDrasyVF
         S3AEIl1mFruw23SruCZvYYMmfHpole/S0VDs11W7M3bW0tjDjV4ypNwC8hWU+VzCJVaX
         SFMIPpj5oBIZpXg9X2rhyVvbk631Y0tEIvSm5XAxyOVOoeq7LIz5RdiPMDzmuWfIOgPL
         El7Q==
X-Gm-Message-State: APjAAAU1nxX0XBcJgiPN4PnGMD1mkvAqpjHiADp8cy+ZWbECcMV56Udc
	L1U2G7skI3IOFDc6yEU73hojXHcnPC0=
X-Received: by 2002:a62:29c6:: with SMTP id p189mr34471145pfp.194.1552318929897;
        Mon, 11 Mar 2019 08:42:09 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id u184sm8798080pgd.13.2019.03.11.08.42.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:42:09 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 7/7] Staging: rtl8192u: Adjust 'if' to follow Kernel coding Style
Date: Mon, 11 Mar 2019 21:11:41 +0530
Message-Id: <20190311154141.31401-8-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311154141.31401-1-bhanusreemahesh@gmail.com>
References: <20190311154141.31401-1-bhanusreemahesh@gmail.com>

-Adjust spaces around if and the condition expression to
maintain Linux Kernel Coding style.
-Remove unnecessary braces around if-else as only single statement is executed.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 52c655b423ce..6009fe0e1d4f 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -513,18 +513,12 @@ static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *p
 	struct list_head *pList = &pTS->rx_pending_pkt_list;
 	while(pList->next != &pTS->rx_pending_pkt_list)
 	{
-		if( SN_LESS(pReorderEntry->SeqNum, list_entry(pList->next, struct rx_reorder_entry, List)->SeqNum) )
-		{
+		if (SN_LESS(pReorderEntry->SeqNum, list_entry(pList->next, struct rx_reorder_entry, List)->SeqNum))
 			pList = pList->next;
-		}
-		else if( SN_EQUAL(pReorderEntry->SeqNum, list_entry(pList->next, struct rx_reorder_entry, List)->SeqNum) )
-		{
+		else if (SN_EQUAL(pReorderEntry->SeqNum, list_entry(pList->next, struct rx_reorder_entry, List)->SeqNum))
 			return false;
-		}
 		else
-		{
 			break;
-		}
 	}
 	pReorderEntry->List.next = pList->next;
 	pReorderEntry->List.next->prev = &pReorderEntry->List;
-- 
2.17.1


