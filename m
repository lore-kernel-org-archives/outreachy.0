X-GM-THRID: 2331486715904
X-Received: by 10.152.43.166 with SMTP id x6mr566044lal.3.1424581803728;
        Sat, 21 Feb 2015 21:10:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.3.200 with SMTP id e8ls408168lae.65.gmail; Sat, 21 Feb
 2015 21:10:03 -0800 (PST)
X-Received: by 10.152.45.7 with SMTP id i7mr564020lam.9.1424581803193;
        Sat, 21 Feb 2015 21:10:03 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id ev8si407955wib.3.2015.02.21.21.10.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 21:10:03 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id em10so10331003wid.5
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 21:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=4SKOJB2Xt+4qfgeP/Jy0VL2W0r4sS40LtBImtci/I9Y=;
        b=TkvlyccfPRaag110ghF/YXGrrS88Uqr35nt79X6Tj+p2INoRqneBjzaJqPig6KfeiV
         5Ts5A0x45LzBnwRUXlKb4Roj2FkUcOU+ztnAQnPjrydGqgKk+/hRpuhmXLrSyLAQZh0C
         JONTE6i/toTPEpEaRKIlPZ2dfggUhvd1LzsfyNJuFLuSnTXpFU+Qa/aAza70jTQdts2V
         JWqXAfD8y/gsxjMQ5N887K6bfxQHRq5lxi25H0OQ3KEz/SygRIgdX1RGrnHGhVNfSdRm
         t1pJXUnJaXU/Ang2zRPvVB8vR+ef/CAvVhtj5a7qZE0ZxH6oZYiR53Z0t2pGC2kAv3qH
         YbIw==
X-Received: by 10.194.89.163 with SMTP id bp3mr9711887wjb.145.1424581803072;
        Sat, 21 Feb 2015 21:10:03 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.237.30])
        by mx.google.com with ESMTPSA id md8sm9737705wic.13.2015.02.21.21.10.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 21:10:02 -0800 (PST)
Date: Sun, 22 Feb 2015 07:09:59 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/1] Adding new checks to checkpatch.pl
Message-ID: <cover.1424580894.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This is a proposal to add two new checks to checkpatch.pl.
There are two wrapper functions for memset that can be used
under certain conditions. The details are described thoroughly in
the patch itself. The wrapper functions are:

eth_zero_addr()
eth_broadcast_addr()

I'm sending the patch to the outreachy mailing list first for
the following reasons:

Second eye review,
the patch was inspired by one of coccinelle's challenge problems
for outreachy round 10.

I understand that eventually the patch should be sent to the maintainers
of checkpatch.pl

Aya Mahfouz (1):
  scripts: checkpatch.pl: add 2 new checks on memset calls

 scripts/checkpatch.pl | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

-- 
1.9.3


