X-GM-THRID: 6466352868892868608
X-Received: by 10.99.60.17 with SMTP id j17mr17140719pga.27.1505570380611;
        Sat, 16 Sep 2017 06:59:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.33.214 with SMTP id e205ls2729189ita.5.canary-gmail; Sat,
 16 Sep 2017 06:59:39 -0700 (PDT)
X-Received: by 10.200.35.43 with SMTP id a40mr15242411qta.33.1505570379871;
        Sat, 16 Sep 2017 06:59:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505570379; cv=none;
        d=google.com; s=arc-20160816;
        b=myNeCSe6bwohErRhlfXCSdjs8yIXHFyahsA3mYjcSfWu/wn+w2PZaF55GIY+WmnySt
         ML/QPbk+xjlDRb+FBgLzzEBKySYJJk7/NPa3JEaI/FhZ31cdJ+dOmUbQd8xLgaE42TAY
         Hj5+Qg0hdn0Sd6XH+pDM8Oys1RpPWEhyifUwY/RFk/MbSw1FbYPSz49stH/ETSrRtGTV
         oeN1hZyELU28H/TcqzFYcswdi2ijnCdn4MKPsl78LUaWJ0S8QdI5IkZIsmG5HhvMVJV0
         qe7nAnmfHCU7fBHYshagiiFYz5sNrS1AV8emfvaUyA2qjp6RtfQ3nWQm2An8AL/97gjp
         lYDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=BQF6JZJDY6HBaMwg3giEuyj8wdDUenTWMqcPnbvkc/o=;
        b=zFenzu2pafqOaAjeT/B2t3gTxjeM6pYUM5A8aoaVdKL8HhXUudRpkMJhHtGgxXm/0L
         Y8D2b55Rn7d9pVZF7cqEjRA2M0IBDU7fl3xWskZgkY/g3LWWTXfILvtcFcDmkG9tULt0
         +IHjBCrb0GMXr/SY13Cnr2ZP2xn4T+c9amduv7h/jCBxMwDE4QnXtsYoG3BFGtvxCTN1
         eD7N6mkC45IBwufIonaUYSpcsVJlHV1wa5UmPcl6U+btnIpK2g2irA/gNvNh6+9K7kgy
         Kjs3a3/a4B6qpRNl1fqU/SA7A3UIKdq9wmmcRQvy6+c7g+t2o1M5HrwIyZeFlyG9PkhD
         DgwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aq4CrOsX;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u184si316090pfb.17.2017.09.16.06.59.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 06:59:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aq4CrOsX;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id m30so2777751pgn.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 06:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BQF6JZJDY6HBaMwg3giEuyj8wdDUenTWMqcPnbvkc/o=;
        b=aq4CrOsXXlOTb+ckLJiFxPzqXJ0VQnjz6u5xE0iN/xvC/DxQWTKmVMmYY9S7jRYonq
         yHD66lqWSvuaQt4dhmu0CbPi3nUFbkK2MC+WXdS4ViAwCIChrxtzkG1DMC/QEl8hAY31
         0HHkpJ5yUAaE7Jzqe/XYk9l++jpWzZJx1cui9wW35qAcssrnFSUABsjv+WCK1vK7Wx2z
         uGVrtoUCmE6kfC8+dHDdcyzkIDns9CUuTdSBSJBCmEJNxys73ECUAozR9a/VLr9AmTlW
         sHFRlQapOj/hTt0jXalTjsnMScEhkRHuUn8h05VYEd8blo0/6GZWLgqKbGYScTM2AG8b
         E0SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BQF6JZJDY6HBaMwg3giEuyj8wdDUenTWMqcPnbvkc/o=;
        b=sU5l8qtO4LWoa06NjGcNhSrZ4qFSZSNx5eg/2x6wJVfzv9GEId1Gq8C2aOnEao/wh4
         3V6QqWgIaZyTRkscxZbLWpGxMovju+1IWf4SWCZQ75wsY+7xFYixaSi9m3+fABqIIWDL
         DdXpr/C1vrYt6eXfPdLv8ryyudbWi9l4PsEVUs2/23A/yLWp0neyVZKCBOeB1fjAf+/h
         9PvMw7F0XFqz3KmBVXfOqJp1c0AK667PpMDSIXkwsrGpNDncrjdSuHcWitsfUdmagsBK
         CdPNVohNyKh5xZNGXrDZrUSZwLSZMfTGlXHWMD8G5aaIZSN3NJWa9/m/meEpgC0NAZT8
         yCqg==
X-Gm-Message-State: AHPjjUiT7jq8Gy6XorckGia9bB4o/ndKJRs2kpgVIqMl68lITOtfIj/0
	PgwbhTD5Bo1vAOB2q8E=
X-Google-Smtp-Source: AOwi7QD0eI1pDcAYjMfha6qhT8c+0EugqPosudqaEVWLEXrqVCJtJ7xjzIELQfR/wyJERlRyux0MHQ==
X-Received: by 10.84.210.105 with SMTP id z96mr9499487plh.325.1505570379536;
        Sat, 16 Sep 2017 06:59:39 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id a18sm6317738pgd.57.2017.09.16.06.59.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 06:59:39 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3] staging: dgnc: remove variable rc
Date: Sat, 16 Sep 2017 19:29:33 +0530
Message-Id: <1505570373-20094-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

Found using coccinelle script:
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
changes in v3:
	-aligned call arguments to nearest preceding tab
 drivers/staging/dgnc/dgnc_neo.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index 1943e66..0ae229c 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -1182,7 +1182,6 @@ static int neo_drain(struct tty_struct *tty, uint seconds)
 	unsigned long flags;
 	struct channel_t *ch;
 	struct un_t *un;
-	int rc = 0;
 
 	if (!tty)
 		return -ENXIO;
@@ -1199,12 +1198,10 @@ static int neo_drain(struct tty_struct *tty, uint seconds)
 	un->un_flags |= UN_EMPTY;
 	spin_unlock_irqrestore(&ch->ch_lock, flags);
 
-	rc = wait_event_interruptible_timeout(un->un_flags_wait,
-					      ((un->un_flags & UN_EMPTY) == 0),
-					      msecs_to_jiffies(seconds * 1000));
-
-	/* If ret is non-zero, user ctrl-c'ed us */
-	return rc;
+	/* If returned value is non-zero, user ctrl-c'ed us */
+	return wait_event_interruptible_timeout(un->un_flags_wait,
+					((un->un_flags & UN_EMPTY) == 0),
+					msecs_to_jiffies(seconds * 1000));
 }
 
 /*
-- 
2.7.4


