X-GM-THRID: 6535126466824241152
X-Received: by 2002:a9d:3405:: with SMTP id v5-v6mr7445425otb.74.1521577701506;
        Tue, 20 Mar 2018 13:28:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:1697:: with SMTP id c23-v6ls1465652ote.13.gmail; Tue, 20
 Mar 2018 13:28:20 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuieF3crx8CEvqPfVAypLPwe4QMLrWcfK/AnFfWBvzaslWOOLK353NwwiUv6wLSKq2jRnCP
X-Received: by 2002:a9d:8c5:: with SMTP id 63-v6mr3956942otf.104.1521577700506;
        Tue, 20 Mar 2018 13:28:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521577700; cv=none;
        d=google.com; s=arc-20160816;
        b=lIHwWEta5cTMplDA4PYbER/Dj8i6IHd9oFWTH69cA91RI21Xxl8jEtIMB1py5+no80
         BEC46HVnNYlbkfkJQ3znatFiWSr0/ksIHav0FJEA4IfaDT3VjNEWYDqqBIV78qfrSAxs
         Aij0OSLMfTeGTRcKuyVqS0ziphpjfWWHkq9o1nfwf/01hMPaC8qVXHAK5cjslmMt5FcM
         fEM/0HYZtEmxdqeBmzuMjxDwnSveJ0X75zor+pjCJa9zPPHfZtUzFk04Pl+krQ7Z/W4/
         5vbtGvws/imfsNMvh4E7gVWXNlejIiWWyTBa5ONncu9SeIIWmA1LfmifReaMrpUz+8jW
         9Kww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=/3RfyjfRYi9U+6+uRNCCGOB9jcjwx5DBnmz9B2V2Big=;
        b=mTeaeACNnV72sqoKO9yCHMCnufpjnvUdOzQS3bDLKTc0wCwJM3N+D2dar79yMREkcb
         c0nBxIXpfZOibtDX7MH2yVE6dYZiBYzYZc+Zl/oijEEuKUBDQ6yIuACu4M80lcu1X0MT
         L++AqCjwG7kyT9aiNvkC/GhTGtwMdtWCrPyje1e8u7z0ZxdGMzajKPZAliZD9Jpd36n2
         TNRbDJHyWNS2L3symnAsqvUtg0b1CWioIjPBUvhxdgxN4jDf/Ncipx11shcQYwQ9qe9T
         VlfsJL3glpKgeI1qG0Io+HSyygTFG2V/8+/p5ILShBUU0GKhoGlPP/mFkv35O81XTlAu
         4ibA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=DYFLSjKZ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22b as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x22b.google.com (mail-pl0-x22b.google.com. [2607:f8b0:400e:c01::22b])
        by gmr-mx.google.com with ESMTPS id l10-v6si185398oth.1.2018.03.20.13.28.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Mar 2018 13:28:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22b as permitted sender) client-ip=2607:f8b0:400e:c01::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=DYFLSjKZ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22b as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x22b.google.com with SMTP id n15-v6so1712615plp.12
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Mar 2018 13:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=/3RfyjfRYi9U+6+uRNCCGOB9jcjwx5DBnmz9B2V2Big=;
        b=DYFLSjKZWW6U9gF7io+PzlKeuJXLjf56iBvH70lweR7bgELAmsQvYmj0gPSNRxg2II
         R6B0Sk/MZ4GQc07LOH4zopSVt6h4bnnLEGZL/lJ1rMzHLaamlxu3fJ5IzSTtb/ZgtZci
         /KqiK9g7i/N7mKC9hFtA6e5PJtnrvhVA58wzg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/3RfyjfRYi9U+6+uRNCCGOB9jcjwx5DBnmz9B2V2Big=;
        b=OmMCCfvCcGwyyeNslTA3UNauF9VcuaAHpj0+VSrjJuPJZBCndIH7lbcXwIiN+wfrCp
         Qqueg/l2BOiAPcrl4IqEfHj0V/Gp9NO7wA2riQtSIheoOzMEy0MntGPB+b5P+VgUKXrQ
         yjXWSUsQFTF52C/5CPJ35N2apcYWm2gmINjM37oReN0WaDW2Gxfg+ufiBTZ0JpyZhq9f
         hkE8wkIUIsSm8HJw1GEOFoQDSOsiUkn09JaIrwTgi8Ja5T/UP9rQXd587ws4pwO/gQcY
         SzMt9usrLileifjpq4kyr62FXaEoKFt8oP9GnmMRdMv2EyK9lGPXs/1NTWI3kMFnf9OZ
         Y0kw==
X-Gm-Message-State: AElRT7G3XKyfCIMkTZ/KLUOS+lTAXbqpwn9RIV1lQhnb1n87/hMCLPpZ
	44RIRBdOrYZU5VcYu1EF4/I3T4Rj
X-Received: by 2002:a17:902:5a5:: with SMTP id f34-v6mr18001309plf.288.1521577699573;
        Tue, 20 Mar 2018 13:28:19 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id d77sm5480831pfe.20.2018.03.20.13.28.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Mar 2018 13:28:17 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH 1/5] staging: vt6655: Change typedef enum to enum
Date: Tue, 20 Mar 2018 20:27:55 +0000
Message-Id: <1521577679-21104-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Change typedef enum to enum. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vt6655/card.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 487039a..be5254a 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -39,12 +39,12 @@
 #define CB_MAX_CHANNEL_5G       42
 #define CB_MAX_CHANNEL          (CB_MAX_CHANNEL_24G + CB_MAX_CHANNEL_5G)
 
-typedef enum _CARD_PKT_TYPE {
+enum CARD_PKT_TYPE {
 	PKT_TYPE_802_11_BCN,
 	PKT_TYPE_802_11_MNG,
 	PKT_TYPE_802_11_DATA,
 	PKT_TYPE_802_11_ALL
-} CARD_PKT_TYPE, *PCARD_PKT_TYPE;
+};
 
 typedef enum _CARD_STATUS_TYPE {
 	CARD_STATUS_MEDIA_CONNECT,
-- 
2.7.4


