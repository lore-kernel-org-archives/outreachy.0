X-GM-THRID: 6802570683700215808
X-Received: by 2002:a9d:620a:: with SMTP id g10mr9393379otj.170.1583847347066;
        Tue, 10 Mar 2020 06:35:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6a5a:: with SMTP id h26ls2529230otn.1.gmail; Tue, 10 Mar
 2020 06:35:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv2tHvS+F0ryCM6TxrlNTgT1AaWtf5FXXvDK3G014NnO33AqrG/QcnddFgUmZCd1U70EwM3
X-Received: by 2002:a9d:7696:: with SMTP id j22mr17655349otl.188.1583847345984;
        Tue, 10 Mar 2020 06:35:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583847345; cv=none;
        d=google.com; s=arc-20160816;
        b=r5YHc5cC+b8VmzcYWnxItqYV+h2EFH0SfQAR9gGo9Aag/K2AUXEh9H2j6xwHePrs2y
         greGLsVN1nMMmgcGQPcVUCWVH4fiM6S3KijyNdu1Rxfdfg4y7aYFEF30OwH0+Td6A9D6
         6vXTkLB0N+Hgy8PEyzM4QKOFrhVtplrIwPXJJjaycaYeuZqu5QR14QT60GXbgW/MvwDX
         /m2/uzGHIfuCC3HFaLgE1qgt6TqvXIp5NYOnl3+REoHdVbEp1/iPhpQ6+XK7dZpCl9b7
         CAEhlzaS9fxp9IqotEK86+BZ1Q0fl4139iUMycjp6HIbmUlx2JytLICeHpyXSpsXTCqr
         H7Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+yGCzB+pQZUP1i1Ek5x2S/M3rRu7CtM2WhrkrK2BuKs=;
        b=HwLJChJ7chmCiAaQOpoLCDEaDxhue8EHr3BqTXWp8OKUcsnruafZ7g1o3HH+sFlBIm
         Ga4bNue9vSmJxqw8z8MEowiCoBKgoCffLR6VIy4QA9B3hlnnN/ZSm4y+U2P9qELzP2EV
         mH4aNsExlEZOSuG4tHYdJVjE2ZxW//asUbyTziz6HNYdFvLQ46hexbE1SCixxfcCliV/
         2n119Cnt51HkMtDQv3c9CgBSlg5AGlCYJFevZQ352O4VvzPBNo+/u2/duFtJqL5jlxY9
         FVZ4zIfbl4QUpBXb1nDKzyHdUSFEqgwCoNbRhy0z1PQwsTvGi5iDZDcjvBmX62Yj7u5P
         b5ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Sr1ABfG9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w2si105859otl.3.2020.03.10.06.35.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:35:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Sr1ABfG9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AAA7F20675;
	Tue, 10 Mar 2020 13:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583847345;
	bh=6CmNudKwbP4lfU5dZLV35uDdI8YwnCAG6z66o9clMRQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sr1ABfG9SblOVg7i+5g1gUF35wE9q5mEEuKlul/VlebsGVY+tIQS+4fuKUl5lQPxc
	 cvEi1foCmnHcYkar6wIFTciJpBneFLY6KqKyV7ybw9YpWE2P86YICTANsoGPLdecY5
	 KHrJpgbE1b0KGW31rkKTD3gDSngu6qETDBeOgJCQ=
Date: Tue, 10 Mar 2020 14:35:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [PATCH 2/2] staging: exfat: exfat_super.c: code reformatting for
 improved readability
Message-ID: <20200310133542.GB3366746@kroah.com>
References: <20200310132814.8269-1-lu@pplo.net>
 <20200310132814.8269-3-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310132814.8269-3-lu@pplo.net>

On Tue, Mar 10, 2020 at 02:28:14PM +0100, Lourdes Pedrajas wrote:
> Improve line grouping for better understanding the course of action and where
> every comment belongs to.
> 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/vt6655/power.c | 5 +++++
>  1 file changed, 5 insertions(+)

The subject does not match the file changed :(


