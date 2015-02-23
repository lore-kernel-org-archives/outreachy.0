X-GM-THRID: 2843857649664
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,837e11d1bf93e34c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.153.16 with SMTP id vc16mr5538916pab.42.1424707674570;
        Mon, 23 Feb 2015 08:07:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.231.161 with SMTP id th1ls314233obc.5.gmail; Mon, 23 Feb
 2015 08:07:54 -0800 (PST)
X-Received: by 10.182.18.102 with SMTP id v6mr13093594obd.11.1424707674374;
        Mon, 23 Feb 2015 08:07:54 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com. [209.85.192.171])
        by gmr-mx.google.com with ESMTPS id pc4si4272302pac.0.2015.02.23.08.07.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 08:07:54 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.192.171;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by pdjz10 with SMTP id z10so26292251pdj.12
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 08:07:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=+zu/hUjFsomzsv0qH3zKlXmhMHiLoIwqd7+wSU0Eqlk=;
        b=Z3tPmtpw7IeHwtLappTcTgY+mxVHg1VkmeRPQOn8zj6ta6JrM/tKQeow9yOXp9sKBq
         7t+pWQD7pghl2zyAW3c7Zi23rguLVkwL2ZvFY2RcsfiTHnctzWnY3fe7RvCrVtTZZKMz
         +GxYTISct7EC05LjtgS+S2PWC2n4Jn314oJJ8ZLT8siXNYQ/sJoXTfuv4/yW89bCOmtD
         uqBHyDa+KH9T2H/KyEK6lJbkBy1bDlpYowPHF9m7PPd+ei4b35sdu/JKGl4SrxwGF2Sp
         bmlqErNQJeyCjh83xvKoPkVCHbDM6hVzWs7NV6gIIE4ff4bPgPwcdB8qpSJregoo+mAN
         X1Bw==
X-Gm-Message-State: ALoCoQmnvspivvUWB5Jl4+eMlfKHAK0AnnZi/2X2JUxA8ahQT2jAEy6ZG3rFHniVSRyrShPPaWD2
X-Received: by 10.70.103.236 with SMTP id fz12mr20175569pdb.167.1424707674174;
        Mon, 23 Feb 2015 08:07:54 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:345b:fa47:4a5f:4d11])
        by mx.google.com with ESMTPSA id kd6sm3988189pbb.40.2015.02.23.08.07.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 08:07:53 -0800 (PST)
Date: Mon, 23 Feb 2015 08:07:51 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: speakup: Replace simple_strtoul with kstroul
Message-ID: <20150223160750.GA3917@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Addresses checkpatch.pl warning:
WARNING: simple_strtoul is obsolete, use kstroul instead

Makes the indicated replacement

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/speakup/varhandlers.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/varhandlers.c b/drivers/staging/speakup/varhandlers.c
index 1b0d1c0..f89306d 100644
--- a/drivers/staging/speakup/varhandlers.c
+++ b/drivers/staging/speakup/varhandlers.c
@@ -324,7 +324,7 @@ char *spk_s2uchar(char *start, char *dest)
 {
 	int val = 0;
 
-	val = simple_strtoul(skip_spaces(start), &start, 10);
+	val = kstroul(skip_spaces(start), &start, 10);
 	if (*start == ',')
 		start++;
 	*dest = (u_char)val;
-- 
1.9.1


