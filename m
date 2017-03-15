X-GM-THRID: 6397571026588270592
X-Received: by 10.129.57.66 with SMTP id g63mr616072ywa.77.1489550579782;
        Tue, 14 Mar 2017 21:02:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.2 with SMTP id u2ls451924itc.10.gmail; Tue, 14 Mar 2017
 21:02:58 -0700 (PDT)
X-Received: by 10.99.117.70 with SMTP id f6mr637510pgn.91.1489550578872;
        Tue, 14 Mar 2017 21:02:58 -0700 (PDT)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by gmr-mx.google.com with SMTPS id u19sor1348itb.2.1969.12.31.16.00.00
        for <outreachy-kernel@googlegroups.com>
        (Google Transport Security);
        Tue, 14 Mar 2017 21:02:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4r+uR3RNirEVH5f5yW3iNNAtH20yTkYxeA10imYIlZo=;
        b=AXMYXMuSmMeHKBj8MDfjEd3gpGFEZOjmAn83fCml+D7cBFn5+bbxihhfhsfocBgwjN
         i80JlyY1jyG+GiK5aZimG2J9sj74/BEXu33OalDaLhTqGCJVaFyVCtzOSpDaJmzV3R9I
         om8/rERtIRlpLvXGn7pbapCNSEEXErMrb0Nu0rvZnnQ8P1y2lmG5JTtppfLMg9QbTt0X
         WTENcS9MGTKXGyx2D3s8VVMHbhHoAir5JMExdxpqshGJeoaEa6xKBzy9y8Y5PLv/Kriy
         hTd8AXVppm1V+tQ2Y3Lu4hPND2QeFm6ebOykEorq2bWIDfGR8McsmzduDJk1lMQD3Vjq
         UHPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4r+uR3RNirEVH5f5yW3iNNAtH20yTkYxeA10imYIlZo=;
        b=LTL1NVqC8nbibHLVxBXsm35VTGq1L8/EHm1r6C68Kru38GALBibeFIPLjRIqHf0cGy
         Ctl9NoH3HCJqbjMQFan+jZZHXvwS8bwKPi4oL+MwSwrtOywxUfVBCa7EG+MKL9kAfMfA
         Gsl22ncLEE2QeI6wDbdF60lh/dYFp23TaE5lvI93mU60C7F7s0s4QD9LiJWExNNKnPGP
         QTY+qWp0vKDzFdWEXPC601Vc4Sq8r1Llsc5T9HiA7PTqEhVt2ZaKVG9qJIwMVBs4rNcT
         f7sdK5g1/Jxlz8I+qW3J7G8nuACyqnIsBrqfk1DpOoMCnrek6rb57uy3BZjJX0cwIXM2
         Y/tA==
X-Gm-Message-State: AFeK/H25dZeSMKdpP/KtsUGH5xRWqtgpeE9Y96vAUnqy6NEyaMKoXxfz/WNu7Pa+GJwqkQ==
X-Received: by 10.36.29.18 with SMTP id 18mr18963166itj.1.1489550578581;
        Tue, 14 Mar 2017 21:02:58 -0700 (PDT)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id x11sm6182065ita.11.2017.03.14.21.02.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 21:02:57 -0700 (PDT)
Date: Wed, 15 Mar 2017 00:02:57 -0400
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH 0/3] Removes several pointer comparisons to 0 in queue API
Message-ID: <cover.1489549991.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replaces pointer comparisons to 0 with NULL in multiple queue 
API methods. Identified using coccinelle script 'badzero.cocci'.

Tahia Khan (3):
  staging: atomisp: Removes pointer comparison to 0 in
    ia_css_queue_enqueue
  staging: atomisp: Removes pointer comparison to 0 in
    ia_css_queue_dequeue
  staging: atomisp: Removes pointer comparison to 0 in
    ia_css_queue_get_size

 .../media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c    | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.7.4


