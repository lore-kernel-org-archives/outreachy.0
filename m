X-GM-THRID: 6807378568444641280
X-Received: by 2002:a9d:7c90:: with SMTP id q16mr21847140otn.257.1585066994243;
        Tue, 24 Mar 2020 09:23:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3985:: with SMTP id y5ls7850369otb.7.gmail; Tue, 24 Mar
 2020 09:23:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtGfj+0ubr8wwViyqTLSjjPmeKHWu3JfZHWqyCf5v2WIcEw73gU5sLc6OHXtnMxLx5sy5UX
X-Received: by 2002:a9d:67d7:: with SMTP id c23mr17423190otn.280.1585066992989;
        Tue, 24 Mar 2020 09:23:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585066992; cv=none;
        d=google.com; s=arc-20160816;
        b=kHAiTPaNPlwfDF8NFUvk2ZJENkznqHSWxZhVdtbfpTPcOaNshd8adaM3nyOclf6zdc
         GVc3zmG3uzHOV8eitZe9zcx+OuLL2HRSAYqMoKoHDfKHl+8d51yuI3xj/xjd81tNXUb0
         Gf8x7MOZPBngv51ygAcYVwWPQv3JoqAtn2ALaXzij5QQn00T/u3EBMq62SaFpDVJXnSC
         H7pVKl4ueAbPBQL3XIAfp8eNm5e6vPKzC3CnGkFjDPP2HeSKJU5/UQVxdJwcO+BbV4nq
         31HsHLwtLr6jpalOC+s4DHT50Su41brlJdtzsppR2v1o8vz3svViOovX4Q+waHi0e/tJ
         TQdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=g77YBf7sK2oh49EhhvG+Ss15XNxGvBRwSlATJjIcY7M=;
        b=QuN5mxykSXdh6JY7A9+tSHkMpyMFn10YgfIHctB53P+N/ZjGYfgG7ytA6rkrS9qaMw
         hC7J4urnp5tRITvj77LzKCTImpWHORBPbN2tRE/GSEI69gPW9IS+0eoGG1LdWXjY7Gkq
         XlYaVM8jv2G0KhBFN3asJKZLqNOG+B/5LFbAGjnD19/Yyb83SeqQZkXV/6kGSt/OBxqP
         /cBPBLK70zYYwd3SiX+Rj1fhMWy/j6azlEVqMQHTpY/tCGQgPXltWmYadcu/QMtIOJHU
         54abGABOv7bZ43K3J6bzAv0EkkdGiLLgQ5vulHaBFk7o71yBwFzy3C7WUYYrtGo3jbZI
         ViPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I+chLfXz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d22si679894oti.1.2020.03.24.09.23.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 09:23:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I+chLfXz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B7F682073E;
	Tue, 24 Mar 2020 16:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585066992;
	bh=AEiOnh2dvS1yNellqnInkcwGsBWaZQy1wwlESRGB3bU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I+chLfXzl8Ny0hrAne5VkJk9+I7w10kIneYltmjN4UMNLbSgR+eIacluHRdOG3tZV
	 Y65qyz0Bsbga3p6R4RghFWCTzAJi39yNTxY7UhFfux9uBUB3diOf+/RqvdPs+mcfL4
	 EtJ3tORghtudtx/MFeMtPSTw7056/K5qduVhMbnU=
Date: Tue, 24 Mar 2020 17:23:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, perex@perex.cz
Subject: Re: [PATCH v1 3/3] staging: hp100: Remove uneccessary blank lines
Message-ID: <20200324162309.GA2517460@kroah.com>
References: <20200324161529.14532-1-debsoumyajit100@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200324161529.14532-1-debsoumyajit100@gmail.com>

On Tue, Mar 24, 2020 at 09:45:29PM +0530, Soumyajit Deb wrote:
> Remove uneccessary blank lines which are flagged by checkpatch.pl as
> warning. Remove space between function name and ( . Add space after ,
> and remove space between ( and next character in the if statement.
> Reported by checkpatch.pl
> 
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> ---
> changes in v1:
>   - Make the commit message more clearer.
> 
>  drivers/staging/hp/hp100.c | 49 ++++++++++++++++----------------------
>  1 file changed, 20 insertions(+), 29 deletions(-)

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

