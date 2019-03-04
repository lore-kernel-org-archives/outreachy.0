X-GM-THRID: 6664067951305424896
X-Received: by 2002:a62:6489:: with SMTP id y131mr7538224pfb.106.1551717439489;
        Mon, 04 Mar 2019 08:37:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bd03:: with SMTP id p3ls8412491pls.5.gmail; Mon, 04
 Mar 2019 08:37:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqz2GxeMb+VYuMdkbF45k6PlEIxEylapX3473ECo7jSqWs81jwAzmLJFUqxkLh3kAPexX9wO
X-Received: by 2002:a17:902:2cc1:: with SMTP id n59mr6289105plb.67.1551717438794;
        Mon, 04 Mar 2019 08:37:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551717438; cv=none;
        d=google.com; s=arc-20160816;
        b=XRI3nx5m61tKKxd8PZ675K9Yprpx6M11mNCqihejhNETjeYPxPJgo/ieige4WVom5e
         KtxaKei0Yqv1tekQjhmTfCHg71gNjl7Xk8tOXyo7GAL74uw5h+27kDFy8zumLXh7js2K
         RuT35MzJCQbYwyh7eSc0WjEx3+1q0m7B4TetpKywVmO+kZwjRCAhYNqgaskemQb5Rplk
         1EO8Y9+5a7jxgFRlP3KpaiPt9p6hQAvWXiC69M6Vzr2VN6oUBHrg2TyqydJWphfzi4OK
         RMk2heWP8F6uDu9sCvjjfja4m5HyjGsdM40WRKxO8vry+pe5vWTZRpy5vOnVora3M143
         6KuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZjmYIRlNPFI/EAphCd38gqr+z+0PCOc8a7oMyyHL15I=;
        b=FwFRKGwaB7fbO0shVp3hpLFA+iso/XxR9BSS/dVxPImyGN56gaaJuGPcKCuTg5UzLj
         04moXlHCoVE7xTYr+wAXCH2QErZgMtmzQl+ioVmqy8qwJd0aWa9Ryl7XFudsC0YqrsSZ
         ms5mXln4ZBPCOl3i56QeHH1XXW9AsCogQSM1szc4hCIFOe4/0WyYNOTagvp7IDZfaDg7
         Ty2Nr8/ewWorCWZubgnPAzabWGdzhdAL3Dn3OP5cHvEoUqMDfghBTOonG+JevW6q2E5w
         L0Iq0OirAEKcO0x+in2WieD7zS+DPvlqZ+Nsmc8fgpqr1FCLtlf/JI6BCCFMs8INBJTY
         +d6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="vwTCium/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t24si293993plo.2.2019.03.04.08.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 08:37:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="vwTCium/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0BB87206B8;
	Mon,  4 Mar 2019 16:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551717438;
	bh=s3aXhAbLU3UiIiU8OS0ohdxdXOa1UWtoQUbJOk99dd4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vwTCium/3mlRUPtqzK8h6KarxQ3emNm92oRXJMJCqkVz0oSE9nUimvWpVhEiel3dj
	 U4Yk3MdwERKG6rMoXT9bBwqLIS7DCid6UWhXPdDqdfsZ8wGXSBk4NgQ8PkFiwpHJLf
	 s662Q4VOknh8MXsyna2YIKFwIfbDcgNl89wBV0E8=
Date: Mon, 4 Mar 2019 17:37:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Debleena Sen <idebleenasen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: pi433: Fix line over 80 characters issue
Message-ID: <20190304163715.GA3785@kroah.com>
References: <1551716999-101370-1-git-send-email-idebleenasen@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1551716999-101370-1-git-send-email-idebleenasen@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 08:29:59AM -0800, Debleena Sen wrote:
> Delete extra whitespace and tab space and use one tab space to
> remove the checkpatch.pl warning:
> WARNING: line over 80 characters
> 
> Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> ---
>  drivers/staging/pi433/pi433_if.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

What changed from v1?  That always goes below the --- line please.

thanks,

greg k-h

