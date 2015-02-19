X-GM-THRID: 566645227520
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,aff877e338498959
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.178.234 with SMTP id db10mr332633wjc.2.1424325455382;
        Wed, 18 Feb 2015 21:57:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.78.101 with SMTP id a5ls996812wix.6.canary; Wed, 18 Feb
 2015 21:57:35 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr452593wiv.0.1424325455137;
        Wed, 18 Feb 2015 21:57:35 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com. [74.125.82.181])
        by gmr-mx.google.com with ESMTPS id ew5si8957323wid.1.2015.02.18.21.57.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 21:57:35 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.181 as permitted sender) client-ip=74.125.82.181;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.181 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesp10 with SMTP id p10so5293264wes.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 21:57:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=wh4IYR8rXupnmpCK++8DY0RoRSBN/R4GEAhDOMUbtog=;
        b=YQK59RCjtCmJYXp/Iw+WfXlDXItG6OFObEtU4AAnWgbSZRHM92eX2xn7kfAyCW7cOm
         0INTb08eeyEm61Nz6rMbZzb8nJjr2dLqF476uzHS6VAm2O4Y36bDBkfj1zzfkDTeD5VE
         hfTC1uihSgKhkeo1zfhExyJKcHaDS4nB6KoL7L+NKremN4FoNbFldEAji2MWAZU+C3VX
         MyS/+qUKIbWhX6h6C1ORNZh2HkvL4OjZeoaEkjGK9loJCjFZiTHX4ipsMyxJE9SXLu5f
         Y+hha4VMSnRYN8ajuAPUUM5hHsn6HwxfCLqIF/sk6I/4P+qSYFx1HL9J/tW/iI0nT1MC
         FRvg==
X-Received: by 10.180.73.205 with SMTP id n13mr3230951wiv.64.1424325455075;
        Wed, 18 Feb 2015 21:57:35 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.198])
        by mx.google.com with ESMTPSA id ax10sm35801033wjc.26.2015.02.18.21.57.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 21:57:34 -0800 (PST)
Date: Thu, 19 Feb 2015 07:57:25 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] staging: dgnc: replace init_timer by setup_timer
Message-ID: <6363f9b9ec4ffdc70c46ba07ac835295e65172bf.1424324574.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424324574.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424324574.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch replaces init_timer and the 2 step initialization of function
and data by setup_timer to make the code more concise.

The issue was discovered using the following coccinelle script:

@@
expression ds, e1, e2;
@@

-init_timer (&ds);
+setup_timer (&ds, e1, e2);
...
(
-ds.function = e1; 
...
-ds.data = e2; 
|
-ds.data = e2; 
...
-ds.function = e1; 
)


Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.c b/drivers/staging/dgnc/dgnc_driver.c
index f177d3a..5d47c61 100644
--- a/drivers/staging/dgnc/dgnc_driver.c
+++ b/drivers/staging/dgnc/dgnc_driver.c
@@ -285,9 +285,7 @@ static int dgnc_start(void)
 
 	/* Start the poller */
 	spin_lock_irqsave(&dgnc_poll_lock, flags);
-	init_timer(&dgnc_poll_timer);
-	dgnc_poll_timer.function = dgnc_poll_handler;
-	dgnc_poll_timer.data = 0;
+	setup_timer(&dgnc_poll_timer, dgnc_poll_handler, 0);
 	dgnc_poll_time = jiffies + dgnc_jiffies_from_ms(dgnc_poll_tick);
 	dgnc_poll_timer.expires = dgnc_poll_time;
 	spin_unlock_irqrestore(&dgnc_poll_lock, flags);
@@ -731,9 +729,7 @@ static void dgnc_poll_handler(ulong dummy)
 	if ((ulong) new_time >= 2 * dgnc_poll_tick)
 		dgnc_poll_time = jiffies +  dgnc_jiffies_from_ms(dgnc_poll_tick);
 
-	init_timer(&dgnc_poll_timer);
-	dgnc_poll_timer.function = dgnc_poll_handler;
-	dgnc_poll_timer.data = 0;
+	setup_timer(&dgnc_poll_timer, dgnc_poll_handler, 0);
 	dgnc_poll_timer.expires = dgnc_poll_time;
 	spin_unlock_irqrestore(&dgnc_poll_lock, flags);
 
-- 
1.9.3


