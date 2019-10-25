X-GM-THRID: 6751575419230617600
X-Received: by 2002:a62:25c2:: with SMTP id l185mr1492890pfl.101.1571973663557;
        Thu, 24 Oct 2019 20:21:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8b86:: with SMTP id ay6ls2373009plb.7.gmail; Thu, 24
 Oct 2019 20:21:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwRoT1vHkUiN/GKN7lFKv2YaJm1mj6qNu7yi/arlsAwkykZBSbOhvU+ehkXeaY7Xb7bOOhR
X-Received: by 2002:a17:902:9f83:: with SMTP id g3mr1247159plq.168.1571973662295;
        Thu, 24 Oct 2019 20:21:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571973662; cv=none;
        d=google.com; s=arc-20160816;
        b=qT+UOlkrlsJ2fjT93Xf+8EZdacTnL4654nn+rAfkiDJ5ePUKIefcsJMXbMCkfIeM1Y
         LkP12BHR11b+NRR46MMIt3oAjoetydiRLx9krN+FXOFG7wreSbI/wLbkia62Vqhs++3a
         XSNIWK/xGUMqBCzfjav0dGyl/z2ShFb7Dte5vN9eoSBVSJuAEwv7bGdlbz6AaW+wB76L
         FnnM3DCl81JbutQ/VigR5gXOolQz8n5HvbNoDWn/EfWy52B1PybS4IKIa7V360Ve3zY3
         /AzpPkhE3ZJMajUUYszZzXayb93oIO4vs4eifdc5M0uHJRvTVo0S5QwkuJ7J8dznDtNq
         vl1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=D5fXVTWKtDFjkuD7u67ySedM3tCvn1n1gYjPh+tJzpk=;
        b=YNdlhYziHnR0/duX8Q2oUA33lI/Sg3L7zNX8kSuW8FjFyUGV8kOmmDopchYz1DLWii
         XeVjj822bmLh4V25ja5pO+e3dIUBy9zLf2vujaZlKORhuC52vRRPKk5rbBvCkcW6My/K
         9jvjFq5qsZRRgAmTumEXZKPyWVD96c7T88/jGtzJx1Gyy4OXbFv4k3tXukedyZAlP+FT
         NxiGZvcY3XAKL0XkcMchuxaZZ28hpmfmPlggfve5ZD1FDEwYXJQ93wGytx8QSNqM9KHJ
         eAqEOr6WCuDLtPIBx5Pzt4YUkbKqG77NCgwkKzfUuWGf9FVuVZ+B+MuMqWDT65FhcQH4
         eOPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DEE7CQjh;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id t22si18694pjy.1.2019.10.24.20.21.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 20:21:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DEE7CQjh;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id q21so460544plr.13
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 20:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=D5fXVTWKtDFjkuD7u67ySedM3tCvn1n1gYjPh+tJzpk=;
        b=DEE7CQjh8XyiOv+xayM0DH//YOq+BocpzaWYs1vLwbxEoFaU1v+hEYQpBc6X7G/R2I
         wS7HlOEWC95EcT4qMsiBAtrjUe7VAop93BdC4OJJ+E38YVu/EH5N06a0yAzK1GAUIoLs
         qeaPPmqoPW48mvjAtB4FzxGqLdZsGWxxEy6uuoA7kqfcTPYz1is44nvW5BPsSyCVCnCQ
         3ThPR+D+UCZJKInqYUMD4rcBlm+g0AIvH6jnbq5pb1vrTaTDVzIaDYDa3a8yjDf4z+Ey
         g4BwQBLwk6NKuegsMX5cxYU4U7sqtraPhrzH9+rnrysFK+qu6n0ynPmzMU5TyvVW5/bA
         ImDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=D5fXVTWKtDFjkuD7u67ySedM3tCvn1n1gYjPh+tJzpk=;
        b=rPyW8L5ccFA3fkD6WP/EAEr/bzdQfHM70/qdC0X9wAaFy85IpL3ugMjCjSTiaAgu8F
         l1XVRmtN7d4BZPOdrbm+te9aUOOg2UTKIJLPZRkDwEuLXES0bs2rHeADD1W9/H3xwzbB
         Lh/rZChKgQ4JpBDfIWEMIbAldRXWU71hJ2Ta0TlHwCE28/ZpRHsrdwl6ABZvsB0oXfnR
         ft5MgZk6knjF5CtVs1i1m6ab486KqO1IMYzWP/867Yvtve3VVwSGxPNZUhAq+moVfhtX
         E07iFvO47SQKJyknV9uD+eyk97ocyF0tYRr+KlEwLdnbI0AiOk6baOQ/qpRtmoSlGcFj
         wB+A==
X-Gm-Message-State: APjAAAXzhsl/qoHBCJPuEON5mYg9bBgNfo29Ihd9Edn88sT2Uk43R9CO
	fG/ASIN6B84wTnuEejzRP4Q=
X-Received: by 2002:a17:902:f:: with SMTP id 15mr1236571pla.324.1571973661960;
        Thu, 24 Oct 2019 20:21:01 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id 4sm446636pfz.185.2019.10.24.20.21.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 20:21:01 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 3/4] staging: sm750fb: Edit CamelCase in ddk750_power.h
Date: Thu, 24 Oct 2019 20:20:34 -0700
Message-Id: <3e2413e603d11ebbb02ddfeb9e8e7f24f6a3d29e.1571973516.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571973516.git.jamal.k.shareef@gmail.com>
References: <cover.1571973516.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1571973516.git.jamal.k.shareef@gmail.com>
References: <cover.1571973516.git.jamal.k.shareef@gmail.com>

Removes instances of CamelCase. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/sm750fb/ddk750_power.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
index 7002567a47d2..cd892f2b717f 100644
--- a/drivers/staging/sm750fb/ddk750_power.h
+++ b/drivers/staging/sm750fb/ddk750_power.h
@@ -3,10 +3,10 @@
 #define DDK750_POWER_H__
 
 enum dpms {
-	crtDPMS_ON = 0x0,
-	crtDPMS_STANDBY = 0x1,
-	crtDPMS_SUSPEND = 0x2,
-	crtDPMS_OFF = 0x3,
+	crt_DPMS_ON = 0x0,
+	crt_DPMS_STANDBY = 0x1,
+	crt_DPMS_SUSPEND = 0x2,
+	crt_DPMS_OFF = 0x3,
 };
 
 #define set_DAC(off) {							\
@@ -15,7 +15,7 @@ enum dpms {
 }
 
 void ddk750_set_dpms(enum dpms state);
-void sm750_set_power_mode(unsigned int powerMode);
+void sm750_set_power_mode(unsigned int power_mode);
 void sm750_set_current_gate(unsigned int gate);
 
 /*
-- 
2.17.1


