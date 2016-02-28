X-GM-THRID: 6256370221351698432
X-Received: by 10.31.152.208 with SMTP id a199mr9384269vke.4.1456674705010;
        Sun, 28 Feb 2016 07:51:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.71 with SMTP id ri7ls346830igc.14.canary; Sun, 28 Feb
 2016 07:51:44 -0800 (PST)
X-Received: by 10.107.6.163 with SMTP id f35mr14789456ioi.25.1456674704625;
        Sun, 28 Feb 2016 07:51:44 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 12si3128674pfb.1.2016.02.28.07.51.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:51:44 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id y7so7266306paa.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 07:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=m0xFqmyjXIFbhHSLz7DCiQe3lnrW3MLxNKYpfVVx4NY=;
        b=GWuqZvnAnFvhj62feOVrCx9HyZS3BhzEyu3UKIipbsBmuVQOH8YvZemeavu1+28BAw
         Byk4r47kBAUcjqJqQTEUPaYJ5/1uhRZxegqXckf53uTOeREwtyXos2kTDmnkn/EpTnCb
         yJn6eKzY1q1fZXyEOfqWihRhYrRxTGL0/AsQFwYRUUzkczYx9AT9Nt+TJE5K5S+Gq+DZ
         W3avInfInVH8GoDXLq3fxxvmNdpgHo6nUVWSjgRSHf8+8YvMa+uBvtJArrvAhVerrDpc
         DzF/evXZgs33zZ0lxtP7JejHkPEbiIBpNXuSVuJA4M9b5lA20tbeuQbZdJi0ojiMKK7A
         g8HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=m0xFqmyjXIFbhHSLz7DCiQe3lnrW3MLxNKYpfVVx4NY=;
        b=GmYZ9eyhr+131jzhtA80sGhYjxdvg+2wDDEtG0QgJAPA46xRzxgSGSlen7ni1ghk2B
         cz3CLqiRFMRoMNfRKPd51szmEG+fud9BEzoeTTM6S6AgJHNp9l3iEu3hBSm7l87/vl9g
         pxG0VjvVHLWA44QvbOBR5QHK9NLvxUQT6TiJykm+41+WEAH6ll1omrkvbj5GfGQf5QKm
         ZBCbPDDlDk/jBD7MRuD0y3Z422w+dXiDLNe87JxepGC0D8p668ag2ucQsWbhdRdNJlqZ
         9gejfnOPrOg6vz4RaFkS2V/kIjp9BYvvnkcevIm5mP1+XwEskdCumN1XBgT2byc3rjTd
         GAjg==
X-Gm-Message-State: AD7BkJKTnWqfaKZSKD9NdRGWbU4vGWWUhKASjd64GaY8xbMbiDcuVAnkuHTg81o/7cnwOg==
X-Received: by 10.66.228.97 with SMTP id sh1mr15969013pac.77.1456674704403;
        Sun, 28 Feb 2016 07:51:44 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id m87sm32057837pfj.38.2016.02.28.07.51.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 07:51:43 -0800 (PST)
Date: Sun, 28 Feb 2016 21:21:40 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: sm750fb: Switch to using managed resources
Message-ID: <cover.1456673895.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset uses devres API to switch to managed resources
in the sm750fb driver.

Convert the driver to use devm_kzalloc and pcim_enable_device 
instead of kzalloc and pci_enable_device respectively.

Amitoj Kaur Chawla (2):
  staging: sm750fb: Replace kzalloc with devm_kzalloc
  staging: sm750fb: Use pcim_enable_device()

 drivers/staging/sm750fb/sm750.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

-- 
1.9.1


