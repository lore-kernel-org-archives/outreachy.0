X-GM-THRID: 6674814656588021760
X-Received: by 2002:aca:30c7:: with SMTP id w190mr6915815oiw.53.1554101392206;
        Sun, 31 Mar 2019 23:49:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ac8c:: with SMTP id v134ls1784987oie.6.gmail; Sun, 31
 Mar 2019 23:49:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwrObPuGoOggTJbnQBN75D9oj/IfCLfeYb0EobLVi3Vq69qvBcV3IkC9KQYg8dBthhaijQp
X-Received: by 2002:a05:6808:55:: with SMTP id v21mr5944281oic.57.1554101391282;
        Sun, 31 Mar 2019 23:49:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554101391; cv=none;
        d=google.com; s=arc-20160816;
        b=LQEQeuIwiN+R7HMBNoeZStCnqXhbudhFeXehzx8uUPPdG2WZ2KTL/xzANC9wMnBGPq
         EpdDxIPaJapq0eDviEIemwpsfTR4y4xdlhrG01M+iMqepCAPxpzzvdrFSPMnnmJ2mn9U
         xYbLNVpPoGBq4R8DAprbP7SrzAafbAWoSiEfoq2T9YlrGirLtQRS5Prz17Hjl64WC54C
         MY0G+TqPFhzi0BKOyTEAVkDijOYA6G6TIPKSqO1KR4oF94dOH04A8WMoYOcYfsT2WbD+
         AJmX8YDzCg7ID5hWjBu+d5n8Ku0NJRIoXz7nbSDuVT0eMtU5Mv8tsueT1QnMqaSimAQZ
         hKCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=3hALDoQskmukHg9YcnCH4doqJkrdvlWIbiiQR+2PMec=;
        b=VeJzP8gffi1VemZQ2fg/YDjJQodPbCleyrP0KVvVLmcGQpxoSpenka06GoPQjKo3pt
         3m728mlOELBtCy5WboVzPlDewvutmmJCv1QVs6i9ni5bokffPnPEKEyv3Q6XbCs7SN37
         GwmzGZopTY0JtQGNlvdI16dxFlscpJnPtgUeqGPhlVx0mgn+XWI+ill7ohZuHy2Hsw8v
         zJcQqO9oT0EAdRjRtCZ9Arz+Nd3jC4TEBuEzVLDUXMUltB+qc7InX/4zVBwh2/inELTO
         Pk7At9Ad5jHU1AghGOVYOeA695ylIeQ/dZzOGFB0tkq2SmXglmr/uOVKYqKKaGLOf3WO
         8cRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SaTi338O;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d12si449838oib.0.2019.03.31.23.49.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 23:49:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SaTi338O;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id q1so4227231pgv.13
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 23:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=3hALDoQskmukHg9YcnCH4doqJkrdvlWIbiiQR+2PMec=;
        b=SaTi338OZPTwPdRkb3ackF2qvRYjxU8L1SEY10vnAQjmSJePjgmr3AYv3yUSCzfjM8
         9VMt6kRJOBaMCTduUpfdigc73dTI0X1V29Ldy9IsrG4WNYF5SKmnVWaqyjd5gX8viEYl
         8/HhdUllwQ49KlwQ5rY326nexvSJ9ivNZB3K6Mm7zj46Z01oiVHFGqA/3pddoaAB0vUq
         tvQlw+02UyrGpKh2XHzyKTj7R2RFfsgPQAZKX9fiQE8JrtbhqW+8G2KNRGDRSXOolcU2
         TElS1UHzWN3yxCafc5nTOPdn79bWrK1TaNWaHgSBZxDYGvEAmPCq3Qk2KdpJFOzgx8+8
         3FeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3hALDoQskmukHg9YcnCH4doqJkrdvlWIbiiQR+2PMec=;
        b=r764xlA/RyFmD+lRAu+CKI0wx2n9iOrKNhe8HO3J9xOrHjmwjX9wI9Ts/w15qawuZj
         0fXD3aeGw316QpG56rBjNB5i0cg5WJRxnfIxqM5hWDUGmL6Da0PChAoPxYqBVmhoJqHU
         LOY+kfv/m74/MwZvEezEgyw7AGtD/Osi0SLOIaLLMW0kwi9ghJVZujTl8CbijSthAFuA
         sDoaqw3wNPc5Hr7ZeVi0OvVnENcTK87Xfxw+xEvHamuAUrlad26QKAjWQrtNlomgaGwZ
         QFRGXL1kVT+wJkpIv04wzgcMyLsUunUzv2RtWAWY+oTp1fpi5KzqPQHUVWNc/fpZ/v0A
         S+6g==
X-Gm-Message-State: APjAAAWvQt7Pa7RUkvGMaXfP6sLZHoMzq9WsYHkrneBO/Q58M0ipnXFt
	BRF3+IvYtcOc/KT2Mxs+DkUcIGgU
X-Received: by 2002:a63:7153:: with SMTP id b19mr53185720pgn.289.1554101390250;
        Sun, 31 Mar 2019 23:49:50 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.110.45])
        by smtp.gmail.com with ESMTPSA id c134sm18616502pfc.87.2019.03.31.23.49.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 23:49:49 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove print statements for error messages.
Date: Mon,  1 Apr 2019 12:19:36 +0530
Message-Id: <1554101376-7055-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Remove prints of error message, it is not needed to print error
messages.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
index 1094454..085309a 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
@@ -119,7 +119,6 @@ static struct sk_buff *ieee80211_ADDBA(struct ieee80211_device *ieee, u8 *Dst, s
 	}
 	skb = dev_alloc_skb(len + sizeof(struct rtl_80211_hdr_3addr)); //need to add something others? FIXME
 	if (!skb) {
-		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc skb for ADDBA_REQ\n");
 		return NULL;
 	}
 
@@ -206,7 +205,6 @@ static struct sk_buff *ieee80211_DELBA(
 
 	skb = dev_alloc_skb(len + sizeof(struct rtl_80211_hdr_3addr)); //need to add something others? FIXME
 	if (!skb) {
-		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc skb for ADDBA_REQ\n");
 		return NULL;
 	}
 //	memset(skb->data, 0, len+sizeof( struct rtl_80211_hdr_3addr));
-- 
2.7.4


