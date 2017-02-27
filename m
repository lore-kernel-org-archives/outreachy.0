X-GM-THRID: 6391852583766458368
X-Received: by 10.157.2.208 with SMTP id 74mr6318181otl.109.1488219155537;
        Mon, 27 Feb 2017 10:12:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.9 with SMTP id h9ls776625iod.49.gmail; Mon, 27 Feb
 2017 10:12:34 -0800 (PST)
X-Received: by 10.99.98.131 with SMTP id w125mr2244533pgb.60.1488219154720;
        Mon, 27 Feb 2017 10:12:34 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f7si3308594pfk.5.2017.02.27.10.12.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 10:12:34 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 25so1774575pgy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 10:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zX1E51OA4ZgGVHkxIp+hKu13zq5jRAG6BqVAGCBKFF8=;
        b=oT0YFwO2uxenBd3GkM8mB5esgNXBfhAnRX3EufcDpzHtIBRpt8egCIx7S4vrWTe3vI
         Pf+2cxbPHgcmioIFzcxyiznix63Py8PgAbHH7mdrNaVMA6YGa7St6g7aYesTUtvWVD9Q
         M92zIrZvMeApBJfE4jsO8h+ggvrGSJnym7xCKAIYjyln57HSv3BivRoNZeNi+FBPzEVY
         EZ7NvFB9gIdQtHpwvPvV7p0M+W28TAy8iNR+7vtg0jLStkumjOaQDnWmymxnDQPboZF4
         yteg8PLAIZt9AMP/Eg19Wcdnwj2WzalAX4hpqlQ6mUllpzfAKXdW4tPxMnPcXrAM73Gn
         j6yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zX1E51OA4ZgGVHkxIp+hKu13zq5jRAG6BqVAGCBKFF8=;
        b=PvcDIYz0d7PX3l36nQtKqKlUpx6oZY5J1QDoqrZhpfCy/m4yPGrbz4bKKGPqjnPmbm
         VQ0GhoI3ZaCbmOPiALcBy3jLPz3yc1TA07kod1Oe8eDmsRen+aYjyqqQBYwbzFYd0nW4
         baMu2LbtH+xkRPitIj1Gopdpz3hGzCnuu83Y2aTQ9iI+2oJreLJi3u8yixatNGwJPTRT
         rMkz3V5fnjbxXbFlyxtcYqsVrXTBopdPJ49bnhZBARwsy3KCjvTfW6bzjnT+t1NK21oD
         DrnbQnORCdPnlLsQnB9XzkzGLIJ2XKKtC4Bg3zYTTK1lcJlYgxNeedJNmqZA8GltxT1r
         2hxg==
X-Gm-Message-State: AMke39kiT3Vr1Ayjdsjf/6MOXcArzpZFHNbtYwNkVf4IA17JZRXIMTu3ki7prh0q+OczQg==
X-Received: by 10.98.150.70 with SMTP id c67mr22369081pfe.84.1488219154499;
        Mon, 27 Feb 2017 10:12:34 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y9sm17938422pfi.39.2017.02.27.10.12.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 10:12:33 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] staging: rtl8192u: Remove unnecessary else after return
Date: Mon, 27 Feb 2017 23:44:25 +0530
Message-Id: <1488219268-3006-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:

@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
index 2453413..4d6c928 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
@@ -374,8 +374,7 @@ static int ieee80211_tkip_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
 
 	if (!tcb_desc->bHwSec)
 		return ret;
-	else
-		return 0;
+	return 0;
 
 
 }
-- 
2.7.4


