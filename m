X-GM-THRID: 6668974043295645696
X-Received: by 2002:a0c:bd83:: with SMTP id n3mr4422975qvg.5.1552741519076;
        Sat, 16 Mar 2019 06:05:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:8302:: with SMTP id f2ls5330347qkd.0.gmail; Sat, 16 Mar
 2019 06:05:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwfKrCTbtCJ2N3PDm95K5vCnvzRFpf1DGYzzvraAgmf0DrATDU5u2DiMtsJ5TwtZL59joIq
X-Received: by 2002:a37:d186:: with SMTP id o6mr4718294qkl.19.1552741518100;
        Sat, 16 Mar 2019 06:05:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552741518; cv=none;
        d=google.com; s=arc-20160816;
        b=D1+sOpR0SAXap0U67dh8+wNIt8cnChtdbz4DBpnTkA46BZ5RPC83GL0Mrh0L5Z75Fi
         VJqHksh6PmrfR/CZREQgbYGWfa5u3TwUXgcljUdMicAU347/rVnlLD+MHd5lyRue6nxl
         pDwfnJzzotFpuYgFL/59KecmRYGL8s1DmaT49SYywSxSvAVo6ykaLDrK4JV0TXuv6wO4
         QuADHqJQ01iCkuktYGr3a+zZAwf6UyB/4I14nbQjsoI9VYVVjxS0JM1xiDkVP8s/G7Zz
         Q5d5pnOQccpUGMFxF+XrOjLtf1OsXxwDnzFlWEpwuK6sDz7lqDssvfRguIVk9VN6cERP
         ppkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=QUpUwOYBM0z6lftInyQ6vU5vWZLfnYi8eB0l5FPx7kU=;
        b=uV9KOk8VAFh9kR8WFebzPI9OEZmZmdw7nxOijci2WUyP2FAnOMvIcykf8oPwAh8tue
         lmKDdvjpQ4bQYuNApshfh4IJXjqXSURzlE1QyGl3fvzMKorqiXpQrxqyDLBqKr7EMBMD
         jIC7rd5TCSp8dKpxvFY/ZJeZWTXdfTCd6MdJmfT1xNIs/VbpWOydMiZUd4K2uhbHI2tb
         NpGy0unTxz7N7TEKf0EnvhGd3E/Rm26pYpheGK0wW59pmtFZUKKVwIUXRrY6gDfMdymJ
         84+o7oxgHwQFGhlnq8urnIvZKm6hL8YL8y9xjUa7gup9nHAzDgRhS6kn9+CX20wk8WBm
         JUZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t+W50gAv;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id y202si186678qka.2.2019.03.16.06.05.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:05:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t+W50gAv;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id c18so10720040otl.13
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=QUpUwOYBM0z6lftInyQ6vU5vWZLfnYi8eB0l5FPx7kU=;
        b=t+W50gAvSS55Pt4ObWXOvZSMIIq6r30mZB05uP9fLeMwx5Bm7/Lo4QOJRNASqSDSGO
         1t6aapYHtsGt93bL8kfazXvXoNp8YYlTHzLohGak/KJ7BJzXHXnSXhAAMvO973+USszh
         h/gfu8EUdtxfiE5d/lZ6jWJ2hyPT+4ssT6I3+9lJFOGWXYvOKK6AyzwOVGqaF1QLzuLs
         Q0ntFGVnPSfqn32C78fPE9NN9d4MhSV+gz0fPnBQO4cS9ekROEi9dTInNMPQ4TJ/TqHQ
         LMSzrAiVVJrSL/L2lIdfAz/HeW31EQ1jdjcy++e9Pxd71jX6strWM0jGH/aH2JDPWIQ7
         Ts5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=QUpUwOYBM0z6lftInyQ6vU5vWZLfnYi8eB0l5FPx7kU=;
        b=qH38kaaCH8MqZmqvScALeVUHILTRII0TJwoqJ24WTIOtuoymOegqTJzF1TEdvJEXV7
         w+HdozCQbiAKYCzCseaZxIbqaPXdOr4zJhHx5yw8ICsDZPE1lnR+6XyGNnGExSivyE82
         iPIu1Yh/HJMrX/jvtYmj2m4N/eQ7ig7d2ElmuwWG2R4YgBPwYiJxqR5T0ozqVVb7Osqf
         vHU3pI0ki7BeuDZEnGd7FwmfZ++WJ7x2/MZaWDH9O9ZVNDsQRHUteyo5zhiZu2fLyKpx
         MFg4twE1iW7FbIGXd2Vy+PFMpZNOYPaJQsE5AXfOiitSm1QxiUMY01ibE7F+wztTD9uN
         v01Q==
X-Gm-Message-State: APjAAAX4tM1Uu+haOFxyQsOL0JH9MkM2i67FhkO2EcnmkCrXdj82b5ep
	xJNuzoGyjh6ITjrYvTdRj/8=
X-Received: by 2002:a9d:ef3:: with SMTP id 106mr217710otj.351.1552741517620;
        Sat, 16 Mar 2019 06:05:17 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:603f:14f8:e32e:7b1b])
        by smtp.gmail.com with ESMTPSA id l19sm1778959otj.47.2019.03.16.06.05.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 06:05:16 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 1/2] Staging: rtl87223bs: Refactor function and check return value
Date: Sat, 16 Mar 2019 08:05:10 -0500
Message-Id: <79e1366235e198546f0a6781a8538ac825f775c1.1552740889.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552740889.git.madhumithabiw@gmail.com>
References: <cover.1552740889.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552740889.git.madhumithabiw@gmail.com>
References: <cover.1552740889.git.madhumithabiw@gmail.com>

- Refactor return tenary statement in _rtw_malloc
- Check return value against NULL

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/osdep_service.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/osdep_service.c b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
index 73b87da15eb2..9dfdd13d4acd 100644
--- a/drivers/staging/rtl8723bs/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
@@ -24,7 +24,15 @@ inline int RTW_STATUS_CODE(int error_code)
 
 void *_rtw_malloc(u32 sz)
 {
-	return kmalloc(sz, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
+	int _sz;
+
+	if (in_interrupt())
+		_sz = kmalloc(sz, GFP_ATOMIC);
+	else
+		_sz = kmalloc(sz, GFP_KERNEL);
+	if (!_sz)
+		return -ENOMEM;
+	return _sz;
 }
 
 void *_rtw_zmalloc(u32 sz)
-- 
2.17.1


