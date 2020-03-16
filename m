X-GM-THRID: 6804511537677467648
X-Received: by 2002:a5d:6908:: with SMTP id t8mr36373227wru.92.1584358330561;
        Mon, 16 Mar 2020 04:32:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:208f:: with SMTP id g137ls6484818wmg.1.gmail; Mon, 16
 Mar 2020 04:32:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuqLvVVFpTNphI7C/cXG+bx95/tSWsN6C5ZI7XFO/YJT5IvNB3dlhZ4XnhLof7hCHWVAKfo
X-Received: by 2002:a1c:1fc9:: with SMTP id f192mr28206793wmf.4.1584358328936;
        Mon, 16 Mar 2020 04:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584358328; cv=none;
        d=google.com; s=arc-20160816;
        b=rwNWI/y3Ex6cTFG2hHM5Fnu6flsNzu5obF9k3XRjh52eMMSA1RIjHWgEwwF9niK69u
         +3ipr/cJWs8T0PMM3lp87XWfP8MbjKSegHolcZaY0lRhogPisJpndD9xAB0IC/WhJWj8
         2AmDBBQXb1L1q+iK7XrAw9JqRV/SYMLWt60ZWxUcrVB9I322FG3sXrP+qpHJe23PzUXs
         C7HybnBIg2ZrJYXnx7KdIlvX+rGDyjJeKHwRM8jgPPKRcZXUPnqLRd/BJ57v62RGeC9+
         MLWDobvN4NeQCD1Q1vlR1gGaOZS+Eq+HS5a1bgw3gs/sKl+XlC5iS7HFRxI2SYeIxZ9n
         y5SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=HHFO1TAe4jONDf33LalMqhf0127Susmv0ilLSQN3t3g=;
        b=QxmCXvrmHqDLeHePTk6WQkrGG83ABFADVE+O3dEis4M+VFXXEQJpNCPg3qPr8PFfgz
         x2BNGWBQW6MqQqgxxwQEfHOisvZIvmLOd0VUhI6PKgEIOZoU1WaEVFfEUoinrK9rB6Qb
         8fltYbc3Y1ia1/oVinSfOPX0wb6Z14s1UNq+llLb5gHi10gHHQHRJIOhqsOPUQun/AI6
         stVGbV69PYOIV9SNLZVho/ckCe4Ow/bKaFx7MABDIFf7x3zB1TE+iH1DuHQK4f/NUWWa
         SaXE1w/lAf2J4h7Rvf5fKeCOCyTlgJvK6ZcyPgAJRT8UjyzAlBC7k93dSa8Ioy2n8std
         65MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of helen.koike@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=helen.koike@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Return-Path: <helen.koike@collabora.com>
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id e12si277856wru.1.2020.03.16.04.32.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Mar 2020 04:32:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.koike@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.koike@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=helen.koike@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: koike)
	with ESMTPSA id 4A396291A6E
Subject: Re: [PATCH 1/2] Staging: media: rkisp1: reduce comments width bellow
 80 chars
To: Enrique Vargas <jevargas@seas.upenn.edu>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
References: <cover.1584298430.git.jevargas@seas.upenn.edu>
 <5e08334eae9ca864dbb09c02291fd72687681c39.1584298430.git.jevargas@seas.upenn.edu>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <6a89e7a9-6571-1925-f312-26687fec7ca1@collabora.com>
Date: Mon, 16 Mar 2020 08:32:02 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <5e08334eae9ca864dbb09c02291fd72687681c39.1584298430.git.jevargas@seas.upenn.edu>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Enric,

On 3/15/20 4:00 PM, Enrique Vargas wrote:
> Make 'Main Picture Path' part of block diagram on separate rows to avoid
> 80 chars WARNING found with checkpatch.
> 
> Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
> ---
>  drivers/staging/media/rkisp1/rkisp1-dev.c | 57 ++++++++++++++++-------
>  1 file changed, 39 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> index 558126e66465..194fc33941f0 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> @@ -37,26 +37,47 @@
>   *
>   * ISP Block Diagram
>   * -----------------
> - *                                                             rkisp1-resizer.c          rkisp1-capture.c
> - *                                                          |====================|  |=======================|
> - *                                rkisp1-isp.c                              Main Picture Path
> - *                        |==========================|      |===============================================|
> - *                        +-----------+  +--+--+--+--+      +--------+  +--------+              +-----------+
> - *                        |           |  |  |  |  |  |      |        |  |        |              |           |
> - * +--------+    |\       |           |  |  |  |  |  |   -->|  Crop  |->|  RSZ   |------------->|           |
> - * |  MIPI  |--->|  \     |           |  |  |  |  |  |   |  |        |  |        |              |           |
> - * +--------+    |   |    |           |  |IE|IE|IE|IE|   |  +--------+  +--------+              |  Memory   |
> - *               |MUX|--->|    ISP    |->|0 |1 |2 |3 |---+                                      | Interface |
> - * +--------+    |   |    |           |  |  |  |  |  |   |  +--------+  +--------+  +--------+  |           |
> - * |Parallel|--->|  /     |           |  |  |  |  |  |   |  |        |  |        |  |        |  |           |
> - * +--------+    |/       |           |  |  |  |  |  |   -->|  Crop  |->|  RSZ   |->|  RGB   |->|           |
> - *                        |           |  |  |  |  |  |      |        |  |        |  | Rotate |  |           |
> - *                        +-----------+  +--+--+--+--+      +--------+  +--------+  +--------+  +-----------+

To be honest, I prefer the old way, I think it is easier to visualize.
But lets see what others think.


> + *                                                          
> + *                                                          
> + *                                rkisp1-isp.c              
> + *                        |==========================|      
> + *                        +-----------+  +--+--+--+--+   
> + *                        |           |  |  |  |  |  |   
> + * +--------+    |\       |           |  |  |  |  |  |   
> + * |  MIPI  |--->|  \     |           |  |  |  |  |  |   
> + * +--------+    |   |    |           |  |IE|IE|IE|IE|   
> + *               |MUX|--->|    ISP    |->|0 |1 |2 |3 |--[A]--
> + * +--------+    |   |    |           |  |  |  |  |  |   
> + * |Parallel|--->|  /     |           |  |  |  |  |  |   
> + * +--------+    |/       |           |  |  |  |  |  |   
> + *                        |           |  |  |  |  |  |   
> + *                        +-----------+  +--+--+--+--+   

You can eliminate the trailing spaces in this patch, since it was generated due to this
line break, so you don't need the second patch.

Regards,
Helen

>   *                                               ^
> - * +--------+                                    |          |===============================================|
> - * |  DMA   |------------------------------------+                          Self Picture Path
> + * +--------+                                    |       
> + * |  DMA   |------------------------------------+       
>   * +--------+
> - *
> + * 
> + * 
> + *              rkisp1-resizer.c          rkisp1-capture.c
> + *            |====================|  |=======================|
> + *                         Main Picture Path
> + *            |===============================================|
> + *            +--------+  +--------+              +-----------+
> + *            |        |  |        |              |           |
> + *         -->|  Crop  |->|  RSZ   |------------->|           |
> + *         |  |        |  |        |              |           |
> + *         |  +--------+  +--------+              |  Memory   |
> + * --[A]---+                                      | Interface |
> + *         |  +--------+  +--------+  +--------+  |           |
> + *         |  |        |  |        |  |        |  |           |
> + *         -->|  Crop  |->|  RSZ   |->|  RGB   |->|           |
> + *            |        |  |        |  | Rotate |  |           |
> + *            +--------+  +--------+  +--------+  +-----------+
> + *  
> + *            |===============================================|
> + *                          Self Picture Path
> + * 
> + * 
>   *         rkisp1-stats.c        rkisp1-params.c
>   *       |===============|      |===============|
>   *       +---------------+      +---------------+
> 



