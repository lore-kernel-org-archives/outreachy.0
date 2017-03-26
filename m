X-GM-THRID: 6401842104590401536
X-Received: by 10.13.214.15 with SMTP id y15mr6213806ywd.100.1490545017161;
        Sun, 26 Mar 2017 09:16:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.10 with SMTP id u10ls3299977ioi.8.gmail; Sun, 26 Mar
 2017 09:16:56 -0700 (PDT)
X-Received: by 10.99.160.103 with SMTP id u39mr6791139pgn.14.1490545016325;
        Sun, 26 Mar 2017 09:16:56 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y203si1559594pfb.0.2017.03.26.09.16.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 09:16:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id r137so5528325pfr.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 09:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=axhPzedr6iAKldtOWHGiqauZQq6GTBoADzk6xW16YXE=;
        b=Z/+NCrJST9/6WbQyaIYKsneC9gF9aQYpFpWr4NdYwMGBz3RVsyGw5p5B7jiN6BfGnQ
         vxxFipqNBElHWTfFBD8hffYyJKzx49czrDSOEJdi+4PHks4wEErJtor0vFQJpkJlBLHH
         S69N7LwjTBNgTKyrtnnMYkf78RSHeEfZxqjC0c3S3HdP5xhJQ0IC4HLno5yF5i02lF8S
         ogKSGPIxM4YisewUK1ZOeIUR8SkmjKyR9hrDdyfpfpa09bHpPShP/n2XstSaHzCBWxkC
         2nS7sc8tvRDNDDxpRGVn2RRvv1tXMyzuB0dMzp4fkTxuTzUdu+kEERldVb9a56X9ME3P
         b6wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=axhPzedr6iAKldtOWHGiqauZQq6GTBoADzk6xW16YXE=;
        b=L9kflhEER0QZyAtEniJXI6tH3cGKTQ46uL19uNCwas38ZWZIeVvA3kF/Sdx9hh11bP
         +yvMKouZh/H2jZ2/oBJPzcHAQYR/uQfaNcJDnob8WShSO4O7OFenLhhLnquTQ1e6Pml+
         9CvMIvEe0OE2XkoAyX7Go2pDq1LbqFD+fFZ2dzDxz7cc91RaSzOSAEH/RfAdqBQh3jhh
         DguoGSeeNwkLnsEp92bpoe2wsO6XzQPB63OCQda34+sAWDPKAarQH7x3zKg9/CkM8mfM
         FmNWZCqHbPeLBLdXg8hnq0GixTewKyJ1jkSEsBPEJEOZsWSLwofbn2ePWKMnvga2gQs7
         Vjjw==
X-Gm-Message-State: AFeK/H1ezrNQjF+kmpPgfgX4qwDDZ1OCl7z2LJ45nLgeesExbXFXWy3WtnqON+vgLMF/SA==
X-Received: by 10.99.67.3 with SMTP id q3mr2306742pga.221.1490545016072;
        Sun, 26 Mar 2017 09:16:56 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.132.176])
        by smtp.googlemail.com with ESMTPSA id p77sm15819031pfj.99.2017.03.26.09.16.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 09:16:55 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] kernel: pid_namespace: Constify ctl_path structure
Date: Sun, 26 Mar 2017 21:46:34 +0530
Message-Id: <1490544994-32649-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The struct kern_path of the type ctl_path is used as an input
to the function register_sysctl_paths which registers a sysctl
hierarchy. ctl_path is simply the path to the directory the sysctl
table is in and is not modified anywhere.

Done using Coccinelle:
@r1 disable optional_qualifier@
identifier s,i;
position p;
@@

static struct ctl_path i@p[] ={...};

@ok1@
identifier r1.i;
expression e;
position p;
@@
e = i@p

@bad@
position p != {r1.p,ok1.p};
identifier r1.i;
@@
e@i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct ctl_path i[] = { ... };

text   data    bss    dec    hex filename
   5462   1698    192   7352   1cb8 kernel/pid_namespace.o

text   data    bss    dec    hex filename
   5526   1634    192   7352   1cb8 kernel/pid_namespace.o

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 kernel/pid_namespace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index 071ebd3..f8a5a0c 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -323,7 +323,7 @@ static struct ctl_table pid_ns_ctl_table[] = {
 	},
 	{ }
 };
-static struct ctl_path kern_path[] = { { .procname = "kernel", }, { } };
+static const struct ctl_path kern_path[] = { { .procname = "kernel", }, { } };
 #endif	/* CONFIG_CHECKPOINT_RESTORE */
 
 int reboot_pid_ns(struct pid_namespace *pid_ns, int cmd)
-- 
2.7.4


