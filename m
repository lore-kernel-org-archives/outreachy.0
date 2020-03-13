X-GM-THRID: 6803435195586314240
X-Received: by 2002:a0c:a044:: with SMTP id b62mr12560634qva.15.1584106892372;
        Fri, 13 Mar 2020 06:41:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:5b41:: with SMTP id p62ls4910490qkb.9.gmail; Fri, 13 Mar
 2020 06:41:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv3YaEpjAgJz2GbCZQJp5MGZkXV1sHB01mQa2Gl0ptlPJKvXBJMjAP8KowKovR5rrSiU6I1
X-Received: by 2002:a37:9104:: with SMTP id t4mr13628198qkd.449.1584106890690;
        Fri, 13 Mar 2020 06:41:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584106890; cv=none;
        d=google.com; s=arc-20160816;
        b=ffQOtG5ddXcVcg8w4DNZ7Pj7bPVsqjcV2gum2YRcEZl3Uukdf+Ogu+wcTyH8mAgKKO
         OiRzyKHxy13FlHYwFno/0pc8c4Y6n3dSMedKz7Ytre83o7pkNnwsk9B0nX8AfIVCQ2y6
         4acxU1tEG5QD19qDlvZwmHAnnrVT67+S+tZHsbvlL86cGdSMNhxVM2iJiOn00OUPr7EP
         CIrM4R5S9E2rhphq0KlLpAyi/lajZKQIhNnKL9UWZmQU1eI8zGHRDLmgME4TXehM9rfM
         ppbMbXjJ09R1qhYxzyPyksd4CjG6JPsDgxpu9uAcKCzPWrER4nAdMYb4HLRdLd/ZC4W6
         BNWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=E5DEWqY2Dl7gk86FWa/HaVSmrAsGfGYsZeAVYYY54PY=;
        b=N8Yh/g9mWQxW2GzoHfjrpjPIabrUY/IWGqTZQ5bHsJF8NYXwLjask3AI5/rkPaWT98
         tBhpVnm9Jt+mla4cL/M3D/i5KzFWPOr0uMJTbUyRNwyaSKZipMQbQH9zHESGGQErfCAI
         qBTvrc0bPiNBRPRi4D4gtp1qDWXCxjpxNlkubmQaDjRlDqebWDEgscw2LFGEEYHmQPFQ
         5hzMp5OZfnluKOAQaXGWmINFOvFL0Ci3ymYQX7WDW4YEQkML8Z8bD4nStqKyoW3jB5IG
         UwrCyIoQM+eaHYQLJ96opdIaToGCe+9/6bM4HNQb9j8V3ahFtL988G5Sodl5NdqcxZhL
         OQqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JCMRHRV3;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id d193si452276qke.1.2020.03.13.06.41.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 06:41:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JCMRHRV3;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id 37so5006862pgm.11
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 06:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=E5DEWqY2Dl7gk86FWa/HaVSmrAsGfGYsZeAVYYY54PY=;
        b=JCMRHRV33FX6CBFNJKZyffr64waxK15fdBTsvXW+YLRDnL9WW2W49kOy6hpI9AZxM7
         KtmeCDpR76ISrvN3ubYFbusrzrmxZ4fwUQ9SdK5OG3UmqmPjsceeNVc3FMjUZbTxwo4t
         U30VeJXPVdzVOVGxLKR6ZRK5SP/V5OuGQeZOeu2MSS2CMxre1YUzu++ukROT1bbil6JZ
         edWwZnJO7192FM6bUb3q4KcqLsKD0aD1DJ8AqMt9P93ngQqnZL6CyBitUbQyD5Eer6tb
         ZEJLByrBK4pWXsPsFSVb3iK/JGQc7qBwvvgINUSepbVahKWSBWrl639XhqXEgOUD7RNK
         q0Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=E5DEWqY2Dl7gk86FWa/HaVSmrAsGfGYsZeAVYYY54PY=;
        b=JIzOY4uS8krH4Hx7obePTXHy7ASNKoH4eFoJ9qsTXtfaxFbdTnFTQ+S1NYur4lktDu
         f5uDogw/m2gFBWVtVeL/wFtYvLxCycjMogwAUUe1CcfRteiJHhZ/3+BgEBZbMI3o7/LY
         XHa1t7/tmCAmz8reGqshATGh3s81sZriuIKKpa3PFGvgZheafrrZRS7hVVnSb8Prf6aJ
         TGF1bq02c6pCTcz7Zvl3e8ZQnoCVw0+v9jBv77CGCmSrC7Z7lHh4+XoNEJE+DQTQWCzw
         4rEsTUyXJwGSyxX/21AonQo3nu0hQSFbwDqJe8GLU5QAToGHuXapUjs4us3XGvBcaDYb
         n22w==
X-Gm-Message-State: ANhLgQ0c/uezMQrQ5qnAwTmAAYCa09v1PmUGFnyEuB9jRTgNchlL55Ev
	Fh5o3i57rdqPejVo/WpatB29J22Y
X-Received: by 2002:a63:3fce:: with SMTP id m197mr12710243pga.38.1584106889623;
        Fri, 13 Mar 2020 06:41:29 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id a75sm8407456pje.31.2020.03.13.06.41.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 06:41:29 -0700 (PDT)
Date: Fri, 13 Mar 2020 19:11:25 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH v2 0/4] staging: fbtft: code cleanup patchset - checkpatch
Message-ID: <cover.1584105606.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Implement code formatting corrections as flagged by checkpatch
script. Common issues around lines exceeding 80 column limit and similar
formatting issues for the fbtft driver files are considered in the scope
of this patchset.

Note that top two patches in the list below were sent to the mailing
list for review as individual patches earlier. As I found additional
similar issues in the same area, I am requesting to combine these
related pathes in this patchset. 

Changes from v1:
    - Corrections suggested by Julia for [patch 4 /4]:
	1. Update commit message - use word "potential" in place of "likely". 
	2. Update log message - use word "parentheses" in place of "braces". 
	3. Rephrase log message - make it concise and easy to understand.

Deepak R Varma (4):
  staging: fbtft: Reformat line over 80 characters
  staging: fbtft: Reformat long macro definitions
  staging: fbtft: simplify array index computation
  staging: fbtft: Avoid potential precedence issues

 drivers/staging/fbtft/fbtft-core.c  |  4 +++-
 drivers/staging/fbtft/fbtft-sysfs.c |  6 +++++-
 drivers/staging/fbtft/fbtft.h       | 18 +++++++++++++-----
 3 files changed, 21 insertions(+), 7 deletions(-)

-- 
2.17.1


