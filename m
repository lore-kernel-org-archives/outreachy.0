X-GM-THRID: 6749942525265444864
X-Received: by 2002:a81:4bc4:: with SMTP id y187mr4354012ywa.41.1572046756980;
        Fri, 25 Oct 2019 16:39:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:68cd:: with SMTP id d196ls1746309ybc.13.gmail; Fri, 25
 Oct 2019 16:39:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyheDAaaLR7sWqarI3x+nAv0wsz9IHBSv/r5J4YX3nKum5oVTdQOLnE90l7Ja6Fm/ObZK1G
X-Received: by 2002:a25:a326:: with SMTP id d35mr5845727ybi.224.1572046755349;
        Fri, 25 Oct 2019 16:39:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572046755; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4BWrP8rrAKY5LQ0Ye7Sb1SdELuZSwuIJvGUHDrz0/9frS4IRkR8N2nswcBKBAwm3h
         cQSb02II9aULo1kX3fzUoDdbACffotf7acVEMEFFpbY7hsD7Ia7Yr9UcBOxbf6Uwo6Vm
         Qxtd5EmkFyBBRwOikUB20uc1ETZDtevxkwRpnZ93OHlFgFMarhbn0yZQycejHlF1iPuq
         EfJwMKBgw8Lqmmtnoby/2QeoJ/ZpcEfFsgNCEzzOhH1J9ZirDJjrpiOb6AublEbM3jcE
         rWzf+8Iu07jDwAK23yT87UGLcBezX1Pg2p9kNqP4HBVSdaJ3/Mrb7jEmbdzswvdN3Qgm
         Zc8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=8iYCMmqsnyVKfjy5XqZLpSW571c10vuJU4rS6T4W2j8=;
        b=FGMFGLl39XTwdZeW31UCFEd869t/U4zgGfn/pQYeWWoQ/W+3pahEf+lTQZWf0X726F
         /f+iCiIfbRCEd6JdWBkNaPeY6VpZxlDaW88mQBOuAlDhqo1QmMPZrqk1z/G1ZsdqxuXx
         3tCHK1XvT9LMxAWZtDJGDK8ah3I6s4UIPL/paxEtwjsuJpJFOhL0+/2+TejNr/gIq8e9
         DcwKdfkZF8nofoWXYlaEaW4OZq65fZAbAk+YJEXO6Vd4Z9i5gxjCmH1vPL7KlwXqk4uw
         lOvdkf5Ry+6hX3YG8h+kxK+i8ZH9gNM7eoskOHtNxrBkeBNA1WPl0AY9mj6ip5l6Bx6f
         9jVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jtkNJOe7;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id r16si270755ybk.1.2019.10.25.16.39.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 16:39:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jtkNJOe7;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id o3so5793809qtj.8
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 16:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8iYCMmqsnyVKfjy5XqZLpSW571c10vuJU4rS6T4W2j8=;
        b=jtkNJOe7tP2lgkdaSqNKbilQeINB4ZhCve/X1I1OkenW/X6k7BUqiWg6Nfz5WiY4ND
         xC4W0u8oAtU+Do61c3FgQTJl0Qh/gNMAPM22kmZyg3ftTYFsp03Xs4i8Ql0ThhJM5zf5
         5B32gt5cnusgq6Ra1H1XGB9rn51LWKQykTU5xhtcghebcCWETrYhNXc8VeHS4RhV5e+B
         o7E5VNUntIyNbDWesiUEi9MnjcyrUR4wBDdYWKAQkV67BF0Y5u+jax8fLTnc5J5X+GYN
         M/QqAfGuAVQiyhPleF1vjg0R4ZJYGW9wU4mzjPYCWYS1qnfGcTtIhyc0X77MseI38POE
         YVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8iYCMmqsnyVKfjy5XqZLpSW571c10vuJU4rS6T4W2j8=;
        b=Q7wK/MrqEuQpBPfwry7Xb6Ttb2sy51A0rRVp+pxTlhSfSUrD/LJVaBxTHa6Y9J8ohc
         XTBSKKTGI0K8EFMomhNyKGCR0jtbdOxYL/9Amy+DDp7ENO4aLoFzkgsNBEbrcvIE3u+y
         2/GVcnS7eUrRnTvtp/O87thYrKTQ3G07LGXNn9nKHER/StlcFQcENuY6zJtuXypZ+k1M
         1XE0p4JbTpYj94XBzNv01xwvXkoqErpQuOfAOgJQ30iHNPYhP9AB4oEdHJDDluO4qi0T
         0ywDcmKvACAbg7qDO+kohQ5/qND+x0A7K70wlcmYFGW+euitGxIOA7DZCclScVAe16Dn
         ekHA==
X-Gm-Message-State: APjAAAWMhMclhWNlqXekC3EZUA4SYaDLq59AAkfnM26+k9+9XZBIAvU5
	rKvyI5vmBFUBgaPjETXV6ZO5B1WxW+7Yzw==
X-Received: by 2002:a0c:ba26:: with SMTP id w38mr5919794qvf.24.1572046754893;
        Fri, 25 Oct 2019 16:39:14 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id j4sm1796407qkf.116.2019.10.25.16.39.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 16:39:14 -0700 (PDT)
Date: Fri, 25 Oct 2019 20:39:09 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH] staging: gasket: Fix line ending with a '('
Message-ID: <20191025233909.GA1599@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix line ending with a '('

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/gasket/gasket_ioctl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index 240f9bb..d1b3e9a 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -34,8 +34,8 @@ static int gasket_set_event_fd(struct gasket_dev *gasket_dev,
 
 	trace_gasket_ioctl_eventfd_data(die.interrupt, die.event_fd);
 
-	return gasket_interrupt_set_eventfd(
-		gasket_dev->interrupt_data, die.interrupt, die.event_fd);
+	return gasket_interrupt_set_eventfd(gasket_dev->interrupt_data,
+					    die.interrupt, die.event_fd);
 }
 
 /* Read the size of the page table. */
-- 
2.7.4


