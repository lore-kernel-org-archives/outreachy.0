X-GM-THRID: 6666820090157072384
X-Received: by 2002:a24:654c:: with SMTP id u73mr20902625itb.16.1552302996115;
        Mon, 11 Mar 2019 04:16:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:a783:: with SMTP id e3ls1120469jaj.1.gmail; Mon, 11 Mar
 2019 04:16:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxM3aHGgXxwPJYXtEB74AY+n6m/Y7JdJOPuQISu3WDGoR3s5K0KY0eEUzfzwSQg/DetraQp
X-Received: by 2002:a02:3f1d:: with SMTP id d29mr897593jaa.4.1552302995696;
        Mon, 11 Mar 2019 04:16:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552302995; cv=none;
        d=google.com; s=arc-20160816;
        b=0RrRxMiZPG60rDJocd1AwIOJPKxkEqZAO+F3mKO0rAmLDbMwliBF7J56jYBd9tc8GC
         R9roPNPC6dhqje94ifkl2PDEBmrGJ6nz0lk/IeK6RgjPDsrz5WW/VHTXOxwI1XN9ETwD
         AG8yC7s6mcfa9ofe2u0XMIaHjOcN4VYDCY+gxFQOV3AGn3OOrVcKpO0BcoIfu3ZTmFMm
         RpiW9twJ5uQN+p5IOLMhYaBcq0HzpHwSSPX3givwgqa2+KtyX9umxw+GGWZgjxbX6b1W
         JolHVC+zUbYBt3oHOnLM9KvDs0sdRgllmxK2JqOtvWSEkHasncQuYfZFiNUKHTlYfRPv
         U4LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=pZfz7ZchyiNG1Rwd+KCiKyaCYP5DrJjmaOUles/n8VE=;
        b=NMI/BJaD+Qxtreg807z7g/Tj308Wh/rolSr/F9AjVH2qRbYg7wzvG+cS6772NMKtrC
         VHTDsZu626s/+HKMGY0D5nWZc4nxizdOjN3/YJh79k087p6sb3gE/BTcL1QBWiAWlkuv
         OzjjEnMiqYhgZ9l/8wNt34GAW22H8L2C5bTOmhHLtUJ0vP3GNMTIv4R2wb4KmRsItfu0
         DE0t5lBdrNHis25VPVOauPX/lsmInSGWUJuE5org5DbTJ/R3c47IEeELnr90o+cmIi8T
         z2g0RlDzNDVQet0QUGwk6bghSiAPxyOelm2dEJE5NAsAzAr/BwNFQwO/hA42uYegvzfK
         zZKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ARigj6sC;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x22si1038907ita.0.2019.03.11.04.16.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ARigj6sC;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id n74so3450464pfi.9
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 04:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pZfz7ZchyiNG1Rwd+KCiKyaCYP5DrJjmaOUles/n8VE=;
        b=ARigj6sCvauIDrtTqWmU9zcHC619z+qsuqY52EmD3iqQRYoACaulm9I4QcJvdOt/qt
         ptycKfxMHbRWKBfXZeXos0ioJSRUPIhWTG3N19ZiJjp40M2lgbCujOYxgHq0dBi09IhM
         nissY7QJ6sB66IjQoBsurPb1QUkFyyweAOz9eY2On+CJ/sWrzEFP+YNbFGJFRalnsWJF
         jmbswIn0GS5aqdLu+T3m+wtlBeXC+Vn+nlF/zbY+KlocEoCK1ouxgQYIdtXa3m+FmVRP
         uwxUsgfIJ0kIPwYgOGKNlAptD40yRv9BZiq5flKJ6l+60AzTE9XB/zHX0/+FnWqi4+aT
         OKdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=pZfz7ZchyiNG1Rwd+KCiKyaCYP5DrJjmaOUles/n8VE=;
        b=rKxgfNG90xRrD+evftoP8ATd1KNtBH2S7WzHWtctlqZHGmjcW4ZS7V0b9M/zTSeiCg
         4ZYK1eX3CjEYUeX4vFL/qB5AldZv5mwa0yJnQzHPxw9tRz56fcuRR3dJziBXX/crvLKz
         r36m/1XTU7gl12L5tI4R7CwGeA09zXhSn94yNPnwySZz4DJSkIEYHheNxQI990/S0Ykc
         WxqcvT/CckVC7+Xh2mB4nM+e0gfmoY7mDngKrRduBhHXz021faeD2PR4nM5Ugcxrlzo9
         v85V+4OnWWlKtTjcDyEPXU6HBA0PFcW1mDHQep2bhWA9Jnscb/+4LzGXFfjYJMRR3hvU
         OnzA==
X-Gm-Message-State: APjAAAWL15zVArkgeHpZLasyG4gOWaU8nk/i3SNk2F4/gKfyeIDfuA8b
	4jcwOqRyMHjgT98DYNriiFJFbO0jexQ=
X-Received: by 2002:a65:4547:: with SMTP id x7mr21519013pgr.350.1552302994855;
        Mon, 11 Mar 2019 04:16:34 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id p11sm23586700pfi.10.2019.03.11.04.16.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:34 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 7/7] Staging: rtl8192u: Adjust 'if' to follow Kernel coding Style
Date: Mon, 11 Mar 2019 16:46:07 +0530
Message-Id: <20190311111607.28766-8-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311111607.28766-1-bhanusreemahesh@gmail.com>
References: <20190311111607.28766-1-bhanusreemahesh@gmail.com>

-Adjust spaces around if and the condition expression to
maintain Linux Kernel Coding style.
-Remove unnecessary braces around if-else as only single statement is executed.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index f4c1befe6e8c..ce1542fe0d6b 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -513,18 +513,12 @@ static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *p
 	struct list_head *pList = &pTS->rx_pending_pkt_list;
 	while(pList->next != &pTS->rx_pending_pkt_list)
 	{
-		if( SN_LESS(pReorderEntry->SeqNum, (list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
-		{
+		if (SN_LESS(pReorderEntry->SeqNum, (list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum))
 			pList = pList->next;
-		}
-		else if( SN_EQUAL(pReorderEntry->SeqNum, (list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
-		{
+		else if (SN_EQUAL(pReorderEntry->SeqNum, (list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum))
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


