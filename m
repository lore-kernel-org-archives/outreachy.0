X-GM-THRID: 6950506572644614144
X-Received: by 2002:a02:b786:: with SMTP id f6mr16723690jam.80.1618290991555;
        Mon, 12 Apr 2021 22:16:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:1494:: with SMTP id j20ls2583254jak.10.gmail; Mon,
 12 Apr 2021 22:16:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyaGAfTzX5dIltuEu04mPF8Ndkvqe+jFN5ByljHtkUMQDh+c8mPrJyQwdbyY64zRhnrowxl
X-Received: by 2002:a05:6638:389d:: with SMTP id b29mr5880144jav.46.1618290990469;
        Mon, 12 Apr 2021 22:16:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618290990; cv=none;
        d=google.com; s=arc-20160816;
        b=ae268BXxGOndpSX/IalrmSIwgwmofPMZhMbdb5sByub90ey1gFDwzeV/eAuNZKYecy
         cSHuATr+AwqwEJKlQAywr4LIZlOSMkq5NPzj3TCItyWCCjWGZz3TBEvP9/C3/ikaBbSs
         ImafqN6w82elsh7rBYEYXSE/ZxFhPTiqGacsUKAAQdnV4ETz8psl8M2ymGoYPmJTROsG
         ZlLAj1qF8kF1pXKkWGbmBOTIgC6n75//MY6e0SRnn0lb4FCB3KDVXVBnrB2Hm8bC2XKH
         RNy/1feDDUPL9EyOy0p9H0mHgoJxOuJUPOksm65SPSkH51kS3lwJ8q8K7d6g2mmD52gX
         W9/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4XDX8cIaJxLhyXnc3hBMVHgdvzoZ+hyINeFmm7eH+kg=;
        b=CFzAC1fCiFm50rG+/xzdFNBWMfjY3yKaukSHZRW3kUya6TeE6KyhrXe3t7RbwpGJvs
         mUFfHL9wcY+RSRJMHjPykQhR7CL4HD+1a7sikeH2lf0OnjMFsdY9es6Mge3S87TgdfmC
         Uypj1nimyL5e2AYs36zoJf3xZG7sBmSIiLOdXLZRVVL6KLaGTYjgVDSVKQUHqdEK8eyv
         4iZWqU+TqsUapu5ulvG8skY6pvNK4CHqnv3BpnPOH4T9rrM8+djQuJV/iIqLXDhCEAHh
         RO0zbpwCJgeIDhfMwhhn6xBi6BTMrGjRQiwY1pvC9w5GI94dOHQgRjl9iBQuphFkPXnC
         dnEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A7Ec2k4D;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id j1si249559ilq.0.2021.04.12.22.16.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 22:16:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A7Ec2k4D;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1030.google.com with SMTP id x21-20020a17090a5315b029012c4a622e4aso8369984pjh.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 22:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=4XDX8cIaJxLhyXnc3hBMVHgdvzoZ+hyINeFmm7eH+kg=;
        b=A7Ec2k4DKxgt4iaOM4wzFNrzbGicCPfrkYDg+42NjbsV1MqVQ/0A0AVXWfO8QuxFKO
         +3SEP7Q0RNQ4f2PP18PGUf8soqkaLoacCDIva1/GKda1Wpo4Q3fIXIi3j8za8wPtAKEZ
         qW5jvfXL4zoUqvFuZuVCJvDPf1wUYVvOft6mshPzF+TzGdizx0Ye3Rd8037ZaHsXI66E
         uVmAXMJHwboaRd8GAa43J4mFXjYd0nBQOhBV4cwV0RjXABq36cr4prIuRiy4JSmS8BXT
         ybAODTDgKZWRN1+T6q4ruac9MX3m6gbvmsrvsxCRJaPm8z/HEC/xVSnUUP10uXfvURKk
         B2lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4XDX8cIaJxLhyXnc3hBMVHgdvzoZ+hyINeFmm7eH+kg=;
        b=VAa6Khm7E1Mc2xUpF/kP/hvR0F5GHn4Y3iXzGrnjeQkYZLoNOOBCVXAYszgD2bjA9u
         J9ZgKGM2o54vihB04BzuFb0KBTKVzUNA26LrN04IkCOi2+wYpYCOjP4juYkwC4PpbkV7
         phFijj6iqi3XFk7256g8+oM4AJhd/Iu+v7dScF5c+5NtDOs8FOm/pfyB2V82qVtWoWXX
         g8oitAtYyMqwaG+tRdS2aA0HWGmWMFKWUIDhFI44u3Nd03IQERaOcZ070SZwyv2plQpi
         qCMcTvrdFpsQP1ZyD+4fo19UuyDeMi3q0IfTN85WjJZa+C1qAEDpV8fL9wuAaTsGDizR
         yWvQ==
X-Gm-Message-State: AOAM532RgpOQElzkiK0SFL7EJ1isU9m1T/FYnyK9A6vVilNuponvMF2m
	/edOhhOs2rR1gOPHXIK0M8WE4C7PkvUxRQ==
X-Received: by 2002:a17:902:e5d0:b029:eb:2814:8619 with SMTP id u16-20020a170902e5d0b02900eb28148619mr2079964plf.30.1618290989854;
        Mon, 12 Apr 2021 22:16:29 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id u7sm957393pjx.8.2021.04.12.22.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 22:16:29 -0700 (PDT)
Date: Tue, 13 Apr 2021 10:46:22 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v2 4/4] staging: media: intel-ipu3: remove space before tabs
Message-ID: <a01ff63a3b2fb14704f32e83bd12c4cf36410275.1618289130.git.mitaliborkar810@gmail.com>
References: <cover.1618289130.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618289130.git.mitaliborkar810@gmail.com>

Removed unnecessary space before tabs to adhere to  linux kernel coding
style.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v1:- No changes.

 drivers/staging/media/ipu3/include/intel-ipu3.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index 0451f8b7ba4f..340d97160bbb 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -631,7 +631,7 @@ struct ipu3_uapi_bnr_static_config_wb_gains_thr_config {
  * @cg:	Gain coefficient for threshold calculation, [0, 31], default 8.
  * @ci:	Intensity coefficient for threshold calculation. range [0, 0x1f]
  *	default 6.
- * 	format: u3.2 (3 most significant bits represent whole number,
+ *	format: u3.2 (3 most significant bits represent whole number,
  *	2 least significant bits represent the fractional part
  *	with each count representing 0.25)
  *	e.g. 6 in binary format is 00110, that translates to 1.5
-- 
2.30.2


