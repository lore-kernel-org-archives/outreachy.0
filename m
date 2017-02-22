X-GM-THRID: 6389988404749139968
X-Received: by 10.31.12.18 with SMTP id 18mr8626326vkm.32.1487785113515;
        Wed, 22 Feb 2017 09:38:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.71 with SMTP id j68ls3848140ita.12.canary-gmail; Wed, 22
 Feb 2017 09:38:32 -0800 (PST)
X-Received: by 10.98.156.200 with SMTP id u69mr8627825pfk.12.1487785112851;
        Wed, 22 Feb 2017 09:38:32 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id u12si403022pfd.3.2017.02.22.09.38.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 09:38:32 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id c193so23592pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 09:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=fgsZlgv97pS/erBQR6cDJxNDps1+UzfUTPQwEr++/D4=;
        b=P1EwSxj7GEfXlP+odbsKOF1MhstyYNPdW8EDbH55NkYYkpzqqLbXohxs3uMSwTdMws
         B/dhLzrLvkX5JpMjkr768L9X85S7NKVdJg28M+GQH4ezQkBWiCVaPJ8nJkOnmxTWjusw
         07OYxZHJ4xoJWmN+RJ6VyN3ngJQPwceu7pIghjsi4SNvD2I/wqb+3byHLR6bh7JdNKrW
         1ZXfTvAkHG5hq3ehgI+9htVjJfe6X1UBlNcVCVFG9E3AflAxzko7GFZFJU2pSceOe7EC
         LdKNSa9UYmksipnlKjPRxDPNLxyWNOvh4zQjPd3d4zC49eDmCSdw5q4j2OXjDQ21EBcT
         Zskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=fgsZlgv97pS/erBQR6cDJxNDps1+UzfUTPQwEr++/D4=;
        b=cZKO5XLvtyoW7GOXRIDvcNb/YeCX+/USGFkVYo4caxZKoz/GsCWOIi1JrvGX90cadA
         nZXekxbLiwkTalCkbmXTuLmzRq9VsfTtEn/DG5Ysga6VJ411CsV2/UrQnAxr5dSSX3Sd
         835xgemxHpPGq+JcfqE33gadQdtqk888YDP4khxXJDlLkysA4cTDd3SVC3j8QdX4BGSD
         nW2+r+scGyRt/+DiiuvakJC97gHixDW2AIlRck9wdgzqbdQsnzkQcIGKEmVqxqwD6yLe
         la7YgmqTmX37/PZtFesn1TnV34esf+Gv7dkZPAUsg/rHlUdjvfYUuiU0kBwo3Y0n8Qvo
         xzuw==
X-Gm-Message-State: AMke39kr1hdTJ8IY5R4snK7UdTVqqSLomowMB0D2Li5O3fhXLj3kzztf5frBdZgTGhR8+w==
X-Received: by 10.84.142.101 with SMTP id 92mr48975200plw.66.1487785112704;
        Wed, 22 Feb 2017 09:38:32 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5189:4d06:6cf8:d067:30d5:ddb2])
        by smtp.gmail.com with ESMTPSA id j185sm4932447pgd.13.2017.02.22.09.38.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Feb 2017 09:38:32 -0800 (PST)
Message-ID: <58adcc98.c280630a.51210.7ec4@mx.google.com>
X-Google-Original-Message-ID: <20170222173824.GA16593@<rvarsha016@gmail.com>>
Date: Wed, 22 Feb 2017 23:08:24 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: speakup: Fix multiple checkpatch issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Fixes multiple checkpatch issues in speakup driver.

Varsha Rao (2):
  staging: speakup: Removed blank line after open braces.
  staging: speakup: Added spaces around arithmetic operators.

 drivers/staging/speakup/kobjects.c       |  7 +++----
 drivers/staging/speakup/selection.c      |  2 +-
 drivers/staging/speakup/serialio.c       | 13 ++++++-------
 drivers/staging/speakup/speakup_acntpc.c | 10 +++++-----
 4 files changed, 15 insertions(+), 17 deletions(-)

-- 
2.9.3


