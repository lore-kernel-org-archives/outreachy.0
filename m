X-GM-THRID: 6663618170330284032
X-Received: by 2002:a62:a109:: with SMTP id b9mr1053818pff.149.1551803534244;
        Tue, 05 Mar 2019 08:32:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bd03:: with SMTP id p3ls10309484pls.5.gmail; Tue, 05
 Mar 2019 08:32:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqx5FaSItiqnZg+V7I0px6EblIGunuP0DAJmEXQv/da67e+TGLa9QvV2KRbXye0Flp6flUnS
X-Received: by 2002:a17:902:8688:: with SMTP id g8mr698901plo.84.1551803533515;
        Tue, 05 Mar 2019 08:32:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551803533; cv=none;
        d=google.com; s=arc-20160816;
        b=o+nxc/s5FUDyCY52T6S19QNy+YxCu6PBtXqjlvWEQiSPhchQJk6yFa187eEJlx8jn/
         DvJNzHnsVlzCTrEw63jTap/4zWjuitaYrxGuiSl2RLqkIAQDFl19JwoOO4op+Ck2ZCQk
         OwD1hEfj5Hyz0091S29kiflBZP7VS5kHqiw5arktpyQbQAqqw+DTya+BIUs0o00z4ize
         Qr3Wh6YIXmVkULiATJ2ghBr1BEkx3NkehRgxrFKe4PseFps9tdhex8uRQlr45l2SYdt0
         ixX1Ixup631d35kYPkN2p2DrrPx5i1nQ8F7jZpwTM09xcZZeGts02HpyJR/obpjZw9kZ
         m9IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=h0kTcG1C3nCyH6BFVXDI0Agz09VGpFy0x/kjpnAvEzk=;
        b=QYv25Iv7PsOvSX9hRyr43t4OSmLtUaECPNIPY7UK84tUqLIBsyyvhAR8Js/sKNcaj9
         jySgOaEtl3sroTqnDXCTKJ0TLKF5FUm3vyGJklinE+Ktv9B3d3FKnsluPd7Smhpqh9KO
         H5QEg3jcOVnkj7GAnTZhxes7irD98gu6ruJCRl942whkq8p9Yujx9xvjTfLLoo/iqq/M
         VqhKx/qIIP2BucEzb0fybUP6bMZSz9VH72qtMaq2mdK/D3Xgv63hlQ8pEnDcaY+tS2up
         YfwIUzWBnkPWxMoSPzp0/vP2aYdG/pQzhydeTo7SG9wRun/wPaQv/9YBfQLnWYd2JCB/
         oqjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BUo6m2Xw;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id d62si360322pgc.5.2019.03.05.08.32.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 08:32:13 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BUo6m2Xw;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id s16so7295263oih.9
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 08:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=h0kTcG1C3nCyH6BFVXDI0Agz09VGpFy0x/kjpnAvEzk=;
        b=BUo6m2Xwxr2NFfkrJnl8JWhI5gLP9iGMnWuCFQHLrOkoA6Jblh6yGAXH+auNjAEprN
         F/cGyeRu0qQcK1xbHu02WXlagg5gzM/OGLJRrV8E058gE50b5N+uzvmWwdtQxkYLHRzQ
         2B2QhiGR6rok6HqFDiXj9YRelsnUfg2iBj4wYTDpv+4qi0nONq2T9zwtyYAXNT3HqcaZ
         T5dVG6HEBInIcajdMAhhY9uQXvqCyBZK52oKy1bjWhH25WuDkBQZJlKLXoabdm1Wwa9U
         /YQEEb8lp1XcjEqEGgxSkVqHjRB57kSuGdh4PPd9rsdYqLlgCCHL7PpkXf8lxUmcKjVk
         zuPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=h0kTcG1C3nCyH6BFVXDI0Agz09VGpFy0x/kjpnAvEzk=;
        b=fmXcHrd7wg7N3Xwj0Elt5TeW5w5gsNO1F7u1mJzIvg6sHgaVvkDSFSztpclv3kKyYO
         phd4dIczTLlM/+2PEil5cAFb8zNziPqDEibtI9wXYTaLkKJXZxoN3mKDN8xkEhW6ylro
         wD690PFZbEZeK0tyxBO2MQPYuUetioxWAKN9vR//lHxERQMsopX7rRDyCTA9sejrc2Ic
         5d5cubHW4tInuIpVdcFMQ7QSs06Xc99VuFhMfexJ9jiIKA8x4y+fmqNjADPVpx+z9kYs
         iBCtWGIxOSt1LvvI8lQfX6gP1KmwmrW4kgrMZ0Pi/UnZb7bW3bzCObfYBsiasacgSAO0
         Yrug==
X-Gm-Message-State: APjAAAUiZ/1Iv1DcKF2esCv+wmUMD+L9kx6HyJLsQIYPTgCl8QkkiC3e
	y0x0Qof+qYBNRDOtNWn4YDQ=
X-Received: by 2002:aca:cdd3:: with SMTP id d202mr2216672oig.82.1551803532799;
        Tue, 05 Mar 2019 08:32:12 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id g80sm3744029otg.38.2019.03.05.08.32.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 08:32:12 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 4/4] Staging: vt6655: Fix space around binary operator
Date: Tue,  5 Mar 2019 10:31:58 -0600
Message-Id: <14ec1b2f6cad45a5cd6b9d73e09a53e08f84e6f1.1551803156.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551803156.git.madhumithabiw@gmail.com>
References: <cover.1551803156.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551803156.git.madhumithabiw@gmail.com>
References: <cover.1551803156.git.madhumithabiw@gmail.com>

Fix the check as per Linux kernel style for use of spaces
CHECK: spaces preferred around that '-'

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/rf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 825b6ab5c0de..fd09b9771cf5 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -792,7 +792,7 @@ bool RFbSetPower(
 			byDec = byPwr + 10;
 
 		if (byDec >= priv->byMaxPwrLevel)
-			byDec = priv->byMaxPwrLevel-1;
+			byDec = priv->byMaxPwrLevel - 1;
 
 		byPwr = byDec;
 		break;
-- 
2.17.1


