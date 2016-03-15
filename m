X-GM-THRID: 6262247928978472960
X-Received: by 10.31.169.130 with SMTP id s124mr22036062vke.1.1458043216244;
        Tue, 15 Mar 2016 05:00:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.83.73 with SMTP id o9ls130411igy.5.gmail; Tue, 15 Mar 2016
 05:00:15 -0700 (PDT)
X-Received: by 10.107.162.2 with SMTP id l2mr21630591ioe.14.1458043215506;
        Tue, 15 Mar 2016 05:00:15 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id y20si3853890pfa.2.2016.03.15.05.00.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 05:00:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id u190so26338534pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 05:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YCz5vg17VsyJresze3RSAzqQz++LPqHlpbXp84HjItU=;
        b=g95s6CzLxo4pdNV1QUAHtmv6kX7wkModvgWDD71bH+u3xSqfujOaXsftzzaMC4s/wZ
         7T76KYQ0cmxv0+fAKaJCjt7Gbrt07ZUNoPJwM8AX0svBClEOj2YnOMe91aaiZFkmJcuX
         nYlAogIMvqtGlyq1RHLoETp8rn/I0Tq7F5yywc897vG+fq3bu7Jsy5tTjgetDk+K4rv2
         0yKbquYISUlEAURtM5kgM6+bv9qgViNFbF4PnasC4GQ9DXazMRG+fe2RYzxAqula8HRC
         2CZKW3qC1ieTpm/eK1XPEQVRmkLj1fXfELQVuZCFtCG5tzKlFZyH7MEmJSqODZlwzmE6
         2p8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YCz5vg17VsyJresze3RSAzqQz++LPqHlpbXp84HjItU=;
        b=gqcW5Sxi0akIXLMDZDJo5I/h+UUjVIoNNfaPcCt4ppAs2o6vT4/ZNGhJNbgnTUXnOM
         h7Xt52+44KaYNEOgrGVLCUrMcKfLJP2xYNGm1lGO63WzKV325BuCmuFYvCVu+RgV9ltf
         qKYTMPNN0yjU8k9p/TtyFH25T6O/aKrnkBSGVrnByUFu46AO5aZ/vCTywUMOXrC1K/83
         rft77Iy/fQnJ1RBPBPJwYBHckzNIdgNe/QiVrqr5mxTLn9ovsw9NQO/AW0Nn+6kdCZ2X
         Ayx4EzeCcTsczCux45HeTQwpRpl/Hj9/mAPDtnp6NpH3MMEMCxHuAP+filPpuSipOe6h
         +yrA==
X-Gm-Message-State: AD7BkJJDDAfolc0iHhyJ6kZjY9ftTu8Dv0DF2PTdFsgpS3nh/iciurPzBQmyT9DmgRACtg==
X-Received: by 10.98.7.136 with SMTP id 8mr38149504pfh.24.1458043215331;
        Tue, 15 Mar 2016 05:00:15 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id xn8sm39336160pab.15.2016.03.15.05.00.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 05:00:14 -0700 (PDT)
Date: Tue, 15 Mar 2016 17:29:53 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Fix multiple CHECK
Message-ID: <cover.1458043063.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset updates the nvec driver in order to fix several
checkpatch issues detected in the source code.


Anchal Jain (2):
  staging: nvec: CHECK: No space is necessary after a cast
  staging: nvec: Fixed NULL comparison style

 drivers/staging/nvec/nvec.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
1.9.1


