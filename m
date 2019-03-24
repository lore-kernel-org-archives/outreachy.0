X-GM-THRID: 6670961947938127872
X-Received: by 2002:a17:902:121:: with SMTP id 30mr19189271plb.315.1553417785298;
        Sun, 24 Mar 2019 01:56:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6c81:: with SMTP id h123ls5022243pgc.5.gmail; Sun, 24
 Mar 2019 01:56:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzUj/wYke/3nCkDtc6MwVj9wQRDq9wh4yLBB9Fs1nN6p951jfb55HRORI3iVhKYZJ5R80I9
X-Received: by 2002:aa7:8a95:: with SMTP id a21mr18183968pfc.14.1553417784581;
        Sun, 24 Mar 2019 01:56:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553417784; cv=none;
        d=google.com; s=arc-20160816;
        b=kUXqr1vAripbLt0akh/DJ0sCIR7iuQ/StB2dBik/aoFIk82pxs1zmhDPpbndsz7TSS
         mOD5V6GSn5us3GljdpWbMcYdcxlhnOXXdogQ5rSClLWXifugPbQ0Qjr4q4jZQBQ3lMcH
         Q9VoSgej8jPv5k4kzFgBrq0r0Y88snqQnix+q0TulX+BRrvKfIsTzZTsEsLIhUNJh23v
         Na1jh5IzJ+h5cExtwUJ0s9eu1KCiruerXdlGqCOsEh806ZVxMDcbQoM+NgG85vrLS8w3
         ase6Q5fp/ATIgK6ZpOZumSf4MuCKcmkqrbOwx/prt7nIYPJytsd/40AUkAyyx4k+AxpT
         vx6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0DQsUDlSuapwV3fyVBXRrb+ZXZ/MB54amIt/D3FJ9gY=;
        b=cKLwNseGtdBA/texpswNJnR5CY3nvgnN7UovdAfn8rpz/HNXQW55cYoFCPeRcHM+5T
         tzZLct8iyXX5e2Vg7TkFR1ZhH4ImSh53ZlIggLG+PClMqdHl/ZNX69PMIKQ8rLwnHFV5
         fhjAzfyg+XL6cr75twrYpOVI+T2Es6kOZAsPpCePEgumRzlxUsiEp1JgaVnklQ7B8Gkn
         EVMJnEV2kz6Th4eB0V0FBOI20YS9pPhSFaf5poJ+wDx9/V8Gnw0yvd0geUKnH4EZbYsd
         E8aVLmwTnMGh6qhJA1xALpv8dCtqJUvg8lBz5PczS/6zDbLMeDxZd3f3wb22AfdOiVLq
         m4mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=baBZMnFg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k70si676673pfc.0.2019.03.24.01.56.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 01:56:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=baBZMnFg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.248.140.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D86712147A;
	Sun, 24 Mar 2019 08:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553417784;
	bh=4TKMdrRV0JqU28O7tMqM/lUdcsuKqDjqHeIhj1i9uoE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=baBZMnFgEsxShFHR9YfrBxmhnX6kIuPP7WwhtGEmAf1ICHAbFumH5OBqpxeX6PKDI
	 GnngxNNYMmXCSfn/7nxJDUhJHwDvo8NMv3q7vzUAqbPj5wbaCDnVm4+ikqr7KM2SME
	 FD9kO++zcty1a6C51up+B/YXfoIi6V/E4Jb5qRN8=
Date: Sun, 24 Mar 2019 09:56:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 1/3] staging: vt6655: line over 80 characters
Message-ID: <20190324085619.GA21361@kroah.com>
References: <20190322202945.24884-1-vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190322202945.24884-1-vatsalanarang@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 23, 2019 at 01:59:45AM +0530, Vatsala Narang wrote:
> Align function to prevent it from going over 80 character a line to get
> rid of checkpatch warning.
> 
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
> changes in v4:
>  -corrected the alignment

<snip>

I have an odd collection of patches from you here, some with "v4" and
some with "v2", and none of them actually threaded and connected to each
other, so I have no idea what to do.

When you "version" a patch as part of a patch series, you need to resend
the whole series together, not send them individually, as it is very
difficult to understand.

So, please resend your whole patch series for this driver, properly
versioned with the _same_ version number (v5 now), so that I can have a
chance to figure it out :)

thanks,

greg k-h

