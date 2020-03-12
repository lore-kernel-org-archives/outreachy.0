X-GM-THRID: 6803327190249242624
X-Received: by 2002:a02:6658:: with SMTP id l24mr6719307jaf.33.1584023048405;
        Thu, 12 Mar 2020 07:24:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:194:: with SMTP id 142ls1731426ilb.4.gmail; Thu, 12 Mar
 2020 07:24:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vscvOndY0Egp8GrBLd1WnqW8plOuwcTcDytm10E/rDAWL06ld8nwL7+MWmcsjDCGaMwxKgU
X-Received: by 2002:a92:1906:: with SMTP id 6mr8688269ilz.130.1584023047012;
        Thu, 12 Mar 2020 07:24:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584023047; cv=none;
        d=google.com; s=arc-20160816;
        b=NXHVPprFR+IFJSWy3UWArXkX38FumSM1TxpZvSRCYHYSosvE2p7Xc3gVD+S9AYW00n
         awl2AUVN0cDm0RjBHBMUwropVgqm43/dQb1wzup3dJuPewkvarS7UnJrou0VJEYvSo9m
         ivDAkGISTplbXTgx/m2Ek5Kkz/JobexiZwujZxpx0aIFhQzt8HzvW1QMXkfyg6qQO+e9
         RnalGfmt/6/aZkob2hY4NuMuWY74RNbtCFdBuXlTSZKY16h5r6JMIFxW3uZPzSa6MDmQ
         Hn2Ctn+jJav95fIo7B5yHMfE+YWwKqJjfMZx0VKcUdUnqF8lbIjtXLO05lX+ksLtPtVj
         y5aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Qa2UBcQg7FZzKASztJKI67glIJtb4cWSBfHvuZ+02+k=;
        b=Hrui3CYAu4qnX4cLakhukId85MDsr+Q7b67js7V7X7tAuARQn/TLDUY+xSqr1gt1uj
         sUKUNxAak0LrS9VyWLsZGCXm+oepLp3UL2SjOCWfqKD48wJsqXWQag2pOskvD1CsY5uT
         olsqXAL3nvw1sTTd6+tv9i0j4pnI9mYVa7mfsV6CtSbddvjXDXHqViQavxWe0Vnldf52
         8XGwxmUL9tcC2a+8IRbBEfAGBSLkpgQnIsy+LggG3TyEmVnNDvlyytz7I5nmA1YqUFVG
         HmvgWDOgXGrvlFvT80XuWquKkv6tWd0c8N5Y7M4/FERX9U4VXjAXwWlRiC86tk4tqNpa
         C/ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qQz6RjT4;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t10si275128ilf.3.2020.03.12.07.24.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 07:24:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qQz6RjT4;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id 7so3165383pgr.2
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 07:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Qa2UBcQg7FZzKASztJKI67glIJtb4cWSBfHvuZ+02+k=;
        b=qQz6RjT435bDGVYUC19N4JdatJ6j7QGb1nsUVvRUP0lr3OJ9GO9PtCfVPioDBDIWsw
         P8VoexbaXI9cFZBw7qgHz5HnRNRtsRbG1HEMhhdNncHVIyGCentpFDw1NaRVe9JH0sti
         6RQIcwVX3zetCz3JfYfrhazVoKzjF5wPoWTtQxL+D4tqrfWIJ4se++y+aV6BbTvLvvJI
         aI2t77jI62g2dGez1i8putobVtUO5bCEWm9A75BJOqqRzUUkZtVTPdbImMyiEnWvpO8A
         PImIAkA/HczxXzj1Q0Z0Bc3F0gsOd5DC3HIbkFMc/a+fPGXuOwyeaPwvwRQqcLdasDiJ
         5qXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Qa2UBcQg7FZzKASztJKI67glIJtb4cWSBfHvuZ+02+k=;
        b=QGtuzEtsPspIFRcCoXyDkFgsYr6Z+TdlDzMxEfTYHBKjiknjdKqcLSaqRDPyZl/2Mb
         elMEbfZtkFWWgY8zJPt1i5wB7/jiDZwTFcmeAYi0eHizQhqN+SrBPsV7sP6YPOcn6Svy
         RQpcT6hVOibNTQq+DXvotcwszPYBkiGHPZZ/q/5rPdgGjTh98JBVufSGb6VLh85iS5+/
         ev9zjlJxcLiZAOPg3Li129S7lFHI05QAyYGFsvVhBxoTdqwxpJdbCnpIWrPdCCh9kGnM
         Uro6dOv7Zb/wfupMua6YZyDqOq+Ee/Y9NE/IfnLdAsd08U5/Pp7VjVbS/w2V6OW8IbAX
         GaZQ==
X-Gm-Message-State: ANhLgQ31BVPPs42xSA6sPnzRcu+3+Z1zSYmE1dAm1gq8VxEQDD3mPtI3
	lnwFcfyJydKXyoGGHCGylNBVC/ut
X-Received: by 2002:a63:1210:: with SMTP id h16mr7985819pgl.408.1584023046130;
        Thu, 12 Mar 2020 07:24:06 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.39.128.28])
        by smtp.gmail.com with ESMTPSA id y4sm26217871pfe.31.2020.03.12.07.24.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 07:24:05 -0700 (PDT)
Date: Thu, 12 Mar 2020 19:54:01 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH v2] staging: fbtft: Reformat longer macro definitions
Message-ID: <20200312142357.GA29468@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Multiple macro definitions crossings 80 character line length nakes it
hard to understand. Reformating the these lines makes the code more
readable and easy to understand. Issue flagged by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

Changes in V2:
	- Update patch short description to avoid confution with an earlier patch
description.
---
 drivers/staging/fbtft/fbtft.h | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 5f782da51959..81da30f4062e 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -348,9 +348,17 @@ module_exit(fbtft_driver_module_exit);
 
 /* shorthand debug levels */
 #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
-#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
-#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
-#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
+#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS        \
+				       | DEBUG_TIME_FIRST_UPDATE)
+#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY   \
+				       | DEBUG_BLANK | DEBUG_REQUEST_GPIOS  \
+				       | DEBUG_FREE_GPIOS                   \
+				       | DEBUG_VERIFY_GPIOS                 \
+				       | DEBUG_BACKLIGHT | DEBUG_SYSFS)
+#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE     \
+				       | DEBUG_FB_FILLRECT                  \
+				       | DEBUG_FB_COPYAREA                  \
+				       | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
 #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
 #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
 #define DEBUG_LEVEL_7	0xFFFFFFFF
-- 
2.17.1


