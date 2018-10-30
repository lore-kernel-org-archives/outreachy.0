X-GM-THRID: 6616604280773148672
X-Received: by 2002:a17:902:7604:: with SMTP id k4-v6mr1213020pll.146.1540891928592;
        Tue, 30 Oct 2018 02:32:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a717:: with SMTP id w23-v6ls4527326plq.7.gmail; Tue,
 30 Oct 2018 02:32:07 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eGtm3GllPA5NIJZRWy0/ZMt3Y3fGlWKnhSRvQiMj/Zvj7aBg1pRvsZPEaSSE63wTREytWS
X-Received: by 2002:a17:902:8541:: with SMTP id d1-v6mr764169plo.89.1540891927902;
        Tue, 30 Oct 2018 02:32:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540891927; cv=none;
        d=google.com; s=arc-20160816;
        b=gNIS8r+2AUpQUXHuQnHv/INlLzJTAUM2vwsse1NC+aU1Ypu6ItdW9KGnk4cxvMucso
         eg+17EJqYU4Ye0u6lfHMyYgtXp5Sh+9uR19RfwwlcDFB150EiucwWGtv2818AQGLBmwL
         7Tr1mqtUSOz6id/GV7mI1/aU/fuyreVVRaHK19pCw0B8uRrfHnsdCZzLGiVwJqCJxp61
         KtJbfvNFhuotlw7WS73oLNy6ineVY0BABqKH2Y+X/Q6cuvq7vm+rDUdzSruQvN3fu8+z
         HWkiQWPcHYbZFP2jNzNItc5/hGU6TZnu6Uy7NSYBsmZCBbLta3lh9uz3vuciFzxdphuq
         FWog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ux4DKMzDaT4cf6rQJ1ev8OKHLDl5dsa9keAuY4s9wMY=;
        b=ob6LeZabjY2mboj5LyWYiIEYLU3pOtr/HsONG5lqPuYtq3suKTXOKlmmNfbTDoJmu0
         3fYxMx4tpO5DGih04nZoNuJ7WAPmYQZtW/iZPfdBwU82l5qujhJsaaj9sdHbiSIhtRgt
         E5SmwvS/WPm2W3e0/nItkzBIhE3y/yfPtCXWSGpEfwjVqjLJ9Em06DdOZsJnAA7nA8Mr
         ls3K27JNBs1Z98xzYSX+CV2N+J/KqWPzsTVowBzH/zxLWtoyUSNTkLtkTycMVP3kOB3w
         FK26OArvQJ0VL6hPmgwJuPcB7zxr7vRdg5oWvKd18wnNlMAoo0DoPYorQSpfzIXICe27
         Fykg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VTRIFnRQ;
       spf=pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s138-v6si1253400pgs.1.2018.10.30.02.32.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 02:32:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VTRIFnRQ;
       spf=pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1ADE020827;
	Tue, 30 Oct 2018 09:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540891927;
	bh=gm5dXaY/3Ou6TlzBnWL89TM+qlVfIx5SbY0WuSi6xVg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VTRIFnRQ5VW8Hjs4lBOQpJaH3zaYh9i/8/qBqRrFN3kq6DCKIUDDhK0MO2KJXazaI
	 +fUTxe1xMn+5MQGyU5EGZ9WDq4GunBIlmjdBAsZ2UPIJDvx9XlflV5kXBFKKvVm4Qw
	 3D4daS1H9Q6/nRGB9cZ02iBb6DrrRt8Si9W5HdPU=
Date: Tue, 30 Oct 2018 10:32:33 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kim Bradley <kim.jamie.bradley@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: rts5208: Shortened lines > 80 chars and aligned
 function args
Message-ID: <20181030093233.GA6574@kroah.com>
References: <20181025172943.GA7157@xubuntu-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181025172943.GA7157@xubuntu-vm>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Oct 25, 2018 at 06:29:52PM +0100, Kim Bradley wrote:
> Reducing lines to < 80 characters and align function arguments
> wherever possible. Most of these issues appear due to the long
> function name 'wait_for_completion_interruptible_timeout' for
> which a TODO is noted.
> 
> Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
> ---
>  drivers/staging/rts5208/TODO             |  5 ++++-
>  drivers/staging/rts5208/rtsx_transport.c | 28 +++++++++++++-----------
>  2 files changed, 19 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/TODO b/drivers/staging/rts5208/TODO
> index 57bcf5834c0c..67f0c8372d96 100644
> --- a/drivers/staging/rts5208/TODO
> +++ b/drivers/staging/rts5208/TODO
> @@ -1,7 +1,10 @@
>  TODO:
>  - use kernel coding style
>  - checkpatch.pl fixes
> +  --> Consider renaming 'wait_for_completion_interruptible_timeout'
> +      function in rtsx_transport as it causes many lines to
> +      overflow past 80 characters and/or alignment issues

This is a core kernel function, you can't fix that up within a single
staging driver, the whole kernel would have to be have the function
renamed.

So I can't take this patch because this isn't a valid TODO item, sorry,

greg k-h

