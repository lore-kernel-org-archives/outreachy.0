X-GM-THRID: 6670611894113402880
X-Received: by 2002:a5d:9a0d:: with SMTP id s13mr1071391iol.26.1553152892925;
        Thu, 21 Mar 2019 00:21:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls1982292ioc.3.gmail; Thu, 21 Mar
 2019 00:21:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyLC3eq+5A0S7EMIuUIw38bfl+rYO9Lrj+QZYuEtABWviozf+AvE55CxjfAI/P8jBM0XRJm
X-Received: by 2002:a6b:c9c4:: with SMTP id z187mr1111674iof.4.1553152892119;
        Thu, 21 Mar 2019 00:21:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553152892; cv=none;
        d=google.com; s=arc-20160816;
        b=G3qE+LphTUFWpKIO2XNQa3g/SWKapZUK8ZYYwjcfHgUInFYqEVMF5e6ognSdDhUOrR
         FPMijUNxTGcBMkVAVXKUuKr9Vb81S9fcWLHc5YrQbnTZDEl1AbKn6Fmwj4vhS8ekpS4P
         Fe/P58zu53Jyoxd/iArPZMoiHlZpuDjo1uuHsmuxtP37/ZiOd7CYNOwqyn25FTi0OTH5
         kSYH1L9WBptEfo0PwhZf9x3XhQZVNVR68WYcD+gao9SlKZTPfIkB+akxcktyjFfoE546
         cDKNGo1aQ5bNRzeCXyGmo85yM1kuy863qt775ZFb2L9cpoelSJsekYn1K0yqefv/tl6Y
         kvYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=oPA15hl60wxWm1YEHmB+dSyV+F2C7Ve8b3I9Iiy9rEs=;
        b=ywBuwNelrB7PMTb/h7mga24A83rqWKiiOTv5UnJIVSlZlqzBv8O7KWk5pfRtHdq9jz
         PsQSq7HPENEKlrHYflfm5CCiPZSGqRl1HjjyRgZv0Tirw2y52Ai/3VDXoenKWkmZYN7N
         9GldtcK6hxBteNy30nCHHvscdGQimsvAQBvfHYTQsg52F0n+KaVACTXq7i1qN9slgYc5
         K3ww8/VQQ81mNgM02BQaBw+GswfTfBfZshRUXmE3/pKIixAhzr49joPpTFV1CVHskGaw
         cEHf4YHwywDlzeuUjZGdyYRiuGKkZJHhXLFa5tMX2VQaQc3GIh7pO6pumthaLOhfto6C
         aA2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ApLKruCt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e74si414431ite.1.2019.03.21.00.21.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:21:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ApLKruCt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E79CF218D3;
	Thu, 21 Mar 2019 07:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553152891;
	bh=H3nEDoXSZPFu1JLlKsfSzvCuNnoB1lMlmcNe/2CmCro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ApLKruCtYu6FgKZ1DHGkaI23k2KLRfpXFB7K4kuDdsu8VGH8G2j+SJi1aAu7RXOpK
	 qU4jHRYDCQJ28dfgqcs7Y9Oq0OwZP8JKmTQFRCk84Z2QzUMscWCKf1tPqtD3dK4Jo4
	 XTJyMZzxV9kE2hK5AaQ47OMfbCEy6UXKrQbo8Q5c=
Date: Thu, 21 Mar 2019 08:21:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: pi433: fix line over 80 characters
Message-ID: <20190321072128.GF28171@kroah.com>
References: <20190320230048.6340-1-jbi.octave@gmail.com>
 <20190320230048.6340-2-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190320230048.6340-2-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Wed, Mar 20, 2019 at 11:00:48PM +0000, Jules Irenge wrote:
>  Fix coding style issues which solves checkpatch.pl warning:
> "WARNING: line over 80 characters".
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/pi433/pi433_if.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)

You sent 2 patches that did different things, yet had the same subject
line :(

Please look at how other patch series are named and resend.

> diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
> index f537722395c6..10245719b5cb 100644
> --- a/drivers/staging/pi433/pi433_if.c
> +++ b/drivers/staging/pi433/pi433_if.c
> @@ -45,10 +45,10 @@
>  #include "pi433_if.h"
>  #include "rf69.h"
>  
> -#define N_PI433_MINORS			BIT(MINORBITS) /*32*/	/* ... up to 256 */
> -#define MAX_MSG_SIZE			900	/* min: FIFO_SIZE! */
> -#define MSG_FIFO_SIZE			65536   /* 65536 = 2^16  */
> -#define NUM_DIO				2
> +#define N_PI433_MINORS		BIT(MINORBITS) /*32*/	/* ... up to 256 */
> +#define MAX_MSG_SIZE		900	/* min: FIFO_SIZE! */
> +#define MSG_FIFO_SIZE		65536   /* 65536 = 2^16  */
> +#define NUM_DIO			2
>  
>  static dev_t pi433_dev;
>  static DEFINE_IDR(pi433_idr);
> @@ -672,7 +672,8 @@ pi433_tx_thread(void *data)
>  		if (retval < 0)
>  			return retval;
>  		if (tx_cfg.enable_length_byte == OPTION_ON) {
> -			retval = rf69_set_payload_length(spi, size * tx_cfg.repetitions);
> +			retval = rf69_set_payload_length(spi, size *
> +							 tx_cfg.repetitions);

This should be broken at the , which makes it easier to understand.

thanks,

greg k-h

