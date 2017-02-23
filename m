X-GM-THRID: 6390410842112786432
X-Received: by 10.36.17.200 with SMTP id 191mr1362446itf.31.1487883469082;
        Thu, 23 Feb 2017 12:57:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.47.2 with SMTP id j2ls87455itj.20.canary-gmail; Thu, 23 Feb
 2017 12:57:48 -0800 (PST)
X-Received: by 10.99.106.6 with SMTP id f6mr13261527pgc.50.1487883468241;
        Thu, 23 Feb 2017 12:57:48 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s64si1177464pfk.0.2017.02.23.12.57.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 12:57:48 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id z128so297919pgb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 12:57:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=G8UrLnc+1KxFErcZiIJf2yMwxkPyjKhCvVG3c7XTbNo=;
        b=NH0JHrZbdUu9vJdlsNBmUq5e4VrTs2el3fttkPGU6STNdjqzAXLK4aaERE1Js4MlxF
         M2d4rpBtJRyQ7iVSv/r1OrFQKCCjH8TfxcUHOwRueHWVphoGHJgMjGGphtiaX+JWYXVx
         Z+OPkbmonpctzeb39877OOmQzcw0IKkfXm1xEBM+BkMlZx5cbTbtSfZALMmLB3PAe1Dx
         3Cul8gSjS+xhSb7Fx5j69TY8K/Gtkpm7nf8hzrmhffGZfSEqefLu80pakuDEABYVupuR
         iLrc+21YU8WF0i3zFe45iI/r/XIx75xgfGar8bAsPxDjY6xB6j7A8MX869AnlsRlKXoB
         Ed4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=G8UrLnc+1KxFErcZiIJf2yMwxkPyjKhCvVG3c7XTbNo=;
        b=XTxLD0rPnWAXUqAXEJOIDJZcn56IexzCfq3JeJNQz4sFLjf/43hpAiawmtdQUtqZqB
         pCGFNNUIj9hPpTVueKPOKMclB6viOjRTaq79NZLktL62NYe/F9vWrjPqSJurdxB70Px8
         ACvsR+Y/Y3mXMnzvMArcOCQ1T6oftLQ6or1Z7gTzx6MK99yrxS/GccEGLZ25YZxa8IXt
         oLfs45bYdYK1lFoGkPpZtllec1oPp/J/Ax+O/galMysWP/8SSjjFj2sn1WmZ4uQOh9AN
         4RDUMaKv5ARfKrHZ71YE9HWobjyhm2BiQWdZkOi8ihIs8Frd8eN1lgsuqHYrcM5AyLuc
         2jng==
X-Gm-Message-State: AMke39kIbFO6H81vfZCULgArysxBeON3HJD1XwGUYe4Wi8ulWtKw855vxqYmpG7bi0RuaA==
X-Received: by 10.84.247.23 with SMTP id n23mr24042771pll.39.1487883468012;
        Thu, 23 Feb 2017 12:57:48 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u24sm11420602pfi.25.2017.02.23.12.57.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Feb 2017 12:57:47 -0800 (PST)
Date: Fri, 24 Feb 2017 02:27:39 +0530
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: speakup: Put logical continuations on the next
 line and remove useless parentheses
Message-ID: <20170223205739.bogznf7diy26ew2t@stayawesome>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (2016-08-21)

Put logical continuations on the next line and remove useless parentheses.
Found by checkpatch.pl

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/speakup/i18n.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 2f9b3df..b9698bf 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -411,8 +411,8 @@ static char *next_specifier(char *input)
 		next_percent = strchr(next_percent, '%');
 		if (next_percent != NULL) {
 			/* skip over doubled percent signs */
-			while ((next_percent[0] == '%')
-			       && (next_percent[1] == '%'))
+			while (next_percent[0] == '%' &&
+				next_percent[1] == '%')
 				next_percent += 2;
 			if (*next_percent == '%')
 				found = 1;
@@ -549,9 +549,9 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
 		if (newstr) {
 			memcpy(newstr, text, length);
 			newstr[length] = '\0';
-			if ((index >= MSG_FORMATTED_START
-			&& index <= MSG_FORMATTED_END)
-				&& !fmt_validate(speakup_default_msgs[index],
+			if (index >= MSG_FORMATTED_START &&
+				index <= MSG_FORMATTED_END &&
+				!fmt_validate(speakup_default_msgs[index],
 				newstr)) {
 				kfree(newstr);
 				return -EINVAL;
-- 
2.9.3


