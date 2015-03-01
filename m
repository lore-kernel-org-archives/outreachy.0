X-GM-THRID: 5348584849408
X-Received: by 10.70.138.71 with SMTP id qo7mr13113648pdb.9.1425200737145;
        Sun, 01 Mar 2015 01:05:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.247 with SMTP id m110ls1266451qge.81.gmail; Sun, 01 Mar
 2015 01:05:36 -0800 (PST)
X-Received: by 10.236.2.227 with SMTP id 63mr20943632yhf.12.1425200736961;
        Sun, 01 Mar 2015 01:05:36 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ks4si1094960pbc.1.2015.03.01.01.05.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 01:05:36 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id bj1so34890970pad.5
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 01:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=oIdZLFDFA3a87bIbG4g8T8f+/3S2pCbgFunbeUOH8xo=;
        b=SVEnicU7T+8DR9DYU+LOToveGKs56k4J7su7WhWCxBD4Jj1kkWwU42sndxQ5zQJDlA
         iq62lStqPmbTBFSCCfGeK6Gq7MqrQdNa8W3FDzSSzG5Alb+9QpZ8qJBbVTXfCrUKz1+k
         UV2/8wXua91IW/G/soIIcj6/v28LtPxZZFcsHgGVSJeR45qpcJHtmdX7D4+ALf70xbA9
         PbU8W74z7iIv9sYTrAD8kS4h88C3BFmMJF8zZ7O034sqJfGBWD8YwhxpB9tPMXnEuPoq
         SWx4XMQExcqFWzYCfY7SgFnTv6TN6HB40Fjme6XSVAI4+161iwgVE2Vs/UJw06KIAGP2
         G4XA==
X-Received: by 10.68.201.168 with SMTP id kb8mr37747884pbc.89.1425200736745;
        Sun, 01 Mar 2015 01:05:36 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id bc5sm3514136pdb.47.2015.03.01.01.05.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 01:05:36 -0800 (PST)
Date: Sun, 1 Mar 2015 14:36:50 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: lustre: Fix warnings in llite_lib.c
Message-ID: <cover.1425200447.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset cleans llite_lib.c by fixing checkpatch.pl
warnings such as:
prefer kstrtol to sscanf, remove braces in if-else
with oneline statements, remove space in function call and
at the end of a line.

Navya Sri Nizamkari (4):
  staging: lustre: Use kstrtol instead of sscanf.
  staging: lustre: Remove unnecessary braces.
  staging: lustre: Remove whitespace.
  staging: lustre: Remove space in function call.

 drivers/staging/lustre/lustre/llite/llite_lib.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

-- 
1.9.1


