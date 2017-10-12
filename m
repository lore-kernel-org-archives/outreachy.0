X-GM-THRID: 6475592721521180672
X-Received: by 10.99.181.19 with SMTP id y19mr384221pge.47.1507799928440;
        Thu, 12 Oct 2017 02:18:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.2.206 with SMTP id 197ls1002558pfc.7.gmail; Thu, 12 Oct
 2017 02:18:47 -0700 (PDT)
X-Received: by 10.84.133.164 with SMTP id f33mr371358plf.33.1507799927584;
        Thu, 12 Oct 2017 02:18:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507799927; cv=none;
        d=google.com; s=arc-20160816;
        b=AmY2b8xOk5L3w6AhDzryDi5r60VO+/25VCDkDyUCvYUP4iG3itWWiqwgvnj4ytVEBq
         YCkYDxote4piRum9jGpyQnmQnDmbyf6dBSoAiznJElRLv49Y7dpLLf1HAMUS6Sh5AvLO
         S+HRc7uI52Bty4npWyaXntCnSqJIoR3bCNv9Pdp0nQETdLWaVSEWycHOG93e1XwiZdu/
         j4LV+nwNnHhDI8DZh0/yRMKiJZI3bqmMiyw8txgK4JR3YFkwu0yN1PsJHapo6rJxrbag
         0pvlWRvoJdRXwBzBwDksOg44xJ6Bw0w/wizzJo/ZjVi9jkPDFSAOvd7YIBMhjgdnrbeV
         AVtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=awdst2ldM7ZXuVMG1EKalmgWg/b2OTIolF0OtsF1bw8=;
        b=H68/2twqfJjcDZE3Mks8WGsTepI5OPM3CyWHZmHS0NdIrdTrne3VhZncQRIyNENxBT
         BnM0C+tyx3t6FlVOqQ5CCqUWjgKjjXJ8y25flVidacqB555WwwpMzSEFn2kIv5Y8CXZE
         Thog25TU1ofSbYJZp1pIhbRsYW8AvYlkUzz/7H8loz4BNGjiG0DQ1lz5Qu5tELGNQv1H
         Zwjy9hKsNby4XSTWyhuj7mrY7Rmn4nCCCoon9lvnETOE1FQFKmH7WCh1eNeursr4Ihvp
         hbamcVrqxS+0FMR68RZqIW+JKfTKu5kUafmtp/WZ000DeHjNiszRa8y4fueG7EDOhPVQ
         jVjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jMMb8+wr;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id e80si1698571pfb.8.2017.10.12.02.18.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:18:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jMMb8+wr;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z80so5243733pff.4
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 02:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=awdst2ldM7ZXuVMG1EKalmgWg/b2OTIolF0OtsF1bw8=;
        b=jMMb8+wr/05yJEeky7/+RfZUcE4Jyp88P0RJuXiPOyfqIVDw+iVHzcue1U1jap6RPf
         VeFBYLdZgTlkgadQYsLu6txn84ByMVZ0zrbpQwSWySJEmC8bpfdxiVNUg/Gmh094/uqE
         P9PG7hiokwjrlsOypa08u75Ha9PH5bAZliyV4AIQq3mH29yEiUs3EZSVpCOtQM95BdiA
         QETu2enHoByvP6j4BL7E7Ej+tdc5uUzvaeOIjRqU0LB89KRFKJGdMP1keSynjD0xeWkJ
         egJaALlQPvmFK8FCUu86LL3NMC7QycA7Gomd9TUxJz9KmIvz2paT+3ef42ATd+NRePFb
         J4rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=awdst2ldM7ZXuVMG1EKalmgWg/b2OTIolF0OtsF1bw8=;
        b=nJjRRLUc0yM4UyCCv31ib2prM8k8/xY/1kvf5uJuq1m/ofM92SxCuUhmzPkS2fmOwa
         GPwVeOKd1UEFMvWcQJ0yK2OCH+TOosz6Pm8seqxlSfFizunmEkVhjxe/i9Eell6MfF5r
         6+0UeDIJQKj+QzEY1/xy++lCy21OrrMlegK/gkznmECi7K3XuFGUcgekjt4N/wETRBSd
         dcm/Jjt6en7l36M9nOutoGkniDwK+5COVq7+977IU6uVouNeEfwLS+82Y9IGlXPzTqDr
         7JB3Qk9a3037OZ+oigVR1QR83OEUkWhObb7cRRHj1hr/Pb8Jd/5EwWprnW6Rwh7jM68Q
         hUKg==
X-Gm-Message-State: AMCzsaVaGsX7k+xytEbwbfu1uGxSetuCrlzxlwWVI9sExENqDPEoFt3b
	KmB8jLPQ7ubxuPSavuKn9rw=
X-Google-Smtp-Source: AOwi7QAVP8r6lrC7ZQcqHZ/duG4jSO8jBPKntX+wv1gkl33BZk5PgBOUsNCUz4E+RtkgzoYetjTimA==
X-Received: by 10.159.234.2 with SMTP id be2mr1617261plb.125.1507799927333;
        Thu, 12 Oct 2017 02:18:47 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([2405:204:5684:94d7:a890:2695:1239:4fc8])
        by smtp.gmail.com with ESMTPSA id v85sm28742352pfi.71.2017.10.12.02.18.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:18:46 -0700 (PDT)
Date: Thu, 12 Oct 2017 14:48:37 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v10 0/3] Move backlight helper functions from tinydrm-helpers
 to linux/backlight
Message-ID: <cover.1507799712.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move drm helper functions from tinydrm-helpers to linux/backlight for
ease of use by callers in other drivers. 

Changes in v10:
-Change enable_backlight to backlight_enable

Meghana Madhyastha (3):
  drm/tinydrm: Move helper functions from tinydrm-helpers to backlight.h
  drm/tinydrm: Move tinydrm_of_find_backlight to backlight.c
  drm/tinydrm: Add devres versions of backlight_get

 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 95 --------------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 drivers/gpu/drm/tinydrm/mipi-dbi.c             |  3 +-
 drivers/video/backlight/backlight.c            | 71 +++++++++++++++++++
 include/drm/tinydrm/tinydrm-helpers.h          |  5 --
 include/linux/backlight.h                      | 55 +++++++++++++++
 6 files changed, 130 insertions(+), 102 deletions(-)

-- 
2.7.4


