X-GM-THRID: 6665747871131762688
X-Received: by 2002:a62:174b:: with SMTP id 72mr5703788pfx.56.1551990367587;
        Thu, 07 Mar 2019 12:26:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls3524528plb.2.gmail; Thu,
 07 Mar 2019 12:26:06 -0800 (PST)
X-Google-Smtp-Source: APXvYqxNGEThEfps6GVlgAeRk2hRXA+xYGEo6RuUi3DeVn1iVbgs6m27U4Bso90wo9Q3U5ijm5Mj
X-Received: by 2002:a17:902:ea06:: with SMTP id cu6mr4606974plb.96.1551990366785;
        Thu, 07 Mar 2019 12:26:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551990366; cv=none;
        d=google.com; s=arc-20160816;
        b=DqRDVxDenbYgpMaRjBUjYNl+zW0ZeYxAXBB0Nl8+RgBA877LAK0MIbYMq4NjTisq8g
         K2gBq8OmBCWj5DdJVDPgA6j0aSpKtHP6VVyode/D8V9/U39T0ShB1jYuIozO2qzQql9E
         Ncp3O6NRmTHsTcxbrI5InHf7UKujR3zlTUqAOupXqbtOuN5hKmUjf1Ej1BEa1JQ7gHaL
         V0xJ9o2e6yd/1+A27oE83nId6QIh6VAKXIf59JFKlkFYUvVnDR1YoiBDMVgOtHNFR0Il
         7DjtVzeUnhX+X++vCPW+P1RO4j/gGrTp5GdsnrsZ49jpv1B61OAGqoehLPS3HK5imc7I
         gR8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=vwTAa4tmX63YeJi4Ee4BS+d6MUMp1sB8Vqqyhclwg0Q=;
        b=YtJAwNZt+GezmX6pxwuaI7dS+iktBIaucVcKtN+TP6sHfNaq2UGqTj8E4tOq0JBW5+
         +sfEEzBjmOh6cxQ5u2YEmBqNWmmgtOmhuL+yU5OkUAwdtUYIHwMYiL3xuvLzfHb/23+W
         RTopQ8hiyxWZ3pmqdZ8J/eS+ca4iT5nFb8klk8tboj/LhlAz5q3K7SmWhBL3lzhKsFVY
         V/6tn9tKwGmMJkrEHCAXrRf1OsxvQoTaYTPZg3hqWcEmP81I54l6souTQuvjin+fpPZG
         BPrKMyMy63Mo8zNxVGQTr/mU4Bueo+OWHHk8YMgJ/tx5b0j8QKQ40WfHg4CIPBbvcIJl
         dv7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XoksLJEi;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id 197si321235pgc.1.2019.03.07.12.26.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:26:06 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XoksLJEi;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id g1so15305922otj.11
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 12:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vwTAa4tmX63YeJi4Ee4BS+d6MUMp1sB8Vqqyhclwg0Q=;
        b=XoksLJEi4XjoA4zj2xJaMmEHHW2WVe3z0D1xiuIQf/8Lczv7Yf9bYKpqPElkV1bF8u
         NkLIS4e1rcvNNUICNVk3XoTtQ72yZcuM5KDX54Z51fipdxK5Y1TD99keDDHG70BhgXff
         I6WfO7ETicjzQ+hR3miLD8JAiOj8pza/W56IkKq9eLK529UyIRLADLKYqxTgjf9ds5O0
         XBwk2B87bAQQ5q0QPl4ffBVtCdJ2WEHBvoVAaIIQ92rKbNIVvqhA6Z0S+Nws3vrFQJlr
         WOEJt9S7QdDqIB9Tw7bOaBYJdtXdJOIaXmTVTjEuoae21FUYP3LtGHs9RO8CZaxM0meT
         umOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vwTAa4tmX63YeJi4Ee4BS+d6MUMp1sB8Vqqyhclwg0Q=;
        b=VGBCHy9cJRQGrpayG0lO9EYQGkSHCJGJBlShvTN6Mhn0x8nkm9FhfL5i1taqARWSJQ
         vf7RAbaJ9li04jHeMCecVlrTbWi4BIxzt5zmPvL3aQNMfPWm79fkuLBgCZO+PDXr7EcU
         X8+yTT+rgQeMFvLSnklyEAQ1rCBh/CGgN33fcvM2sy+7Pxyc9rnm8haetaPVbexwilgt
         dn1duE/NbiRGyKZQd2og5iWy0PYS8/QN4iXTBqdo1n3oWRBykdxXV9Lxx/LcGablUwYA
         O4Yz+1yGXeD9HJN9GMNM+fRZz8WqaRBqKN8hG8+bUUk85YP+ENzQAL6KJSXMDhWo4zVd
         zxGQ==
X-Gm-Message-State: APjAAAWXw7bzVuMcX1+KhKTK1Mtm4Cu42riSLVRelnothMKtv1NKyWdu
	mM+jNiFDu9tUsl3B50jDJ44=
X-Received: by 2002:a9d:4c85:: with SMTP id m5mr9013268otf.367.1551990366418;
        Thu, 07 Mar 2019 12:26:06 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id l134sm2168452oih.43.2019.03.07.12.26.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 12:26:05 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 0/2] Staging: vt6655: Remove unused function prototype and definition
Date: Thu,  7 Mar 2019 14:25:58 -0600
Message-Id: <cover.1551990063.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset remove an unused function prototype and function
definition in vt6655 driver.

Madhumitha Prabakaran (2):
  Staging: vt6655: Remove an unused function prototype
  Staging: vt6655: Remove function definition

 drivers/staging/vt6655/mac.c | 7 -------
 drivers/staging/vt6655/mac.h | 2 --
 2 files changed, 9 deletions(-)

-- 
2.17.1


