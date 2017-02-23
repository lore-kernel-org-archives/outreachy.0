X-GM-THRID: 6390370583469621248
X-Received: by 10.157.44.133 with SMTP id p5mr13568867otb.33.1487874096652;
        Thu, 23 Feb 2017 10:21:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.139.131 with SMTP id n125ls1396369iod.28.gmail; Thu, 23
 Feb 2017 10:21:35 -0800 (PST)
X-Received: by 10.99.208.69 with SMTP id s5mr13473326pgi.38.1487874095890;
        Thu, 23 Feb 2017 10:21:35 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f7si1026075pfk.5.2017.02.23.10.21.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 10:21:35 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 1so5331132pgz.2
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 10:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yyg7gYOD10KhGUL/Jfpv5k+CB7g0ws5tvaiCrEJF7v0=;
        b=TnsE+Qtq73CP1pfN2qQCy+jOprEd01efhzuZ9beJvLwy+VimqaEH6mLoOBnaz3Kztc
         kD1oIjx2EYPcZvqwKEweGW3poYTqomTCq57qICIpHRmoCorRDK7TQqYHDs7+x+IGyGJL
         hLgGhSYqEhAN5LgYpcz4XoH2OIiVXYN8YychMfAW9bDHT6m31h7Tw2GfbIl4WwDsDsXu
         MlVpSVCWMMd1RRlYP1zmDN3MBZfacptphzV0VJfjX+2vjbGDp6XDZvsSS2qVjaqvC6Ta
         se5YXc1EpbT/le6t77Gx4iqtU90O/eZ8AlVk/ni5wZy3uXdycrU8nQjvW5A3hkWxDnFU
         nbSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yyg7gYOD10KhGUL/Jfpv5k+CB7g0ws5tvaiCrEJF7v0=;
        b=WU5L0n6SUp+fp6nZscMLwHYkk2jWxqGfha357HVXe6F1z+s1h61TO17JJPtCDW5lIa
         aOFwgsrEzr4pLbzpdHw7j5fzymQPQmJrW1e8ET+XC0PQbSC5vV8esbIshk5vX/TetjZS
         K+MBf/hDNTFkPH1AKmO/TbeoofQmIQgJg5QVQYapJeGPwB5yPq7oU9XNn2AMx8fSF7aR
         43j7V0UHRGGr67am4c93i8zVpJJHcjXvRdwxydqa7Tyv2f2Yc9SpMjikCemBKCk7kOBA
         fJ5mgjQ/7e64aB9nVWC/ayh3t7ApQEkREYmGYcZnqjoETlY+5q8UbdYdfod2IgynA30Q
         DF4Q==
X-Gm-Message-State: AMke39nwzlK3OduTwqqbpwymVgC34TldbOqlBGMuxniG5DSXxBzwZudNIDzrRw+AU1qTig==
X-Received: by 10.99.96.135 with SMTP id u129mr36882010pgb.216.1487874095696;
        Thu, 23 Feb 2017 10:21:35 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q7sm11048755pfb.98.2017.02.23.10.21.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Feb 2017 10:21:35 -0800 (PST)
Date: Thu, 23 Feb 2017 23:51:27 +0530
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org
Subject: [PATCH] staging: speakup: Keep logical continuations on the previous
 line
Message-ID: <20170223182127.g6wkeeyemafeow2k@stayawesome>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (2016-08-21)

Logical continuations (&&) are on the next line where a line has been broken up because of being longer than 80 characters. It was found by checkpatch. Keep logical continuations on the previous line.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/speakup/i18n.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 2f9b3df..c539825 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -411,8 +411,8 @@ static char *next_specifier(char *input)
 		next_percent = strchr(next_percent, '%');
 		if (next_percent != NULL) {
 			/* skip over doubled percent signs */
-			while ((next_percent[0] == '%')
-			       && (next_percent[1] == '%'))
+			while ((next_percent[0] == '%') &&
+				(next_percent[1] == '%'))
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
+			if ((index >= MSG_FORMATTED_START &&
+				index <= MSG_FORMATTED_END) &&
+				!fmt_validate(speakup_default_msgs[index],
 				newstr)) {
 				kfree(newstr);
 				return -EINVAL;
-- 
2.9.3


