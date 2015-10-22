X-GM-THRID: 6208143559134019584
X-Received: by 10.50.114.2 with SMTP id jc2mr32086460igb.5.1445532250074;
        Thu, 22 Oct 2015 09:44:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.38 with SMTP id rt6ls929306igb.25.canary; Thu, 22 Oct
 2015 09:44:09 -0700 (PDT)
X-Received: by 10.107.129.11 with SMTP id c11mr13529338iod.20.1445532249696;
        Thu, 22 Oct 2015 09:44:09 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si1720979pac.2.2015.10.22.09.44.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 09:44:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hk11so91135100pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 09:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NQOlte9OzEiKPkZcw5yZ0reTvPe8aABgV4YPG79r7V4=;
        b=AbTGGLMIfNAacQV1pbCrmLZ/NU28wkMKy7ZTATCN/oLFh6SGYkJsr/vlQDwfilRrEw
         rIcTJdmKwPXTy7z/jIQ1Vqvr28r39/2b0wEejdahPMMV2ZuFNTUwz2HLXFBCVQBmPape
         8cTwjzAEIQgMezrTcQDQPcSddeNgPpwO3bsX6wvA0Tnggs58DVSi4KDexIa/rQxYrFKo
         FBXMbJQpxvQ72/CH92gsnzUSJLgZ2n+FEEEGEtjACt5cNmcJQH95QAK2vJjOZMdJk/08
         eHQ5lRQsXLrFLHgqe6K5E7ggpufRf0CIGrhddhV1Y8PTiuD5kubJtODn/8+1kgxWe6XF
         N/ow==
X-Received: by 10.67.1.73 with SMTP id be9mr18576550pad.35.1445532249549;
        Thu, 22 Oct 2015 09:44:09 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.34.222])
        by smtp.gmail.com with ESMTPSA id st5sm14722981pab.42.2015.10.22.09.44.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 09:44:09 -0700 (PDT)
Date: Thu, 22 Oct 2015 22:14:14 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] Improve code, codestyle in xgifb.
Message-ID: <cover.1445527912.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

[Changes in v2]
In version v2, I remove a patch from the original
patchset as it was not valid.

[original cover letter]

This patchset clears checkpatch warnings in vb_init such as:
space required after that ';', remove blank lines after {,
remove blank lines before }, remove multiple balnk lines,
comparison with NULL, space required after that ';'.

Navya Sri Nizamkari (4):
  Staging: xgifb: Remove blank line before } and after {
  Staging: xgifb: Remove extra blank lines.
  Staging: xgifb: Fix comparison to NULL warning
  Staging: xgifb: Remove space after cast

 drivers/staging/xgifb/vb_init.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

-- 
1.9.1


