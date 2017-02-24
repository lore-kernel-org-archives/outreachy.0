X-GM-THRID: 6390415872559677440
X-Received: by 10.129.86.138 with SMTP id k132mr1209861ywb.23.1487952024637;
        Fri, 24 Feb 2017 08:00:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls7515492otb.26.gmail; Fri, 24 Feb
 2017 08:00:24 -0800 (PST)
X-Received: by 10.129.164.216 with SMTP id b207mr1184588ywh.124.1487952024167;
        Fri, 24 Feb 2017 08:00:24 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id u12si1716981pfd.3.2017.02.24.08.00.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 08:00:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o64so1183035pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 08:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KLxCAFP0039JyFUpUIhhwW1yp0DwxBWLx6vYFLjsELQ=;
        b=n9g/WWJvPe19anKQd87MP6C38cPpphgdr9OL1GtM6ZvANscWYEsEPGDjI4kTQ5eIM9
         88w6uzlKOID+J3X0J+qJdICYYpK6HZJm4+YD3dU0y8VutMTogyzekVHNW8ZOm5zr3DrQ
         6FPwLMrwfclQpsx0cjVkplS3sNfFtbQkWkRt6sQ3SxuIRr+e91t1JeCBsEVjtbqMJOAe
         kE5obJzlxX5bjRaDQtvX1zLyuzHD7S0nLq5zPFxr5s+5NqUCBQbrdYFPgzNcWblKPUbI
         AJfytd3qf2CZZauR1qtTxyRq3lMdc8GGr4W3u3jiD9uykyEESn1gDn6lOn26QF+h70oZ
         Uh9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KLxCAFP0039JyFUpUIhhwW1yp0DwxBWLx6vYFLjsELQ=;
        b=am21klJg8kEW3s4LVOcZezDnQL8Qy2+JP6FpwVVUGqa81IBTIGqY2VdRn2H+xeGSNl
         j0hX9PjuBFGBLBN7lbtKHSlp6CRU2eRH4n+KadW+KycdTWeZnU92zpULOyG3vrDoM2Xf
         W6TljsY3J/zr2j2A46w2T9wl1g/okO04LrHkgct6OhhnKW3Qq59exW/3cmNHCSG6rKfA
         7Glr/W5/yQ9FUC/UPt7BxSKGXW+jelgmrPtzbuLk+7vqvF1iWKcNFUhbDdzX1pnVS4An
         3nSkED39N46wX4tm7O6bAsMxKBxDj4JZVebYVEjVNgPgCg8YEEkXT0jYFfRuyDop9GCA
         COVA==
X-Gm-Message-State: AMke39nwlgpLzpCWQ2yrQjIpAox8cio5q3npL7HSHtvuxybIWCj+1RsOB50cRekXn5ZfjQ==
X-Received: by 10.84.198.164 with SMTP id p33mr4737526pld.85.1487952023914;
        Fri, 24 Feb 2017 08:00:23 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c64sm15922919pfa.45.2017.02.24.08.00.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 08:00:23 -0800 (PST)
Date: Fri, 24 Feb 2017 21:30:14 +0530
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v6] staging: speakup: Clean up if tests
Message-ID: <20170224160014.did4hrxkmmbfatbu@stayawesome>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (2016-08-21)

Put logical continuations on the next line;
remove useless parentheses;
and line up the tests.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---

Changes since v5:
* Put newline to break up the commit log message

 drivers/staging/speakup/i18n.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 2f9b3df..4514776 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -411,8 +411,8 @@ static char *next_specifier(char *input)
 		next_percent = strchr(next_percent, '%');
 		if (next_percent != NULL) {
 			/* skip over doubled percent signs */
-			while ((next_percent[0] == '%')
-			       && (next_percent[1] == '%'))
+			while (next_percent[0] == '%' &&
+			       next_percent[1] == '%')
 				next_percent += 2;
 			if (*next_percent == '%')
 				found = 1;
@@ -549,10 +549,10 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
 		if (newstr) {
 			memcpy(newstr, text, length);
 			newstr[length] = '\0';
-			if ((index >= MSG_FORMATTED_START
-			&& index <= MSG_FORMATTED_END)
-				&& !fmt_validate(speakup_default_msgs[index],
-				newstr)) {
+			if (index >= MSG_FORMATTED_START &&
+			    index <= MSG_FORMATTED_END &&
+			    !fmt_validate(speakup_default_msgs[index],
+			                  newstr)) {
 				kfree(newstr);
 				return -EINVAL;
 			}
-- 
2.9.3


