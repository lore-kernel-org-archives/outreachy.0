X-GM-THRID: 6252670942191812608
X-Received: by 10.66.221.100 with SMTP id qd4mr7842666pac.0.1455813400786;
        Thu, 18 Feb 2016 08:36:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.137.66 with SMTP id qg2ls228121igb.10.canary; Thu, 18 Feb
 2016 08:36:40 -0800 (PST)
X-Received: by 10.50.20.135 with SMTP id n7mr3728059ige.5.1455813400207;
        Thu, 18 Feb 2016 08:36:40 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x235.google.com (mail-ig0-x235.google.com. [2607:f8b0:4001:c05::235])
        by gmr-mx.google.com with ESMTPS id s20si269011igr.2.2016.02.18.08.36.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 08:36:40 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) client-ip=2607:f8b0:4001:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x235.google.com with SMTP id y8so17941718igp.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 08:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iAf9z0n+HeFKZ7EEweTgbGkncnJ4JjeRnCFa+0xCsLo=;
        b=IdCjkBsi5mQYkbDUWmnpinCe4nxqeqmu/wQ/iVNePx95GHaHifbjA8+Ogt+sZx4gzf
         2MAMRnl3DKZOTz8XSmiHa92sszz5Y8ywoxLmKGkzG74eUO/mOwPNp0+6LnFNXEpN+hyA
         XSojvdM1SOeLeTSV/JoUsfjvt/+T/cYSXwNQQoDeaLg+L6aUQbN1hoQdUVvKuryVL8lp
         rGVGWf/mQk6gt6arp1XNsHiGGLumFgoQoPxwz4/O23b639bOXfe14I1TYiPDJLbLwjQZ
         fmZIGDvVNeSzMTJb8jhQWh/KPKBybYCZy5Yld4dhK1/zj18s+Qtjfgym0N8RmreDrET1
         WSRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iAf9z0n+HeFKZ7EEweTgbGkncnJ4JjeRnCFa+0xCsLo=;
        b=mnXJopG6Z4liGeZkA/eY5x4lTeLaoONhz/Sn+PKogNK7Fi2tB5ggwLlGvZIQqd1a9T
         OUt5Il1YpvjPNaYOAebo+3lECXgYX922fbEdT+psViZeD0z8glF/fue4IZ1aeM93IP9h
         NbpATFXBAcc4OgQarRw3DMOu2MJU3DGo0KiAyCLVJyWHywANhQAhv3X8lB0FfqPVxpRC
         JG0DRQkqr058cfbpe2Iyl/Se8Hil3yVm6l3FIo7cBeA7za9gib6VwLvTbaHWxCyMxy4P
         NiUc3pCEkbkDmujV2mf9Cv3sv/tPG8fUOer+7YQLfuN5LKnfO3Hoj1qCTZe9NQg8Onmk
         yOtQ==
X-Gm-Message-State: AG10YORLP5HEbAoACRPDtDzSiR8JzDxQsrh1oq3n3KM3hSKJvCpTzln+dAPyCvpahnJLDQ==
X-Received: by 10.50.28.20 with SMTP id x20mr4297181igg.87.1455813400072;
        Thu, 18 Feb 2016 08:36:40 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id j136sm3764226ioj.32.2016.02.18.08.36.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 08:36:39 -0800 (PST)
Date: Thu, 18 Feb 2016 16:35:55 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: addac: Remove unnecessary else after return in
 if block
Message-ID: <20160218213554.GA6769@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Else is unncessary when there is an return statement in the
corresponding if block. Remove else and refactor code.
Coccinelle patch used:

@rule1@
expression e1;
@@

	if (e1) { ... return ...; }
-       else{
	        ...
-	}


@rule2@
expression e2;
statement s1;
@@

	if(e2) { ... return ...; }
-       else
		s1

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/iio/addac/adt7316.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index 3adc451..4a88a85 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -465,8 +465,7 @@ static ssize_t adt7316_show_all_ad_channels(struct device *dev,
 		return sprintf(buf, "0 - VDD\n1 - Internal Temperature\n"
 				"2 - External Temperature or AIN1\n"
 				"3 - AIN2\n4 - AIN3\n5 - AIN4\n");
-	else
-		return sprintf(buf, "0 - VDD\n1 - Internal Temperature\n"
+	return sprintf(buf, "0 - VDD\n1 - Internal Temperature\n"
 				"2 - External Temperature\n");
 }
 
@@ -637,7 +636,7 @@ static ssize_t adt7316_show_da_high_resolution(struct device *dev,
 	if (chip->config3 & ADT7316_DA_HIGH_RESOLUTION) {
 		if (chip->id == ID_ADT7316 || chip->id == ID_ADT7516)
 			return sprintf(buf, "1 (12 bits)\n");
-		else if (chip->id == ID_ADT7317 || chip->id == ID_ADT7517)
+		if (chip->id == ID_ADT7317 || chip->id == ID_ADT7517)
 			return sprintf(buf, "1 (10 bits)\n");
 	}
 
-- 
2.5.0


