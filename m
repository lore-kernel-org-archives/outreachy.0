X-GM-THRID: 6401819323480932352
X-Received: by 10.107.37.140 with SMTP id l134mr5807134iol.67.1490539742485;
        Sun, 26 Mar 2017 07:49:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.70 with SMTP id h64ls9172409oth.33.gmail; Sun, 26 Mar
 2017 07:49:02 -0700 (PDT)
X-Received: by 10.13.214.15 with SMTP id y15mr6078457ywd.100.1490539742147;
        Sun, 26 Mar 2017 07:49:02 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si1471004pfx.8.2017.03.26.07.49.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:49:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n11so5345259pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=jt9ID3JmkyLkrP381K8Fw/IaqGGraZhetUKlJwPRxbg=;
        b=lh1py4IgwAzcBjQIz4upwmOBbl3Oucp0xNSswDJ8PNea6woG1qwDK743NINLQGZn4y
         mB6gvmLpzMuzVthk1Ra7ehyq5at+/du4z9h7FkF5kYAxrDBZUWGfLTj8VGoj5gCh61JQ
         DtDmNRi+tA0sqs3sY17WjlStiANLWDc0JW9C5RG7Y5zI+Z403WO6Te9O0k0uKGRd/aQz
         DOrRoVnF6WYNy3Fhp/yu18pKw4hHGogCL0TzNYjXHW8Ikn3eXlqbOLfuVzJcAsHpDlCg
         T1fvbUrzJc8TY1KDmmf+7ltBPQvvY6Gk4UD9/jQMQ6kM498kOHy2TiRwfdLjTJqul9N4
         FYqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=jt9ID3JmkyLkrP381K8Fw/IaqGGraZhetUKlJwPRxbg=;
        b=hhyhSyAZQfn2B2OgKwRd2aI6znBc+Riv5zcq7VyOFKTh5A8+uBhUYiY0tp26/+9sRJ
         47uunhuF4wfGUY7qMoaHL7wEvvwXtF4rbTOBCc0DAcnLeE0VH6hClMqCym3wn8r2uKdl
         tz6fLO8UdilAxVS4YjTZd+mTiV+mjjQqXpfAHYeKov0WYTxeA7RKhl3L9X6BQxuPSVcc
         m9GOg6dppKJp0u89E4kfS5dj9BpMr4bAG8wIZtLsLZ+AuGTIW59b8Ty8mNxol27PG4+T
         /pqjdLgnU2lbcnIKntysrGXv8TzC6eTJ+SkTrkvizqBejTWbctM6CgB6Jk4HMf2AJxsl
         xSlA==
X-Gm-Message-State: AFeK/H0EJrCbEZRYF2qTPNzPaKmROWhvPw9dKgBhb72Yfnekkx+a5ty5TpVUs9Vi+V9RBA==
X-Received: by 10.84.129.131 with SMTP id b3mr17934164plb.160.1490539741963;
        Sun, 26 Mar 2017 07:49:01 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.132.176])
        by smtp.googlemail.com with ESMTPSA id d4sm15520148pfb.104.2017.03.26.07.48.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:49:01 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 3/3] kernel: pid_namespace: Do not initialise statics to 0
Date: Sun, 26 Mar 2017 20:18:15 +0530
Message-Id: <3e2cf57b5fe928c984307836551631a7277eba5a.1490539466.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1490539466.git.gs051095@gmail.com>
References: <cover.1490539466.git.gs051095@gmail.com>
In-Reply-To: <cover.1490539466.git.gs051095@gmail.com>
References: <cover.1490539466.git.gs051095@gmail.com>

Static variables are initialised to 0 by GCC.
Fixes the following checkpatch error:
ERROR: do not initialise statics to 0 or NULL

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 kernel/pid_namespace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index 18f5385..071ebd3 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -311,7 +311,7 @@ static int pid_ns_ctl_handler(struct ctl_table *table, int write,
 }
 
 extern int pid_max;
-static int zero = 0;
+static int zero;
 static struct ctl_table pid_ns_ctl_table[] = {
 	{
 		.procname = "ns_last_pid",
-- 
2.7.4


