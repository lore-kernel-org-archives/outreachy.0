X-GM-THRID: 6390781740145704960
X-Received: by 10.157.53.26 with SMTP id o26mr6088328otc.25.1488211421225;
        Mon, 27 Feb 2017 08:03:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.89.216 with SMTP id u24ls58100otg.40.gmail; Mon, 27 Feb
 2017 08:03:40 -0800 (PST)
X-Received: by 10.31.168.145 with SMTP id r139mr1891326vke.12.1488211420831;
        Mon, 27 Feb 2017 08:03:40 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si2979120pfa.4.2017.02.27.08.03.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 08:03:40 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so2133641pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 08:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GezZ95BzTLpcj6dLFumzFM6aJp2iXh0WP9xRIA8XgCU=;
        b=oKXc/ex220VD3DH+N/xzLPlIMMev/JFBewGgVilNdvLadFWaPyHqYdAlqk5XrwxB5s
         1Wdvt8QxmQpxnMERaKBUgXNFL+g9c4rBLJ5LSa4xKnuTpCSRqjHoQjmztgmNfKTmhmwn
         YFh+nvKXfGkDK5LDDypSUSUBSf8ptGo+DzlAnNg+JZ0ce0MVGGeTJ8L6LGTU50brRJLQ
         /DxdMCIr0HLhiFqxrICbch0oqd1YzPife7YqPW85j6ni3+7J/SDUEcMSATV4YRYKASrA
         sO45g2sIeNqYsrEbrVYpBdOjnx3i4MJg2qkmXc2IRUPk3te06huczaD0tyNws233AttL
         mNzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GezZ95BzTLpcj6dLFumzFM6aJp2iXh0WP9xRIA8XgCU=;
        b=oIiZ141plIBetyK+RtRHNo5sWeekLM6PUpkO6OgRTjPwWSfCpaT3uiOAWYqHShnz9Y
         wOKNmEU+mMLpArs2YZFIZTnflJepPtnzAjctZEoMgcqMLYXzZ7QT5+dNITtBQAHPm6N+
         rNv7HoRpI2sjWQy8I5cjUZJTWR9Q3bBgHgi3FRNfp6Q84MCGoLXYLQPKR87gc1drbYrH
         qG9h2r8UB0ksvKqo039V9ZA8CsHK2+xdMiDXS/ySTtXdZAOcq2VkYIK2GBtc5qBbn4e4
         9Rj+HlSB5GLSOfLZwz29ohUytVJrBZHcLum78yBVDUGUbjYQBGhKC7meeWzOvrsrg4Am
         nb5Q==
X-Gm-Message-State: AMke39m+UYn2oN6Q6+CP1PAqlyHwG8mGY4iG+A+b4Zbi1QJOgAK7gHfwJFMjBg0DMA693Q==
X-Received: by 10.98.34.86 with SMTP id i83mr15940409pfi.89.1488211420565;
        Mon, 27 Feb 2017 08:03:40 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e7sm31655926pgp.2.2017.02.27.08.03.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 08:03:40 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2 v3] staging: speakup: Clean up if conditions
Date: Mon, 27 Feb 2017 21:33:29 +0530
Message-Id: <20170227160329.23328-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Found by checkpatch.pl
Logical conditions are on the next line, useless parentheses present
Clean up the if tests by

* Put logical conditions on the previous line
* Remove useless parentheses
* Line up the tests 

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>

---

Changes in v3:
*Correct placement of patch changes

Changes in v2:
* More elaborate log message
* Fit MSG_FUNCNAMES_END) on the previous line
* Fit ch == SPEAKUP_HELP && on the previous line

 drivers/staging/speakup/keyhelp.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index c373762..4d00bc2 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -163,17 +163,15 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		}
 		cur_item = letter_offsets[ch - 'a'];
 	} else if (type == KT_CUR) {
-		if (ch == 0
-		    && MSG_FUNCNAMES_START + cur_item + 1 <=
-		    MSG_FUNCNAMES_END)
+		if (ch == 0 &&
+		    MSG_FUNCNAMES_START + cur_item + 1 <= MSG_FUNCNAMES_END)
 			cur_item++;
 		else if (ch == 3 && cur_item > 0)
 			cur_item--;
 		else
 			return -1;
-	} else if (type == KT_SPKUP
-			&& ch == SPEAKUP_HELP
-			&& !spk_special_handler) {
+	} else if (type == KT_SPKUP && ch == SPEAKUP_HELP &&
+		   !spk_special_handler) {
 		spk_special_handler = spk_handle_help;
 		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
 		build_key_data(); /* rebuild each time in case new mapping */
-- 
2.9.3


