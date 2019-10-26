X-GM-THRID: 6751912583325810688
X-Received: by 2002:a92:8897:: with SMTP id m23mr9354812ilh.36.1572113065161;
        Sat, 26 Oct 2019 11:04:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:9e06:: with SMTP id q6ls2221244ili.5.gmail; Sat, 26 Oct
 2019 11:04:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyl+GhHWgTxnZkakM3AQFWN22JEjH810N5iEGNCOsPUSGKyllP070mTlMUIiOzf50llNHZt
X-Received: by 2002:a92:4a06:: with SMTP id m6mr7704362ilf.153.1572113063976;
        Sat, 26 Oct 2019 11:04:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572113063; cv=none;
        d=google.com; s=arc-20160816;
        b=MkbOuchIiX53kbTbrbM3ugVpa1CJvMsx1UYfnnLspaECFP/4FjGd5KfNfwaWl77USK
         m8it011Ksz+0YxwgZZYIwWWAfzrzmBCSeXZCFEvjhajKntqk6Z8oTcC7vTBEGZKZIICo
         zfdQ8nfJ8NKFIVZcZeBcy7iJJjSYh4pgjjS5Zr6wHQwAVPmlV/PMQg6aISxb3Y0knJrM
         d13TFVn6+LXrnBooSj9B8tKVY+MFnX8ucXqHVKuetS9EVYblbBsBAnMPGGaggMazotNc
         Hs7Fzz02/CEmuAlVynHdqXCappZO9TRZMriEyzPxb9BH5RL/H3k+LYLmopiUzNSV5er5
         Gjrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RnQ7KzIlXLB02GaqoOUCoQODZ8K4G9ZrO4l3ZJNA05o=;
        b=Kje0lkcsCOVyBaYE/dci9n3WkkXr7suKg8X05T1MfefuM7XaPIRGcT4bXGEfXF4MGM
         SBCD9JttCipHF0Tc+C8cEw12kLPUQvdol8B0VxpBKFfm1iOvwbM/xL98Eb7ExakLgAlj
         ysa3sIqu9/B27ADiXNQDayeNP6FnFG9lv6UlLM6rRBT8qgVEshEheBJ8AJ8no8iInBvi
         kLXgz5Q+FJ/k8PoCnxBgJg0P0uoat3m9qjBB1D3TIBUdL8OdtVnobYJg/66pwcciufTl
         a4H/4oNMXNv7aN0CkDgmi5V9MTW+BAIOdYbIrvcfRbYa0qB8eJ48enR64LT2nFnE+7yE
         31vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tRDglpKh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s5si429412iol.1.2019.10.26.11.04.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 11:04:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tRDglpKh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0B10620663;
	Sat, 26 Oct 2019 18:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572113063;
	bh=RnQ7KzIlXLB02GaqoOUCoQODZ8K4G9ZrO4l3ZJNA05o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tRDglpKhmshWqpZUFWyHziNgFaIvO7xlfyYjjTdLwINaKQW5oATwyC2hbVoN1lEky
	 yH5+ZknWGF+sVk9JVlNRwINVoB2HV47KHIa4eQqNm99b9l//9X7c7vxgjQxWbIh1u1
	 K4UhTFKPrcQ2jg+nO9aFHLUxFi03lSWpdd32+nFQ=
Date: Sat, 26 Oct 2019 20:04:21 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	linux-kernel@vger.kernel.org,
	Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [RESEND PATCH 1/2] staging: rtl8712: Fix Alignment of open
 parenthesis
Message-ID: <20191026180421.GB645771@kroah.com>
References: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
 <e3842148b6dd01c47678f517a07772c75046c50f.1572051351.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e3842148b6dd01c47678f517a07772c75046c50f.1572051351.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Oct 25, 2019 at 10:09:38PM -0300, Cristiane Naves wrote:
> Fix alignment should match open parenthesis.Issue found by checkpatch.

Space after a '.' between sentences, right?


thanks

greg k-h

