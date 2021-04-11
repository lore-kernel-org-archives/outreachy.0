X-GM-THRID: 6950040940090228736
X-Received: by 2002:a62:6202:0:b029:208:f11c:2143 with SMTP id w2-20020a6262020000b0290208f11c2143mr22511292pfb.32.1618182505907;
        Sun, 11 Apr 2021 16:08:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:4d81:: with SMTP id oj1ls7903565pjb.2.canary-gmail;
 Sun, 11 Apr 2021 16:08:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyjVgxP0k5U7lmVZOobaE7Ak5mB8cDIrrzpCTTmgH4eRIiO0QLe0mGdv4KU7nAKOHJG/tKd
X-Received: by 2002:a17:90b:228a:: with SMTP id kx10mr5654442pjb.105.1618182504542;
        Sun, 11 Apr 2021 16:08:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618182504; cv=none;
        d=google.com; s=arc-20160816;
        b=WpNj8FNw9CRcnj/K2kSoS+76WAenFbbAZ4Swy4A65WYq5gKKOfNUnELUMz0TMMBf65
         /Ff5ExPAwuKgOpIU2c0wVFDUtLPnRfK1bJMbLMHpFx70y+YK+QQ9XZ8mtnIu4BSb8Y6r
         dgSbrHBNSkQSr+C2X8CxFMDQGCHs6ETNqBPGOsBHe8siHFvgdg5DNp51dgM/TKq4Eb/H
         1ZfNqA8408dhByx9o5D4wVt2jiUlKuk5EAN/sM2Ji3KqdQsIpyezpa1F+ZEv3+BdleM4
         qtjBTkB+BPuNMr3DXe8K8jXZFxHhqYcBG4VJn95ZtgazvyunC3yFrVCM+u7yAzixQ+bj
         +lig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=y3OO3ieVmLEwl+ife04UOYUCAMow1hzkBN//gQUlMpA=;
        b=d81eJ9xxP5BsAjibFkCVWibdGNWQDFNpbEc0bF4T83M5fLGs/jPAlV4z6gdZjiH7BB
         5Tm+RArwgRRl1VbHrJEJSFbSAI3Ux02o5gSKxzLUg/DJiv7jj2rolRt0aeUt+4bCrSaK
         J+9kvuPM2SC2e9T3tmE/7+JknqRdoOg6ldL3NZEB2ycZ6H1vtlc70K/JApusbPPChWK3
         tQRuchftmb8+FMckcwZOcKZNr23edW91tSOUbBGp3dnKnRr869yFgvV6kFPrEca0+RT+
         hJndwd8AqG0j3f6Q7zILsIyol9lKPGgSecoc4l9GvnL5KwPmtV2cBqvJSEobpA4ZHkiE
         atNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gZa1XQqO;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id j184si701661pfb.1.2021.04.11.16.08.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 16:08:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gZa1XQqO;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52d.google.com with SMTP id z16so7944820pga.1
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 16:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=y3OO3ieVmLEwl+ife04UOYUCAMow1hzkBN//gQUlMpA=;
        b=gZa1XQqOhnFshkh4twv2e6nHTxXyn50PCEHsmnHWoWb39ijE2/XeX619XzzQNi7wEU
         nnLei4oEl36w7mpVVVdvD4Cs5Iczg7ESkuWAsWpq1J6+0HoBrUjbsbmLsDZjPw7Z7waY
         2uJ79UX0oY8T32BCFUmRxsiTY7mY/+KsipeBnQHURXo2PVV2bUOOcHjBdM2mZ4VOEBOZ
         Wr6wFxtm1+xdcNC7P8hiG3HF+KLyk7NcSIfe+Am5FWYugGNtVmGwu/7OkLg3u2rZ9eKh
         xsmvg3a5ZhFato6XANJFOvF+snksG0vMWuy8mYpUr6UwTRdazoaMxhY27w/39lXCvKOs
         w90Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=y3OO3ieVmLEwl+ife04UOYUCAMow1hzkBN//gQUlMpA=;
        b=MxdAeo4CAfbT+yPiQNWidAMhleCmKeJyVSP1AoLToTaoxg9rUBY90bXaOdlzMZqH2A
         ATz9eU1pb5BT/f3q3aantbASQU9221PlcDikENdYtp6SDT/G9IPhf82KqqTgAPLvpw/2
         fBryjCWbBdATrIEbbzhVTLwmO0AwAPoOULEAnvrltmQ5W3p5OwDiVGz3WNnQ/5CANde4
         sp2gtGy8aJrDURXMcRA0YZzhayesMFZjT7XuqYYdH5V9chYvBRbp32mfuZ75+ZiBU7cz
         U+oWngxbTq2NNdDT1ypijAUU3WKg/Iko90+Ip/IEhGAgfaBu/1/+5QDIrkG1PuAhX43l
         gKtw==
X-Gm-Message-State: AOAM533H+gkcYvw/MH2eiLgvKvB+eRhAVdaWbyp1N41gfB+f9Wum+jBn
	VQXfP2iBF+SMM/80q1RXhoU=
X-Received: by 2002:a63:f91e:: with SMTP id h30mr24117266pgi.117.1618182504181;
        Sun, 11 Apr 2021 16:08:24 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id m14sm7492873pfh.89.2021.04.11.16.08.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 16:08:23 -0700 (PDT)
Date: Mon, 12 Apr 2021 04:38:15 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH 0/6] staging: media: intel-ipu3: cleanup patchset for style
 issues
Message-ID: <YHOBXzA0Dk/yLfJY@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tian.shu.qiu@intel.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 0/6] cleanup patchset for style issues
Message-ID: <cover.1618180659.git.mitaliborkar810@gmail.com>

This pacthset fixes the style issues reported by checkpatch.pl

Mitali Borkar (6):
  staging: media: intel-ipu3: replace bit shifts with BIT() macro
  staging: media: intel-ipu3: preferred __aligned(size) over
    __attribute__aligned(size)
  staging: media: intel-ipu3: remove unnecessary blank line
  staging: media: intel-ipu3: reduce length of line
  staging: media: intel-ipu3: line should not end with '['
  staging: media: intel-ipu3: remove space before tabs

 .../staging/media/ipu3/include/intel-ipu3.h   | 91 ++++++++++---------
 1 file changed, 46 insertions(+), 45 deletions(-)

-- 
2.30.2


