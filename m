X-GM-THRID: 7026056890720190464
X-Received: by 2002:a5d:64e7:: with SMTP id g7mr3734941wri.350.1635881348955;
        Tue, 02 Nov 2021 12:29:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4092:: with SMTP id o18ls6469017wrp.1.gmail; Tue, 02 Nov
 2021 12:29:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwmJof+XNZuSIJms2yHMx294bGIUDeG9m4HrWGx8xjHm+Ed29vWOf/W6Bg3/HzNcHM6MtIK
X-Received: by 2002:a5d:6e04:: with SMTP id h4mr25367661wrz.127.1635881347635;
        Tue, 02 Nov 2021 12:29:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635881347; cv=none;
        d=google.com; s=arc-20160816;
        b=KvSP/q6uZGF30pw2oOVPZnhBvEtRn/qQmG0BFPEylYMqGo4K81+4t6V3fMlGN63sJ7
         lFGVYmoHNHI5qN2t0sXdh/hry2S+UOda8jWDPrjtLRkxWhFy37SkQvEY9jic5+cD2Hpu
         7o0DudOFB96DyupJ3kM+/nNu7E/CjFmNwmAsYc9Tp6BPIl8e7rWbsHJAM807I+3p41dK
         4UXo/PQ1dRS8lw+u71bdtOt/nujudBwp7PUpLUpS5iEGt1ia7mO6I46pU/tSkd3v5ce0
         EwqJjRqnSE7naRJZmGy5u2buBBX/fiIgyh59LFE/7DwS1P0Di3v3yLfNjJTfGhDMAGCs
         +/Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date;
        bh=YNVPWa4MUb6dQ/rEVKGQ5zhxWNJrGdm41C793znetDQ=;
        b=KCk43QZDyTOHyjzSVVx+XIlZ9flueqhjJhNA9FIWd2SMBnss+EUkVb4gFWHJcyPP8l
         3kblaQe+/z2qUiqxGVCHXgw3iejbeLEeUv09nPWYvADgC1B+IfUqVlUSQhm55BLC+cq0
         0aLMdG7jazOcjBuOyqueoWY2g8xU5LEFy5SKmt14Ymwf131wHe3K60cP+jW0/m7gNSyx
         ACGvQzSikAsgdEdvJsFZlrgOh1fS693apz+rujLnYPC5UmELiHmvpbB/5yZ9eTd6+jde
         gxzm0uJZx2Ck3oHgVCCx0pj5BzLGQrCvTbN8Z7ik9aeHPLVkPuDs1Iv5AMU2DByCrTRz
         9mFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id a10si421623wmb.0.2021.11.02.12.29.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Nov 2021 12:29:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="212104288"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="212104288"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2021 12:28:44 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="531667072"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2021 12:28:44 -0700
Date: Tue, 2 Nov 2021 12:36:08 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: Application Deadline: Nov. 5, 2021 at 4pm UTC
Message-ID: <20211102193608.GA518229@alison-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi applicants.

This is a reminder to submit your final application on the Outreachy
Website by Nov 5, 2021 at 4pm UTC.

Better yet - just do it today!

You can always edit it thru the deadline, however if you miss the
deadline, for any reason, there is no recourse. Outreachy needs to
be strict on these deadlines because of the sheer volume of
applicants they are dealing with.

See https://www.outreachy.org/docs/applicant/ Final Application.

Thank you for all the contributions. Please reach out to me, or
this rounds project mentors for any questions.

Alison


