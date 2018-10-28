X-GM-THRID: 6615276278302900224
X-Received: by 2002:a62:11cb:: with SMTP id 72-v6mr692179pfr.127.1540740679805;
        Sun, 28 Oct 2018 08:31:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9687:: with SMTP id n7-v6ls2415143plp.10.gmail; Sun,
 28 Oct 2018 08:31:18 -0700 (PDT)
X-Google-Smtp-Source: AJdET5ctliUlqxVhOA8uJLq9yxg1VrO3BACvA0XC9ZP5YQdgn1zPKYAHYmR1IdpgllJV2noTncYf
X-Received: by 2002:a17:902:d908:: with SMTP id c8-v6mr1865plz.103.1540740678797;
        Sun, 28 Oct 2018 08:31:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540740678; cv=none;
        d=google.com; s=arc-20160816;
        b=Np29zsfT1HZRJASRMEObFc4IvvqtUTWrOvQ89l/LafIRBlWF4OED7ETUS7dx0mRCaW
         vKV7qJhezO6qf7SGl8/hTSd/YF3EPaqUkAp3RRnSt04kSFx47vV2dd/q8YFNM32Ii214
         oIANyZdIwdrtlj5izzZTOWb7KSbOs4XT2FyeK6xn07MilLkdhb9qYwBPuZVDmn/CTuva
         ldrHu9/tSeA2Rv82QQPemvwBwcF7r9y4vFVl43ORwXQ5ve1Um+z39+SrI2VIZy7LqOfO
         MsivzOQ/qmKSEr203RAnKDFEng2Lg2c8GMy+bYIKgKFnH3E7PQBw6jDRPiFUBZpT9R24
         eetw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=R1QwZC326c8y7cg1fr1PeZYM+JP7MnHSYqH+KrrtD00=;
        b=Jv/oSKbhnSsFsCWOJOuDmodbJi5lX8GtaIH7qFb6prfzFrafynUd4Q/ZMou4VsoF91
         NrOn3P41ZrNsWN7hZ6LJJ2/22UWbWvx6ErrcmcLPDkU+2a65/HaH2jZT4VhlgRfVk1cW
         Zq+UcGLxCwmxuJ/6e95oUwolZ5WkOizuW0Gsd98qXtP71oT4KwO+0FfUQskCGRs1xfkJ
         5e9EfXCS+5h+NavyIXfQ7tSuVe/8RYUDOppR9uAfWj139m84HnDIivofen3ZiAuSRTmH
         sO7IwO4xOUZRbJCmAKjsdfrILY85BpxZi9HkopimUAk3FIxHMiu5jq4uod8nTlg8cKF1
         UEoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tCmlphX0;
       spf=pass (google.com: domain of srs0=imu2=ni=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=imU2=NI=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=imU2=NI=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i5-v6si1099678pfi.1.2018.10.28.08.31.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 08:31:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=imu2=ni=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tCmlphX0;
       spf=pass (google.com: domain of srs0=imu2=ni=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=imU2=NI=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (unknown [62.119.166.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9DF2520831;
	Sun, 28 Oct 2018 15:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540740678;
	bh=fkC1KM/tlonuXIC0BTeKv0sWAwtcx7qod52i1V/ZQl0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tCmlphX0DMpOAN9+kSlRW02SPrLbcYgDqVJOy7QiGrp6cD3BftsqjsVj8ySaBYIdV
	 CSVx1da29Df3tLdAocTSVsk+rZHbHGhIfnlowZV6TyduT8DnvaUlYn8Er6Gy1fmOfH
	 hiyY30I17QAuTZuzWi2h6EA7MBLd9VNcGD+rl+4I=
Date: Sun, 28 Oct 2018 16:31:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Kim Bradley <kim.jamie.bradley@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: Add SPDX license
 tags
Message-ID: <20181028153114.GA16097@kroah.com>
References: <20181022201022.GA3133@ascii>
 <alpine.DEB.2.21.1810222135000.2877@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810222135000.2877@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Oct 22, 2018 at 09:35:39PM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 22 Oct 2018, Kim Bradley wrote:
> 
> > Add SPDX license tags to remove checkpatch SPDX warnings.
> 
> 
> Why is // used for .c files and /* */ used for .h files?  I'm just
> curious; this seems to be consistent with what is done in the rest of the
> kernel.

It's documented to do it that way in:
	Documentation/process/license-rules.rst

thanks,

greg k-h

