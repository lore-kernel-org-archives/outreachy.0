X-GM-THRID: 6390415872559677440
X-Received: by 10.237.58.5 with SMTP id n5mr11346773qte.84.1487884640357;
        Thu, 23 Feb 2017 13:17:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.133 with SMTP id 5ls4491497oth.45.gmail; Thu, 23 Feb
 2017 13:17:19 -0800 (PST)
X-Received: by 10.157.17.235 with SMTP id y40mr10604330oty.21.1487884639978;
        Thu, 23 Feb 2017 13:17:19 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c123si906253pfa.4.2017.02.23.13.17.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 13:17:19 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 1so353057pgz.2
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 13:17:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=txvYr8YRPozyELLNLxfXmTQKlt0dTIblFlvHYCD+LEE=;
        b=idft1CxDGF4BJpc4Ad+I5WDZ51Ch9AA30R0uBlrtjFbIbmsIekmVnMSVJCMQHZdS58
         fuLRbxfmuArA/LBDiHhVav4uoN4bF7J8ctzQrHcu/2+GooQq8A/kow8WVWaPhjD1eZdT
         ZxWMmVG0NG0nt64MhvhAT9GX0jo31aksaSXiLhWRgVLdV6SYVdWjbhmLzykZCmkVPsxp
         TVvEBNhMMo7Oa2ebkg0VGctybsFLFHqoyX/mU3x0kF6VtCcXpVtioy3U06al2twIJrA+
         aDSgitLx9vnstZ6tSkJZeuYlQHlyneBkHU6Czm7eQGXvMcj1OkHunlUkeh+QEsSQig8G
         YKNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=txvYr8YRPozyELLNLxfXmTQKlt0dTIblFlvHYCD+LEE=;
        b=NAzD8qCOPEcJDgz2wo4PAVk7rsrsLkGAWFNYYdDdfJw/gXDTE9xNBsy0cU0kwIgVkC
         aOEZZfI0B5i6GZNLoBxRb5Of8QeKJX5jQfz5QR5q3gPlfYy21F5zkjLrQVb1YBeHuMy4
         nMIupCTPdR8YaIFyVqCvfpZ+6rZ8fov9waY+LRkREzh7ZDYSczBGOQ45B+ge84jQCJvJ
         xclfkxahMfNYlKluEl1/UZxsXv18NXvtMZEIWkkCW3Ip55kNCGW8g7YcKIlzBrTgSfJC
         8D6H8/jgIYmpcKK9ZvKzbFHQZJwddnh49gVdtmC014/nFJwdXQ7C2KzrLmoepKg9mzKA
         KQAA==
X-Gm-Message-State: AMke39lNnNYuk+3FTt4DhJada9r+cW1epuf9GYWn6EhVw/S3Qj76i06RifV5S1+yQuXdiA==
X-Received: by 10.99.36.7 with SMTP id k7mr50749336pgk.199.1487884639719;
        Thu, 23 Feb 2017 13:17:19 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x15sm11471340pgo.56.2017.02.23.13.17.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Feb 2017 13:17:19 -0800 (PST)
Date: Fri, 24 Feb 2017 02:47:11 +0530
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] staging: speakup: Clean up if tests
Message-ID: <20170223211711.zyivrz6ymrsixbfc@stayawesome>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (2016-08-21)

Put logical continuations on the next line and remove useless parentheses. 
Found by checkpatch.pl

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/speakup/i18n.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 2f9b3df..aae3361 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -411,8 +411,8 @@ static char *next_specifier(char *input)
 		next_percent = strchr(next_percent, '%');
 		if (next_percent != NULL) {
 			/* skip over doubled percent signs */
-			while ((next_percent[0] == '%')
-			       && (next_percent[1] == '%'))
+			while (next_percent[0] == '%' &&
+				  next_percent[1] == '%')
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
+				  index <= MSG_FORMATTED_END &&
+				  !fmt_validate(speakup_default_msgs[index],
+				  newstr)) {
 				kfree(newstr);
 				return -EINVAL;
 			}
-- 
2.9.3


