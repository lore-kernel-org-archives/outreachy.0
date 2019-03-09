X-GM-THRID: 6666299764348289024
X-Received: by 2002:a24:78cb:: with SMTP id p194mr14604160itc.7.1552122579581;
        Sat, 09 Mar 2019 01:09:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8c8b:: with SMTP id g11ls4654884ion.4.gmail; Sat, 09 Mar
 2019 01:09:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqwxZbqY9dQ6/Mji5+w7kVgSuGqOhf6L/focKIEEj7ZRm9121rMNTf8RCQHHovVF4uc/a474
X-Received: by 2002:a6b:da15:: with SMTP id x21mr13132655iob.26.1552122578746;
        Sat, 09 Mar 2019 01:09:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552122578; cv=none;
        d=google.com; s=arc-20160816;
        b=pGy3btob9107wSwQ2yO2XRFJLO+9+StzV/5Ff4jlEo3ycfqcZZqwqzY9GDBHIcGI7X
         bhnqyv9M7RLiL7YcJ2JFnDqWo6zXVDxgwpNr/DjAH/x9CaWsUvczNGeG5imtLmE8FF15
         9xPAcJH/ci3ujUS/D8HxmGgewCaaNxmijBIiwL/zVy1xXeD1b71aIpmiXk4RTxwxNvz2
         hn4IjG0f2l+CWWsczjqwDEj0xz4js4e3NduDJ0RpQ9zJas/9wstmZCs6HpXZf4oyr9ZN
         kGQ8gvDDvYwcYHQpJFAlTgfGvE/TgA2Xgt7VhX7NMlTBKgPeTE9pS6gvHJFrAoCg30Nn
         WS2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=H4a2cKO5vbL+e8XC4Gm9ajPkA2UbMfSVyh6+BbEXeWs=;
        b=kXFdFSXY6Hap08RN5QAB5ragT+jmgoqovwDwbIyTH8qe2o5jdLhFbSK0s4XSwPGITn
         klAhh5EUdp7YoQKgq3eed4kbDTlYO/LwVadsFk/tlHAVerLh4MWZEXSu0K7w+h3W1xaL
         iKDhJ7D0fcVx5iw5CbVVYTUljoN603SuRHV3O4dlToOtl5ozWtkC2klxlUrSmHzJBUuW
         PppkmsTH9F0l+N93srceteQ29MMwloB6zmA+J/zIeym/jNucdP5AfPJYoTEzL+ZKuSKe
         m1gJMruNVlx5o6rOC3w392UTZjbr5tVB7CrZZKpuKw5K0bxO/j1xOKorffyucNKowNAX
         B9PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iMY0mq7l;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c191si654328itc.1.2019.03.09.01.09.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 01:09:38 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iMY0mq7l;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id n74so15939669pfi.9
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 01:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=H4a2cKO5vbL+e8XC4Gm9ajPkA2UbMfSVyh6+BbEXeWs=;
        b=iMY0mq7loSbyFRCbtqSx2n/jp8Fy1lHv2oY457i1qNt4tBavfD8i+B+0SI7QcLj1Wf
         eFfN/gamMPWMW2bbmYra7UGX73WpRj/6+gpS7y3Q0Pb09GmH52SyOakCXP0aXMZogrGp
         k6RGAylFaervpWVy1lHYRKKPbWpo6sSklWOaY4QwIqYZPkGo1mBxpYg/fqH8eSLdR7sW
         yYTu1k2Y6eFD3SnHFHMlXgNsd7F66lJzhs838ixYQZToKTlgkZq9FMg3nxAFpO/99B28
         RLhgyio+b4wzbZA2XMyBDhu2dA6dYi1I7De2Y/CdrbrWJkJxSqHGn5ICVixrgaH1L4Ef
         nVWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=H4a2cKO5vbL+e8XC4Gm9ajPkA2UbMfSVyh6+BbEXeWs=;
        b=TtbOK7P+L2LHj22xWAZxN0L7fI4v2c5LVaWbqJYTxZxyWKovg2A2W9AoAOj9WBH+DJ
         1My7+UTl9804zP+PBFkvjRstP2Whr8kigW8TS0w0NovTlIgMc/yHNuF9hXbutUznw7UQ
         TaWybrE2jAg32Wro+VqyPkCWfhqRS606C3/G9b08m2gxj6rsM2atnVPP72RNzcKTL4MA
         v+xCOb0S0QhQPL2gLo4f3qcEOEla8JnD9a9WOvKbeGoMQA74yN1MzPygZnxnTNoZemYB
         hVglJgCaH0YGqXR7kX231YfaJN2Bv9cWbnNMYSycJ2h5Ul1iowHrrbo3e0KrEmKwvcrD
         H73g==
X-Gm-Message-State: APjAAAUfRjm3sHyHYmXulVRzRqOcgJkG4nr1giI5+2D490bhrRee26aJ
	RfTQn7EujvAzPza678oPcRebcyRkJJk=
X-Received: by 2002:a63:5318:: with SMTP id h24mr20747305pgb.76.1552122577637;
        Sat, 09 Mar 2019 01:09:37 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.145.236])
        by smtp.gmail.com with ESMTPSA id f87sm311157pff.38.2019.03.09.01.09.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 01:09:36 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2] staging: speakup: remove unnecessary assignment statement before return
Date: Sat,  9 Mar 2019 14:39:27 +0530
Message-Id: <20190309090927.26925-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190309080721.26121-1-himadri18.07@gmail.com>
References: <20190309080721.26121-1-himadri18.07@gmail.com>

Remove unnecessary assignment statement before return from function
find_specifier_end. Issue found by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Remove "Coccinelle" from patch tag

 drivers/staging/speakup/i18n.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index ee240d36f947..a748eb8052d1 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
 	input++;		/* Advance over %. */
 	input = skip_flags(input);
 	input = skip_width(input);
-	input = skip_conversion(input);
-	return input;
+	return skip_conversion(input);
 }
 
 /*
-- 
2.17.1


