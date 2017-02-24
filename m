X-GM-THRID: 6390415872559677440
X-Received: by 10.107.38.193 with SMTP id m184mr781637iom.28.1487926061909;
        Fri, 24 Feb 2017 00:47:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls6635911otc.30.gmail; Fri, 24 Feb
 2017 00:47:41 -0800 (PST)
X-Received: by 10.13.247.4 with SMTP id h4mr528615ywf.4.1487926061599;
        Fri, 24 Feb 2017 00:47:41 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f7si1408161pfk.5.2017.02.24.00.47.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 00:47:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 1so2368744pgz.2
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 00:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=p86Yeg6z2OM5ZL6CqWrS5N/oihL9Yuvnogzwanoaa58=;
        b=FAlqoJoseoM5e2eeO7o8nNtKrRsSygV4U0Ah/dK1wEdHm8h+1WQFYrFzNpACwRVbrF
         mQZcJmu1JbhQHMGU8WGn4+x2wYG2vLSG9NeDaxjVT58EFo8pxSs9VggFgZy/DCXmCx8D
         WZAUFGNg40htm9rtQP/fEqasyQ+s2RW2GdQoULzDJUoE0xcEQP9OydVISanR8+OSp1O6
         AVaOVWGdFugPDmxubuXLBS208MksVottZXQK5eIruf27ud58ynRqvIPwKDa49Qn41JOM
         mRtJS5nSNRVGAFGhEam6bCLyml0ZWJIQHfrsvXg2jmA0iGDh2R2Io496u3R9PEEhh8r6
         XvcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=p86Yeg6z2OM5ZL6CqWrS5N/oihL9Yuvnogzwanoaa58=;
        b=VE0Qz2hYPz/vhmnT9Am/N071uChthxdwnfx9KLROKQjWERUqdf2ZHJmn8Fy1V3b1BM
         dvLOitGmkE9dT+hbC++ZyZRyIOQk3Q8lOyOZv8wM9g/zc2+W412DrEyA8SfkRmEieW7K
         yOj12pGQb/6mo53KR1UE8XjFvOGeLO10cRZnBDaQ3gN1wZSlqr/LqP5Yo3asM+Wvt8pD
         yx7dHcc4Iikd9h/ywBpU51ZjPgoc3SSBZ9Il4ZWvc8JVF1mfKZ/FRAR+zO7Y8lJHYcmB
         +qIatmclOpOBcDZ5+tlW/5o01UEbBFMtP6VbAHobU0+k7KDwCZSgy0x1FrDGQKz0i+kL
         9RbQ==
X-Gm-Message-State: AMke39lDYAMi6lKX1la7SW9EOodkBzlxB2mJFLCaxVap3rDIrWKlOXb+66FHVN4joEzwwA==
X-Received: by 10.98.204.25 with SMTP id a25mr2050302pfg.6.1487926061365;
        Fri, 24 Feb 2017 00:47:41 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e13sm13872458pgf.48.2017.02.24.00.47.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 00:47:40 -0800 (PST)
Date: Fri, 24 Feb 2017 14:17:32 +0530
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v5] staging: speakup: Clean up if tests
Message-ID: <20170224084732.5pinudmiwbnye4kt@stayawesome>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (2016-08-21)

Put logical continuations on the next line, remove useless parentheses and line up the tests

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---

Changes since v4 : 
* Line up the argument newstr 

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


