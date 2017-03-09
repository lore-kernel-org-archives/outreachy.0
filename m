X-GM-THRID: 6395583387919187968
X-Received: by 10.157.63.242 with SMTP id i47mr5585155ote.53.1489087796974;
        Thu, 09 Mar 2017 11:29:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.88 with SMTP id 85ls2021571ioi.39.gmail; Thu, 09 Mar
 2017 11:29:56 -0800 (PST)
X-Received: by 10.99.106.131 with SMTP id f125mr6472837pgc.140.1489087796123;
        Thu, 09 Mar 2017 11:29:56 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y90si1371320pfa.6.2017.03.09.11.29.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:29:56 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so3282865pge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=UrZYSB9+rdqsJ7cyXG8304vlDe0ey5dxzRdKYSz7dQs=;
        b=Alzdh1Uz1D/GUg8SKZhQQ/Dep29zXTU8gjFD/wu47fEZqzPsIA+3dIlNWjJ9kWYNSA
         hX2lEy1qJJTqrMkbpDFJhXDi90sit5FLZRVbIIrKPDsu3oSpyGI4kc6kWwCiWCPaF4do
         kni4jURKfpm7SDn4nxKmfgRyI0KbOz3ewUPxahrAUuAfjDChfFfS/7Js++6D/K0Zp2bk
         ZZxe+ssPtHDGx4eT49LZSeDjsY3R5OkCnsTM1LdjTJSQSts7ESY3ve8RVnsARtl0s4hj
         N4g/K14o2fy3w1iPmI8WkJWC1gMruBBHSvUCryQpmEo4fj8g4RQlvTV1MJO4d4pc81HL
         H5bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=UrZYSB9+rdqsJ7cyXG8304vlDe0ey5dxzRdKYSz7dQs=;
        b=l4lN3a/wVTbGlk1x+s1jJH1GyYMymvTgnzFjzYMLpHwuOddIVJlNXJAOAU+y3nLlw2
         Ij9ZabzTyI3aKqf4tAZ3U5+4kGIvc6OtHZQw56KNxLjurHLA2XzPr8VaWTqI4GX8kBxN
         /746vycN27RNtLjwHaR8GX7cuVPqhmK64m6OcLkTo4yL7oDeIo4j8EOCW68nugJzEMsI
         bi+wyEvHTZghlRKucjcQ0QJ4dGSvERDod6zQxWjngxwEzNShg9RrYpI66k1nnYF7lEtR
         9mpIPD+flmUpJ1r8n7237oo197J1fXaradWXOFDMiEM2PQn3loOSzyHF9RmCXSqRq8lN
         /BcQ==
X-Gm-Message-State: AMke39lpUUPG9/p0e0mwiYMQtkIuTDpPz6Q4ONAPZyx8ZZkzRDZkPud0cgeePqVMCdwSsQ==
X-Received: by 10.99.206.5 with SMTP id y5mr15504767pgf.212.1489087795904;
        Thu, 09 Mar 2017 11:29:55 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r17sm14133146pgg.19.2017.03.09.11.29.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 11:29:54 -0800 (PST)
Date: Fri, 10 Mar 2017 00:59:50 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Unnecessary parentheses are removed.
Message-ID: <20170309192949.GA28027@arushi-HP-Pavilion-Notebook>
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
index 9feb97dfd72b..8a586323b728 100644
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


