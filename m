X-GM-THRID: 6800771854723186688
X-Received: by 2002:a9d:7a81:: with SMTP id l1mr7558466otn.26.1583432917947;
        Thu, 05 Mar 2020 10:28:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:49cc:: with SMTP id w195ls1058768oia.10.gmail; Thu, 05
 Mar 2020 10:28:36 -0800 (PST)
X-Google-Smtp-Source: ADFU+vuoHgFbZDWarK5v3o/Q9qYNkPxpDQ+9sqaIQyGa15idMNhImDWpA42xi8ja/DW0ChDD9pPa
X-Received: by 2002:aca:fc4c:: with SMTP id a73mr254904oii.147.1583432916658;
        Thu, 05 Mar 2020 10:28:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583432916; cv=none;
        d=google.com; s=arc-20160816;
        b=cGoulUGMrvX62kMak5ZqB4A+SuKbn6njdq0FSnd1J8mywNypJ33kKziV1bPVDFfh+6
         8tE6i8pc7CRMgGlShiG3qAMvuxvReaQwi3gXkPS23QvdDr0TZWCOA9BrgKuXBAW8vaXz
         F/s9yvEHJmGeWwlQ1JX2L4JMled6egCw4BH6fGEg5JMl6xo7yWMk/t8qxgEnfeXE+3Bj
         L+06eB7mrg8HWnVcQX9B+IvC4OmYFNYH7EIyClJ4M4eZPntw8Q3WjE8rYCoNEI1ZRolZ
         Ty37lxo5ZFVnrXdO2JbYN7wHLjrqb9Om4e2QEaQuTrH7fzTFnuEhzKVziuhCAwaFgNyw
         BRXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UPK+nHdp75ueZBhGGZrDH8VlKQXOICUPJRL5QCcZ/qg=;
        b=dUkZnC0epTnVx/l208Kq2qU1Ziu910/XmoTUCfKB+zJ8hZC5Xb0X1AwY9rrehk0k0j
         CUGpV9HMsFRjdS3Rw0a4FVQMi84mytXRzvxVBOj5iHN4A9y9xbQ4V3EyTWfuit4HIKkK
         qvbRrWAcdABV87VkJXXcgiDf0Cnsb9viRPKgz1KhbUioLpiIm8Srfmrtdtj9xOo19Nfp
         4QuvID3IWNH3bG81AWla2B5pZqC1B9xXdhwzcSMVMZrP2RAZGX0ff3b9vQHhCNMm4KJ+
         cpR19dROKspXFk98VJmhHOS00So7pW8nvnf+7yKwXlZF0y+sctgUeQe78HdwkMPGU1rp
         Evfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2cL3wsOg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j67si299000oib.4.2020.03.05.10.28.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2020 10:28:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2cL3wsOg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 36EA6208C3;
	Thu,  5 Mar 2020 18:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583432915;
	bh=dchpqirfGa2dWF2Rdcw71n1TD2rjkODHVSYIUeoJEDo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=2cL3wsOgjZNwmDYyMZwGmJj8oiDQtQsQpWQVCIXPx17OrGs1qVheJ7Y5E+xoeu5dY
	 etsffTEh+52/n6qRwQj7Kh+CishjdLVp2QbDtuhc/as+yCeIFo/ftUupE5A2KHdrJO
	 auKoGFEBRU96DvGq64NZO+hH/DilZhLNJGt1rS14=
Date: Thu, 5 Mar 2020 19:28:33 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Issue with checkpatch.pl
Message-ID: <20200305182833.GA2106984@kroah.com>
References: <CANTOzWHSNXEXaGo-0e9PUsCFvX5QmsVmfF4qJa3ii=H9Cs+B6A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANTOzWHSNXEXaGo-0e9PUsCFvX5QmsVmfF4qJa3ii=H9Cs+B6A@mail.gmail.com>

On Thu, Mar 05, 2020 at 10:37:51PM +0530, Payal Kshirsagar wrote:
>         I am trying to find files to cleanup using following command
> ~/git/kernels/staging$ perl scripts/checkpatch.pl -f
> drivers/staging/android/* | less
> and I am getting a prompt as "Must be run from the top-level dir. of a
> kernel tree"; I am running the command already from the top level , I am
> not understanding how to solve it please help me regarding the same.

This works for me, are you sure you have a "real" kernel in that
location?

odd.


