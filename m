X-GM-THRID: 6401842104590401536
X-Received: by 10.237.41.65 with SMTP id s59mr5556102qtd.83.1490545347438;
        Sun, 26 Mar 2017 09:22:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.136 with SMTP id p130ls3537461iod.9.gmail; Sun, 26 Mar
 2017 09:22:26 -0700 (PDT)
X-Received: by 10.107.6.231 with SMTP id f100mr6194343ioi.57.1490545346980;
        Sun, 26 Mar 2017 09:22:26 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 190si1598526pfv.3.2017.03.26.09.22.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 09:22:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so6321134pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 09:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+In/bmt5XwKYPiPZDfEn/7yc5n1LU8q+jtfZ+bIxyEI=;
        b=MiM4dAW9YDJS0sMG75EPQc24TmqnDCR4Xm0f+GULC6x63KoPYATTwHJko0iIn1ohmr
         dqKVeXpnfRPKC7Tfrk6is1EAG5ztrkg7QQoCeJz6dOvNxKoXK47xraGhz0GnBey4W8JK
         ALmzMbW79fRkwHqWJLRX7AqyDpmWuTCABWfiLLduwlYImbfsplJ6LEHNK5UHAm4Jd56I
         h8XESriDgdxwY/unLFXiuvHGaxNixNTYyMu4TBWx2V9UVPDBekNnPqDn+6+k3M+gmUQL
         v+X5Jm5KmuISt6aTHzW4qkjnK+cbzmiYO/KmFV//ZWk+NWuANLy1bfo7CEm/9adpNKtR
         AfdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+In/bmt5XwKYPiPZDfEn/7yc5n1LU8q+jtfZ+bIxyEI=;
        b=p09D9JdaK/EfDRqvhIEFjrfwFbC9xhJxwrp+6Y1IGFxolSAZodklv+4TlDOz0WgpbK
         a1wd203mEYPklM/DxxP7qQCdTexkOfYBjbfhjntFg3mm1pThAW3lUpKyTJSMuRzpW1DN
         SBe1Ng3u1YqTUOdBmEKNi9PPVBBtCK+AnlzXKReLBFjZE+6POhuZzh6YlZq1yT43tjG0
         ZOC/L0NLpwNvZVA7MTeZs69oPWYieLIPWFJyXlUvjYA263aYf/0CSRSuPXDtCpWVI8t/
         SxtrzqqNqwhE19UD6HFc1Z8wD0IGORKgbo3JzNQ6Uy2dwoLf99lzYkq6wP7+SqJzeGMe
         uG7A==
X-Gm-Message-State: AFeK/H3vpIeYsqZSpZ1l2hCtAC0Icpfluy55rZ220nDLh9CEzex6PKQk2AtUNaSE0y3C0A==
X-Received: by 10.98.41.130 with SMTP id p124mr20301811pfp.186.1490545346689;
        Sun, 26 Mar 2017 09:22:26 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.57])
        by smtp.googlemail.com with ESMTPSA id l126sm15838000pfl.56.2017.03.26.09.22.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 09:22:26 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] kernel: pid_namespace: Constify ctl_path structure
Date: Sun, 26 Mar 2017 21:52:12 +0530
Message-Id: <1490545332-651-1-git-send-email-gs051095@gmail.com>
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

Size before constification:

text   data    bss    dec    hex filename
   5462   1698    192   7352   1cb8 kernel/pid_namespace.o

Size after constification:

text   data    bss    dec    hex filename
   5526   1634    192   7352   1cb8 kernel/pid_namespace.o

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v2:
	- Add size after and before to the object file numbers.
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


