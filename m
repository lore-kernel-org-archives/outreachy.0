X-GM-THRID: 6671816179609239552
X-Received: by 2002:ac8:3736:: with SMTP id o51mr15642505qtb.223.1553403280423;
        Sat, 23 Mar 2019 21:54:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b742:: with SMTP id h63ls1333188qkf.2.gmail; Sat, 23 Mar
 2019 21:54:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyXp7tidM+atWetou2xMUQNiEwv9nPyXNkc3aBzc/0zacMY0iPAAB/z3KT2e1neTAbQDKl/
X-Received: by 2002:a37:4c85:: with SMTP id z127mr14606554qka.180.1553403279829;
        Sat, 23 Mar 2019 21:54:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553403279; cv=none;
        d=google.com; s=arc-20160816;
        b=v/6S7hD0/PUntrc5mKPuVMstUkNgacbFBr5zZ8tVha7aKhWyGm5z1GPJ7RIPfDQZdm
         krDC7gGo4LieLhCFpQzVgSys/7Rihi20vis6Z+h4jkc+nhom0YGC2qE2x+X0vvGPgmzV
         nHE7NFSTvct/Jf7wb9xL2xM0OPy/jui0Ou0eNEMnaJv0N0XqsDPYp03e5t5rBdCYv07B
         a3LQhBc+hlnhPWY5OLG/VSmHT9xYREbP18n/pQy2OgCJRC5vczBYoCRsreAlWx1voIFc
         QtO8JACDFed3ai+Qdc5XMqwN3WXHTiEMHAmc7Y7smIeAgOXEKLB7XxkWhVCBpDZc6W8T
         v2Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=cJFzs6mh+4kcRYn22g4cNe04JSVPd0oylqNP88jRaLs=;
        b=MP0mTs6bboTlV0WFbpsVdSbuj8DkpeEostLYMrrJCGgZL8mxOo63GXFZUh1V8Ass/6
         KaSO1A0o6VH2ajKcwc4L7j8Zvp0hBj/TuQ6qzoDaGDhh1+AR88Rj5Liu3PFtxE8ODA0+
         pNeQKiAhLTVjUrbuoKo88Qax0lnfqDT4xvDHqZq9j3cdBxivDEEhFigZbrNRxCOqqHIR
         2tZz2Bs4O9ojhjvluXYPBuE321xnlh71AsPQZzum+d19QkOm9UnxJyXtGPoOGofy1Z2n
         /Nheb7aBDtoVeHxawyesb6tlVeK/t4XrMJrFndXtsP8uKR4AzzU7I3QlwojwRWJPU0Ej
         EUOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cbxYpdRm;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id h186si1027730qkc.1.2019.03.23.21.54.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 21:54:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cbxYpdRm;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id j26so2171363pgl.5
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 21:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=cJFzs6mh+4kcRYn22g4cNe04JSVPd0oylqNP88jRaLs=;
        b=cbxYpdRmHXAYJXzlvM/tqNHA9AHhkLjhNHkf45SwL0TNWLJA0bN6qSyBGOVYpSl8qt
         F+4a3XcHRStguk4E2bMSflrB826ADxHitosUzBYWnru8wGlEdTi2vdbzCmKv7ex7X/kt
         A7zQbK+AvhSfKqwkFjr/Pv8/JnG9ap68sGQgzCylWiNXLxORPFs3zAlM+0udFOoLDBEw
         qOYEo+HB4IC/tu5VhmoVAbxRu9aZg+Wce06KJchnbmjLH3kEX8U70YaW3XSkFXu7TphU
         HIMf0TBOirrhpv3yMp8riX3TStVYdDzObTmGCrzOxT2FK58NfXk4++1ghL1FAw/d/5AY
         KvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=cJFzs6mh+4kcRYn22g4cNe04JSVPd0oylqNP88jRaLs=;
        b=Rg4X1iKe7KQ1A/YftIAbMFOwOwwtn4hw42Rmn8a2mUhR6qdFBh64wplSlOkwxVF5Ii
         Rkc0d0cCWKRkT2YuNlXhNRsdmuzU5hf48aMjjlzkBkzBkU/fIOn1xR3ZLGncvP9/ru/R
         +DfYES7tOWlhmHZZkiLKMmAan4sWiXq/cH9R+vaqXBAGax4IStdyFBdyFyay48O9345u
         e1Bi9/pZtoBm/aBwvwCj0jLJg2MPbjy/H98i15io34NW2RH3Ta8SafxSBbXQtVF4sp9+
         gY0hoxm0QDYh0xdsOjBlB+qFJxf/GAvgL4lVtztuOM8YtEQyeu+IraIzeCOG0EKArvpf
         80KA==
X-Gm-Message-State: APjAAAXGHnN61auDIyArUUXGZ5Kkx1MeSJs6j4CdosEC9PE6M99WDrKH
	lWFLOwJXtvhlFO5ZgNppCtPSMYm/
X-Received: by 2002:aa7:8459:: with SMTP id r25mr17998129pfn.65.1553403279112;
        Sat, 23 Mar 2019 21:54:39 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.202.114])
        by smtp.gmail.com with ESMTPSA id b15sm34275913pfj.167.2019.03.23.21.54.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 21:54:38 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: 
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: rtl8712: recv_linux.c: align to open parenthesis
Date: Sun, 24 Mar 2019 10:23:53 +0530
Message-Id: <24f4eff1239087df54be538637ceb77694c8a3d1.1553403095.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com>
References: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553403095.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553403095.git.payal.s.kshirsagar.98@gmail.com>

Rearrange code to fix alignment issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 4e20cba..97c980a 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -61,7 +61,7 @@ int r8712_os_recvbuf_resource_alloc(struct _adapter *padapter,
 
 /*free os related resource in struct recv_buf*/
 int r8712_os_recvbuf_resource_free(struct _adapter *padapter,
-			     struct recv_buf *precvbuf)
+				   struct recv_buf *precvbuf)
 {
 	if (precvbuf->pskb)
 		dev_kfree_skb_any(precvbuf->pskb);
-- 
2.7.4


