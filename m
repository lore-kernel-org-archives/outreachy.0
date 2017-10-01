X-GM-THRID: 6470117861435113472
X-Received: by 10.28.99.67 with SMTP id x64mr1471612wmb.31.1506893690268;
        Sun, 01 Oct 2017 14:34:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.161.208 with SMTP id v16ls2967115wrv.8.gmail; Sun, 01 Oct
 2017 14:34:49 -0700 (PDT)
X-Received: by 10.28.131.14 with SMTP id f14mr1455529wmd.25.1506893689366;
        Sun, 01 Oct 2017 14:34:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506893689; cv=none;
        d=google.com; s=arc-20160816;
        b=Ila6fzS+q6BC+1RRevxFPYJZ4V8pxZOMjG36pPumhoxdebseGLk/uAAfERuzfk7Oht
         7dCO8JSz41wLehfuiNMuCBIIfP1A4BgGI4W20kbM6zDGhLaxnY/PoBOk5nKiytdzV+um
         YKRc3KEES+Zrw06wNgnausTmaqKqbvCK61AivTmbygonEWvQiAwULrqHIRmjmE0rYuua
         DaHEX/K2OYqjSruwHrwMBH4vkLGrlbRXi9F73wI0gnId+Nelhat3nj1Y1x9KxXNjqUve
         /4OmAYBzSW10WQ4LFSAfh2tsQy0hgrcITNFPBQwMdEfhqEplkklz63RmbX61uB424Zha
         6N3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=1qHSAlM1DVTb9CBsCXcUeceBiWzhXS81Q9dOLnBa+yI=;
        b=nZWSFzoQ3R4frWAnDtDzcOt8HQF4LodCX10UpNN4xkE9ItXGf3PcoruJJ3ceW3ovO6
         L78+pEKRnnhNHIKpspcD9dk9CDvp70D7oTztHxB54QJg7aL9NkVhVk5pL283/yum/smn
         EfB/ElIxev8TCmA7eL5U6qYUrKOYZK21pmrJhgHyZnOUD2g/5ZDb179+nSCqXRePa1+a
         edtw1BR4u/pH/zwyy8O1wM7EaCHj2Iu6uJNgY0n0Oi3APy/FnB3arLWn5OPZlHXxcj++
         kOPgxEGBPX1JRE34HJAv1M0ACP23dZmYaz4qhqUGRKIqPQlJASMQKRbdyHYPNwHiEQt2
         5pDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QqLrs5/j;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id l133si1086167wmb.3.2017.10.01.14.34.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 14:34:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QqLrs5/j;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id k10so2670263wrk.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 14:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=1qHSAlM1DVTb9CBsCXcUeceBiWzhXS81Q9dOLnBa+yI=;
        b=QqLrs5/jYbTgrEr9GWJ6rJcTNfBycosjkJQ4p7qpgwxKEqXbD5P0BFrEQj7B5eVXPc
         auML6knfuW1I2n9wHTyJhruxQoLEa24quL7A1DX+zVczVHDtvNmMZTDhnkcS6amBzKvK
         1mztn0aMelOPcp9sBtQEQtE/YLBxm2EFPh63tCbgyxoMyihn4bJhzqmoq9jHiquZoy4Z
         AlfgfrBAOrMx9JQ2J41lGHg6pFP6PoExVOe7CO5Z8rYSKtNoSC8/IJmdO7zlZqnnWBCY
         hAdYHWLHoLWGqAdWQPiRUBmBgt2TcX3sCbyh6ius4Bf+ZPYnv3D9rBM7Egp7eSVmIpbT
         XgkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1qHSAlM1DVTb9CBsCXcUeceBiWzhXS81Q9dOLnBa+yI=;
        b=FI55boJZy8A3asLH0md/4PyJsuJQaqvfMwfsrjMrs4BIVfj7uxBA7xhjvfMGouSi+8
         DbAj177Gf2xSsyrPpKpp7dQxJOwpmO3D9e+6hzhEIIvDpT0Kk5qn+wAdcyQkPzl0z/Ql
         54lzLKRGNNl872O5e7jSOmLpCS8rJWvCb8V17aNfgBz/Q6dXXLj5CtezzKxfIdFwTUyQ
         dhf+pXwGNBWGqj7WkqTakajutMyhBatUHMDMHIjGBOukRtoI4H9UH76r1Yq3qYiSni36
         OMosjRSK+7lhh0nTkYWF6dbAHV4qMI57eblCLKjYpHN2AurFd/KHYGdvinIzzR7M9sXA
         b2KA==
X-Gm-Message-State: AMCzsaUA4xFGOKGHU+OyonkWBJF4e1/3SKS64thJc2i60YKD2CvDi4ZI
	DGExMq8lNEb4QUbmaZOtdkk=
X-Google-Smtp-Source: AOwi7QC+DVrTZ/m4+6VPNF6r3+5/K+aboftzixpShcJIsLLP9RsxLasIqE6zOjFW4LH8mWOss/tlLQ==
X-Received: by 10.223.157.74 with SMTP id o10mr1953167wre.213.1506893689031;
        Sun, 01 Oct 2017 14:34:49 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-133-163.residential.rdsnet.ro. [5.12.133.163])
        by smtp.gmail.com with ESMTPSA id i10sm4315364wmf.14.2017.10.01.14.34.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 14:34:48 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 0/7] Fix checkpatch issues
Date: Mon,  2 Oct 2017 00:34:35 +0300
Message-Id: <cover.1506891671.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0

This patchset was created to fix warnings introduced
by several patches from the previous patchset.
The number of the patches was reduced from 10 to 7
because 1 patch is already accepted, 2 patches were
combined into a single patch, and the changes from
the 10/10 patch were added in the patches where 
coding style fixes were required.

* [1/07] kmalloc generates a backtrace on failure and it will
show the same information as the removed messages.
* [2/07] the unlikely function is not necessary on NULL pointers
after a memory allocation.

Changes in v2:
* Nothing changed in 1/10
* New added 2/10 - 10/10

Changes in v3:
* added a different cover letter message
* removed an accepted patch
* removed the braces for single statement blocks in 1/7
* split the lines with over 80 characters where changes
were made 

Georgiana Chelu (7):
  Staging: media: atomisp: Remove useless 'out of memory' messages
  Staging: media: atomisp: Remove unlikely from NULL pointer check
  Staging: media: atomisp: Adjust checks for null pointers
  Staging: media: atomisp: Remove return statement from void function
  Staging: media: atomisp: Add spaces around bitwise OR
  Staging: media: atomisp: Merge quoted string split across lines
  Staging: media: atomisp: Align code with open parenthesis

 .../media/atomisp/pci/atomisp2/hmm/hmm_bo.c        | 156 ++++++++++-----------
 1 file changed, 72 insertions(+), 84 deletions(-)

-- 
2.11.0


