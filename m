X-GM-THRID: 6466352868892868608
X-Received: by 10.13.241.198 with SMTP id a189mr17845773ywf.128.1505566791117;
        Sat, 16 Sep 2017 05:59:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.17.75 with SMTP id 72ls2555912itf.10.gmail; Sat, 16 Sep
 2017 05:59:50 -0700 (PDT)
X-Received: by 10.129.111.196 with SMTP id k187mr17884055ywc.95.1505566790569;
        Sat, 16 Sep 2017 05:59:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505566790; cv=none;
        d=google.com; s=arc-20160816;
        b=Org2CHa1pD32C2gI6MvwDUqP9SOmLGN/4XC5G8FSieMoGnLLJjJrq/CcrINumo9ek8
         HKOUB+chQgbPy0pxmWF5aP5ALiXZpzeggPJnieIm6VZ+FoWE60vODFvNwWAEFMt8j1qI
         Y/MsSNzrp5cq4SzaKf4iT87ZahR+8DzPldYf6prJcTS04pvLjL7fMiX99Uxy3Cb5PV7w
         cVvziq+y2IQzkcM3jCNqhtgdCI48LtEEov8/LPBG0pTzqmn5qf/fbH+Y4AOpVygOm0FN
         ec59k4/ssYuw2GL5LqWApp/qFmydJIYo3ryQdmgaFql2Yz9IhjXMoEi0jJgl5wZb+WaO
         Ukaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=xR4cFMn+m7yPHMtXHUr4GgGIswkxeb+c87CG1Mze+ak=;
        b=Qr42LqFkvuwlX2JrS/0rr15t4UvI9k7PSMjbjZJ41qKdD0+4dOvCcYu3y36jwxN4E/
         svozqVeg4g8Df4JivcmP+PEThC+H4ZAxkqYUKjC9owdcXMYuWXqWcoFPkkHwUhNkMx00
         PWCmsbtsNZapUQ5xhhwgIoT7HS6jbP5e+P4jDkZYtAoZ+WS9WcZ3hrEtEBpG8JgZt7Nq
         bT9LkIQcfvrBnG2zGyOGTGcTNax4j/X+/nTRno2A0e8LbI3WJ7IaIbXekC5VbwT7hBUZ
         NFSs4cREfNyCg+RK7pDm3qexi9anfFhCz9PJFA+Aflb6g4OeKhkyxx4k/T+OhyU0dQIW
         7hng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzYScKrp;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id g27si304881pfa.2.2017.09.16.05.59.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 05:59:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzYScKrp;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id h4so2512792pfk.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 05:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xR4cFMn+m7yPHMtXHUr4GgGIswkxeb+c87CG1Mze+ak=;
        b=DzYScKrpYmj7K+HiY4hMg6wD2j6DxA/9uB9mjkWAOgAlJ/GjIQbupbhHyCgwLak4jV
         TKgX3t8k824764RMd9RGxCU8tsY0QoEGhlGnzECI3NALhbM/RLKGYjOMRhiOYqyEoXDC
         N1LbdWSkuLS8X1RYb0B8tbJsQjrvcDUTG5WYixc18bW2Q7u/TB8+hbZdW/IgBU2nnQ8i
         ulZfWCJafdQOxo3lUFqCFpH5IwkoUEbWxU5TeZkWuRKxYs5k+ukveGHG5saynCfwcErJ
         ye47Pb0w/Z0dnRv1IKxmIu+jHqAFsvSuTukjRk/5PcSgBru9NkqFCAfnUYlgWH4s+V5Y
         /4Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xR4cFMn+m7yPHMtXHUr4GgGIswkxeb+c87CG1Mze+ak=;
        b=JkBpggya1EnXk6Fi+6WMrbbYfAdSQRbIcIGn31fgXncEFtUKJtyTHoAkbhpPvedMBR
         v+zpba2D8UPuaE/vTHWMMafvryGAnqWWOpQvgcx8cFpv2pnQUHMWbYQB45xeBheIIn0D
         dIHRvskVS1HuJlIrL0SmrLOXXjZmGYXcjrY/IwKEtedqbYw0VsZEtS99Gn5AY3hf3oY1
         ZV5X7B/ui5Zo9A+yL8dWKpp0U4y8i42E5zml296HjlAdlv7WnnitN3JnOVL7JGTaIiYj
         8TuVVcTgd/cNiYwkSOpatzmn0+Gnghie1adFbnlmp1bPKP9RlJqbz3ywY99X4zPgPupM
         skUw==
X-Gm-Message-State: AHPjjUhfxHmxSffmG3BRmxXubTA9UySBR5BEfNn8ttxqO4v/DFsj0/CC
	G55qdGXNUqhEfQ==
X-Google-Smtp-Source: ADKCNb6RQre6UfpFMAF9L4ece5NvKVr9p7ONhfFF6DT7Kxs62gonlR0mOU06VosrtyQ7oc7gyRRMPw==
X-Received: by 10.84.241.67 with SMTP id u3mr30789900plm.127.1505566790251;
        Sat, 16 Sep 2017 05:59:50 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id g68sm6480855pfc.64.2017.09.16.05.59.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 05:59:49 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2] staging: dgnc: remove variable rc
Date: Sat, 16 Sep 2017 18:29:44 +0530
Message-Id: <1505566784-15237-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

Found using coccinelle script:
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
changes in v2:
	- preserved comment regarding return value

 drivers/staging/dgnc/dgnc_neo.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index 1943e66..c459171 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -1182,7 +1182,6 @@ static int neo_drain(struct tty_struct *tty, uint seconds)
 	unsigned long flags;
 	struct channel_t *ch;
 	struct un_t *un;
-	int rc = 0;
 
 	if (!tty)
 		return -ENXIO;
@@ -1199,12 +1198,10 @@ static int neo_drain(struct tty_struct *tty, uint seconds)
 	un->un_flags |= UN_EMPTY;
 	spin_unlock_irqrestore(&ch->ch_lock, flags);
 
-	rc = wait_event_interruptible_timeout(un->un_flags_wait,
+	/* If returned value is non-zero, user ctrl-c'ed us */
+	return wait_event_interruptible_timeout(un->un_flags_wait,
 					      ((un->un_flags & UN_EMPTY) == 0),
 					      msecs_to_jiffies(seconds * 1000));
-
-	/* If ret is non-zero, user ctrl-c'ed us */
-	return rc;
 }
 
 /*
-- 
2.7.4


