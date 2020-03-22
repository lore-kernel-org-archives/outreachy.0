X-GM-THRID: 6805399652543758336
X-Received: by 2002:a63:ea4e:: with SMTP id l14mr18686823pgk.431.1584906788111;
        Sun, 22 Mar 2020 12:53:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:a35b:: with SMTP id v27ls6464326pgn.6.gmail; Sun, 22 Mar
 2020 12:53:06 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvugKuOtEwTsE2D8JyHaFr0hvtRQNTrMFaE4gWTI1WCOG1f8kwla9LpZhy/YaMge+5FW2tu
X-Received: by 2002:a62:1d1:: with SMTP id 200mr21756427pfb.8.1584906786634;
        Sun, 22 Mar 2020 12:53:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584906786; cv=none;
        d=google.com; s=arc-20160816;
        b=htbzMAnTDq1HaJ4u9Yjn9B9Cutg5boJ6PAhPDMxk7OHaThGSfXTlXhkW1VrZ3xQ/hx
         uNzIqL7w0UTc9Tjwe/E3LIRTD8Xy2WAoTJZ2hdjGrX+KX5/suiNYzl1CR0OJBu8GilSd
         d4A6QB1lpZsN2XQ4uwLJ/EHUyMQGAwvqZRY7gjfAuc4tpy4NVCbSOA5YKz7sHjr/tpSb
         j6+8lEJM7whzh6gg7ITN9C8yVFia4tO2A2pewNEonkPi4s2xb/DuANZsmviPBMbxryEd
         Rnh+pT3jFuuN9EKSYYGRm8yaCKXDQM5nBztVjuTmujsfxl+sfTx69oDGdpFgR3B76QLc
         EvzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=J/841JuvCeA53RZ8dJXKpt1uGhDH+Vva83ItLHx0E8w=;
        b=rZwIKQVS8q9iGpBVIotGW4l+0KjiaFZb/mo2H/UqnCXHq3vSsbUgDHNMM/vFNsbkgK
         bv96M1uZfvhdgpWqHQ3CS7nuVtT72Au8hsNSsu0eshdpHGudai6QRYYb2l3DvCxTNuNW
         amw3Kp2QULbc8vZNlCseye/pTwh2y3yprC3PFUOtveDgCggyqLktOShPfKw7OXrS9CiS
         ZijB0DTsOAmPQm23o+DSVCiHFosaEwJ9cgYP5r1P4yzNrrIvt+xIeo0jriit8U3lEFAZ
         nFMDQmvwvKibodcIbZvsVEyivjeBnOW+q8zqaE6hDd6bP4w2BUYbGKAU/4J5qPXSr8uD
         yZmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S2OAnJqE;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id r76si714230pfr.2.2020.03.22.12.53.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 12:53:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S2OAnJqE;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id z65so6371988pfz.8
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 12:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=J/841JuvCeA53RZ8dJXKpt1uGhDH+Vva83ItLHx0E8w=;
        b=S2OAnJqE2XEFXo+9v8HxtNKphSgU625kheUFLaMTwdbTBV66YzTkdY1MDrQYFhK3mI
         64d4dBsCQge9cS6PV/5MkS5qmPyD7vXLPKuKEGJCwTkzcrHCZ2E6v3WrEV6BkvoTb2gy
         BHr3NJfSgbZ2Hs/p6FKTUpmwjVJE9V+VIeSe+w0q0cCVnWfWzjEI0R+jQrcYDrfEjr1t
         OLX/xftpol7+m90/3HjWbIc0JaTKVrpQ/EKmjZs1asROSLom0/rf5gzOFryIyo7sNVu+
         kLJorDbRxddWYPh59Xw7Jq8NvzMJDaXLpPD4wePgV77bKzYxQK07y3okd2z32vcT7t6H
         05Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=J/841JuvCeA53RZ8dJXKpt1uGhDH+Vva83ItLHx0E8w=;
        b=chWhhcOBfqrJXP6XQCyK9wZJx/i6DbvJfOqOZcnxVtN4ePnScZKqSHkT8cfsbyxBRK
         ozjdxSo7WNmv0sc/qXi+9nzNAfg2ef+cTslIFNwTiOqSnmlTBrZkRNhDux3VVsZgoR5/
         +SIzQ1wv/jjckMv3NPHEGV7DmCWwv3j+cTCOct0H2t4I0xaqWHRqw5JqG5ZwjY+YFbtS
         B7KTHF59QZ71y2PWfP0I0LPQlAvmn58VamHHAgQBPZAVGH7BvWpQaNADpDXLtU+pJLUd
         L962W8U0wyLV0OETT8xfEzvmKSsBHF/MdWPeY3UQCapBPKMQy4zG0JuJVRgc36U0gbfo
         N49w==
X-Gm-Message-State: ANhLgQ0OgFzTfmcuLOU/pF5nPDvB2qwT58jZQuFq9Dv1i8+GBuiiZS1t
	KoRlseEcr3+6tEqIFvf17hRwops1
X-Received: by 2002:a63:4641:: with SMTP id v1mr18310060pgk.156.1584906786215;
        Sun, 22 Mar 2020 12:53:06 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id q185sm10650767pfb.154.2020.03.22.12.53.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 12:53:05 -0700 (PDT)
Date: Mon, 23 Mar 2020 01:23:00 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v3 0/4] staging: iio: adc: General code reformatting /
 cleanup patchset
Message-ID: <cover.1584904896.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)


Address code formatting warnings and check messages flagged by
checkpatch script. Includes improvement for correcting macro
name typos and simplified function implementation. Changes 
intended to improve readability of code.

Changes since v2:
	1. Add new patch to the series for ad7280a driver to add
	   comments near code that flags a misleading checkpatch
	   warning.
	2. Add patch version number v3 in individual patch subject 
	   lines.
	3. Simplified current implementation of function get_filter_freq
	   per advice from Stefano.

Changes since v1:
        1. Add separate patch for code re-indentation comment
        2. Add separate patch for correcting macro names as suggested by
           Lars-Peter.
        3. Update variable name from sync* to sinc* as suggested by
           Stefano.
        4. Revert patch intended to add space around "-" operator. It
           was a string with a "-" sign further formatted using
           stringification. That patch is out of the patchset now.


Deepak R Varma (4):
  staging: iio: adc: ad7192: Re-indent enum labels
  staging: iio: adc: ad7192: Correct macro names from SYNC to SINC
  staging: iio: adc: ad7192: get_filter_freq code optimization
  staging: iio: adc: ad7280a: Add comments to clarify stringified
    arguments

 drivers/iio/adc/ad7192.c          | 37 +++++++++++++------------------
 drivers/staging/iio/adc/ad7280a.c |  4 ++++
 2 files changed, 20 insertions(+), 21 deletions(-)

-- 
2.17.1


