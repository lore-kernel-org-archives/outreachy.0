X-GM-THRID: 6951428959443615744
X-Received: by 2002:a67:341:: with SMTP id 62mr3402047vsd.30.1618505678435;
        Thu, 15 Apr 2021 09:54:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:3346:: with SMTP id z67ls846343vsz.7.gmail; Thu, 15 Apr
 2021 09:54:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwt3Nkxr0VzUKUqQ3SBak4Y5krO3g9fHPN57SvbP2wt8IT3cfsMrilnXJn6IDGTcN2E06U/
X-Received: by 2002:a67:e34e:: with SMTP id s14mr3446335vsm.50.1618505677428;
        Thu, 15 Apr 2021 09:54:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618505677; cv=none;
        d=google.com; s=arc-20160816;
        b=NrLNQ5tx/maSkricfIviegLyD6FFvTkbuyjJd6Dh697yC2TCnInHL984fpE5vu/YYa
         kPzjAWgWMkf0EvhfEXWrcWZq7Rd56DdzTYvhJcWsJFUBTi6wZVAMlpkp1n3aRAWc2srY
         ExH+gh9mbGdIsofdBvzL2REjrB20NvMtCGv9C/Ubj816ml8q8kpkKywQK0lXiO1/i9nk
         NFSqKT/DXI7t2eFewLJ/bEyNESNPHr1V19vk1ZrmxzewfU3VmtwpcXbYZVLIqqrY4EGK
         cD6xYVUEyYhDe6oCIMYoZPTBH/xWugc+vglZUuK28DJf+kbsCDlnnOHRjwtmh9FI+BQ0
         BlOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=sKPscdnN4p036oGIIGdcJly3t0X9xL0TlPcjGDANiX4=;
        b=M0lpypBCea8vfdylVPKzuiph0LCX8HOqCfqYTx6kbPUlqeUHtzjU07OoXGkST6bWKZ
         kRH6L5W8RIAmpE2+TTnLpstJotaVpyvGWf42HPvchPALaklSRy5cTHp5q9CiPtOkmfzW
         xDrBaKp5McgrfMxpGeGCioAlgxLqbvyqnYsTx61ZMoWYaVxBrLP02iKR7jGOC7RsCR2j
         H4b42in27MRgWb/BVNOn4et+s4PA3j9BGmBlNxKH5A5yab7dxxGm/nuO/0M4bZzXNcPj
         YfEYQAwv6craZo5AX3nQn1OXeVT5XDRtu71ThpsVwgi16WCBsLctwTY1rW5lzLTJyBmb
         lvsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kX+aT+xJ;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com. [2607:f8b0:4864:20::735])
        by gmr-mx.google.com with ESMTPS id u13si289669vkl.5.2021.04.15.09.54.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 09:54:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) client-ip=2607:f8b0:4864:20::735;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kX+aT+xJ;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x735.google.com with SMTP id b139so20483338qkc.10
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 09:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=sKPscdnN4p036oGIIGdcJly3t0X9xL0TlPcjGDANiX4=;
        b=kX+aT+xJYRNY3gF53LIK1HUQZ5f+r2tQ37dfCn9Nmm7Wsps7RHfZ/21lgEFLKEyXJ3
         cjI6FT2RSfxH4Y5nsPgDzHbDffzZMkgGqm8y+JUEpEOej7GXpT/gvj+QlsCY26fRurjV
         JZHCHxYO3oh4fZ3T08NbzCAcxb0K0/W4rZIdXe5696aj8gj1JLu0MDeRotPyvFMPrZZT
         WFBeZ4CIushvjcm6q0sNNqpu5ca3v/duaKWV966+i0oIdALHcPQOstbYQcAtMAkBYYqn
         c1PG43pMh3QPUSKuzTODwF6QzkOHdPtY3HC4uHa94LExzE08IzkjdaPaP5XSSVwqYlBz
         xLHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=sKPscdnN4p036oGIIGdcJly3t0X9xL0TlPcjGDANiX4=;
        b=VYwUsMC8RuesipKAq+aU8qmmwZQQYHFKtFdBVMq8uyiXt001/RtptzhXyuSjaBHG1C
         d/xQ72u140V+QikwNA4R2mhBBFiY0etCYIzvXUQbQ0GnOVJHTorF9hxqFjnyEwIHy6YQ
         8HyWlCxlV5wjI6TNzPdjy/D6F99Wv0zhe5Ewr053yJtbe3499uAR6I9EaBIwrneNhmc6
         QK02k7yPkq3vW83PQ0Qf8p2QCKvxs3bHEbJ8sI9zjQyRFW+d9pIBDHbJ/DbL2sKdPVLl
         S3H8SIYz14B4AYl/gFViFlWp+8AnIQriyHimEWA+gCotjA2/Cg8EM3kEkCcXlDYM1sJW
         //IA==
X-Gm-Message-State: AOAM533+J2mpKm8MGrWE5ObewpuTwF1Vidlb7cJwNEt8O/h4cbSvYiUL
	GkYtgbpzobAOrONy1QwEdFBKgjxddLvTBCtI
X-Received: by 2002:a37:b103:: with SMTP id a3mr4561489qkf.261.1618505676976;
        Thu, 15 Apr 2021 09:54:36 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([138.204.24.234])
        by smtp.gmail.com with ESMTPSA id s12sm2085022qtn.69.2021.04.15.09.54.36
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 15 Apr 2021 09:54:36 -0700 (PDT)
Date: Thu, 15 Apr 2021 13:54:34 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: media: atomisp: pci: Balance braces around
 conditional statements in file atomisp_subdev.c
Message-ID: <b07b5e819c0b262ee0bc3c775de7bebb71b648fa.1618505476.git.alinesantanacordeiro@gmail.com>
References: <cover.1618505476.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618505476.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Balance braces around conditional statements.
Issue detected by checkpatch.pl.
It happens in if-else statements where one of the commands
uses braces around a block of code and the other command
does not since it has just a single line of code.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_subdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_subdev.c b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
index 2ef5f44..aeabd07 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_subdev.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
@@ -472,9 +472,9 @@ int atomisp_subdev_set_selection(struct v4l2_subdev *sd,
 			 * when dvs is disabled.
 			 */
 			dvs_w = dvs_h = 12;
-		} else
+		} else {
 			dvs_w = dvs_h = 0;
-
+		}
 		atomisp_css_video_set_dis_envelope(isp_sd, dvs_w, dvs_h);
 		atomisp_css_input_set_effective_resolution(isp_sd, stream_id,
 			crop[pad]->width, crop[pad]->height);
-- 
2.7.4


