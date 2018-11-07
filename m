X-GM-THRID: 6620547167797903360
X-Received: by 2002:a05:660c:3cd:: with SMTP id c13mr1006759itl.22.1541589472264;
        Wed, 07 Nov 2018 03:17:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:660c:b10:: with SMTP id f16ls3682172itk.9.canary-gmail;
 Wed, 07 Nov 2018 03:17:51 -0800 (PST)
X-Google-Smtp-Source: AJdET5e9EFrV/QFKFxhD838F/56iDdOJF9GD965Fh/denOsEN6M6SQj+H73aQrWxS/UNCWzleA0l
X-Received: by 2002:a05:660c:205:: with SMTP id y5mr950891itj.30.1541589471255;
        Wed, 07 Nov 2018 03:17:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541589471; cv=none;
        d=google.com; s=arc-20160816;
        b=ke9Up81YHuoYM0zGhVoNhhN5GjsCWKtLxDzOucvB3SAWMTrrzDwifrvP7SjPq6+DNd
         lFQ6SJr9sxoUPXn6M1mP5GIQ90SwQdJMIeQZLGlsDhjwx1Xq79TpcjQKcrKT2mhY47SS
         P2EOuofpB0IT3AaS4qbbwzOcsUMiD9q1hAsYrmzIaBe6XJM99s6L/qxuq9P7X+eomJkH
         8JVVJpVoS5p+Mf+nJ5akuyHzKXTu72SlGDxriVsOgtecerN4GYU5xdSK7y85mBlA/TOQ
         3+b15q/e7x3gJHa+hUeDRdB4KbVm22PEPawsFjgQXWwoOLpJz3JtHHB4e4g1b5pa9rm2
         EdvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=sHlrK9D5El2TxOMW3dIrtX9p9oqZjvTh2TVjdtd7Jh8=;
        b=K8iI9v7oJ9Nx9aWAwZY7FOYdzrHEQn696Egvhs1Oe25al4N/bHyhzx29hX1plUm8Cu
         8ysk5iXK/DZWfhE2SuzmJB5TxgJ2yDLhLvaJnBbxstyyK5N2bxPzwadf9MtPK3IMoN3p
         ymI9oVaQhWeId1JwtszxiMfQBZiSASRjNqcmWi7+Kv/T+GRYB54H5gY8GHB/T4INouHV
         h2nSZ3T7G+Ria7PNc0PAnSG+NVCvXNv4bmL2P0wQvLCxaGOq2lFzQmQ8u9LHITw1AXgx
         lFOLGKb2iRDotZNUugerjEmE7mt+Pyx6AT70Xxy5RZwAq4Rmtg2hEXVaPMSRwu5Vv50G
         9WIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HmXZh3oI;
       spf=pass (google.com: domain of srs0=n9ky=ns=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n9kY=NS=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=n9kY=NS=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 68-v6si219046ita.0.2018.11.07.03.17.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Nov 2018 03:17:51 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=n9ky=ns=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HmXZh3oI;
       spf=pass (google.com: domain of srs0=n9ky=ns=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n9kY=NS=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (unknown [104.153.224.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C42842085B;
	Wed,  7 Nov 2018 11:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541589470;
	bh=h4FDmUz0JnmAIfwLn0UuTgYEKrMhdmIADZCf8l3HwyA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HmXZh3oIHOI8BeNhT9hM90a4UgdmZ4SunO9IyyekATAeKAI/6sxg0m395RMdaxDEb
	 yGYStspkiU3Th1FpIpbdntl+A46ruW+RO04emZuZ1nGuEntOs71IxBFART7AN3QCg2
	 6mXUNyka2qCkhGHbMBdCzjNnt97VLRE1PIQuK1gY=
Date: Wed, 7 Nov 2018 12:17:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 00/15] staging: greybus: fix various coding style issues
Message-ID: <20181107111739.GA8006@kroah.com>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Nov 06, 2018 at 01:04:06AM +0000, Ioannis Valasakis wrote:
> Fix various coding style issues reported by reportcheck, uncrustify and
> coccinelle.
> 
> Ioannis Valasakis (15):
>   staging: greybus: shorten comparison to NULL
>   staging: greybus: align parameters to parentheses
>   staging: greybus: add a blank line after declaration
>   staging: greybus: fix SPDX License Identifier
>   greybus: staging: align arguments with parentheses

Looks like your subject got switched around here.

Again, doing a review of your email before sending it out is very good.

v2?

thanks,

greg k-h

