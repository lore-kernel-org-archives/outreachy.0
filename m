X-GM-THRID: 6463658667322376192
X-Received: by 10.99.54.136 with SMTP id d130mr3122247pga.19.1504937807689;
        Fri, 08 Sep 2017 23:16:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.139 with SMTP id f11ls1365534ioj.36.gmail; Fri, 08 Sep
 2017 23:16:47 -0700 (PDT)
X-Received: by 10.129.50.18 with SMTP id y18mr3205775ywy.229.1504937806987;
        Fri, 08 Sep 2017 23:16:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504937806; cv=none;
        d=google.com; s=arc-20160816;
        b=bpDs9wNsKgiXG5Ut9QZ7yXrRueshDcKzf0TBC9XR/JYT4AVxTtkFYJGNDB51Ny/qnP
         ef0RrHLA4UAUZfIWs8PRvN1+tDyxDcR9wENloRR6r+R9fsWesNZiROEV+XF8ZhmvVjgY
         1SLXCK0zpdQcaVUZsGHeVJbxm5UTyo41IA8m/Iq8Se9EvorB7/mrnD1MXZib1vQNC1xz
         fjwzGxQMRj0H0sdVYuN8wU8isC6SF+C4dvswnpjWOqMRZk+MnewoeVdz2JBxSoZrT0nH
         yIOo/v4R9AssCOPlP2Bu3fNsLvfAXNRE/sjquVsoT8oSyKowzHNbZkXsgRnH6IxY8I+C
         PzxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=ES/aKmCW2+LHISBnx7s7OXF/aBIM0xV53tL/3+i/9gw=;
        b=o7hR9h3z8vMmFqjvqeJAPb6TSDKW6aUB3aNYfoUpQqjCRH+bdUgUAtoX4bzAMg7dwL
         uAz/BNHy8hUr34Bi0UbTN2Ne4gTiUeHhZn6uQr+vvyvwacYB4J1nTrJhh4zkPWdOz0Le
         mLb+GvxOO8IW3+VEEZtLA8wBOr1DAR8B2EJTEBjPRHo2kQjEUZeEAk915XGuoGb8KvNc
         8cmhi4DmXj2hhrxmTeuUppPxoYZjSCVYv6rXcR8Sfl1iIIowv84vW9zlyOZ2aCeV3Bh1
         cBTzSDDK7knHqjmq5MJtEpdcKE/cSfqi6Yrmth7yxq6+6gRsLnuoAy7gXPyGIc8TaEvD
         cd/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nd1/PQNo;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-yw0-x242.google.com (mail-yw0-x242.google.com. [2607:f8b0:4002:c05::242])
        by gmr-mx.google.com with ESMTPS id n19si272813ywd.3.2017.09.08.23.16.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 23:16:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) client-ip=2607:f8b0:4002:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nd1/PQNo;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x242.google.com with SMTP id r85so4788ywg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 23:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ES/aKmCW2+LHISBnx7s7OXF/aBIM0xV53tL/3+i/9gw=;
        b=Nd1/PQNoR9jyZsCCiX5MqcurpJE9n8iwE129K5WGjMe9j6fUbZocV11ifWtjW+O8NK
         hus4+TyL3xrluLfnI3Dgh82wgMzmchfZ+rvjPlW4Q4dOxdaMnFMnizRMoQ2jMyEUrIfo
         ecqotWStQoXspUoc/atdIpY4SUGpBEhvaB0o6gHTZnzMTE/9sbyJEeE8qbXUA6glon3b
         07JzkV8Gf2/C1gOzdmQKcalSNGtltXJUYqhtQ5OzCiSCYFR72Dhab7ZAmL2xB+VryXA/
         hAIrNigR6mEJKoUo91c36hMvJM9SgMvLVKvMmcKHIp9mFyYtX+EqZX5jHRzoOZB2AV8f
         1t2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ES/aKmCW2+LHISBnx7s7OXF/aBIM0xV53tL/3+i/9gw=;
        b=OM1IvCKF8hfEHlQCCgJSB/ylbvkyGXOim0MYf0d6NS1jlqJ6xVYvExA0GNHouvmHJs
         FkqVGadr7s2ygcw34OxqtclVBAmUsgQdebgIV9FJmF3HB0q4fim2l78q7FDUS3Tbve5I
         9QMvqxXK9NFRjgy4chOqDhIXvRugyvPcxQAgoAbL1CiOhIePH2Wnjodl1AVFr1I+PRU/
         1yWa0GtjC2saC2HvrlYeBqKtvvbqKeRYvnn4iGY99q3hkmQG2FKbllHJYWjsAMHXEXXD
         zhWtz0KXXQpaBqPsy2qSLn6U86Jq//4OF3LAYGd2tGx/aCtM6bvD3uyr0CjFuzfd4wb6
         K5+Q==
X-Gm-Message-State: AHPjjUiyGgARQFoRuZa2soOoOTZGMk2MkxpWzrfwBx61Uj/Sz4uT5U0t
	rYVU2Ypw5bPOOA==
X-Google-Smtp-Source: ADKCNb5YZ2GgT6mCPNmMoua7mB4tAucsiZkE1iolM5fcM7zMbIOnbOFr32vUK7LR96VQLN8mYm0Btw==
X-Received: by 10.13.196.130 with SMTP id g124mr4321650ywd.474.1504937806762;
        Fri, 08 Sep 2017 23:16:46 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([103.231.132.5])
        by smtp.gmail.com with ESMTPSA id x8sm1346175ywi.107.2017.09.08.23.16.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 23:16:45 -0700 (PDT)
Date: Sat, 9 Sep 2017 11:46:41 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	w.d.hubbs@gmail.com, chris@the-brannons.com
Subject: [PATCH] Staging: speakup: Change symbolic permission from 'S_IRUGO'
 to '0444'
Message-ID: <20170909061641.GA19737@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This fixes the following warning reported by checkpath.pl.
WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/speakup/speakup_acntsa.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_acntsa.c b/drivers/staging/speakup/speakup_acntsa.c
index 0e10404..4331584 100644
--- a/drivers/staging/speakup/speakup_acntsa.c
+++ b/drivers/staging/speakup/speakup_acntsa.c
@@ -136,7 +136,7 @@ static int synth_probe(struct spk_synth *synth)
 }
 
 module_param_named(ser, synth_acntsa.ser, int, 0444);
-module_param_named(dev, synth_acntsa.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_acntsa.dev_name, charp, 0444);
 module_param_named(start, synth_acntsa.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
-- 
2.7.4


