X-GM-THRID: 6466355648618561536
X-Received: by 10.31.174.215 with SMTP id x206mr16713487vke.9.1505565747971;
        Sat, 16 Sep 2017 05:42:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.213.130 with SMTP id a124ls2906518itg.3.gmail; Sat, 16 Sep
 2017 05:42:21 -0700 (PDT)
X-Received: by 10.159.242.199 with SMTP id x7mr12434431plw.16.1505565741428;
        Sat, 16 Sep 2017 05:42:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505565741; cv=none;
        d=google.com; s=arc-20160816;
        b=oTsRpsGOsajzBAJgQOJvRj0fV1MQ/0xwrOAiPj/teLJ8SnE9WWwooXenL/T+uZ1lg4
         JbFxuKr7TIhsQI7Ke1XziY7R9Ub2VFpXvPtuhxP8KyZimumPF6QUV+ygiRt/vSN/IdfG
         oDipXwDKi1sLJkLF/p5HMIJWpCw0gk2EsjuMY+3ikdy7pgQk6DCuUf6ojyVvTy2dOije
         Z7uIl3srKvc4uKl+46/cLYnI74iBOh8IGR4XfK5KmnYuuzUJ8Z+wMQ0qp4iENnQOeJJ8
         wxMxUawjM/4MwB6agTXxrcb19K8w3EMcBB/UIKbSP+DcqLwREBX1LZD75kkDk98YBHk1
         RgVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Ic18E7J/rKePZ8rX1l8AUqoJBg8iZDN9mcnEI01SAmo=;
        b=RZ6o0/3LrUHJJSqKWxO003w8Aq1EYonKDPhxoOlW8lOtQgdIYGUVjI7npIlyYNHiRF
         xdnRUk9NUcmsYvwHImtOsWg20MJLkRQvcKIlSd2w7kEFF6/AYCvq8KeEe9qPVPwUS/72
         DwjkIAhNKYhKqE35awDoo2hJWXZpHk1HlPYFU+fvGu6v/r4UODJXICRsdcn8UCg8lZ/u
         baF5EmWnMMSR7MckkflWRtAev0sSnIPIawx+Db2vc7mZNehWZfFvQMlb4F9EqM+cZ7tC
         RFMCAJR4u/SbLgfqQFjIKz3Xd+hGflT51t4L7OTznooQQiIJNWad9k4IwlGwW+ubMH5I
         RdjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Le31jock;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id s81si322696pfg.19.2017.09.16.05.42.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 05:42:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Le31jock;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id d8so2713995pgt.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 05:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Ic18E7J/rKePZ8rX1l8AUqoJBg8iZDN9mcnEI01SAmo=;
        b=Le31jock97++jcriTEhmh7BBkxiT8GkNG7TMjvnhhXMpC/WKzIYWP1AORj1eDDvZ5L
         sSVMUmGa05sOOHMqtDCEpnGoPcR3d+Lt4qqH0ZDhmqaj+lm1DLirrixBCVB4cBdFE+pP
         M8BMczcISMd9cDEfFEATKqNY66Bdv5C1zDen3ojSBgLrDqRfcGzY1vTD4pRfbU3bA0kg
         kCja4w89yX1S35esE/flVJneGELcFqYZ5ylWYl1RQE28bG6fOUUP93bf5S4JKPfZniyZ
         Qye2ET0+iyrqlGUne+yVjxr+IFVS1oy6ff7CMcNIBnkOb64dlg8Wq5xFXK+ZArRnd4/R
         NiHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ic18E7J/rKePZ8rX1l8AUqoJBg8iZDN9mcnEI01SAmo=;
        b=WJFnWysyQ6k2mHebMFcKbnFOO3pG5z7AVvPTkGF99zqXyA5MCy2IMfuR1ecWZhDcCT
         HOM5HKDRHflS+aN6ROQMcEw0p9FkwquD+DSK84shCSFYTudfmowMo6L56LjMfoIYodjB
         DmQsy0fgfQta8dOVLvYxlxmyrKUbfu1OFoO2BjrmgIRTFxv2o10fRgaPi00+Ev7MD55t
         iAFiEucERSs9bMe883RSSUBAUTHIwxOtsRAtKvoLb/C3vFFoEHHyTMkv3sS++sbN6XlH
         d5oDUVwLUmVLvZ1LW/mvFoanlPn3QNOlB3OaNrtfqFcrNDa/uN8J+gUAIBIvNpOwiiqo
         ommA==
X-Gm-Message-State: AHPjjUi7ZYaXvp/oX84wToXW7PrLRzLf02UYsBrN2pHAuBGtZSaPUAfQ
	W+Mi41+QGr5lLQ==
X-Google-Smtp-Source: AOwi7QBTE35Q0A2FG157xFRHRtUtqLv6InkoQJhGStCoUg/o9+QFpbVSQe8LiPSG+SUe0Pt7COxDSQ==
X-Received: by 10.98.18.215 with SMTP id 84mr2619268pfs.42.1505565741157;
        Sat, 16 Sep 2017 05:42:21 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id d4sm6366394pfb.185.2017.09.16.05.42.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 05:42:20 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: dgnc: remove unused variables
Date: Sat, 16 Sep 2017 18:12:04 +0530
Message-Id: <1505565724-11498-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes some unused variables.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 1 -
 drivers/staging/dgnc/dgnc_neo.c    | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 764d6fe..d69d9c0 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -233,7 +233,6 @@ struct device;
  */
 struct un_t {
 	struct	channel_t *un_ch;
-	ulong	un_time;
 	uint	un_type;
 	uint	un_open_count;
 	struct tty_struct *un_tty;
diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index a8491d7..0fa4267 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -1182,7 +1182,6 @@ static int neo_drain(struct tty_struct *tty, uint seconds)
 	unsigned long flags;
 	struct channel_t *ch;
 	struct un_t *un;
-	int rc = 0;
 
 	if (!tty)
 		return -ENXIO;
-- 
2.7.4


