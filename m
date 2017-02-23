X-GM-THRID: 6390271091291455488
X-Received: by 10.99.52.202 with SMTP id b193mr9252194pga.118.1487850931323;
        Thu, 23 Feb 2017 03:55:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.28 with SMTP id j28ls3725464otb.40.gmail; Thu, 23 Feb
 2017 03:55:30 -0800 (PST)
X-Received: by 10.129.79.19 with SMTP id d19mr4794006ywb.19.1487850930886;
        Thu, 23 Feb 2017 03:55:30 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c123si595645pfa.4.2017.02.23.03.55.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 03:55:30 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o64so1496953pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 03:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6zuxdJGEMNvB4QbO1qUeEATir5E6ikNLqm/Ir9DlGM4=;
        b=fhLRJmn8JAqRf1HYatwLiKZNWxkWkKiT8hCA6WkFlYQHChMqMg1RR4kxS5h/nlw2cH
         lcZp5qnEjROTHriAfmirys1UR0bXVm1lHrPDlQuvAUfFsE9qEKPpmJ5ltrzcKoiPOjJ5
         ZjlytivxaT2lcQpDn3buQJkN1t5PR015wXbYEJRGj4CNu4wcTbzuLHwTmZcn8dhwNboj
         bHF6geKK/9e+HBz/3DbIytjHQeexbKU/qhqeWOf/pOWWpj1bGBmUDXv85yvRs5ixDjOo
         58dua1+ngVoYnjRPFmsgfaToSiJa50939Vxw/5g8JaePmZ52dpsr2h8MGEgPUlrTaGvP
         FDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6zuxdJGEMNvB4QbO1qUeEATir5E6ikNLqm/Ir9DlGM4=;
        b=YE+gbfItMfUZgIL0LQ5jab9xOGR6wVNnrkT31+LN+gwmxDRlT51rii4fZEL5ZDSTRE
         5q1ra3PoZ/0na4j+xs7dtQT5FkNGSK75+XyABEOJN7w59SMKr3cZTFUPZAxBwV1mFAGK
         gO/fzlgxyWOxh5Xi1p/cP/YcAntsiQdzMMnTKxDyy3OAf0BNQr7LCTwvQErVadJDOWit
         x9Bg06rLJz3PGsWOMo1uqU8BPXyNoQXMz77AHMgfNbB8u+3Vw6oGcMZefbF8y7rer7b5
         v80wy1DdGCF0fiOSyWyZHqtLgr5kTIIewTdYaAGgz3E0SE2xI54hkfAsvBFyvTzRwSfb
         svCw==
X-Gm-Message-State: AMke39mqlEdziHIY4WzWN1kP+G0EbqOURNYh9eVbxmjumKHdseKIKdyZeF//h2Td1DZSbw==
X-Received: by 10.98.200.5 with SMTP id z5mr46278109pff.0.1487850930636;
        Thu, 23 Feb 2017 03:55:30 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.161.153])
        by smtp.gmail.com with ESMTPSA id o12sm9490031pfg.15.2017.02.23.03.55.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 03:55:29 -0800 (PST)
Date: Thu, 23 Feb 2017 17:25:08 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: speakup: i18n: Replace 'x!=NULL' with 'x'
Message-ID: <20170223115508.GA9245@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch removes the explicit NULL comparison by replacing 'x!=NULL'
with 'x'. This issue was found by checkpatch.pl

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/speakup/i18n.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 2f9b3df..b8f5bed 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -407,9 +407,9 @@ static char *next_specifier(char *input)
 	int found = 0;
 	char *next_percent = input;
 
-	while ((next_percent != NULL) && !found) {
+	while (next_percent && !found) {
 		next_percent = strchr(next_percent, '%');
-		if (next_percent != NULL) {
+		if (next_percent) {
 			/* skip over doubled percent signs */
 			while ((next_percent[0] == '%')
 			       && (next_percent[1] == '%'))
-- 
2.7.4


