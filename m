X-GM-THRID: 6397785232436625408
X-Received: by 10.157.3.103 with SMTP id 94mr2111979otv.100.1489600673020;
        Wed, 15 Mar 2017 10:57:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls2943301otc.30.gmail; Wed, 15 Mar
 2017 10:57:52 -0700 (PDT)
X-Received: by 10.157.11.211 with SMTP id 77mr2015831oth.142.1489600672143;
        Wed, 15 Mar 2017 10:57:52 -0700 (PDT)
Return-Path: <corbet@lwn.net>
Received: from ms.lwn.net (ms.lwn.net. [2600:3c01::f03c:91ff:fe2c:2b9f])
        by gmr-mx.google.com with ESMTPS id 2si481045pfx.8.2017.03.15.10.57.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 10:57:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 2600:3c01::f03c:91ff:fe2c:2b9f as permitted sender) client-ip=2600:3c01::f03c:91ff:fe2c:2b9f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01::f03c:91ff:fe2c:2b9f as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 6F9882E1;
	Wed, 15 Mar 2017 17:57:51 +0000 (UTC)
Date: Wed, 15 Mar 2017 11:57:50 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-doc@vger.kernel.org, Tamara
 Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [PATCH] Documentation: Fix typos
Message-ID: <20170315115750.1019a427@lwn.net>
In-Reply-To: <20170315175407.3913-1-diaconita.tamara@gmail.com>
References: <20170315175407.3913-1-diaconita.tamara@gmail.com>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit

On Wed, 15 Mar 2017 19:54:07 +0200
Tamara Diaconita <diaconitatamara@gmail.com> wrote:

> Fix typos in vfio-mediated-device.txt to make documentation
> grammatically correct.

Can you put the file name (or some other indication of what's being
patched) in the subject line, so the patches can be told apart, please?

> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  Documentation/vfio-mediated-device.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/vfio-mediated-device.txt b/Documentation/vfio-mediated-device.txt
> index d226c7a..acae6c0 100644
> --- a/Documentation/vfio-mediated-device.txt
> +++ b/Documentation/vfio-mediated-device.txt
> @@ -380,7 +380,7 @@ card.
>     /dev/ttyS1, UART: 16550A, Port: 0xc150, IRQ: 10
>     /dev/ttyS2, UART: 16550A, Port: 0xc158, IRQ: 10
>  
> -6. Using a minicom or any terminal enulation program, open port /dev/ttyS1 or
> +6. Using a minicom or any terminal emulation program, open port /dev/ttyS1 or

This is obviously a good change.  But you could also, while you're there,
make it read "Using minicom" and get rid of another problem at the same
time.

Thanks,

jon

