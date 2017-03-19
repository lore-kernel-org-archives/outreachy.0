X-GM-THRID: 6399255849068396544
X-Received: by 10.176.69.197 with SMTP id u63mr303732uau.36.1489942858227;
        Sun, 19 Mar 2017 10:00:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.121.200 with SMTP id z191ls1613140itc.5.gmail; Sun, 19 Mar
 2017 10:00:57 -0700 (PDT)
X-Received: by 10.99.161.10 with SMTP id b10mr13146110pgf.159.1489942857343;
        Sun, 19 Mar 2017 10:00:57 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r66si2214499pfb.7.2017.03.19.10.00.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 10:00:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n11so2860745pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 10:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=r+y5x5rJrKgzSQgYnwxDrsICJpiQNYPH7aqSuIaJwfs=;
        b=C46YxHChPaJZPHSypLQPOT9gG5fF7LVzKK2KMmq8IKqwCSNFEGD/9HWp/fbqHX77tx
         ADcH7Dk2nro3DuzGciwC7wfLmvr7c8tMqp5yq7BocFzyhGBWLp48SqHo2Xt6VlgkC4KW
         nMFMURNcT3iHR83Iy3oDgUTDnMIDO+TDk38oMm87f/Ui/3z7dqQJrC1jbdZ19gU9NTjO
         JSejt5vSa/G6f6L7SfX/SLAUYJxuARa5yNJTx0FopREazOh6/8R8ZdHA2xvGAHbaAtvC
         Gt21rnM1UeffKHQQhY9XZ7N/oQcgfqusnxazh+hSV7MgGrOfTxMCJ5ahdg9a8ipPI4ig
         kWew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=r+y5x5rJrKgzSQgYnwxDrsICJpiQNYPH7aqSuIaJwfs=;
        b=a5dAOa0wGSeMYfbE8Go8UYBONqHxLlbnYNiEddb5s8AdoUj/521iwajc07dnEOzZSr
         eW18bi16Zq8oE5/8SEWXWNoToTOOey9EROQ9O3BMtz13dgZH1+dNUjTWI8m0+zU7qAPY
         HCAXYCoPprIYGk+rmlMaDk1ppLPc3iJYWVx5cwfXiLJqqLZxn4AtP9IetTC0K8fxzwJL
         kWwv+Z8AmL4QYyMvkQ2QCETpbvzqEvvEfAiGiXLq0CSOwmkqQPnbghWOXrMDoqMcBk1a
         AzDlMDA20I6h8r5zK5PBhAHlwPXeAl4E20FwmcZFtXC4TrwU0TbBaIWgNLZ/OfLPFrcr
         IdNQ==
X-Gm-Message-State: AFeK/H0DAksoGX8HIRT4VQE7ZReNZOnKxCir1DL3od0bIizDsFfWFtbMXFawczyEVKCOpQ==
X-Received: by 10.98.69.86 with SMTP id s83mr28687827pfa.232.1489942857128;
        Sun, 19 Mar 2017 10:00:57 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 73sm28154686pfh.56.2017.03.19.10.00.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 10:00:55 -0700 (PDT)
Date: Sun, 19 Mar 2017 22:30:51 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Removed Unnecessary parentheses.
Message-ID: <20170319170051.GA20533@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

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


