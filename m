X-GM-THRID: 6389989213457088512
X-Received: by 10.157.17.39 with SMTP id g36mr8583695ote.86.1487785301004;
        Wed, 22 Feb 2017 09:41:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.30.168 with SMTP id n37ls1640816otn.25.gmail; Wed, 22 Feb
 2017 09:41:40 -0800 (PST)
X-Received: by 10.13.253.6 with SMTP id n6mr11520300ywf.84.1487785300594;
        Wed, 22 Feb 2017 09:41:40 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g205si458629ita.2.2017.02.22.09.41.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 09:41:40 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id z128so1343624pgb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 09:41:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nDnNuc0tjGXN3NAb+vTsXqabLrnY/iMbZ7VHOgf7UmA=;
        b=HNhlbMjxFh3/jlQfwIDhMfnBMsDmUhyQJn0VBb+kNs4k6nsx/UqPGP63rRBjquj0wA
         uq2EQLCIRR/1RduerelOyDaSFNg6k5Cy5sOF2G+FdhcjSIPMkbjyuh0CfWDJ4FSFQk9p
         43LXup3O6VDz+RL/P+qrc0fx30dAWBbaVgroqjlEfZwaczwdG7KefKOmWbvI5FFQXouI
         H8SD1bm6LCWpO//lh9+nEBAG06TFli0KXG8cXga9IGcMztL+4SvupjBWLKw1gTJMsoF/
         WKcglNVMCXwd+73XPYNwRldBzPpRJN73uo4Dzk5HU2HpR8zvpvi2hlZCb9JoJoNlwYoD
         ScNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nDnNuc0tjGXN3NAb+vTsXqabLrnY/iMbZ7VHOgf7UmA=;
        b=lb59CRCI1RndwgDJL582TwAsSVr3iFPSGfkz3tosnM0fTVM+yG+ACDk/JUoLudAMFP
         cC0Od6gky3UIfj+/K0ElgUcCd2eNY2BAmLuKhsPPvx6uZNdWVLrruaoFYps+gY7B8IBN
         Afpdaia4IwHzbkPkN6KPcmDMMMZZI0m00CYmk8Ot2PdQ3M6t8mOTowHrVIB/bz+fzr2Q
         Le1F5SztZt4lBJ17jijWy3IFikv7ie7l9y4OOAJcaUTKXOfrfw8thKwC8xsd2kWvfEMN
         ITqSYGeSOOwRgGqkp8J1ZStSgK1uqnFfrtszYJy7Em7l2yhiVNyN0UgfDV5ejmPjhzOj
         QKKQ==
X-Gm-Message-State: AMke39lXIO2mMgnKDlf+OGsslL5aXZmmq4nx28Yuimml//x+Bs1b49ktHTvEPU0dDWIbmQ==
X-Received: by 10.99.104.199 with SMTP id d190mr33994978pgc.59.1487785300151;
        Wed, 22 Feb 2017 09:41:40 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5189:4d06:6cf8:d067:30d5:ddb2])
        by smtp.gmail.com with ESMTPSA id x10sm4850670pfi.117.2017.02.22.09.41.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Feb 2017 09:41:39 -0800 (PST)
Message-ID: <58adcd53.0a0f620a.21b74.7937@mx.google.com>
X-Google-Original-Message-ID: <20170222174133.GA16650@<rvarsha016@gmail.com>>
Date: Wed, 22 Feb 2017 23:11:33 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: speakup: Removed blank line after open braces.
References: <cover.1487784838.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487784838.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Remove blank line after open braces, to fix the following checkpatch issue:

CHECK: Blank lines aren't necessary after an open brace '{'

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 1 -
 drivers/staging/speakup/serialio.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 4e7ebc3..77e6dee 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -129,7 +129,6 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	while (cp < end) {
-
 		while ((cp < end) && (*cp == ' ' || *cp == '\t'))
 			cp++;
 
diff --git a/drivers/staging/speakup/serialio.c b/drivers/staging/speakup/serialio.c
index ef89dc1..87d3318 100644
--- a/drivers/staging/speakup/serialio.c
+++ b/drivers/staging/speakup/serialio.c
@@ -97,7 +97,6 @@ static irqreturn_t synth_readbuf_handler(int irq, void *dev_id)
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	while (inb_p(speakup_info.port_tts + UART_LSR) & UART_LSR_DR) {
-
 		c = inb_p(speakup_info.port_tts+UART_RX);
 		synth->read_buff_add((u_char)c);
 	}
-- 
2.9.3


