X-GM-THRID: 2843857649664
X-Received: by 10.236.19.8 with SMTP id m8mr7455823yhm.53.1424793554562;
        Tue, 24 Feb 2015 07:59:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.115 with SMTP id 106ls2974365qgc.57.gmail; Tue, 24 Feb
 2015 07:59:14 -0800 (PST)
X-Received: by 10.52.5.169 with SMTP id t9mr17337101vdt.7.1424793554360;
        Tue, 24 Feb 2015 07:59:14 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com. [209.85.220.44])
        by gmr-mx.google.com with ESMTPS id bo1si4570768pbc.0.2015.02.24.07.59.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 07:59:14 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.220.44;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by pabrd3 with SMTP id rd3so37007779pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 07:59:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=8wv6H8ej13HmFl1GO9+Y+w24d8p8s9pTgBLEE17QO3c=;
        b=ZUfH0sbIBQB9b4dvuKfWESHPzWYIT4DYJW8hAJi89mw4XLUt7qY6/VANEOyUpy1O7P
         H95AviQFTBlY6kV6qO1N0A89eP1WnAYM9HpWcrEcapg3pQ3O48vqblnFmnFZKq19bShd
         bUnt/0fxn0aluLIPHuxm1FnqSfM0eOf8geUj7xMFsAVUXaRlAtqvhrwIXY5Z8IRisFQr
         iMhRhLvkcSXHGlg/B+RfjjkNAn1le7KOfeSAS4+8Qk8bZLnpIuAmF6cu1inov2rSBAmY
         pQ36LdnJaAjE++u2fD92KakYKi/nWrArfx8t1DKZzv5kf3aDj5ab4rDbXu5sI7gyuvU7
         K9ww==
X-Gm-Message-State: ALoCoQkLNuQ6lxTcNGo+mcvie73sXHayC9jYfAHU4AeK3+XY41TB6pjFzyFL/sHb0Wc9vhCcpg6/
X-Received: by 10.66.144.100 with SMTP id sl4mr29417485pab.128.1424793554104;
        Tue, 24 Feb 2015 07:59:14 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:345b:fa47:4a5f:4d11])
        by mx.google.com with ESMTPSA id nv7sm25853523pdb.54.2015.02.24.07.59.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 07:59:13 -0800 (PST)
Date: Tue, 24 Feb 2015 07:59:11 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [RFC v2] Staging: speakup: Replace simple_strtoul with kstrtoul
Message-ID: <20150224155911.GA31347@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1502231813080.2479@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

When compiling the following patch I get two warnings:

WARNING: return makes pointer from integer without a cast
return -EINVAL;
^
WARNING: Cast from pointer to integer of different size
*dest = (u_char)res;
         ^
I'd appreciate any feedback you can give me.

Addresses checkpatch.pl warning:
WARNING: simple_strtoul is obsolete, use kstrtoul instead

Makes indicated change

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
Changes in v2:
-updates arguments for kstrtoul
-checks return for parsing error
---
 drivers/staging/speakup/varhandlers.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/varhandlers.c b/drivers/staging/speakup/varhandlers.c
index f89306d..d4130e7 100644
--- a/drivers/staging/speakup/varhandlers.c
+++ b/drivers/staging/speakup/varhandlers.c
@@ -323,10 +323,13 @@ char *spk_strlwr(char *s)
 char *spk_s2uchar(char *start, char *dest)
 {
 	int val = 0;
+	unsigned long *res = 0UL;
 
-	val = kstroul(skip_spaces(start), &start, 10);
+	val = kstrtoul(skip_spaces(start), 10, res);
+		if (val)
+			return -EINVAL;
 	if (*start == ',')
 		start++;
-	*dest = (u_char)val;
+	*dest = (u_char)res;
 	return start;
 }
-- 
1.9.1


