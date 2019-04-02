X-GM-THRID: 6675008112137601024
X-Received: by 2002:a81:20c4:: with SMTP id g187mr6546534ywg.7.1554184405278;
        Mon, 01 Apr 2019 22:53:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:72c3:: with SMTP id n186ls550466ybc.12.gmail; Mon, 01
 Apr 2019 22:53:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwLhpoBqvDc0LutveAe1J7pJr9U+XCFV7lKvVV+WLL7hwA/S15PqymGMsrnz4sVLQnr/zho
X-Received: by 2002:a25:ca85:: with SMTP id a127mr793179ybg.24.1554184404307;
        Mon, 01 Apr 2019 22:53:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554184404; cv=none;
        d=google.com; s=arc-20160816;
        b=M/5cyrHTKnluA6IVT50gCuIp0gRRVRnVJOo6EfZcnScudDdUsw8oOx4WyivEtI1iKG
         aPqOdEerXH4ElX4EwZhaci3QPH5KkS18l6Y52Gm9FcfDY1EIAPD5FcrrXn8Tfwc7KX71
         wYKr9QYUJ3oyQeozxxKEMxR7qI8jicl5Z0aEdpFrtuyqD0L214TWkBnJr4W+rqUpHSYQ
         sG566U4y8DfuwGN0iPp+McoikPjcwcUU1oBYjgerunc6H5H2ckP03Ycfr1/r+HH0V5dq
         uMBL5i2YsmhXGlJ26FUtkySFa9bUMgBc6MdNT/dee4nrLb4zfIvps3kfKqCyRDsVr4Ge
         /78w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NplV7vRlux2cpIepnoEgHdFh4SMyyllU1cSEMbQP7sE=;
        b=Snj/tyDZoZBP6nJ8K4W+xASiiYj/lEneuqE4I40RWATVi+XmbGmcyFPw7liPHuRaeN
         F5M5L/zNTVnFZi0U82Pg9SbPM2BTHr8jE9myNjvSiT3aZzSbF/M5gryHWcjb4nJwHcsy
         GJeWOHKn98DgHL9Wu3S8kfRM9nKkqziXuNvPkp9jMj2uuxVm3dxuqOWFs6+ivrGRpDFp
         hPZYBftoj8SwF4SqzZ+pB2JZw/poUT02lfXBV+2rJRQrk+N9kkWU+SXv0pUsCafSI4T4
         LarRgEo2VwPHL8H0Iug7O73jb8onOoml433+MDe3j1KgNg+k34V7k/Wl1EqXjn73BJfF
         IPkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UjXMngd9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k11si600892ybf.0.2019.04.01.22.53.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:53:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UjXMngd9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BF75F2084C;
	Tue,  2 Apr 2019 05:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554184403;
	bh=PixH/Fl2MUm71twR0ZOM0fTJjUAiNfC8Z7O6B9FBaa0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UjXMngd946aw4H0wa5hyVN5xSiMNrcf0BgsnAxQpIg1bFNl85lPKe1BH6U9RySHSZ
	 INySDzaAF3N4tHbLx+mXctuYRUhx5cxQt59htxxEjD+S4qB0WfFzGtVmQc+t76kI+P
	 CVTCEsayc9+vBYVxgUol1nVc+ng80mnxHjAXqMrk=
Date: Tue, 2 Apr 2019 07:53:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: laurent.pinchart@ideasonboard.com, mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/2] staging: media: omap4iss: redefine and use
 to_iss_buffer
Message-ID: <20190402055317.GD14075@kroah.com>
References: <20190401192015.96166-1-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190401192015.96166-1-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 12:50:13AM +0530, Himadri Pandya wrote:
> These patches 
> - redefines an unused macro to_iss_buffer into an inline
> function
> - uses that inline function in suitable functions
> 
> Himadri Pandya (2):
>   staging: media: omap4iss: redefine to_iss_buffer()
>   staging: media: omap4iss: use to_iss_buffer instead of container_of

Can you make this one patch?  It makes things a lot more obvious as to
why you are doing what you did in patch 1, when you see patch 2, so
these should just be together.

thanks,

greg k-h

