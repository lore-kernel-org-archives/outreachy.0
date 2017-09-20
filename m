X-GM-THRID: 6467951789613252608
X-Received: by 10.223.160.199 with SMTP id n7mr441920wrn.15.1505937380006;
        Wed, 20 Sep 2017 12:56:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.23.154 with SMTP id 26ls176692lfx.7.gmail; Wed, 20 Sep 2017
 12:56:18 -0700 (PDT)
X-Received: by 10.46.99.1 with SMTP id x1mr653825ljb.11.1505937378463;
        Wed, 20 Sep 2017 12:56:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505937378; cv=none;
        d=google.com; s=arc-20160816;
        b=TgZb75wtPZKlrR7oR6zyw10uikjaBTPhwPZpv86IPazsmbW6xLdIxuT9vkNveLKQKR
         yT0qpAlA1f4XduKIEDNVMrd2oOrpb9q1OYCwsZbM3VyEmldWTPRCsOdMdkvh7Mz/Ra2B
         RyeG1Oh9j4z6xRmqUMF8RuCkc6GTTg+eXPj8LxfgYiNg6baiBLQ8YMeeg4pyrCO7J7Vs
         vuGb8KjQQHEBr6CiOLPa2xgsqyvSUnEaU/S5GJE4Tb920LPeqwyMoPEs2I8LmoTNZgVL
         TTt1QlEnIri47J5yQWeFGfrnn0hNLNbc2NHzPa/qtXu8ylNIYhJUsptDhBkLbjiQmr6z
         Voqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=pf8YX7c70sy7CaR0Ax2F6nTtXgeSkO2Y+LnEpJlqQhc=;
        b=WNywTRKhyHFVFYddG6r4iiDEIZyofCZN0iImy5AOBOomAyhakRyY4nKUYI8E59E5oq
         crUmyrYAnfc7ozSjykrzCNyMr0KpZ7WFkW+KMv2iuiiZxwzVeMu0ufebHTOmAxIGuYJR
         tzHxihjvGXU6Qhlmct/umDZ/AIby2nHrR/mSo4ro9KmR3yBiIAUS+F+M+60KqccpAz+1
         I6aoS2cpOYyF+PLPVKqQxMnBF0xXUQXE9bCKPjtb439E3UveFMV/tw0iYYS+JNcExTrX
         NxehGkYUjl8XiXlKDvKh1qfwJTRgVXqSbYZuiAEA2hVuGNHznZ2cHIVMdQny6ILBi4TE
         Kn0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jyczBPf9;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id c142si260463wmh.3.2017.09.20.12.56.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 12:56:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jyczBPf9;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id x17so3343650wmd.5
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 12:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=pf8YX7c70sy7CaR0Ax2F6nTtXgeSkO2Y+LnEpJlqQhc=;
        b=jyczBPf9b1dmZl6PeL+RD9YDp7nzxRXktKs+zWuqJ1uF1SdRWNSIZC522htZsg0ehv
         tauldlc89hQEJ8vFsntxhyAiUNXD+SWgJUc3VtrIiQF5fAhwCWiQ7o64dsKZ0drkrT3u
         DTI1mjL4QoZTe7Qet47rjOr2UfYliCToIMyBchuaDr3M+tbeq7ikGX/qUB5z7a0dGwxi
         6MB5GSEjoIwvSrxthegQLn0Gqa1Cik6B4oEgAuOS655PjkavUXRyuuQQR2h0KP6c4QWw
         /Ul1ykpmvMd5ftHLWIG+J8PPCEtqfz8zMAkz96U+r8hskplwxTeGnLjyTpsuOAD3hri+
         kf/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=pf8YX7c70sy7CaR0Ax2F6nTtXgeSkO2Y+LnEpJlqQhc=;
        b=KwI0UBJGpzFZtIAwcF8BuHFOsMIywnMIp4iIFhYCnjrkm/4tQ53NRQemflV0c6jjbt
         efD6jXpKb7fQegEsVDkK7uqdsn9ozBrbnhzzUu/mj1++7FIAiLo2oqA/T19EbhpkoNjh
         DVtyvtxZKJxC2pSkIdolPDeP9rt8rkZl2VyUfj4E/pq12mBkgD+GFafBnT8TXl8P54g1
         B3g7KGxLa3aee9pYcW51PySZPDS9hb/MCXL+VCFv6hKRzOmdmvW1WLlYcuT2tKl0e0Ik
         fYO4Xx8iU+1u5psnwlrkksNc2GSvPP9cJjg4Nvjr/Z61i8XyoEi2E5SJStRqvL9InG8e
         wKkQ==
X-Gm-Message-State: AHPjjUhe6Jvy2IVsEbOa9tG4fpNbKLfv2hU0F1GN//xyFy333sYQf6fb
	1eUbTn9K0HhK7Z39oOGUNLc=
X-Google-Smtp-Source: AOwi7QAsOpUdiCJ1Lc8fL1Lu8QGuwbS8SrLHcMpj29wsCiMsW5wN3uPMdkwXwDeqJLpUnV30kW8J/A==
X-Received: by 10.28.165.1 with SMTP id o1mr5417031wme.31.1505937378170;
        Wed, 20 Sep 2017 12:56:18 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.124.247.82])
        by smtp.gmail.com with ESMTPSA id k52sm2692642wrf.62.2017.09.20.12.56.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Sep 2017 12:56:17 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Samuel Ortiz <samuel@sortiz.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Georgiana Chelu <georgiana.chelu93@example.com>
Subject: [PATCH 1/3] Staging: irda: net: Do not initialise statics to NULL
Date: Wed, 20 Sep 2017 22:55:54 +0300
Message-Id: <89b5f29c33d220a41af5ba4badd9a3eabd3eed8e.1505936736.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1505936736.git.georgiana.chelu93@gmail.com>
References: <cover.1505936736.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1505936736.git.georgiana.chelu93@gmail.com>
References: <cover.1505936736.git.georgiana.chelu93@gmail.com>

From: Georgiana Chelu <georgiana.chelu93@example.com>

There is no need to initialize static variables to NULL
because they are stored in .bss segment. This segment
is initialized to 0 at the beginning of the code execution.

Issue found by checkpatch.pl.
ERROR: do not initialise statics to NULL

Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
---
 drivers/staging/irda/net/irda_device.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/irda/net/irda_device.c b/drivers/staging/irda/net/irda_device.c
index 890b90d055d5..35014782f949 100644
--- a/drivers/staging/irda/net/irda_device.c
+++ b/drivers/staging/irda/net/irda_device.c
@@ -54,8 +54,8 @@
 
 static void __irda_task_delete(struct irda_task *task);
 
-static hashbin_t *dongles = NULL;
-static hashbin_t *tasks = NULL;
+static hashbin_t *dongles;
+static hashbin_t *tasks;
 
 static void irda_task_timer_expired(void *data);
 
-- 
2.11.0


