X-GM-THRID: 6664351741248536576
X-Received: by 2002:a65:52c5:: with SMTP id z5mr2071828pgp.71.1551665305012;
        Sun, 03 Mar 2019 18:08:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls7303689plb.2.gmail; Sun,
 03 Mar 2019 18:08:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqx6H8dtZHZQiVr3IJoEDEJA01AjypcKfNfd+QkRFOsahv5Bx/Sxf/D6fl+rXzi6WQrev/bM
X-Received: by 2002:a17:902:18a:: with SMTP id b10mr5290460plb.139.1551665304338;
        Sun, 03 Mar 2019 18:08:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551665304; cv=none;
        d=google.com; s=arc-20160816;
        b=QDne9GELpoDsNijVW4RM+bA+uI7BgSiXaBtD8XO8cC84Ig3WGXq3PUeJe7XIk7XEiv
         ExXz4296LO/pBLCAqfuLtLo3JpLq89iUoOVxlrFww6ljOuPfy7h/rcZm1dn9QksdtAzs
         NrS72zEmxC/NJ1kxx8fz6g9YA5jNUvvkiLfmCn3g84tCS+/2wb9JWeZOmELZIo4Rx6Q7
         YKGpzoAT6TnAVNvYaQFKmbri3gVHd0nblXFJScw1M5q/AmMrN1JbPb0rcS4s+urQGI2y
         Qun6ir0atQ2bld4ymqi17odhDoss3jkCGUKYU1/yG8Fc13d16yxtqLWQy2q/bUr/wMx+
         0ckw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=yJlEhQ4Ji0jLR+ktg4iwTTPZQfFOnccv7tJQKTva9G8=;
        b=r02MV9Hr3nLPc5fqiv8gaYx1Xwq7bzz0RCmWLC1ZZployBsnMCrb2pt0mgAs4r1oqV
         /+hUHe7rH1X4dpM1fI8POCTVnXlVQ/FVuq0l4+pE2wBFl9T5sKXajSHVGiccZxbawv8O
         nI5JeTIhpWHoUZHLsZpxdjtnvdxYVEmDUTwb2YezGU9O8A9w2DBh4ZBzdW1ponQif2xq
         6U0M/FPAD7YNDLRxYgrAg89mk9Zw3MypUcjU1xhUdjlU/lD47ONRAIp/OG30f/uhPyNl
         xJ2l36etHXV3bIU+hmdxMAQnrMVKhg6CCo0TbjQ5UdYog86HLHLjRzvYHOnm9kOpQNhi
         WnZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jvEtkuA3;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com. [2607:f8b0:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id v132si205034pgb.3.2019.03.03.18.08.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 18:08:24 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) client-ip=2607:f8b0:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jvEtkuA3;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32f.google.com with SMTP id i5so2931154oto.9
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 18:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yJlEhQ4Ji0jLR+ktg4iwTTPZQfFOnccv7tJQKTva9G8=;
        b=jvEtkuA3S+3oa5+STAEdXKO8zmpMgWmQsIBNlJ7Cr79iTvHgmhoJcJkEC5H59f9xV/
         ya3KLsvfXivFg7vZY8AOr6jOZruEdT3vphRIJFND9sEAaobAqcK6soEYwgPVQagPO9+2
         48yynoSiCUF+YVkrw+oqTvnQZGGC7R5pNuyJpMLPJpsayHybHUfK5zXIqy55wGe1Zf5h
         zhuygC695WphcoF+PIOdMDmfFteWCFN01i/0IhT7MsJ8lD06ddg+yOEeP7lxwxBcLLDq
         B7AFSDauFD8yhfZCjtR5sYNYzwH5mYlwe7UXlSJRFYlerDGNGKL+3n8mxISOqm/aTut+
         0qKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yJlEhQ4Ji0jLR+ktg4iwTTPZQfFOnccv7tJQKTva9G8=;
        b=uY8D4PJSbLj4PZnGs6HJzQEMJ2fjPGjiZnvF6YAdkgG7BV4tc1/GS4ck+Fp8IaV5cR
         evMTZAAnQMPfw/BGdkNQETqoUOuIC7yqS9lIXyBJOczyFM8HP9qBiVVy2bYfITh8nbkt
         gGSWtBz1bWylqp5tapRVd2W+Xop2isxZa5dF1nLQSU3aVke77sw6GMWcA8CD5ag8yOW3
         T5uH2Y1f5W4KzQfDODY/x2kJLqFO/2U6PKd1g3uxGXWD2mICLExHBSsTb7PLX8e+2MDW
         xFwPpfW786ymizhfYPTvIHWK0MvV5KIXxLeqI3pmpXf3XSMwrovE3Xi3grOcNYoYjf2s
         jFuA==
X-Gm-Message-State: APjAAAWm2h6SNs0S17yZXB3HHl40jb629+J9tk6kJXxdU6QvPNYGjWE6
	D5mpHmMxL031KWWdMCxCtnk=
X-Received: by 2002:a9d:7596:: with SMTP id s22mr11268100otk.359.1551665303762;
        Sun, 03 Mar 2019 18:08:23 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id e125sm1962645oia.18.2019.03.03.18.08.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 03 Mar 2019 18:08:23 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Fix spelling mistake
Date: Sun,  3 Mar 2019 20:08:20 -0600
Message-Id: <20190304020820.18142-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

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


