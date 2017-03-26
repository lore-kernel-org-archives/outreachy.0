X-GM-THRID: 6401819323480932352
X-Received: by 10.237.34.221 with SMTP id q29mr5625193qtc.33.1490539737513;
        Sun, 26 Mar 2017 07:48:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.197 with SMTP id o188ls3346416ioe.53.gmail; Sun, 26
 Mar 2017 07:48:56 -0700 (PDT)
X-Received: by 10.98.56.65 with SMTP id f62mr4572727pfa.13.1490539736758;
        Sun, 26 Mar 2017 07:48:56 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y90si1454090pfa.6.2017.03.26.07.48.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:48:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so6099560pgh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=zSZjXw5EXof75lmv7A3GcTHxMXUth4mUZ99sPVxmXQY=;
        b=ENBCU/siTdfAvIlC008sfr00U/evw0GiUSkLxR5Eb0PgCdOFD5Z0E4K0eHVxPsSQ7n
         5t2RmPmOuFgXQlOpxY0QbLDlJeF2cN2/rlMKCnE3TzQNTp/GUF3NfC3XDzlCe9rck606
         4X44d//PNnXj9PID14MjlYxOq/9EX7pNvkAhFRubh4EpXyG3mcDUggatnc5cExlLLRSN
         3vK/wjGtODMogIyoPI23tSiv9cokCUT4smzoXTViA7COYCxC/P8RWa2pePk6TlTMshfA
         H5h4kBaorq6eomxhnhyKwzNCaczqEG5jMfARza5rKEaKvqA4S1e6Napd6Cdmm/4WHSro
         frRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=zSZjXw5EXof75lmv7A3GcTHxMXUth4mUZ99sPVxmXQY=;
        b=V54aU7bk0aYzrdSxiSqLHtmzNnBM6PACWtU/RuBYrBPvEt2IC+jVaWcCKtacNxOoUn
         zFgg/Iqn1VzezqVhNnCocLAkB9Y+QzQFqUbVxgwSw4uCKNo4ozuXDgh7NpNtnHyeQ4Lx
         gm6rxmaWXenmIIF+2Pw+smZ559LBIFEnyUDUF5N0OSaxbl7fDhbDLbNq2WdyDCeJ8Vot
         iLw+viXMNJCilFzvW3kEP8xb40XfpZQUt1YljZDJyIK704YdPk1md+zDssmegBjSPDU8
         XE32b8EV4kHsGVCaaYSw8F3UWCG+RPL2SURZTw3KNYxdnNUSvloR9DOGjfD6I0BM4Z4k
         O67w==
X-Gm-Message-State: AFeK/H37QdDkXfb4035HFjP1063akccNOHGr1POO40T9aUon4ICZ+5ylfFmslDPsXzT5Kg==
X-Received: by 10.99.155.17 with SMTP id r17mr19202843pgd.193.1490539736532;
        Sun, 26 Mar 2017 07:48:56 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.132.176])
        by smtp.googlemail.com with ESMTPSA id d4sm15520148pfb.104.2017.03.26.07.48.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:48:56 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 2/3] kernel: pid_namespace: Fix line over 80 characters
Date: Sun, 26 Mar 2017 20:18:14 +0530
Message-Id: <38ecc07b35b00ee00b4c90f11e1dd17bffe26d36.1490539466.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1490539466.git.gs051095@gmail.com>
References: <cover.1490539466.git.gs051095@gmail.com>
In-Reply-To: <cover.1490539466.git.gs051095@gmail.com>
References: <cover.1490539466.git.gs051095@gmail.com>

Line over 80 characters are split to fix the following checkpatch
issue:
WARNING: line over 80 characters

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 kernel/pid_namespace.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index 6ace1e3..18f5385 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -92,8 +92,9 @@ static void dec_pid_namespaces(struct ucounts *ucounts)
 	dec_ucount(ucounts, UCOUNT_PID_NAMESPACES);
 }
 
-static struct pid_namespace *create_pid_namespace(struct user_namespace *user_ns,
-	struct pid_namespace *parent_pid_ns)
+static struct
+pid_namespace *create_pid_namespace(struct user_namespace *user_ns,
+				    struct pid_namespace *parent_pid_ns)
 {
 	struct pid_namespace *ns;
 	unsigned int level = parent_pid_ns->level + 1;
-- 
2.7.4


