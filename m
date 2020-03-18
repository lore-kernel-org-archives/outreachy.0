X-GM-THRID: 6805399652543758336
X-Received: by 2002:a67:cb84:: with SMTP id h4mr4402296vsl.85.1584558454343;
        Wed, 18 Mar 2020 12:07:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:db01:: with SMTP id z1ls3034281vsj.10.gmail; Wed, 18 Mar
 2020 12:07:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv4Dc+wCi/xZoswK+AtsTMcthEMBX3Cbr+p3Tq79rDOfFbay1okiVecKHrPYrrQiCw2zQg7
X-Received: by 2002:a67:7c02:: with SMTP id x2mr4662592vsc.45.1584558453017;
        Wed, 18 Mar 2020 12:07:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584558453; cv=none;
        d=google.com; s=arc-20160816;
        b=kzEqq3riwgGJO3t6gDTa4IEWejWThG1f6tslWbUuBz45tGIVjAUu8p7fWWg709X8sX
         Bv5Llqm0Hzd1hyegPTtBGbXytUZJ4eNt7CoSQa+AhWMV+malo0gs/Ll05jpihQNeufHx
         /p0BltF/+Qsynb6d1HoO8BUS1EoenF30qqXe73XK+bdGxLtYAibBYUPHHm2q0hYGcNkD
         xeba411B7ebtPSqjjqqLM3SHDwDPSougyL1V4wjhAlb5CIud401DpHZM8TIWqrC2F6UY
         Ezfa4Z7J0CutR0cBGw331KHpfWBHN12PPvkPTsOuWV7mawesX79WcPnnaE+8qKcXNaOb
         +TdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=SLRLiX9u8sqIIOBIxJVUp11WU6ba1yuoaRErY2Y3s4M=;
        b=bDkvOWjoNzhZgddfk6KdIJLbgIH3Nx5b8gkXSNuEWe8yxrjU7gMDoIT3xqDGkTUftI
         UbhBwl+NhA6lMKr2u+7vs/UyJHchJS2qvd87Jp2r4pe/XJERCfEFNUeWLO2sGsoi97An
         apF3urevyRxuVxedBdMIiR/XhKnDaSfrpM+PE3K6Esl0sZxs8wAgvyuHbcrvZ+O9+18X
         eCdL0REsN1SZP0T6N4MQEaSN5ckdpgixiz9rjxYLqnz5FJAgPOAX/uFoxUtB5/CDRKGg
         TjMGL62cYV01aq2pBfm1merYZApVB2MoOyUvq0O8MSNDXBEvA/G/qZdtL9aoX0j9WnDH
         Zeew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YcoSrqe0;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c9si92619vsq.2.2020.03.18.12.07.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 12:07:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YcoSrqe0;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id m5so14211587pgg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 12:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SLRLiX9u8sqIIOBIxJVUp11WU6ba1yuoaRErY2Y3s4M=;
        b=YcoSrqe0P0xYIOCyS3zhEA4SzIfagTLj/71PKOBqbkikayHbIVTcZwjPxe9AX3vqyh
         DcDH1Dmi2/bHTPQXvkAZE1JoU4+yZ7/Uw1Sz1ecNWLaQiOuyLHBmuJh7yXeYgEADrJb4
         pJA4xaeBeWiSSurKGX1PjyfYy93Czu2WCxpYYA8Ig3LXweV9WLpCds7jc1bqGLtAK5Ge
         tLRpAugITMH5IpooscZk8KyoFnkJolDKHGnjJoFyEfYs1LbQRGcRBAGS4agvgCjeftMU
         9mczb68fVY/bemmWef9flKdAF2bpov18OybG15V0AQMpfWFh/36oGnzgVzf8XSwV+9AL
         dDTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SLRLiX9u8sqIIOBIxJVUp11WU6ba1yuoaRErY2Y3s4M=;
        b=ZTyhTz7Mwf4k6Xqw4CP/Um/tRhNrZJLy9emHzn3u6iqWUqpkJnhrEESqlvuL8BqOUM
         utdgl6IrtqfFobVrg03o0j7DeXD3rp/WGY7JGVvFetPBrRurLSDQg2yMs4kAh7tBM2ng
         qLaTs87zubgGlRNRq18RAQSgHA1W0NIU6GDssIYv0uznIsVmRT7VVnki8b77ZqYpLA7S
         GpWseCG7m+jjGXgNzivpcpZWuH1KOF7yWAzWrvD2PfbzzR68DYKQLL6p+NwqKESjYOz9
         KmROFiGga90W0DFJ22SzxSIEnFFZuJlFEkzPeEp/97ixPm7YOJbm67SuxUa6fcHriX7l
         JxTw==
X-Gm-Message-State: ANhLgQ3zYziInWuMZCOzI/XbNMCxu7UnZmzIsGYGstfF6aAzMU2viR8T
	B4qxlRxnk2lsAiZ5eZVCqbmU+lC8
X-Received: by 2002:a63:2ec1:: with SMTP id u184mr5801633pgu.446.1584558451685;
        Wed, 18 Mar 2020 12:07:31 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id x27sm7588780pfj.74.2020.03.18.12.07.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 12:07:31 -0700 (PDT)
Date: Thu, 19 Mar 2020 00:37:25 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v2 0/3] staging: iio: adc: General code reformatting /
 cleanup patchset
Message-ID: <cover.1584557481.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Address code formatting warnings and check messages flagged by
checkpatch script. Also include another improvement for correcting macro
name typos. Changes intended to improve readability of code.

Changes since v1:
	1. Add separate patch for code re-indentation comment
	2. Add separate patch for correcting macro names as suggested by
	   Lars-Peter.
	3. Update variable name from sync* to sinc* as suggested by
	   Stefano. 
	4. Revert patch intended to add space around "-" operator. It
	   was a string with a "-" sign further formatted using
	   stringification. That patch is out of the patchset now.


Deepak R Varma (3):
  staging: iio: adc: ad7192: Re-indent enum labels
  staging: iio: adc: ad7192: Correct macro names from SYNC to SINC
  staging: iio: adc: ad7192: Reformat lines crossing 80 columns

 drivers/staging/iio/adc/ad7192.c | 29 +++++++++++++++--------------
 1 file changed, 15 insertions(+), 14 deletions(-)

-- 
2.17.1


