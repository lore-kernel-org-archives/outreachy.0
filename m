X-GM-THRID: 6399916000486096896
X-Received: by 10.129.79.19 with SMTP id d19mr18117169ywb.19.1490096602157;
        Tue, 21 Mar 2017 04:43:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.155 with SMTP id z27ls11511657otd.14.gmail; Tue, 21 Mar
 2017 04:43:21 -0700 (PDT)
X-Received: by 10.13.210.69 with SMTP id u66mr7241159ywd.20.1490096601824;
        Tue, 21 Mar 2017 04:43:21 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y203si3392977pfb.0.2017.03.21.04.43.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 04:43:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so16069860pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 04:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=r+y5x5rJrKgzSQgYnwxDrsICJpiQNYPH7aqSuIaJwfs=;
        b=kTznSAPmJBRjFSi2MDCEd16FnO9l201YV9jkdoDwoK4p6r3hv8mUxYGAT+PE8egpFC
         9vUsHO8YzlWYcl89mwflDwLnCu2F/d/L8nSGH4wc4OWF9Ec71mw2cT3EVtjI4lDMUaEM
         JzVmj1f6bxVzL82pwRsyQZ/1f3WiSoQJ8jQ0JNm2r4yIuSp+EWpoqDCyVxTHl934I/nc
         58IKrV8aw7x+Dc+WEwPr7lqFtTsepUc3NXHx8UIeHpOa3eL0+t9buQWLXd4FNfFhnToU
         rd881Hq9KQHIwbkNrs9E+ZTO3QU9GKrERJQPzKcsX05zoNg8Cbq6KJD0+Iw7QQM0ZCgY
         la+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=r+y5x5rJrKgzSQgYnwxDrsICJpiQNYPH7aqSuIaJwfs=;
        b=lQbuxBSuNR9vkBcGGo+rAL691NsDhxk+1dktl3SPEyJrWoOySQf7HKLLBzFJDQj34c
         mCr7X9KCI8ZQGlsvf1utybrYVXyFs6Gw/tl38fwc3JRQpi61O+VoY2IWCnI6VXsNiCwR
         G2yE8dseZ6n+hGhioeGNz6u9ZdvHPfsiSEep4/tSnQ6LBDX6KzVNnyNUUmQBqzB9AmpK
         Q5ZV3yhTsDKL5Y/ccoDqk/2BM7L6icjBWpSAiDSJIzEOv+sqam2XAIj6nz2LmXlIdqP5
         atfWpDFWOZGRFAi8p1Lg85rZiPwdPwdrgXtoUc7uQ58orymombk7CBq4fvYTRnvbAXb3
         b9mg==
X-Gm-Message-State: AFeK/H3soWYo1voEgR9hUpxV2AhN9u+YlTQPkYCkKxH2IrGETq96q178Xc8QECoiQOmaMQ==
X-Received: by 10.84.194.1 with SMTP id g1mr47068856pld.98.1490096601610;
        Tue, 21 Mar 2017 04:43:21 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s13sm39212705pfd.46.2017.03.21.04.43.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 04:43:20 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 08/11] staging: speakup: Removed Unnecessary parentheses.
Date: Tue, 21 Mar 2017 17:12:32 +0530
Message-Id: <20170321114235.1638-9-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>

Unnecessary parentheses are removed to improve readability.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index afb61e153592..ca85476e3ff7 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -392,7 +392,7 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
 		len--;
 	new_synth_name[len] = '\0';
 	spk_strlwr(new_synth_name);
-	if (synth && (!strcmp(new_synth_name, synth->name))) {
+	if (synth && !strcmp(new_synth_name, synth->name)) {
 		pr_warn("%s already in use\n", new_synth_name);
 	} else if (synth_init(new_synth_name) != 0) {
 		pr_warn("failed to init synth %s\n", new_synth_name);
-- 
2.11.0


