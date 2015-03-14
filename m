X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.53.225 with SMTP id e1mr8143657wjp.4.1426358978516;
        Sat, 14 Mar 2015 11:49:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.78.167 with SMTP id c7ls357596wix.33.canary; Sat, 14 Mar
 2015 11:49:38 -0700 (PDT)
X-Received: by 10.180.80.35 with SMTP id o3mr1247945wix.0.1426358978077;
        Sat, 14 Mar 2015 11:49:38 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id l8si154840wia.0.2015.03.14.11.49.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 11:49:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22c.google.com with SMTP id k59so12373075wet.3
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 11:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=INVjhbPwg9upbMlmESDGA2045+Ycq+qs0W0asf6rnIo=;
        b=F24s6mKHtbCFVw0x+x2ohmOmDjBq3wLNpr/kpkAp6JXDX1TuME7zgxVc93Pfgv6ndt
         omTauf/Y435pMPajg2iDQT2yzcRHx+lKFx5kf1YV/C2rPdOmSqg2dknAxED1tcurdyQF
         KBtynYmcNNXvr/BDk10aZlej7JVGyToacJz+B9l14H7bpJErwDOnThr16kiKLq09HAQt
         /gdG6vlEd2OlitXk3oNRvO4eNtTQ8xZazWJRui1w5cokRhMjef1pcxerJOgqnDglQMwE
         oDAKRTOiuqEOrE/6j7+la4spw72aX/Ttp4DVrxB0ncKiH0PB7EoF26tzgC6VAeDuIqzr
         fhwA==
X-Received: by 10.180.19.73 with SMTP id c9mr130141652wie.10.1426358977998;
        Sat, 14 Mar 2015 11:49:37 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id v8sm3640902wib.0.2015.03.14.11.49.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 11:49:37 -0700 (PDT)
Date: Sat, 14 Mar 2015 20:48:56 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/6] Staging: iio/frequency: Fix style issues
Message-ID: <cover.1426353884.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset involves removing style issues in iio/frequency and 
cleaning up as suggested by checkpatch.pl.

Changes in v2:
 [PATCH v2 3/6]
	- add BIT() macro implementation in ad9834.h for macros AD9834_REG_FREQ
	  and AD9834_REG_PHASE involving phase and frequency registers.
	  Checked against the datasheet.
 [PATCH v2 5/6]
	- make the commit message more clear
	- align parameters in ad9834_show_out[0|1]_wavetype_available()
	  functions, also.

Mention: Regarding the indentation, I applied the patches on a
separate test branch and they aligned well. It shows up twisted only in the
patch format for an unknown reason.


Cristina Opriceana (6):
  Staging: iio: Remove space after type cast
  Staging: iio: Remove explicit comparison to NULL
  Staging: iio: Prefer using the BIT macro
  Staging: iio: Do not use multiple blank lines
  Staging: iio: Alignment should match open parenthesis
  Staging: iio: Use braces on all arms of if statement

 drivers/staging/iio/frequency/ad9832.c | 10 ++++----
 drivers/staging/iio/frequency/ad9832.h | 12 ++++-----
 drivers/staging/iio/frequency/ad9834.c | 45 +++++++++++++++++-----------------
 drivers/staging/iio/frequency/ad9834.h | 37 ++++++++++++++--------------
 4 files changed, 52 insertions(+), 52 deletions(-)

-- 
1.9.1


