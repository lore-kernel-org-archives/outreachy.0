X-GM-THRID: 6883926801253400576
X-Received: by 2002:a25:d794:: with SMTP id o142mr7525218ybg.59.1602789390440;
        Thu, 15 Oct 2020 12:16:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:700b:: with SMTP id l11ls86916ybc.5.gmail; Thu, 15 Oct
 2020 12:16:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx2DcTmcBhDfDAn77MQYObSrL5CxOvXDL0Jd7zl3c3ziy7N34BUEcpFo4j9lcgdPcpHtLj6
X-Received: by 2002:a25:ae47:: with SMTP id g7mr7673885ybe.110.1602789388859;
        Thu, 15 Oct 2020 12:16:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602789388; cv=none;
        d=google.com; s=arc-20160816;
        b=oH8J0xbDZDQhpJ6IsVBkrfVVK3dUW8AiVk9q3OLIP3lGDgh5mFdWnCq03RaFT1xuOp
         pBYFq3ixCApGT6L36K/IJurkaHycx+K5l9kXWRnregMGv4fOAf6iTeT7sJplFb0RQZCY
         fchruJPhXMVbxamETcRd2b+5fdSQRh+AbgaCUYdmWtFa2Bd7RosS2Az5iz0esKEFA21N
         4zVNTZl5+Pv4V7Ie4Y41V1CLD+e/w6gtrTvBAkU10v4sXLS8uxeM4W3xmCXKhOQiSC+V
         u37Nd3rA9smlIQV8WUvbk4zp/3tYhXXVYW5QfGkHGcG07WRoqLzU4/Jxj9P9fb5jHfR9
         dfeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Y6MCjkPtFhNpTqAY9lqdr3AxGr+5EpT2K/v0pKVTbSo=;
        b=eg9hamZBLlxbpgGTQKFQIO6cY6mDnLSC4ahnN8iCoMNdSl3fQkgNwagdgZpKiCwXMY
         L0NygtT9ZeBd2zJV1RUzFpfRXsmfKNlFAZatEzqH+apOWJl0tqx3mXWKXsXuQ3dn1NY5
         6mw4GM87WToXUyXJiBXP5lOcWyZjMWwptAhmhILc6kCieldjttxMLAsG+auj1wiO8zGI
         vTqlrjP/GcbvVhZUBZRf+ef+R3xjw4jzoZFoWeH9xKbg8SwaXuve6Nciv0eU1kB8jY4o
         icT9WjO5Tj7RHfTeqisfI+30NHlPWMYUu3OEWvwkNLCukAJIJD1QiBhKIqTBmcV99jHT
         8hjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZANQ66Ye;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id i4si18206ybp.4.2020.10.15.12.16.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 12:16:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZANQ66Ye;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id j7so2515523pgk.5
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2020 12:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Y6MCjkPtFhNpTqAY9lqdr3AxGr+5EpT2K/v0pKVTbSo=;
        b=ZANQ66YeJ0iZ4pSRkTV3ELsl1AoXbkCb+9PIifkmLWzuHUQCKBCjBxsGAusd4b28yt
         +ta13zBbGq5Gg2V1y3L5mFCsdmCcrI3uHZOgUA04bIAEaJVTbmi1PGYMpBmbhuwES6/2
         p+jGHRhsUb/RlsWEiqxae/KI84gR9j1Qxz/8pf7tXQoejwRRNFAYMCZdi8SEVGuvXSQv
         1l+gCqITnmKLHGJ6S8VbfBtkwm5FM3iPC5oK7ECH8JAKn7+VPy7CdRSLzM6ArkwR+1HG
         nhzVnePukQ2oa368uO7Coqq6UOv6CapEwTUQ6tVDhuNi+nvtAgyjb0HfIn/gBfpYosE1
         MS+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Y6MCjkPtFhNpTqAY9lqdr3AxGr+5EpT2K/v0pKVTbSo=;
        b=Q7n+aJWxA1aDnhXTEheSF/US+tDLKDUYw9DIRg39hsN4nvOENhb7+xul4ApM+8CQtw
         zIHXTVNvX5fHr5HkL7hdfFt8ePGNcct43nhfkXAB7YZ9vT9YIBOjmFFtVpIltqG8GZGQ
         7g6Amq8rHUwXosbGcYB/p9yiG4TQcM8VvIjmwS5Mlh0LBVvi+w+EZG5xJ7tSa1+ytWeR
         c6qdJhehT6XdDgJpeR1KkQW7MbWirfdLsFao7NZRkVjr31/mIw4HD2TiK1XOwL4Pahbr
         5t9B53x3Etgq//1IaIxTWIBbugJgTgdEsG5rvwjP/4bryc5CoBXlE5OszNyMG+Z0MGar
         8vqA==
X-Gm-Message-State: AOAM532NmOJYNnacedIu5z2686hsb0H3Zz0bhBD4opUxTg4laGKnOiiz
	n6/JBo9GGfQGnN4XpsVPyNZXTUTahoM=
X-Received: by 2002:aa7:96b9:0:b029:155:6332:e1c7 with SMTP id g25-20020aa796b90000b02901556332e1c7mr274883pfk.35.1602789387904;
        Thu, 15 Oct 2020 12:16:27 -0700 (PDT)
Return-Path: <sylphrenadin@gmail.com>
Received: from adolin ([49.207.198.246])
        by smtp.gmail.com with ESMTPSA id k3sm26430pff.71.2020.10.15.12.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 12:16:27 -0700 (PDT)
Date: Fri, 16 Oct 2020 00:46:23 +0530
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, TheSven73@gmail.com
Subject: [Outreachy][PATCH 2/3] staging: fieldbus: Replace snprintf() with
 scnprintf()
Message-ID: <d2f6183c5e3c333fc1667ea1d0223e8315a8d8ec.1602767114.git.sylphrenadin@gmail.com>
References: <cover.1602767114.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1602767114.git.sylphrenadin@gmail.com>

The card_name_show() method should return the number of bytes printed into
the buffer which is the return value of scnprintf(). snprintf() returns the
potential number of bytes that could be written which may be greater
than the actual length to be written.

Replace snprintf() with the safer scnprintf() in dev_core.c.

Issue found with Coccinelle.

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/fieldbus/dev_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fieldbus/dev_core.c b/drivers/staging/fieldbus/dev_core.c
index 1ba0234cc60d..a0fcd87a1747 100644
--- a/drivers/staging/fieldbus/dev_core.c
+++ b/drivers/staging/fieldbus/dev_core.c
@@ -70,7 +70,7 @@ static ssize_t card_name_show(struct device *dev, struct device_attribute *attr,
 	 * card_name was provided by child driver, could potentially be long.
 	 * protect against buffer overrun.
 	 */
-	return snprintf(buf, PAGE_SIZE, "%s\n", fb->card_name);
+	return scnprintf(buf, PAGE_SIZE, "%s\n", fb->card_name);
 }
 static DEVICE_ATTR_RO(card_name);
 
-- 
2.25.1


