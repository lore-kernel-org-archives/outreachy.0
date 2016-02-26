X-GM-THRID: 6255628757507244032
X-Received: by 10.182.230.107 with SMTP id sx11mr1641107obc.5.1456502070533;
        Fri, 26 Feb 2016 07:54:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.230 with SMTP id i6ls503640igt.39.gmail; Fri, 26 Feb
 2016 07:54:30 -0800 (PST)
X-Received: by 10.66.163.4 with SMTP id ye4mr1587180pab.23.1456502070048;
        Fri, 26 Feb 2016 07:54:30 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id yd9si1951181pab.1.2016.02.26.07.54.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 07:54:30 -0800 (PST)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id t66so597459pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 07:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MD/AqdtyRtYIZQnnajgA0s4B1HJdAvreYozEIUztYUA=;
        b=RosjYj27Bqe7O7FD9Oxj0fOE0ktYRXK/eXn514UUjBKpNhcGVujNvxGdEThJ6l+2nl
         ftVKHR4Ia1lIpS2Xz5QMmm+uDM/noO43Q4J4WRD9GpazV+cGcIz6DfArvpKp/3zJq7F9
         oCbDu7qtulNyAANOXCqL63R6D/QN4Km0SsN92UsS/0oqjtRtNyA0oAU3g4gyIKAF4JXB
         nsau8nhci4AQP/5TrS/ORPCb5LlebDCPjgLsyCIn9NIHB0SrY5aqzcHrojgsjCevAKk4
         nq6clEJ016yuahvHC3PVW7hRUG2AR4lji8BMzdO0mreTRLiM9LFVZIPZrA5oiKAYmEQp
         WkKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MD/AqdtyRtYIZQnnajgA0s4B1HJdAvreYozEIUztYUA=;
        b=dE+8PMldb5FBSdP/ZIw6wDvQjNbVnd5QPw2NeOnkuUGsUl4KFxnxCSFlco72u93CkL
         6qJHNHUGH46AttMKKKVCoc2lHMB1Iffn19GykAAwAwrPU6LURgVgU14KdN5KTcvfHsIu
         T6vYv6OFJRUBVkEDElnt5MSR1Qjb5kDhZLbeGt1RiIHzLrNvX26tXyMK3hHFUQwTP8gk
         odbleRlZRjWTNiqJ2s17VZYrjL8yxAXjd+ZZ4omGptceX2OL37KN1LH1b28Vu1AMZZST
         il5UrM6NecvnD+9QfgiEn9tYf771xhpNN3EAm4IusGea5Ovyq4dpUxgDyTXxHHOLZDT/
         qEtg==
X-Gm-Message-State: AD7BkJK+WYEe5EXH1D5NlOMOhibTbXoY8igDC3qhvTLm+xOXJvPrVU4vB8psJo8ZldQ5HA==
X-Received: by 10.98.11.88 with SMTP id t85mr3061120pfi.98.1456502069902;
        Fri, 26 Feb 2016 07:54:29 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from Toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i23sm20297832pfj.68.2016.02.26.07.54.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Fri, 26 Feb 2016 07:54:29 -0800 (PST)
Date: Fri, 26 Feb 2016 21:24:32 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: dgnc: Fix warnings in dgnc driver
Message-ID: <cover.1456501665.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch-set fixes checkpatch.pl warnings in dgnc driver

Rehas Sachdeva (4):
  staging: dgnc: Add spaces around '|' and '<<'
  staging: dgnc: Avoid multiple blank lines
  staging: dgnc: Fix block comment style
  staging: dgnc: Break line after boolean operator

 drivers/staging/dgnc/dgnc_driver.h |  8 --------
 drivers/staging/dgnc/dgnc_neo.h    |  1 -
 drivers/staging/dgnc/dgnc_pci.h    |  1 -
 drivers/staging/dgnc/dgnc_tty.c    | 28 ++++++++++++----------------
 drivers/staging/dgnc/digi.h        | 32 ++++++++++++++++----------------
 5 files changed, 28 insertions(+), 42 deletions(-)

-- 
2.1.4


