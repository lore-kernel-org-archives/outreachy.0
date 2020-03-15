X-GM-THRID: 6803435195586314240
X-Received: by 2002:a17:90b:1b04:: with SMTP id nu4mr17831371pjb.81.1584315615320;
        Sun, 15 Mar 2020 16:40:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:58a:: with SMTP id 132ls7990785pgf.5.gmail; Sun, 15 Mar
 2020 16:40:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvXykQrKZuYHSioE9FOaplTmJIEqQh9v9pKbopzQPdfsSuQRX1Qtd8Z0HoBQttea6UX5X1/
X-Received: by 2002:a63:b34d:: with SMTP id x13mr24456356pgt.317.1584315613587;
        Sun, 15 Mar 2020 16:40:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584315613; cv=none;
        d=google.com; s=arc-20160816;
        b=nTX6S/LOTV19/8Ii/MIDe8ZLz98mKXQ09FmM9tEi2fhFRai4vplWLbmGR0bei/QY3g
         FFquJzMx6PCPib4u2QkBAJkhTUN3/i5ORDnJoNs0y4quFI7hD4i8jGQgeetdAkqVDhJM
         4NClmr4huTF/wizsXXk70KZ1dC/9RPz9XWVJCVhJ3cBb00Tked5XgzA3Rnh6EmSGcuuB
         69yqUpC9wFp1vrIHUEnfTN37sx+X3yrTOOPE13g1Jwm+4vZNKhiH4bLjQasm39gNq/+0
         YRLlE0hSkcOfyLaYYXuePfx1ZkXa9IXm+3qAf31t5jgfPhaAy5ES5CfTGf3hP07zGGvp
         9M3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=zFQsE0seOKG+2mhvlq2YUKqJG8Rav1f8MXOLL18lt+k=;
        b=neSd/5f1S1BolZtb3lNf/LACGMoRo6Vf3GzTtdBQu8KSgU7UjQuxy8tywIAFPAg2dw
         omviFXyThWjE6S5oSQx+rVw9ijNEcFHZctzbYJAcKNcoq5fKg6yl+y/qOHemTPnemI4i
         B6D8ylgi7SjBnZFrkzXUSCvj4tZKrplOGhKcMf/WW1JX9nsUXbqsyoe9l02kSsmZ+HO9
         p7gYs/Ked+D9eVlNv2onEagfOF9C3g3h46Lo/KVWU/UlojILz/2ksV/xSTXHz8pBWUgh
         pnuyfTHi8KpGPvq24z/xg701j7mWocl8azN4suhfxjmD/TS09rBxbkVgEs1XUrvehhni
         Nlfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=icF6PxDM;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 59si649068ple.2.2020.03.15.16.40.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 16:40:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=icF6PxDM;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id t24so8637063pgj.7
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 16:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zFQsE0seOKG+2mhvlq2YUKqJG8Rav1f8MXOLL18lt+k=;
        b=icF6PxDMsnXaExFVo9UPxcUVXdSmuHXXKXJwwEYXHBWJbJA0yUw31pJ/3SdpD4oFmQ
         LXiAd23jL9D4XkOQQ4jYwBrrZHfkSh0EmvSOW1KMqkow3D0UraMJ1rwcsUUoh0uPgkG2
         +7azChh4ufqdpxmXJfI3ozX5w8kZx336nq6U8/4XbBFzYAvZIBfrHDCTXHCg9S7c6PvG
         OIllXqn+QKuyQGAKBPMJSiMUFJDHWgSlpzupH7944ylMjuRnrFC5KAT78JqlCkibZvB5
         m/61QO4XrfcYA+WyJp1J+yoOzhVd1ZUC39XRzLWLDAutEDRKj4WKgzQc+8JlOmWyfUBt
         9K9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zFQsE0seOKG+2mhvlq2YUKqJG8Rav1f8MXOLL18lt+k=;
        b=RB+h3xMPPEHrrT77d1rqgnAR5oYDkAm/UakDFccAoI71ffJdyhzQ97fnTfjVjXlqeu
         6I67TR8GlCaMIo2g/7n6Nz8bnBfXCO03Pro6cqCAXyA6SK77VcnFlBF+6ISlIhhCiNz7
         i1ugfxv6jGp2MnPHbnCg9WJuACdkBBb7xbStoszY/3P/mjgIU1Xip1CwkFZVVtE5P4OE
         ISXjTi+lQBpMYtuZGtWJD3kW0wxMfdowwALeAOM7eGEEgSPtmOPKnH+Bj7RepBb9HcIT
         gow6r1+VSQh2HN7ItkRzR+PnW6/JGXHWcTdvXQ2oMAnO6yicl4BaXAbP8bAxYFN+zr9k
         /7Vg==
X-Gm-Message-State: ANhLgQ0ZU3HjNZAtuOpQeSR3Cz5FAs7enydo23aNifk13Zfr/dR9ASYs
	xCxz+ZVxDPFnWKrblusGlgoafBdC
X-Received: by 2002:a62:1745:: with SMTP id 66mr23966103pfx.291.1584315613077;
        Sun, 15 Mar 2020 16:40:13 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.225.138])
        by smtp.gmail.com with ESMTPSA id d3sm63617585pfn.113.2020.03.15.16.40.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 15 Mar 2020 16:40:12 -0700 (PDT)
Date: Mon, 16 Mar 2020 05:10:08 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com
Subject: [PATCH v3 0/4] staging: fbtft: code cleanup patchset - checkpatch
Message-ID: <cover.1584314603.git.mh12gx2825@gmail.com>
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
related patches in this patchset.


Changes since v2:
    - Implement Corrections suggested by Stefano for [patch 1/4, 2/4, 3/4]:
        1. Typos in patch description.
	2. Improve variable name as per coding style guidelines.
    - Advised following for Patch 4/4
	1. Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

Changes since v1:
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


