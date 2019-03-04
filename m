X-GM-THRID: 6663863789016842240
X-Received: by 2002:a05:6830:20cf:: with SMTP id z15mr12213883otq.3.1551718868872;
        Mon, 04 Mar 2019 09:01:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:164a:: with SMTP id h10ls7539017otr.7.gmail; Mon,
 04 Mar 2019 09:01:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqzu81ZQmvu4eiUQTTf7/amEoYu95SdiBUlxhl6kJDBC8lhFVZQ1oXo6CYNNCttpprnn3JEA
X-Received: by 2002:a9d:76d9:: with SMTP id p25mr12163674otl.11.1551718867838;
        Mon, 04 Mar 2019 09:01:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551718867; cv=none;
        d=google.com; s=arc-20160816;
        b=GXcd9c+Eg5UCTWY57LFgitb8HSeGJAUVL02XBsYDNElKqhmnuBpecxAodA4p2UMFWs
         rfRtB7RZ/L/pv/21RQdgCfb3yDEmuKXzBfLMwxk3i69bE9/2mYpss3uCutjolduLcz8c
         fDte0Fwfbsl3T6llHxB0tH/MwHiY8pAHtAbskbWnYYU5lgsgGyVixFzSvfCahzXWlfb1
         iyi9Nn5RdBofAo7lvH6akQlHV3uuCpBiR/cQplymFYQjEdmFRS2fizzRwjhaGVy6f921
         F+oBkRNoO81iZ7PY2oQEVGdKaplZvRngixTwlCqOONNbmPnkXg/PX8ImlXiQGP9hTuS+
         HBdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=0LIO3QcToDo2iY79tc4XjZybJBZqLnQQ7NiCydako4U=;
        b=uSlD+sw2UrdgwD+qQxqPbrj6zSLmJb/QfBrbaNx50u/IQuqkNeQcOLqZIqBdD1kq/3
         hqXpCiwRoOA7ZymNZWnQLnu3FEOtgk5DnnmJmwK2k9UNZtzLAGH18Q9kn7MhdrKL94F2
         KHR/SerW4lj62ea39mStZNEYwgMn136MY9ybpmBx/dJMdbG6C9JRv128/IWEr1bClWKc
         GjiNOIvlG8Q2RejkCI4W3YUk/PInXIm8vJAj9JeMwIPzuiNHT93KVBQayJddNJjUnrup
         J8Iue8tNK8SLsO4jVVh+Fb/Y3tccgWx6zjeh0Q/0RgRrJdFo3gk0uoXq54xEuENKwWns
         zgig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EoAYXw3x;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com. [2607:f8b0:4864:20::229])
        by gmr-mx.google.com with ESMTPS id f96si260748otb.2.2019.03.04.09.01.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 09:01:07 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) client-ip=2607:f8b0:4864:20::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EoAYXw3x;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x229.google.com with SMTP id q81so4392404oic.5
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 09:01:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=0LIO3QcToDo2iY79tc4XjZybJBZqLnQQ7NiCydako4U=;
        b=EoAYXw3xoaSGvJGzxHvVvp8Ndz6znZ748eDMQqA6Ah6JIoNpO46uG/KopScomiJMzZ
         ycrowtTXKZ/lVJ4bCZIq0kTbESW2ScooLxJL5IpG1N0DW14WeO/4G2i+0kKPulhw4KTd
         Wm/nKs2omFFqX1WdA653onx/6i7NCHePcM99P6w/UQNxaPSR3cOuv6zEUGNGLAx6Ep2J
         XuiK6DrEwj5Gi4DYj67P9NUL+Lh3FKhP1wJUK1SDcP9YSzcAMapBSu7VotwXFsE2mxqK
         wkKWIYl2J5Vv0sW9LfKv0GXWr5730rcVOy2i13GxIJ8C6sUkC4NEnyxkxRJQxbzxGKK2
         4b4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=0LIO3QcToDo2iY79tc4XjZybJBZqLnQQ7NiCydako4U=;
        b=AZBvyEsma8NdEEXY8U0XZBsjiRR9jPVGxR7zwUC2L5r9zVX6uj4X68NJmmr9QsnIY9
         q991dipCMT9GRb24uk8TOifGldtSkNH8Gzg21ym20qPDOgHdfNGL4DojOWhQ/B9L5uqe
         ZhfY/d/3vqGAyg2cRKCU68InkLtjcvYWoPmzJzZRsG++bRMFEZfMnR5QV2FK+QA6izwm
         E0ykwEqvOu1PFsNbDLaD8HZr9TbEmEFYgckEU4BOcsl8zkLl8ox0Xh+a4vSfUAfVxoSH
         BCRcYUB/64FdxGvFVkvm1PKMyI9HeIXABHCEkGyC6ph/P4CzPY0b/nFarlvzjfMoy6wl
         qAbQ==
X-Gm-Message-State: AHQUAuZ752M80cN+j5gIM+XdaRCkO6yGbkqW0Qb1RYgEfv02zqnwwEok
	1OcJOqzqLoSAIEnI3yTgqrqAc1jE1b8=
X-Received: by 2002:aca:dc0a:: with SMTP id t10mr12844592oig.83.1551718867481;
        Mon, 04 Mar 2019 09:01:07 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id k11sm2551127oia.16.2019.03.04.09.01.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 09:01:06 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v5 1/2] Staging: vt6655: channel.h: Fix comment style of SPDX License Identifier
Date: Mon,  4 Mar 2019 11:00:52 -0600
Message-Id: <69b7090cb47c985786d4e8dc05401f52da5d79c8.1551718323.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551718323.git.madhumithabiw@gmail.com>
References: <cover.1551718323.git.madhumithabiw@gmail.com>
 <cover.1551718323.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551718323.git.madhumithabiw@gmail.com>
References: <cover.1551718323.git.madhumithabiw@gmail.com>

Fix the comment style of SPDX License Identifier for header file based
on License Identifier syntax.
---
Changes in v5:
- Edited subject line

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/channel.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/channel.h b/drivers/staging/vt6655/channel.h
index 53f623a4af65..0d2709607456 100644
--- a/drivers/staging/vt6655/channel.h
+++ b/drivers/staging/vt6655/channel.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


