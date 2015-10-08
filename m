X-GM-THRID: 6203360253861429248
X-Received: by 10.50.18.50 with SMTP id t18mr4493325igd.8.1444332360920;
        Thu, 08 Oct 2015 12:26:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.19 with SMTP id 19ls1259814qga.41.gmail; Thu, 08 Oct
 2015 12:26:00 -0700 (PDT)
X-Received: by 10.13.247.132 with SMTP id h126mr7352326ywf.56.1444332360298;
        Thu, 08 Oct 2015 12:26:00 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id wl2si5572279pab.1.2015.10.08.12.26.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 12:26:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id lk4so62744402pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 12:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=1hnIJqlaWHVoJT+qq70RPL3/IZUH2PkZ9Y7TM28/dVE=;
        b=Kkj5taKTIoJiQRykGdNN+FFQWQvq6pZ5J02EoTApKehgku9ru0Cb2z4dD/P9ukv/BK
         A+xZNvJzdl95ekHG3jMcZoj/PoZHxnCKJiaUKoP3XK3r1O3M4lKe4O79rlhoJ7mqxlEh
         ssnD0ZAFXTosK5e8ajlcapAvOOsTfEeYnLjoFIvLiocSbJNdyJNlzpM/g1Vv9XXcYIo0
         /IqrPLMyukaKGz/xP8UOL8I2XYwMwS+bUUG9t9JkpBHArqncul+b5ENwXHRHyAKxaweD
         3QfdRfq9pp2AE0i9h1/ZrxdFS1k9Of+R2O3xzPr0Wnxd/vSDgG59unee/h0G49BLwvnO
         lmZw==
X-Received: by 10.68.217.8 with SMTP id ou8mr10069708pbc.164.1444332360090;
        Thu, 08 Oct 2015 12:26:00 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.203.20])
        by smtp.gmail.com with ESMTPSA id gd2sm46991203pbb.41.2015.10.08.12.25.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 12:25:59 -0700 (PDT)
Date: Fri, 9 Oct 2015 00:55:55 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Fix multiple checkpatch issues
Message-ID: <cover.1444332001.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes multiple issues found using checkpatch.pl

Amitoj Kaur Chawla (3):
  staging: sm750fb: Remove space after cast
  staging: sm750fb: Remove space before closing brace
  staging: sm750fb: Remove space after opening brace

 drivers/staging/sm750fb/ddk750_chip.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

-- 
1.9.1


