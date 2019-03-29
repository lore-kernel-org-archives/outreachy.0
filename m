X-GM-THRID: 6673663457200439296
X-Received: by 2002:a9d:7302:: with SMTP id e2mr3465794otk.54.1553875860681;
        Fri, 29 Mar 2019 09:11:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:1096:: with SMTP id y22ls774523oto.9.gmail; Fri, 29
 Mar 2019 09:11:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzaametTz+rim2cZhIwqfHTWhUn+puTaBCpXWKUspyR4ihXBihao7cf+BK1SK4AJtY35+ye
X-Received: by 2002:a9d:6208:: with SMTP id g8mr2947824otj.15.1553875860090;
        Fri, 29 Mar 2019 09:11:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553875860; cv=none;
        d=google.com; s=arc-20160816;
        b=Rs0JEtmmFmVjVgrXiPIAKt6HwalvHskHQ66w7PAxGzz+vWsAB665lBsyofY0/QIbsK
         bXzwmXy5ZTwoGViDOZiRJR+/PNtCixCQHArZYEt09A2ExnqKfM/2CDJTw8wNh7/XSm0e
         rabQM6k3crj17tLgJyQpPGfyoxB3H6ZxR7bU33P0Xr/rRyC3maZpUhEJeLS1enQM/wps
         v326Nc4AP3ZsEWSTl22RwVbO3Bxam6mDaZjz7wjs2UyorSwqMEPJhUTshjiuy6hgQzda
         kllCkcP2dlPZUzR2ZuWQ0gMQ+4hXTS9CkFbjkI+donxPTaU1KMofQ37QcYGaSd0feMlQ
         IxBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ncuFsMuy6mzX/eL1J6edRbga+CQ2mm39T1Vgdk6sAks=;
        b=C4dnk/c/G/pkW6Pbi+nrgQB5d0XPTDBPIXuo5lIsuAecXm3BIr5YRgSIwYqEpFwM5T
         cqyvj+oE20f5NRLOf0kbN28LoH2k3Y7KgLycHIcOcMk1ahMXp2G/AmreynbuLjQPLeZ9
         ug7+AZreVCXeOqR43PsCBXlLYVDO9T1ISX4IAeopd8nZVOfUHRptFUERapFxI0TKSVuY
         fmee6icHyrAc2QRmJKNurOX9TLXEclqA4pANHVQElw4krJJxiAgi7v1rvPJQlqg0URU9
         yy235cau72u9ndTeTQfqO16XGCa1YuJV98aPLn43FQ+lkZQ1iPTToB7iMQDkbjgmpSrY
         I7pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HPB16g4R;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z22si176805otp.5.2019.03.29.09.11.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 09:11:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HPB16g4R;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A65442070B;
	Fri, 29 Mar 2019 16:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553875859;
	bh=BvVzGz8aPvAeCtaVbqnJ7I5mwDRey9an6FqZtjJ292A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HPB16g4RTUWZX55whjlE+wdov8sofNsZDEjLuGfkccu4kgP9tvJ/Ibc8DyjZGTcwx
	 Plqh48blnYT8fQAawiL4KxKKRnuVVT77Wsra6yAUXPzOabTCV1CubifPElc7jExt6R
	 T8VMg3iQhMu4zPrXGLclte/4r6XtZ/R6Lk/6WNkg=
Date: Fri, 29 Mar 2019 17:10:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: wilc1000: Avoid unnecessary braces around if.
Message-ID: <20190329161056.GA21679@kroah.com>
References: <20190329042226.3503-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190329042226.3503-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 09:52:26AM +0530, Sanjana Sanikommu wrote:
> Remove unnecessary brace around if statement.
> Issue found using checkpatch.pl
> 
> WARNING: braces {} are not necessary for single statement blocks
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
> Changes in v2:
> Change the word in subject line from "else" to "if" statement.
> Change the word in log message from "else" to "if" statement.

Patch does not apply to my tree :(

Please rebase and resend.

thanks,

greg k-h


