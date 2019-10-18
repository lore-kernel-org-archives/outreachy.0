X-GM-THRID: 6749203732717633536
X-Received: by 2002:a5d:5704:: with SMTP id a4mr7455736wrv.281.1571421449290;
        Fri, 18 Oct 2019 10:57:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:54cc:: with SMTP id x12ls3170052wrv.0.gmail; Fri, 18 Oct
 2019 10:57:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwVfF1u44EDYOF7mAMaGvHrOEfkPQzfJuAJNvTi3BbIcA0YTlflRJK4MNitN4JLnqPpp2TW
X-Received: by 2002:adf:fa50:: with SMTP id y16mr9474517wrr.171.1571421448314;
        Fri, 18 Oct 2019 10:57:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571421448; cv=none;
        d=google.com; s=arc-20160816;
        b=AzwBcnh4WlT+QzrKIfHx3Ki2GaKITzpIh5V+IB2BOWP+0LJVTQICojvPF6/+rady+4
         mhpMiV8kpmUPzo+lQEFR+/ltjFWzx3qX8uMQzrZTENvl/4xIfhrowIunGrqvaD5aSJMs
         LYLFilfXxswhrP8HqU9E4zc5WouKd6GIhOji2yUkV1Tvolifi2EerBBmmUIZ77vbv9jb
         7XUU30VVWo0SZkvmWCv2darzqKIAYZrGsThSdYByLQkBlPlwFFIqfmvCzOXYk+OxbG26
         Dj8pQHEZ2VBE39md2CEvaED+G7xSkNVvY41I02X/B/MB3M9SEu3C8834sU3VVu+AazPC
         0TLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=uPX5NKME4pbKAV44o6/P8GWluAct9A4VA71VWV5QUTU=;
        b=y6f5tVQTLpy/WQF3AM5cgxMNkVdA0Szl2fT+O0h4J5lXUXU8DrFr9jTIVJHHgAkPhi
         +4NHonaNqkH7W4fsh3l5BE2TFhrvDAVGOPMeSad6h/zFKioPx0J145VppjDkIK7gTQUt
         VlPGPwTwcAAdRqEqJdDpuMpIcIhTK9IlsIHAHFytoLEi6PxrSsWFC1kwYBYnlJozepye
         Jo7qgzOKsgtQlbc9YvgGK1ANiqS/LY6jmDEK4KJk7PIe37RGl9932YW3VKbu5aIv6egJ
         qhrnQVkOjOKK4UQMRt1lFpkBWNjWrHY06fzbX1BGX02OaNkkaOdaDwki8vlLaGNbS/Us
         Njmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D9DinDJw;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l3si705465wmg.0.2019.10.18.10.57.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:57:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D9DinDJw;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id o18so7141761wrv.13
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Oct 2019 10:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uPX5NKME4pbKAV44o6/P8GWluAct9A4VA71VWV5QUTU=;
        b=D9DinDJwqXNYwAzqGZjJQ0+0J1m8puJTToL4cjEomyN/QALQcaW9SJZ6NQaeOj6UKa
         QfUHJXPk57fLW+ormmQkyjMJAQIGBuAgBiIeQvty6Rav+zmma7eztENWkY9c3q+OJoPP
         2JOCbLJlIycV1zFk5sHYA8GqBu5/7D4SyQ5Ayx0k1A5z9NgeqVdDISRLJDwUARUb/GWi
         9Aj1CO1WOMJZEno9svQpxH9hj3vUuk1Mzhhsp8+wLOaInERpeA9SwRacqKppIqLTDZQy
         jo4Jp87iItgQW+ZCv2q9JVepY4OF4tLVbIQ00ePfgtkpRdb227qUZz13RgTGkTRNSnG2
         5Evg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uPX5NKME4pbKAV44o6/P8GWluAct9A4VA71VWV5QUTU=;
        b=oKN3mFt+mrju70gfH3ow3qJJCKjSvaRKTieev3kYBy6pZ+f0Qar4ivy9eZliC00T9c
         BCuuJxEvPlvGAjy3Fr5wlkMdPDTPJkteaWNPuIsohcOjm2x7E2R1BwaHo4gfBSDpbU3z
         hh6GfPX0LYkJRV8QcmLN9vxr5g91EOYy4sSOLg6KAKHrtQn2UC2aW2nCWAhhi1oXpbIz
         vAeW5GhMupxFHWzI0qhS2m0IOAlOj3a5WqVvnXafCUGK8tn/pM11yWt8lcesNVrXS4Dd
         F/SqyNBQm8oynTBT+cftBXDIBGcNzW9uiy/j8D5aFsEiV4aMo725/zDa1r4Zn2uS0MaZ
         Gdlw==
X-Gm-Message-State: APjAAAXzCYUVcCP+1quKDQWS2IolcR11ulN8aXWSxlh29X9r3xmhiXyc
	gDXQA01AXz0VB1o7yNTJWHsepWHN6Z0=
X-Received: by 2002:a5d:498a:: with SMTP id r10mr2264912wrq.260.1571421448078;
        Fri, 18 Oct 2019 10:57:28 -0700 (PDT)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:c94:5be4:ddaf:8143])
        by smtp.gmail.com with ESMTPSA id t16sm5675028wrq.52.2019.10.18.10.57.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 18 Oct 2019 10:57:27 -0700 (PDT)
Date: Fri, 18 Oct 2019 18:57:25 +0100
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: Netlogic: Fix grammatical error
Message-ID: <20191018175725.GA8274@ik-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Change "in to" in "Changing comments in to linux standred format" on
line 3 to "into"

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 drivers/staging/netlogic/TODO | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/TODO b/drivers/staging/netlogic/TODO
index 8f172b017b94..de8fb8009ce3 100644
--- a/drivers/staging/netlogic/TODO
+++ b/drivers/staging/netlogic/TODO
@@ -1,6 +1,6 @@
 * Implementing 64bit stat counter in software
 * All memory allocation should be changed to DMA allocations
-* Changing comments in to linux standred format
+* Changing comments into linux standred format
 
 Please send patches
 To:
-- 
2.17.1


