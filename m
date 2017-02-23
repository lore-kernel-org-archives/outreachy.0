X-GM-THRID: 6390415872559677440
X-Received: by 10.157.11.27 with SMTP id a27mr13366104ota.125.1487887688833;
        Thu, 23 Feb 2017 14:08:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls4901969otx.21.gmail; Thu, 23 Feb
 2017 14:08:08 -0800 (PST)
X-Received: by 10.129.29.13 with SMTP id d13mr14068801ywd.112.1487887688478;
        Thu, 23 Feb 2017 14:08:08 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id d63si1094605pfe.2.2017.02.23.14.08.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 14:08:08 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 68so113109pfx.2
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 14:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=a/70EDmmuOcLRdAliwsQ/5XKZVpEBfprk0KwOiFJ4Us=;
        b=WIXnDIRey7F38BRnaL3+O17Up99L3CYSQaeCXKiCDSycxA164RX5jPWxa9Y8yTzf2p
         oooWMLzKFuWLMWZvI33pzVLH43R9bNk3vdRdd8xCM8so+J0laKUVrOPZJdwC2kHiJpJk
         sAv9gZiiDjPsI+4r4KjZkoPLCnexfRYr8H8A38UtaHeusTQupASzjWRz0mm9YL9/hL+N
         c7o3oEM2wbpZkch0bVZVCNQ+e3+GnWxXfEQkuzSCUgVC9aA3B+d6FqZJrIi42YNy295S
         aFM4L5FJdEbYD9xlDsnjKgb2Pg9Nt9Dp4zI0nZNGKnaXfA/AJYoGbfsg9YLb6ouM1pBL
         y9xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=a/70EDmmuOcLRdAliwsQ/5XKZVpEBfprk0KwOiFJ4Us=;
        b=rabqt08yF5/Kvzapttrnl8ucQq1CPXObiA/kMuRJl9oTcn2tSebJ2vBYkSiLy1dGHr
         WOxxYDeB3d++HxlPmBQeUIiY+3tMl5RMDTE64d+aqcAh/H4DVKKhOFkE3Rssxjjdk5UL
         8gmETFvUeyBGaVMatobdpPXQIEP429G4iKdgRjsDMkIuckFdgKWSlcWX+eha7jLpk9Hg
         wSkMo/RShJFxsNUgo06wdlhQVhtLRzXXzPXrDdNECKsYTpHZVRCHnMB3J+/yQ0jEmfEj
         weAlxkcOlRyp2ZXCqRY3aEcHSpa9dh4C+76ZOssMnVf1KLjXYRm92XD9ewQieHRXVJru
         C7zg==
X-Gm-Message-State: AMke39lHnlneTZtenP4fsHDvSsiN/XivKUUqkQizJNhA4YsFbli3VILqYa7zzbFd3UL/qQ==
X-Received: by 10.98.201.135 with SMTP id l7mr48231183pfk.67.1487887688179;
        Thu, 23 Feb 2017 14:08:08 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g2sm11478504pfg.105.2017.02.23.14.08.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Feb 2017 14:08:07 -0800 (PST)
Date: Fri, 24 Feb 2017 03:38:00 +0530
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4] staging: speakup: Clean up if tests
Message-ID: <20170223220800.al7uozdiwezmni3x@stayawesome>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (2016-08-21)

Put logical continuations on the next line, remove useless parentheses and line up the tests.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---

Changes since v3:
*Line up the tests

 drivers/staging/speakup/i18n.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 2f9b3df..73645bf 100644
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
+			    newstr)) {
 				kfree(newstr);
 				return -EINVAL;
 			}
-- 
2.9.3


