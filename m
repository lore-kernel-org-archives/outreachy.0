X-GM-THRID: 6467951789613252608
X-Received: by 10.223.134.37 with SMTP id 34mr781040wrv.1.1506066773019;
        Fri, 22 Sep 2017 00:52:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.136.69 with SMTP id e5ls1199301wre.21.gmail; Fri, 22 Sep
 2017 00:52:52 -0700 (PDT)
X-Received: by 10.28.169.75 with SMTP id s72mr89915wme.21.1506066772436;
        Fri, 22 Sep 2017 00:52:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506066772; cv=none;
        d=google.com; s=arc-20160816;
        b=ojaGJKwNHlVoZ61ucBoekS+8KdLfsgp5XN02j2yJ0MJ4J+VTzSosbrdk3o/GZ3iCgk
         9DfxWvz9KBPQ1VcAn9k2BDmVP2dDE+pktJ8aboo5yIt5BOFxFLAYsveBAjRx7lg7XK3B
         bIHXzWzcAIe4IZ8ywtt+d2mdJRRrWZfgSYnX0skm8+2VbioBL47IvQmBxs347l3e5l84
         LOhhNZrilTKH5E2W/7rJTLJpfZ86UH5oCIUxqg4O5ARH2ZdtTyzbUuzzDbRPgxvhnUqY
         0nY8AoZEID+AxKdNhdu8CwibAe7wfcKtMIXNIASNR2sW5tV30xxW9Ai7CvJ2EihtnOqs
         fo/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=kCW0Nn9iuo3ggImLpzdllFAFc/Y7XaNcZ/p81oRFXqo=;
        b=MNHeZT3bBDrxJQF7zPv5txKvB4jg/NyQ8/szNM8oriny7TObdW8oVoViYYZdeUrF9O
         o2eJwSstTMCe89t4nesDFHqWNiqNUjF+J/KZNycSPgAq6JQrQcSMvIWP8T9ajZ7sRo4I
         bTCQN0I3ERFbBxpZHhoSwSkh2oyG7vPxLnIV5eB34MhM7Tn/4yU4rZpNyoUMsg40wVcr
         PMuas2PZkGSQfOTw7zfKbP7bjL5AvputWzKkeKJ3sD1s585iJ3liELhMfd0cGR4dNkFz
         e6okG3yROY5bCLVMnujSG2AFop7WtDJK/t/2/GNZEbbtiZiklt1wBF0Q6wvqwLMEamDA
         Xgig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hPS/0JYG;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id m74si245897wma.0.2017.09.22.00.52.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 00:52:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hPS/0JYG;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id n64so201208wrb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 00:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=kCW0Nn9iuo3ggImLpzdllFAFc/Y7XaNcZ/p81oRFXqo=;
        b=hPS/0JYG3u0T2aZtMm9k8RDaDyNYXqj7v8H9DbwSkHaZnd09oddnemoSMfMQl53QBE
         lnpbsM8Qp8qPOrGEoe8UkbcLnG3ld0mOcOoR0GvGV8jiPiBG9rEzbtPIjss/JdLx5IwM
         K5n/H/J1arJ85ihbs/8yDzum84ogmKp36yGy2Atm3A4w9q1CB/YvRce5cC3pt+AmvbFB
         KsqK/v1dGstnkcuYeYUtci7qWXb4MeXQ6ENHWu6QVs38OgO+qEYwTebXQGHzOuwxwB4g
         9lvaFdX6Y3h1KjKPOmTL8JFAzHJkUkvWyXYJfeyU1whI51T37Gc/EtkrtlgWNPDuBKE2
         BKBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=kCW0Nn9iuo3ggImLpzdllFAFc/Y7XaNcZ/p81oRFXqo=;
        b=YrKDl4iPRAoMzjvWruNwcDkhVnhwq0eflj/YMGb5WY3OmJmMvPhwLhCt2Kkps15OYR
         Nf8rFKCb8h6mMo75bt6LlDQajlf+4dVUm35gEihL+2A+saSOGXuomfkKak4Vn+oQHPJi
         bmpdXqEZ64OFwAn7iFa+HbimkQM3VWmo9gVbAptY3V4rUb6GAdOhKDUh8pbcPpdkmQn/
         hZPOiI9W8CyPAAUYbRaqVc5ASgt5djTE7+3VCJxsuSeKgd6JZYyhUrpTuT1vZVrEIm6z
         ZWpoQPsclZ7rjnK7RY0FRLuCM9GYrifkG+UjP+bupR70PGCxqTGXAiOH35kMwZcx9ThE
         ui9A==
X-Gm-Message-State: AHPjjUghEvJ7X/6xkoIovwcUM5gKdqfVFO35zc6L8b5Ry3ezE+yyiOYU
	auvzfksJ9ZKodwlvs0ZQNow=
X-Google-Smtp-Source: AOwi7QCpolkJydhDP5XrGWhSsll0wU0/axjh4sFwRIVrIo/085kjGZW7mJzVB+aSfafInJuf4TtFxQ==
X-Received: by 10.223.171.74 with SMTP id r10mr4301686wrc.86.1506066772241;
        Fri, 22 Sep 2017 00:52:52 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id w9sm1647749wre.58.2017.09.22.00.52.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Sep 2017 00:52:51 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Samuel Ortiz <samuel@sortiz.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/3] Staging: irda: net: Use NOT operator instead of comparison to NULL
Date: Fri, 22 Sep 2017 00:52:13 -0700
Message-Id: <2071308310d90259e294df86dd982f1e96b60782.1506065957.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506065957.git.georgiana.chelu93@gmail.com>
References: <cover.1506065957.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506065957.git.georgiana.chelu93@gmail.com>
References: <cover.1506065957.git.georgiana.chelu93@gmail.com>

Fix issues find by checkpatch.pl.
CHECK: Comparison to NULL could be written "!dongles"
CHECK: Comparison to NULL could be written "!tasks"

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/irda/net/irda_device.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/irda/net/irda_device.c b/drivers/staging/irda/net/irda_device.c
index 3501478..944eeaa 100644
--- a/drivers/staging/irda/net/irda_device.c
+++ b/drivers/staging/irda/net/irda_device.c
@@ -62,14 +62,14 @@ static void irda_task_timer_expired(void *data);
 int __init irda_device_init( void)
 {
 	dongles = hashbin_new(HB_NOLOCK);
-	if (dongles == NULL) {
+	if (!dongles) {
 		net_warn_ratelimited("IrDA: Can't allocate dongles hashbin!\n");
 		return -ENOMEM;
 	}
 	spin_lock_init(&dongles->hb_spinlock);
 
 	tasks = hashbin_new(HB_LOCK);
-	if (tasks == NULL) {
+	if (!tasks) {
 		net_warn_ratelimited("IrDA: Can't allocate tasks hashbin!\n");
 		hashbin_delete(dongles, NULL);
 		return -ENOMEM;
-- 
2.7.4


