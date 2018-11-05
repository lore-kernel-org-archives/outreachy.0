X-GM-THRID: 6619753207840112640
X-Received: by 2002:a63:a01:: with SMTP id 1mr676605pgk.149.1541425888550;
        Mon, 05 Nov 2018 05:51:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:60c9:: with SMTP id r9-v6ls6961996pgv.12.gmail; Mon, 05
 Nov 2018 05:51:28 -0800 (PST)
X-Google-Smtp-Source: AJdET5feB4V2wgokejhVaUzmsnF318+QuIbKstvaNno1TPVzKb6MFyv9HUGtv2PhUnj8bJwziU6f
X-Received: by 2002:a62:f5c2:: with SMTP id b63-v6mr7227382pfm.110.1541425888027;
        Mon, 05 Nov 2018 05:51:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541425888; cv=none;
        d=google.com; s=arc-20160816;
        b=A7yqhBQNleP6EkxiMUPTRkI4JyE9sqRHvqWT3Yol1mpp/W9JVZ5yfBQO4+8ZswX/Ga
         VDl6sSdGduSsX4Se/CZLYFVgsGmUcY6pNsWXKo/8Q3HSDELG5h2nN/HxioLgZUw0sNgo
         kxgrNNAGLqL3HqapO2Ug0O8/0jynRNxiCyWS0fWXGd+B+tOL4zr8eBg8IVPcyZSvIm8i
         Wc5yJlI5G03waFWtNvH002UpHS7slwEUgQEzhVYuCUAJp9gTbKj9Z0dXRu8zKIE9+Y4e
         HzAviLNO2hnRkLrPEaj4quce41AXuAhIZjW9SaLkrmWLnfq3Jm5z7lpZrKB9zVW4a5Z6
         3q/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jlZb34iJbo6WGGV8ovl3tg7YvoJznNF3hxNkfu0s/+4=;
        b=cIths7IpK/M8fnrAU1THyl+k77qMwPgnu0er8UG97TRgAzGZmQkDMK7MATSwy4gmdJ
         B2W+fnYgUYD3GTCFH4TuWqaKySuq1ILSVj2wD5aHExZ38zNYpYq9CVRA1JzevzEH7dsg
         lN2gFvN4jN+urSbCRNgb/ij81Q0pwsmfPNeoaE3I9UJDq/hsF+uztK+rgfWcLFmRdEw8
         Tol37rualQnjjD9Dx8wIJuCse1+FZVpAniU6twj+ODMvu/NIAvtstU733KIEvEfR1LIp
         AvvV0RHqAzqopMvDolDDozy+cHMMzLCPIGB3hh6AXkr1fGZS/GAvfK58aHO11u1nqQoM
         fX0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RaB4k8Dc;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t12-v6si1656619plr.4.2018.11.05.05.51.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 05:51:27 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RaB4k8Dc;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 44A7520827;
	Mon,  5 Nov 2018 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541425887;
	bh=SlfWORHbBfVe+5rwER7auT9RVgOi0R3aywVzBp517vY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RaB4k8DctTemmd++2S+qjveQbkP9j55q565nX2RFEr4ya6T9Wv/0m5XbgG8U4xYe0
	 /WU8BoPjgR4B77yQqIOzbl+Kw0COGtsX4wKz8oS1jhzarYnBhuDbDv81e4kboYk3PP
	 uREAboM4ME0szhVE62HZ50p8gCqlimZ4W3u9m5pg=
Date: Mon, 5 Nov 2018 14:51:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Irenge Jules Bashizi <jbi.octave@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: Re: [PATCH] staging: davinci_vpfe: add spdx license identifier
Message-ID: <20181105135125.GB9626@kroah.com>
References: <20181103214310.15930-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181103214310.15930-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sat, Nov 03, 2018 at 09:43:10PM +0000, Irenge Jules Bashizi wrote:
> add spdx license identifier to fix
> 
> checkpatch malformed missing license warnings
> 
> Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c       | 1 +
>  2 files changed, 2 insertions(+)
> 

You sent 2 different versions of a patch that do different things yet
say the same subject: and changelog line.  What is a reviewer to do, how
can I know which one is "correct"?

Please make it obvious on my end so that I can figure out what the
latest patch to review is.

thanks,

greg k-h

