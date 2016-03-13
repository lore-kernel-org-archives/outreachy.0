X-GM-THRID: 6261584556721176576
X-Received: by 10.140.42.43 with SMTP id b40mr15347851qga.9.1457888948542;
        Sun, 13 Mar 2016 10:09:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.71 with SMTP id ri7ls669149igc.14.canary; Sun, 13 Mar
 2016 10:09:08 -0700 (PDT)
X-Received: by 10.50.154.2 with SMTP id vk2mr1081738igb.9.1457888948284;
        Sun, 13 Mar 2016 10:09:08 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id w69si1091556ywa.3.2016.03.13.10.09.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:09:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id 14so10735436qgg.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YbTQICSk/hUVHFg9YDqP/rp5kIiN6E2rIpswL8kwAO0=;
        b=TSe6DhuHjNZNrbvF41jZjItj7eCQLjCvyhcUPdFzuxoEeKf7ejV8W6xxQLiSIILg9w
         tluEcVeIS9Uu0kR13enBGR8bvPU+iYco3PGl0Pp+/Re2K99/JRjujK2lNOZqLiF6xnAV
         Fu8zKwjd/ImnYU4po7IidcM0f590IpD//JK4xF26lSYQ6yzMsJzRaYoPkX7cDOC8dovo
         CmRg/xKi3AkunZlOJlN18QcEg8Eht0bau3Tld7ox5e6QoY/DcJ2QKMff7aOqe8MWKteG
         mmsj3Abz8ypZKQgowWmyEmcRdomZq4IiCwC97+WzlWASRfFOQMw3z4w1u27GG4ROUPX5
         cZrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YbTQICSk/hUVHFg9YDqP/rp5kIiN6E2rIpswL8kwAO0=;
        b=J9GgFsu2lV8zngsObNeUJLTgCn0QYNX5uJMQIjnr2VDAzi1bUR8ZXCRJBP0WJ5awLa
         7n+T+Rl/55kR9rgNY4I3HL52zwC0MWk2PusPLu9aza5zr/lCjLqB9NlVHneUdaQXBQQj
         DTPeP6fEL8fmbtVSqYT800w9FZF2WQh+hYl+wVJHARs82nGsSyn9oL4Te16RQEPlnqwN
         9ZU4eZbNqzxzsbRe6UTqig14r2dAfN9GsRzf2Qsue3bLd0rwzGcG1tr8rCJC8R1htQPt
         MeJmLnkaijfDnu8GvZWGsWJ1eBOBVrqwN6IJEr+Co93cAykeeAFZz1eyLP3TOyW+xJPy
         sv3A==
X-Gm-Message-State: AD7BkJLmf5NQ/FevVne/RnMBELB8oOb9JgS3eY7H49OXfXyJ9Hm/uS1ah67u8Z1BVaAVAA==
X-Received: by 10.140.160.214 with SMTP id g205mr26592915qhg.88.1457888947982;
        Sun, 13 Mar 2016 10:09:07 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id w75sm8516233qka.49.2016.03.13.10.09.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:09:07 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:09:05 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/8] staging: dgnc: renames dgnc_Serial_Major variable to
 avoid camelcase
Message-ID: <8ba58c355c1b174885542c866a29c6a593c29981.1457888423.git.juliana.orod@gmail.com>
References: <cover.1457888423.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457888423.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch renames dgnc_Serial_Major variable
in order to fix a camelcase checkpatch issue:

CHECK: Avoid CamelCase: <dgnc_Serial_Major>
+       uint            dgnc_Serial_Major;

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 2 +-
 drivers/staging/dgnc/dgnc_tty.c    | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 5bb69da..c37f84e 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -213,7 +213,7 @@ struct dgnc_board {
 	bool		dgnc_Major_Serial_Registered;
 	bool		dgnc_Major_TransparentPrint_Registered;
 
-	uint		dgnc_Serial_Major;
+	uint		dgnc_serial_major;
 	uint		dgnc_TransparentPrint_Major;
 
 	uint		TtyRefCnt;
diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index b79566a..dfbea0ab 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -287,7 +287,7 @@ int dgnc_tty_register(struct dgnc_board *brd)
 	}
 
 	dgnc_BoardsByMajor[brd->serial_driver.major] = brd;
-	brd->dgnc_Serial_Major = brd->serial_driver.major;
+	brd->dgnc_serial_major = brd->serial_driver.major;
 	brd->dgnc_TransparentPrint_Major = brd->print_driver.major;
 
 	return rc;
@@ -410,7 +410,7 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 
 	if (brd->dgnc_Major_Serial_Registered) {
 		dgnc_BoardsByMajor[brd->serial_driver.major] = NULL;
-		brd->dgnc_Serial_Major = 0;
+		brd->dgnc_serial_major = 0;
 		for (i = 0; i < brd->nasync; i++) {
 			if (brd->channels[i])
 				dgnc_remove_tty_sysfs(brd->channels[i]->
-- 
2.7.2


