X-GM-THRID: 6673985943396941824
X-Received: by 2002:a6b:c9c4:: with SMTP id z187mr5956435iof.4.1553908442467;
        Fri, 29 Mar 2019 18:14:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:455f:: with SMTP id y92ls1237584ita.1.canary-gmail; Fri,
 29 Mar 2019 18:14:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw2llBC8ebU2gU5TY1bdEQHd5jQ4yxqz6MuBJ9cQodE3Y2bKXyabHIvE3UU6kAIrNv9vPvQ
X-Received: by 2002:a24:2404:: with SMTP id f4mr2442368ita.15.1553908441578;
        Fri, 29 Mar 2019 18:14:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553908441; cv=none;
        d=google.com; s=arc-20160816;
        b=Ce97kXttCKmSpFtgM8hsM5ykYXkxK4k1qUm0xdZdokmb5K4yiKH4fPT99PTKwVpLbn
         CQGL+DwUVA7thr6wnLZ0FenFbzEA1N7lyEAiij42PiER894tq1zpVg0El3NqMYbovz3K
         K2nNZ+BLCsgSazBoZxBe+7yo+QhFXGdVfDU32JDpO5ib3RD82Fx/fsWTdkpnAmDgzee1
         aRBcQNbO8WDCaWBSXn+cdbMoxVWocx34dwpQFg6969o+TCSFA2Bm031d5aHvepZoGeUI
         /u7spI3rD6yr+85gj7BcmnfF2+EReT2h9qdYsepL0N/Ksk19gSq99MuCYLmpu2ekdIDm
         n2Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=QvHvkc8QlwoRgDcd+d5Sg00BKrT1E0eYfCmVQflJ/Sc=;
        b=y8UOd8+a8rrHVytL6ltRSrOybAx+vzvodDoBzRP/b6vB6Q3oJCxE+66OkDSrp6qGb3
         pMxk9ae9qJ5JJFNBOR/pyIe05viXZKTQkyBJaGmPIC+AlqCxExarvCdeiOG+NpG1QNAw
         KjwUNS+DAn5cI5Lmwx+7AB6vCobdvxStXzB4DDO1NVwgQcEjrCFQiv0D0iPHgfvCiczZ
         eOcHQIWjYdiW7zDZbvklUDxzXngSwem8swSLInuB0KhmnWNy8Hq70C6/VvrhS0CaTN2p
         IhV3Ju3rvMYzEgrTYqABfe2dKMLbx4n+EB0mw6npJlbWqk8vNkDN5WTnL6HbS0N9qjgc
         C8WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="PG/HoZwB";
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id g127si755759ita.3.2019.03.29.18.14.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 18:14:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="PG/HoZwB";
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id 85so1999743pgc.3
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 18:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QvHvkc8QlwoRgDcd+d5Sg00BKrT1E0eYfCmVQflJ/Sc=;
        b=PG/HoZwBtsGPGO3VAXwffbwOq/sgnX94XMHgcAs5g8nKMZSHNtMOy5l0m2raqBMR5K
         G2WDP5htUahMLRb5o8TSYts/+wVfKw+qKgyZT03FJn4itpHY7pxqnJ/Vs2S3Z2je78Qr
         +2XN54b8/4DeTdmupFT/T+8BAFCBKARO/54KXWOAtRUFqb2tofXU/GjD+JvABkFcBVzE
         i1vuC6xHr+xXBYxpwpmojE+hINbYiLHhbqVkRxSUFRmIbQRqK7Z9PSQYJ5FDYC/uAI+i
         w3BqZsToY0XpHZVjnqFhWW3sE0ksQeQWRebREAP2iSRn5URIfyZyRUhVcJg7/vEzFnga
         h9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QvHvkc8QlwoRgDcd+d5Sg00BKrT1E0eYfCmVQflJ/Sc=;
        b=mmfDypA/O8YgFdxoBtIoO5DwKmzBVpRe77ZIaAsOd/+igxMy1s5i5EU4qr7/yD14FM
         wk8T6NFt7FXnWiEDL1+IS5c5rbX4GaqLN0sPsq0fMqjtmiU8yFXuSdeq9UvHO/DgKVcB
         kLylV/j3PJjMrYJcD6ef2D52pVv3BQKH+/IPl3Fr5SUzJB6ZWM2yImJpWr3YtuoUVVf/
         waUD7L5Ei4iTdKV6zbpdUpCF4uXLCA3gvEn5TJqrWu0tB29AnFTosMh2+6po6qCCunSx
         r8q0uwtEDf7y2CP8eBFrZvWE/1aadO70jVfXegOdgIXEx6oaxd8+Lckk5Gwt9ZeAWbjR
         gt8g==
X-Gm-Message-State: APjAAAXnzLpoEe6WRIV05h/WOTiRkYuNWEaKFx2HSqsFyNjQiU3lICil
	aXdYjkbgNnx9jtm9KMv7vgtfW6BS7F4=
X-Received: by 2002:a62:3047:: with SMTP id w68mr49815212pfw.17.1553908440723;
        Fri, 29 Mar 2019 18:14:00 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.82])
        by smtp.gmail.com with ESMTPSA id o5sm4481385pgc.16.2019.03.29.18.13.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 18:14:00 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: rtl8712: Fix a space issue
Date: Sat, 30 Mar 2019 06:43:43 +0530
Message-Id: <20190330011343.30578-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary space after a cast to get rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index cb0ee2f72e1c..82ddc0c3ecd4 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -51,7 +51,7 @@ int r8712_init_recv_priv(struct recv_priv *precvpriv, struct _adapter *padapter)
 	if (!precvpriv->pallocated_recv_buf)
 		return _FAIL;
 	precvpriv->precv_buf = precvpriv->pallocated_recv_buf + 4 -
-			      ((addr_t) (precvpriv->pallocated_recv_buf) & 3);
+			      ((addr_t)(precvpriv->pallocated_recv_buf) & 3);
 	precvbuf = (struct recv_buf *)precvpriv->precv_buf;
 	for (i = 0; i < NR_RECVBUFF; i++) {
 		INIT_LIST_HEAD(&precvbuf->list);
-- 
2.17.1


