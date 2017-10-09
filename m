X-GM-THRID: 6475021395996704768
X-Received: by 10.99.186.79 with SMTP id l15mr879162pgu.177.1507583399819;
        Mon, 09 Oct 2017 14:09:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.50.131 with SMTP id y125ls1320388pgy.6.gmail; Mon, 09 Oct
 2017 14:09:58 -0700 (PDT)
X-Received: by 10.99.179.77 with SMTP id x13mr258396pgt.162.1507583398846;
        Mon, 09 Oct 2017 14:09:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507583398; cv=none;
        d=google.com; s=arc-20160816;
        b=NmtRe4gKZHae6WF7iPkWsOox+6eW6En/IXak9PwgM1+wirdQD1OvypAMu1fTY065oN
         r/DRJkh9U1ymc/7MQ6YZawEMq4NjUU0J2dEsqK526XltqPOuHcSJqcaCfqdyMwTyHCJi
         ZHvFRTV2dVnno8QpqrOepRmyFswv1zA8hiUU5TlKRIyBja8E6p4s4QfANe0FW9RGmEdO
         wxhBblgCnhXzcCXK1IkJeZwOtDK0zbq5X5b1/FDfIb8ZikxUQhHIeyQuuI3qrp636THx
         kK86LTdhhEtm5h94g8qi153yIwyGLKtPrsxdEhWpLOElrRDPljNVTGKAcsUxO7TpaR7Z
         Xhug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=4qf50dFbI0cMIefO3PHD5jWS6Qbaq3YKlcYMPHbd3Ok=;
        b=Fqwlk5VH9mt6QcB3Iyx436rkEMh1bmA8+33XctHxTLrddS0Sv/+DvK4N20s24T8lN7
         fkSFiG7WLdhzeXp+eTkH2FukOctRjZD8UZOsyet6Qn6rpvUyIgXvq5988cvLMFdCy3lP
         aFlf5Dr++BG1xtXXUXG0gXbAOP2tIHQ/uu+YwvKa8Zy2Sm6y9j5lF3z3yIeG7hxPjk/J
         aW+CmhVr3uI2sc/a+VMwmdiLcmoqWTzN8XR2DCPzHZkTwtpw4V66vwEgJuQ1q+3n4+0c
         XXeEfROkiAb267hvFsMEtaBznSG5ZxMjQ+UuHXmUKL5r3B/w4VOzwhOGPnfe0giobEOk
         2KBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=scO6S4om;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id l80si1075677pfg.25.2017.10.09.14.09.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 14:09:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=scO6S4om;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id z11so13083877pfk.3
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Oct 2017 14:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4qf50dFbI0cMIefO3PHD5jWS6Qbaq3YKlcYMPHbd3Ok=;
        b=scO6S4omUUVEAdFrcCXrILbsfdbiEP9MBMpDgnyRPG98IHhoOR1jiHsAnu+md9Sm2y
         yXQiCtmowwg9PG/ZXv1QRsFWTribndTswBBKfLo9PKE355aYkjl0U1VB8v12oDj10X+8
         3/vSlNVzP0cPml0MS3sMirwK6JuNhrxTNDTwaRWZQ99IJ7WmW4ISrjzdu+d1XnoWblYd
         IhYAjJFIzmHNzmrmfi1pFtAXgj1S77nhVKu2t6WP7i9RR3t2w6/kFvKMS5WumQKexDAc
         qh17PRu5aTfDIpIncEPnfF1jbireyDGVXRyzfdRQvV0C6JgJSUhVR/4hlcea6gGg9uKL
         ofFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4qf50dFbI0cMIefO3PHD5jWS6Qbaq3YKlcYMPHbd3Ok=;
        b=Fug/3gstFyLBissdaF2EpLpcAKMbTwV7niU3rNBW8ggRbgi2Niu3EaNVLwla9zajgn
         kEwQ85QKcr3kTo6mnYKnhf9io4XIgl8KalBynqnDEyjUElBvCMlnFn4VyxWILDRHrGNy
         dtRVgyeRTanJOe+FljJPjGQHJL0++MAY/uxozbQ6B8ahNh6BcQXMrMqqcC/R7wWK5QQJ
         xPC12I0Qc4lPiotiz8zVXnrpr/XsiIetgSQIaoqwk3s3hzTAt692o1pPU1p5DHnMx12r
         lffbUlwN/fg9GpJhx1+sXU/f3SReong4tzboUS9mP3jUwWqHiWGHDYbIpJj7Q3GfJ+pL
         f+QQ==
X-Gm-Message-State: AMCzsaXcFq13gBI1nBmRxJsEJBl2dQZbABnX4gr+d2ylbEvv5czqeznu
	tUeSJhxpHBSDwlfLhAkxEyc=
X-Google-Smtp-Source: AOwi7QBg4B3Hnp52rG04q6OhlWnCBwdirBLxTQK+V3Piw9asR+iCt0Ngs8yyUFndBJMtL2OFGu/dfQ==
X-Received: by 10.99.177.9 with SMTP id r9mr7527482pgf.194.1507583398521;
        Mon, 09 Oct 2017 14:09:58 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([122.179.25.150])
        by smtp.gmail.com with ESMTPSA id 204sm16311371pgf.59.2017.10.09.14.09.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Oct 2017 14:09:58 -0700 (PDT)
Date: Tue, 10 Oct 2017 02:39:54 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Sebastian Reichel <sre@kernel.org>, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] power: supply: replace pr_* with dev_*
Message-ID: <20171009210954.5fdeimcmt35jbcoa@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Use kernel preferred dev_* family of functions in place of pr_*,
wherever a device object is present.

Done with the help of coccinelle.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
The following cocci script was used to make the patch:
@r exists@
identifier f, s, x;
position p;
@@
 f(..., struct s *x,...) {
<+... when != x == NULL
 \(pr_err@p\|pr_debug@p\|pr_info@p\|pr_warn@p\)(...); ...+>
 }

@struc@
identifier dev, r.s;
@@
struct s {
        ...
        struct device *dev;
        ...
};

@@
identifier r.x, struc.dev;
position r.p;
@@
(
- pr_err@p
+ dev_err
|
- pr_warn@p
+ dev_warn
|
- pr_info@p
+ dev_info
|
- pr_debug@p
+ dev_dbg
)
 (
+ x->dev,
...)

@rr exists@
local idexpression struct device *dev;
@@

<+... dev ...+>
(
- pr_err
+ dev_err
|
- pr_info
+ dev_info
|
- pr_warn
+ dev_warn
|
- pr_debug
+ dev_dbg
)
 (
+ dev,
...)
---
 drivers/power/supply/power_supply_core.c | 2 +-
 drivers/power/supply/twl4030_charger.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/power/supply/power_supply_core.c b/drivers/power/supply/power_supply_core.c
index 02c6340ae36f..4b57fa9779ae 100644
--- a/drivers/power/supply/power_supply_core.c
+++ b/drivers/power/supply/power_supply_core.c
@@ -669,7 +669,7 @@ EXPORT_SYMBOL_GPL(power_supply_powers);
 static void power_supply_dev_release(struct device *dev)
 {
 	struct power_supply *psy = container_of(dev, struct power_supply, dev);
-	pr_debug("device: '%s': %s\n", dev_name(dev), __func__);
+	dev_dbg(dev, "device: '%s': %s\n", dev_name(dev), __func__);
 	kfree(psy);
 }
 
diff --git a/drivers/power/supply/twl4030_charger.c b/drivers/power/supply/twl4030_charger.c
index a5915f498eea..7ed2bc3039c4 100644
--- a/drivers/power/supply/twl4030_charger.c
+++ b/drivers/power/supply/twl4030_charger.c
@@ -743,7 +743,7 @@ static int twl4030bci_state(struct twl4030_bci *bci)
 
 	ret = twl4030_bci_read(TWL4030_BCIMSTATEC, &state);
 	if (ret) {
-		pr_err("twl4030_bci: error reading BCIMSTATEC\n");
+		dev_err(bci->dev, "twl4030_bci: error reading BCIMSTATEC\n");
 		return ret;
 	}
 
-- 
2.11.0


