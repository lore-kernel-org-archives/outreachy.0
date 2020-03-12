X-GM-THRID: 6803435195586314240
X-Received: by 2002:aa7:8618:: with SMTP id p24mr10422532pfn.3.1584048370635;
        Thu, 12 Mar 2020 14:26:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:3851:: with SMTP id nl17ls42717pjb.1.canary-gmail;
 Thu, 12 Mar 2020 14:26:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvlCGfOpxGn8jRH/jlP0F6SClVJFGPm58ihkRM/q9lWv68BYewQUA77jSez05UNhlZM42Ic
X-Received: by 2002:a17:90a:5205:: with SMTP id v5mr6397572pjh.0.1584048369283;
        Thu, 12 Mar 2020 14:26:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584048369; cv=none;
        d=google.com; s=arc-20160816;
        b=xcJDDzRclA0UlzGGI8rMhb4oQQYZxumisCAGA9LxE7tVfOX68W1R+mJkbCcvvN9iWn
         +p0r/9VdNFLo6HuyU7Kp7fpNnkmE3J1RyhH6HADHLUnYl18sKGmiQoFwRshRcTJmY1tS
         /mzD6NYRXwAJXf4e1CRpuDb4nGZgMS3GB0H6TO/QncWSqJAMd4XYGxHb+WgIpNm+OD6e
         B/hN6NDGWPnVG/mA3UjHZ3RIYB0jfaTwhoOXKiLa4LLz7lhXMu/PDWRwP+6wXLTzr2Mo
         3eGJWcsSrpvdsPuXk/e6oKdjRVi8cUfveNkK6YNcw5EMfNnBUTiAwmkqzcxjKKE/6ww6
         T/9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ns508hdxBnjxtyvOpbktCLhSr73OU1C6OQfG1TDIOAE=;
        b=HQXWRtvAyoGkMdXmjtCsUAEMEvkjkj5ss0SPeD+pYVDLk4S/rLO8AhukYy4CgvNJxR
         DmJ3v0tyyLWnS7QWmyI+Sl1+xSSe7/1NQ8LOKgGuPwh+kQQ2ws2FENw2JOQ8rTwUDb1k
         S43SliIRFbeurYFA9UaeN4h7HRE+buuRGzZ0kooPh0hV3Y7qga6UwM6r8idheREn4t66
         Kx12g1Z9ISddnobHpxzGO1L681nOuy9IHybkDDkyY5sw9vuFu2oeND6g+tA9Cau7R7Ac
         2ihtO+0ePJ+SeXRJgwgVjF5T/crT91GLBZ7pWJtQW1my1Ln+u2Wyb5tqDd4bNFaPzvtE
         nmnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s0WZGaTU;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id e2si427184pjp.1.2020.03.12.14.26.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 14:26:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s0WZGaTU;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id b1so3691252pgm.8
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 14:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ns508hdxBnjxtyvOpbktCLhSr73OU1C6OQfG1TDIOAE=;
        b=s0WZGaTUNz1tGNTZ1ImieFjWLYCLbrrRYkGflaePavptSRYVkxpgNrHISn279+CXM2
         syzPwLX1LIjpkd7uwGRj3BreTJfMqTBWtGxlM9oKMeHd0YKjG5U+m2wXymhZVhHbSsqP
         aAZhHAmKBHOHalbsZ6oNTVwp1QK4AjWUg08VfNSUGk1P31nca3WadhR6eMtpyRv+ZvdF
         1rVUAK/1Gk7TMJ5ekaETTpOwaJikouODptFWNLL8JGidJ6VXqfzCaj8TrDgwQ7Hovwi8
         wrYhaSYZkSvTK9dIjFaDLU7shBGm98aknuRFYxbt7vkIlIAnZop7RBBc5l/Qd2EXFlT2
         Da2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ns508hdxBnjxtyvOpbktCLhSr73OU1C6OQfG1TDIOAE=;
        b=ZSteE2bLsq58+GL0Sl5kJhuK/xp8GExXoQg2XrtmwT2Ch710dSD5UDSFc98Hmecn19
         4pXYIBqDa1N0qWYnVWI6YGnBfSOhCw5w8olKwB0riM2rJ+ycuBqn5zCU38UM+ZeNxXQI
         ezS5o/YGB6pVG2HYWyVsdA0wBz6DgbmoVag6X5aD7i5AooruRplir5pGn5bkr2DjrAHB
         lgZ3eTvOZzsPdIDtcViOIW1v10aHgl01Fu59+6ekWIBha4BXV39pnofTKmzB2xH7J22a
         AOUbKeXRjYLEwfDeyiNLvxxq34eO+ZBtaPdNFJStzfEJszi63csJ+M3hLzM0D+mId12R
         v5Wg==
X-Gm-Message-State: ANhLgQ1NOsNPxlB8maXjJNlvXIpdubNTcgmBFIjJ0CUHUmca3FZL2si2
	14cyrgXAhE4yMVkGKGOiP7h/w25m
X-Received: by 2002:a63:4c5d:: with SMTP id m29mr3499150pgl.376.1584048368845;
        Thu, 12 Mar 2020 14:26:08 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.39.128.28])
        by smtp.gmail.com with ESMTPSA id p9sm9654170pjo.28.2020.03.12.14.26.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 14:26:08 -0700 (PDT)
Date: Fri, 13 Mar 2020 02:56:04 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH 4/4] staging: fbtft: Resolve likely precedence issues
Message-ID: <b216292fa529e2586d0a7e17cdd6fbd19cbb9235.1584045569.git.mh12gx2825@gmail.com>
References: <cover.1584045569.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584045569.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Macro fbtft_par_dbg uses arguments supplied for dereferencing in the
expanded form. It can become a operator precedence issue if arguments
are used without proper wrapping. Putting arguments within braces and
then dereferencing would avoid operator precedence issues. Issue flagged
by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/fbtft/fbtft.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 81da30f4062e..76f8c090a837 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -406,8 +406,8 @@ do {                                                         \
 
 #define fbtft_par_dbg(level, par, format, arg...)            \
 do {                                                         \
-	if (unlikely(par->debug & level))                    \
-		dev_info(par->info->device, format, ##arg);  \
+	if (unlikely((par)->debug & (level)))                    \
+		dev_info((par)->info->device, format, ##arg);  \
 } while (0)
 
 #define fbtft_par_dbg_hex(level, par, dev, type, buf, num, format, arg...) \
-- 
2.17.1


