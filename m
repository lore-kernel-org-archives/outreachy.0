X-GM-THRID: 6613205640541110272
X-Received: by 2002:a02:1512:: with SMTP id j18-v6mr20746272jad.17.1539756925368;
        Tue, 16 Oct 2018 23:15:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:2e83:: with SMTP id i125-v6ls172815ita.2.canary-gmail;
 Tue, 16 Oct 2018 23:15:24 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63OTGbIYvioCyrBsguvXR6QNtGz9Na++GJKf83ZR1BxwlJmfwargnUgtCnhC3L3V0VHURke
X-Received: by 2002:a24:8903:: with SMTP id s3-v6mr744718itd.26.1539756924550;
        Tue, 16 Oct 2018 23:15:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539756924; cv=none;
        d=google.com; s=arc-20160816;
        b=aMCy/a/EGAdXvpTnunGYvcsPL9rp7tSs6g8MegbUV+LWqu61g+TjazdOApruajt+W5
         a2Vx92q3Vt4r/1SdCuaoGR5+OaIBTbHa3hlu1/N9v+lNkW21oSToBWpRzgDQKLzEln9R
         bkTQ7y6U3sY0QXikqCI4O2xzJsvH3s0sGvj/QOBZUTZEeMD7J1A8NXy/iqhrR7V/vBHd
         57d++mtiOXn00n4NQ7jcEguTzDm4me4LaO9CLkszvFWDTk6tuRQsGDnrzw0TFQMYYThX
         /CuofgO1dSmYt6djtjMSzP2X+BhOB34XnBAONksOg/+4LDYEhBOyasc+Ya7wETweqOUS
         u00w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=lvvujzv2ox/Xcc7+XfQnX0SfHgPTEHC40HW5C7mVXbg=;
        b=D031Cq6oLL66LsAC95Wy1uC+wAoBv6RTByv+4Jp/mwa40+igX+GZw6W6GVdBTeIU5E
         dzCREL6Hq7s3BVOYJFiYNHFYxpkV/UNCBuKbOwfTq85I9+o4PyJRTunXkp7ZP+j2Ofju
         7kwzjAn3dDu8bVtO1UcCgNBrr4nC6PcPaY/GGIxcEQJ6Y3CTiKQqTIBLCr3wIj+Lpj7Y
         Il/SeEwsS8ifc//1lh+wcPIOH0BEaxihnY25YWcqkeIqXTAZj43l+4mMF+LYi5wq4xrS
         foQPdbr2lLNuMUTT1n7d6m7vBI/YMOh5LK0G8hcVVzA9yw/28yrBvqoX8hoOwxJJVYA7
         6uiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CHLtF1s8;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id b69-v6si16278itb.4.2018.10.16.23.15.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Oct 2018 23:15:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CHLtF1s8;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd41.google.com with SMTP id n18-v6so18105301ioa.9
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Oct 2018 23:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lvvujzv2ox/Xcc7+XfQnX0SfHgPTEHC40HW5C7mVXbg=;
        b=CHLtF1s8HY9vlvDRqC5GXnKY6cyA/YUvwPvinsOB0nhBULl1eq5bAuaMmhKEeGoB9c
         KkkUC21SLGePWBaRpG9V98drwQzuxdG0RXOsRrEGuzmmEaVY0yHb7q0siYamqKt1rVrS
         2yn2liY2d2nrIjD/yl2fvKg3Xgf3tsiEXLLgcUsDzr4didLvd8zkYiZ6WZ+LAIYCH2fk
         wCqlkFkXFwhmY+9bj3Utx0hu9C6mPF2gd62Rb+wwZCCN4u4BJwqX6rqndM2XrAJAUkm4
         a3NirADaV1MHyhqLKAo8gR6fPQ6t9OzUosSE2+icJNM8ztZjyy942TnR23iG6JYJQtDi
         YFjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lvvujzv2ox/Xcc7+XfQnX0SfHgPTEHC40HW5C7mVXbg=;
        b=refoAIZq8KvQUx8W6Rld+BEXi2z/BLSzIt+PxDVbHC10CDEb2lBGlZsdlhVP/kkEoI
         8nax5UkSaGlJNoNuis/t25/TvBZvB0N1S6bcbZJBQXK0ZbAmsP/omh1fiXQl27kdWOkz
         Mea15BiotVPoTgxgtnQ37oPMsMxX2JfH2XqnkMISQiNl0PnqkxOgwOePyDnyrS1ZrKlr
         9PXRXtKIYMkhfZkoxT8r8NdmXVcLSZ4V3GV9RupKecbV8gnzbtrD5RHYikSZGvWi/Snt
         C2sK5uIee3IdSwjbeNAsugwOpDI/6/B/DfeK7DjmhME0RyS61SwyzO+nyyEchzgjoC3n
         wezg==
X-Gm-Message-State: ABuFfoivH8JukiwVuUy++DKYAJ3iP+/fOYpJB8lmtue7WYbIFApV5c6s
	y/nJxUSbMq70btN6aS8xgpqBR1lex5U=
X-Received: by 2002:a6b:bf43:: with SMTP id p64-v6mr15304040iof.41.1539756924187;
        Tue, 16 Oct 2018 23:15:24 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id d134-v6sm4422319iog.84.2018.10.16.23.15.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 16 Oct 2018 23:15:24 -0700 (PDT)
Date: Tue, 16 Oct 2018 23:15:21 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: gasket: Remove extra blank line
Message-ID: <20181017061519.GA3289@k-vBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove extra blank line. Issue found by checkpatch.pl.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 3c7a13a4798e..0578bf1ba1e9 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -225,7 +225,6 @@ static struct gasket_interrupt_desc apex_interrupts[] = {
 	},
 };
 
-
 /* Allows device to enter power save upon driver close(). */
 static int allow_power_save = 1;
 
-- 
2.17.1


