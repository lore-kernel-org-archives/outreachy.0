X-GM-THRID: 6663618170330284032
X-Received: by 2002:a25:aaf3:: with SMTP id t106mr40039ybi.66.1551745464763;
        Mon, 04 Mar 2019 16:24:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1142:: with SMTP id 63ls1552533ybr.1.gmail; Mon, 04 Mar
 2019 16:24:23 -0800 (PST)
X-Google-Smtp-Source: APXvYqyk5IZAVOc01GgGsZwXlZN+/FS4jgLsllPoguMMcczW/EmubjpXOLvx1DyZT2ui71s55hB7
X-Received: by 2002:a25:23d5:: with SMTP id j204mr21568ybj.11.1551745463901;
        Mon, 04 Mar 2019 16:24:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551745463; cv=none;
        d=google.com; s=arc-20160816;
        b=Ip03unA4tDZSa1XTBSjAqvNSHsDOxz0/PoTrlnsBN3cbKczA2Yyansbh/pdPB+TcTy
         QjzxsBv+0pMorquSfXOvETe03qzNO8CLvy4DZgjqb3ZTTW+hG97lZaN2qKhMemC19rAn
         3aRFajcfGxifGf2MpFgcNOtSjCkZQFUV0m7W3KEYhaI6w4mVyJT41wjPeCafZ03fimXH
         hCRCUu7k88/yMJzz5wwu7S96XNVmlREzrMi+91pKky8Trg2Xnu8szjqmZE0mcqvCYomc
         8wRMhczSFvST8A53AzUCWhBzqN9R7iqTTrVd+deZRR1ZkcLvMAvKXMXPwRdObvXp4a/2
         JnlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=yJlEhQ4Ji0jLR+ktg4iwTTPZQfFOnccv7tJQKTva9G8=;
        b=LwHV/pMRSzDq0h66jZjeGvjH8/ialjIwebLNjCAU4tFd+NNA1/oq3pEEm3U5EuSgpJ
         Ly35U+AeiPMaPYWCtlf+akQroO3u2EUAzHuv6NOlYvagVLR4BJd4wa79CL3umhBwWA8P
         8r7Obg9Xlsy8iz2Wn2gtdQjKfO2F/6ukzBD6YwiRak9mpn++2VE4U8+/rPqXDHW5jXcQ
         x3ydvlrU/xIN0Chor4jC8H4uttK5z1wAk/loqCecP2RLgGdNjaYqBCqCT4QF26LCqMRc
         yrl76GJ7FlPL/r8omG3Aa76DlHRrnfLSbtyEKIz+ZlW3JG7xUXtbX/cTDL9kG7DMg+FK
         H1ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nftwTv+F;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com. [2607:f8b0:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id s11si196601ywg.3.2019.03.04.16.24.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 16:24:23 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) client-ip=2607:f8b0:4864:20::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nftwTv+F;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22d.google.com with SMTP id j10so5414568oij.13
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 16:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=yJlEhQ4Ji0jLR+ktg4iwTTPZQfFOnccv7tJQKTva9G8=;
        b=nftwTv+FD3kJwqaWNBqRVVVgGT+Z3RkDfVpcRXzSaVK/rYoR0PabXuoRsJzcXX22WK
         fnjxjOmfgno40G58OiJvY95MaKAeGqsRsl8oGIj9f5CxAJZ5sAScvmh45TYcKIS7Qiec
         nVB12yoSYl5dHo8S+30ud/CQs5eG/+E21QGXfxO5U7vZ5W8xdIyJGVKemXKiVopwsKLr
         4IjBviUYyV3AfzOqqUiEbuaJU3tOhwyChznLeeMxMsgG9Z32lGcXGu1x3C26Oky8PgXH
         a+kkpiqajTakkVch38NKfM4bJyxHpbrFAQ5h/1Fsnou8ICT6J/OfSEA0fz82lXcfZS9i
         KxKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=yJlEhQ4Ji0jLR+ktg4iwTTPZQfFOnccv7tJQKTva9G8=;
        b=IRq3lljGJCwSUXmHq0RU2XnnztvrSG9Ldwe6Kn7bf/Ny0eJMUDR5POhSRpT5nIpa19
         6Epot/9YY46v9+nr3BfFf9EUhOaKxgn2bkB0+d8gUJkaKbKzswfZjeXlowxQ9mqaCyUw
         8noQ8hG7Im4GjI4O8gV77BP7ksBDKk0WLdkxJ3O+ZsW1+As2seV324la/LqtAgBRRy2T
         43SpUTQGw1kuH3BKK/tuM86sltglxbSwac2t9zHEqjbz0jj7c5BDP8JLA9xmu+ia9bzv
         TbTHcZ8+Rv4/0spto+Cmz1vzknyQcJIYNVI36TjbyxnSxb+H9QK9f14M33f+M3MBS8Kl
         0o0w==
X-Gm-Message-State: APjAAAVv4jOOAKzR7I+QgNSj5kq3r6tnlSljROmNHujghMkuQIqsxmtD
	EbIBsksNEUw8yCVt+cqx1fhFs/dmnS4=
X-Received: by 2002:aca:3a0b:: with SMTP id h11mr341243oia.97.1551745463603;
        Mon, 04 Mar 2019 16:24:23 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id g80sm3054548otg.38.2019.03.04.16.24.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 16:24:23 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 4/5] Staging: vt6655: Fix spelling mistake
Date: Mon,  4 Mar 2019 18:24:02 -0600
Message-Id: <e7c619cce9fbfa07643056935575133d614e1f21.1551745071.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551745071.git.madhumithabiw@gmail.com>
References: <cover.1551745071.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551745071.git.madhumithabiw@gmail.com>
References: <cover.1551745071.git.madhumithabiw@gmail.com>

Fix the check for spelling mistake
CHECK: 'Regsiter' may be misspelled - perhaps 'Register'

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/rf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 03b0d56dbe9e..825b6ab5c0de 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -163,7 +163,7 @@ static const unsigned long dwAL7230InitTable[CB_AL7230_INIT_SEQ] = {
 	0x841FF200 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 451FE2 */
 	0x3FDFA300 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 5FDFA3 */
 	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* 11b/g    // Need modify for 11a */
-	/* RoberYu:20050113, Rev0.47 Regsiter Setting Guide */
+	/* RoberYu:20050113, Rev0.47 Register Setting Guide */
 	0x802B5500 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 8D1B55 */
 	0x56AF3600 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0xCE020700 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 860207 */
-- 
2.17.1


