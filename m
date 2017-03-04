X-GM-THRID: 6393354564445143040
X-Received: by 10.99.39.6 with SMTP id n6mr2894093pgn.98.1488638035098;
        Sat, 04 Mar 2017 06:33:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.197.1 with SMTP id v1ls1101429iof.13.gmail; Sat, 04 Mar
 2017 06:33:54 -0800 (PST)
X-Received: by 10.107.141.137 with SMTP id p131mr2939675iod.65.1488638034282;
        Sat, 04 Mar 2017 06:33:54 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si538183pfa.6.2017.03.04.06.33.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 06:33:54 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so15454985pgy.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 06:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=nji666lXogga4Nthf5vGuC+IqTCs5TmoM4olxuGeGDI=;
        b=QV2jdEvkCPi9v81u4uUkssO2NBRqedcCfD3YC1lKa86FzPEyq6EzQx09LdnrXEopmk
         5lQhvDqxdxO12jDnn5eswKM/KbpxvBIiks2xtoRt5uRMJ3X7ceR/2uS2KmJ1desIETOU
         JX/PTEYeHSuIVbXx6lSZdIQUy0ZcKLP5yida6KFU9givr2KonH4ko9z7YcrWtY6fYa8J
         7mRJL9WIMeRer7Obxzjj4yWUoBLt/OER4de/g1E4L3G9hMp5coo7pryNnJ/698SRiy/L
         KzF5vZzpREPRd0nluo4dYCLZ3/SShOq+sJS8WdDKVbYWmYez2tsl3e3ucdQodJGiZ8rv
         n75g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=nji666lXogga4Nthf5vGuC+IqTCs5TmoM4olxuGeGDI=;
        b=JSumAwgY3lIz5SSF31aLjC35456xczndOOCgOyp65vKuai9sd8jrdhFQq3TAXlzi15
         3wQX9XaDvOFbe2BsZ2yl+rjQKPE9XovaYARnZvTHuanDbTD3ov6t/IjIT4YcTi/JCUuP
         ZHVuhdmTRxMVjvKAz1t468A1N/aId0Fu77W4VW4sALvbUFhHU8o/Gm8/V5SbsDMCETIR
         hd4YRWwubQGKn1coowiGY3JwwgBTxORh/EGOhiHLvQAp1JO7xaDnLo8G3PtdN9+leu4O
         efaELonvcTDgXQSaDcRN7skXdV6gxoc9AwfoVkd5vnItvXM0RE1+3B+mWfuW8hCvUjkX
         ZCeA==
X-Gm-Message-State: AMke39nGSEG5dHnzYN+TS1tT4lMKKbvuxOBZqzRmb9hDFles0rMICs/5lL6OLzmH+pBYQA==
X-Received: by 10.99.127.14 with SMTP id a14mr9875370pgd.64.1488638034086;
        Sat, 04 Mar 2017 06:33:54 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.27])
        by smtp.gmail.com with ESMTPSA id y184sm29875719pgd.45.2017.03.04.06.33.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 06:33:53 -0800 (PST)
Message-ID: <58bad051.c18a630a.70a47.c246@mx.google.com>
X-Google-Original-Message-ID: <20170304143343.GA4320@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 20:03:44 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/9] staging: media: atomisp: Fix multiple checkpatch
 issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Fixes multiple checkpatch issues in media driver. 

Varsha Rao (9):
  staging: media: atomisp: Removed unnecessary parentheses.
  staging: media: atomisp: Fix line over 80 characters.
  staging: media: atomisp: Added spaces around arithmetic and bitwise
    operators.
  staging: media: atomisp: Replace 'uint32_t' with kernel type u32.
  staging: media: atomisp: Fix block comments warning.
  staging: media: atomisp: Removes the FSF mailing address.
  staging: media: atomisp: Use unsigned int instead of unsigned.
  staging: media: atomisp: Fixed typo.
  staging: media: atomisp: Replace NULL comparison.

 drivers/staging/media/atomisp/i2c/gc0310.c         | 22 +++++++--------
 drivers/staging/media/atomisp/i2c/gc2235.c         | 24 +++++++----------
 drivers/staging/media/atomisp/i2c/ov2680.c         | 30 +++++++++------------
 drivers/staging/media/atomisp/i2c/ov2722.c         | 31 ++++++++++------------
 drivers/staging/media/atomisp/i2c/ov5693/ov5693.c  |  2 +-
 drivers/staging/media/atomisp/i2c/ov8858.c         |  2 +-
 .../css2400/isp/kernels/bnlm/ia_css_bnlm.host.c    | 16 +++++------
 .../isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c | 16 +++++------
 .../isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h |  6 ++---
 .../isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c      |  2 +-
 .../atomisp/pci/atomisp2/css2400/sh_css_mipi.c     | 19 ++++++-------
 11 files changed, 78 insertions(+), 92 deletions(-)

-- 
2.9.3


