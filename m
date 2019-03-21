X-GM-THRID: 6667274731711889408
X-Received: by 2002:a37:a656:: with SMTP id p83mr4316428qke.91.1553195612202;
        Thu, 21 Mar 2019 12:13:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2361:: with SMTP id b30ls713221qtb.2.gmail; Thu, 21 Mar
 2019 12:13:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwT+dxJSq5yrGW7gnUY6r9St1ZN8JJB+3o3cM909HSkv05Si/7jtBBukbfQ8TJZJ2Tv6dyd
X-Received: by 2002:ac8:2c93:: with SMTP id 19mr4636630qtw.126.1553195611576;
        Thu, 21 Mar 2019 12:13:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553195611; cv=none;
        d=google.com; s=arc-20160816;
        b=lrcFfV/7TCCYY1QU8MjbpGqrnXJcMK1wYjCkvKECCtVqUHtUjzoovv1HJJntyImKnK
         X/cl571RAVpWl3qVQNPKeOYGNxXB/hHNHHRPEh7MEB8eutmM3B4vJXILlAat5ApVp1Ec
         BKegL+2sa0as900OpPQHJ9sjSVjUBOVz+OZcbhOtVi9VN9Q3yp0JbExH8mhtN01c3iFT
         HnKesaJ7XXJxCypQWMVeHT8Y7sttlpgTZ0fHIyttXwfDCQwfhv51VEZeEWDNurl61K4o
         6n01Z1ezv+kWsxFKC7ZWM5GOZngwImUldp9pzqPg9kn/+UtCD8dVahdeiPwH6crDQOyQ
         DZDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=x6MKlUsuv3GRlkzc8P1jbav139MpiLrOT9/0mwPAKkVByMSvNLp+1GwZCCpXh0JXK2
         9d7DtYZaSLv6crpN+ADcWSoke5M6ulEriDDC4yCt7TfFzdf7TTSSV6/5Szsgj+P8uM3l
         vPKydowSdSgvMFc/3OA1O7ABjV759WExc+8uq+VHUL22bJVh9Yu9lzN3qa6ujZciP0w3
         pjePPK7HwLPj1LNvvMzveISu4V17MVOaPV7tym0snqOUE4pO3wyLGgz+xAn5QQetk5Qr
         RrOt1qxRaMrOUg74q5Wqtcxgsl/x6leakD4Bg2Iwdc+5XN4ekuMIGVGoXv1W8+v8bFR4
         eBJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kbDAJdjh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y202si338834qka.2.2019.03.21.12.13.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:13:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kbDAJdjh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 14FAA20643;
	Thu, 21 Mar 2019 19:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553195610;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=kbDAJdjhxp6a9VQ4yKcZdEyLifoG7UFGtmvc5rTsk3/ZbCmAvqOe5njAB3YcnANxZ
	 xxQIJC7IMPKFc5sNieY5gaCHxYDsfllgCNcZbMpfB12+QLjud/n9M5tX/ZD5zzKWVl
	 ARYVdjLrtoxPF28L+fPcrAlEgMtaiYC6/70UM4I8=
Date: Thu, 21 Mar 2019 20:13:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on again.
Message-ID: <20190321191328.GA6309@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

