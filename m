X-GM-THRID: 6669000631583244288
X-Received: by 2002:a17:902:288a:: with SMTP id f10mr4045459plb.101.1552820176901;
        Sun, 17 Mar 2019 03:56:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:6257:: with SMTP id q23ls5294292pgv.6.gmail; Sun, 17 Mar
 2019 03:56:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqws3svt0sSk3TpGa8Y6lUX5u6/UdG6oG9WqHxxp9lV9U8vJx0EIMPAitWTOJEyobucVckcg
X-Received: by 2002:a62:44d1:: with SMTP id m78mr1960866pfi.76.1552820176240;
        Sun, 17 Mar 2019 03:56:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552820176; cv=none;
        d=google.com; s=arc-20160816;
        b=J8kTkOS9X5J/8OqpIW2zvmSQmgOUBVdnsWqguMNJz0uGPbc1m50JVNj6HTTVnL7yt+
         3thAkOTPEal/TP4MbhJKMlEAmvWGlOcwKW25efmI/37yM33hTn8YocJX+bQp+KEF/ysO
         iPgESZ0BaAEeZDriVpbXU7lrqd/G8k84jCWuPuxulnGNzcSH0BtUkjE9YqgGVga6iWJN
         2PPHkE+MY2sfalbXyvhkmiAUqCYt1M8dF2iLxKgrTu8FxAfQZQqwudUf3MyXgV7HWTQc
         NUPd7oQ+SDbYYd8VBtp2U/SLO/ovhmDuurxGZpV74Rpg4gIk7cuw0HRPc8ml1EGL7084
         TYQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=9rY20vucNGtvVtzyBfC7nhiC9MSPk6WhE5FuzJzDfKQ=;
        b=iAV8sdDkFfWZHJch6PCAVJf6KCj3adk0CVwCtsadKUF3Z/pyF5SnCQT9kkRvnogJtF
         R/Esy2gV72h4ETgJiKV79Z33jp1oY0Al+yrZK5S1XplW51Cck2yCBdnca5lnfZljIUHo
         vwxp7MwWp6Rzo735E4Wz15YuIW1W0FMXdyWAE5xKDE6FOyNaKm1ZjNTeE5YA5exZgxIv
         lb84CwLenAc1aEJeS2IDLFlqnKyqDohEPKlgsKSvV8WIfwTo7ttqfPd5Fu/9vqtAa9uB
         fE97Zq8gu+s4gUy/5OYwd0+k0GOWkuUayoOB7OJbmF99DoVcXKoi2YCuP9Or1910CtLy
         53BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vC93O+vQ;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id e124si399694pgc.3.2019.03.17.03.56.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:56:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vC93O+vQ;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id b2so9387798pgl.9
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 03:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9rY20vucNGtvVtzyBfC7nhiC9MSPk6WhE5FuzJzDfKQ=;
        b=vC93O+vQJjYqzUbcdEORy0HSyhsuWh5GgQ8aRJMV1EtLnf36wZbAk4lznaqLtNxdmp
         yDWHS1E5tRHGow+KSs/sva+C84irn2NWMBCHkxrtI1csqr2YpXXQNA+oCfYcTIm6+5P5
         3tclgxhNphIDwoQZy2kRA8JupU4XJTr07OJQ319LZ7e4dcc8NtzHzM/GYQHfafAsSSaa
         HQ9XME0agmTlvFByUHrQ2kCjbLT/PqmSQpCF4eC7R2ZwkzVMprX8LBp41kd3uGz/E7K+
         AIa0a1YwEyaYcBgwtb6HlZlo4kbARht3ZBfynqDerdskYgk4K4dEXt9h/zi4K+jJHMmt
         /nKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9rY20vucNGtvVtzyBfC7nhiC9MSPk6WhE5FuzJzDfKQ=;
        b=BzVQ0MV5dPeeX5zK6IDZKRqWR30FnsPyn1fqeuiyFO88t4kVMzUyQTCYjnVOCm40Lh
         BiOV9aaElQ02mx8OWJ+r4WiC9IL4e/yJwOOtLAX/tkqbJcv3Jqlr1PkPjs58t7qID9xk
         71K0F9kIsN0IR988T+acJBVusXgOw6xykcoCm34tiDM+7Vub8LKatMt2nfogNUvgBgZX
         LQOFY61DsNryP3ALaYukknYRJli9dwirSjmYiQHslsK3nnMekhlXaAfiEbljN0ILGguT
         Edk5b/7m3vHQJmq3LGf+AZUPPN/oVVXT1gKiingDyliyPi+/v0W1Qq3tet+bpZTW3gP4
         lX8w==
X-Gm-Message-State: APjAAAVpH3T2oxtU+MCMmdy1gY41j/v32VfezeML7J7tZiUmY3M6P7vy
	XrY2Rv7Ql70IIAOvVFn524io4/+bgJQ=
X-Received: by 2002:a17:902:2903:: with SMTP id g3mr13884958plb.222.1552820175851;
        Sun, 17 Mar 2019 03:56:15 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id e63sm10278924pfa.116.2019.03.17.03.56.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:56:15 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v5 2/2] Staging: mt7621-mmc: Modify the return type of
Date: Sun, 17 Mar 2019 16:25:55 +0530
Message-Id: <20190317105555.5162-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317105555.5162-1-bhanusreemahesh@gmail.com>
References: <20190317105555.5162-1-bhanusreemahesh@gmail.com>

Modify the return type of the function msdc_do_command to static int
as the member error of the structure struct mmc_command is of type int.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-mmc/sd.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
index 8857cdb9dafd..049b312131a9 100644
--- a/drivers/staging/mt7621-mmc/sd.c
+++ b/drivers/staging/mt7621-mmc/sd.c
@@ -168,10 +168,10 @@ static u32 hclks[] = {50000000}; /* +/- by chhung */
 #define PHYSADDR(a)             ((a) & 0x1fffffff)
 #endif
 /* end of +++ */
-static unsigned int msdc_do_command(struct msdc_host   *host,
-				    struct mmc_command *cmd,
-				    int                 tune,
-				    unsigned long       timeout);
+static int msdc_do_command(struct msdc_host   *host,
+		           struct mmc_command *cmd,
+			   int                 tune,
+		           unsigned long       timeout);
 
 static int msdc_tune_cmdrsp(struct msdc_host *host, struct mmc_command *cmd);
 
@@ -535,10 +535,10 @@ static unsigned int msdc_command_resp(struct msdc_host   *host,
 	return cmd->error;
 }
 
-static unsigned int msdc_do_command(struct msdc_host   *host,
-				    struct mmc_command *cmd,
-				    int                 tune,
-				    unsigned long       timeout)
+static int msdc_do_command(struct msdc_host   *host,
+			   struct mmc_command *cmd,
+			   int                 tune,
+		           unsigned long       timeout)
 {
 	if (msdc_command_start(host, cmd, timeout))
 		goto end;
-- 
2.17.1


