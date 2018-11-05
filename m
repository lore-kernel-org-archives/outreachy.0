X-GM-THRID: 6620354100879949824
X-Received: by 2002:a0c:a8d1:: with SMTP id h17mr17153565qvc.58.1541426592220;
        Mon, 05 Nov 2018 06:03:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:8da:: with SMTP id y26-v6ls3317987qth.1.gmail; Mon, 05
 Nov 2018 06:03:11 -0800 (PST)
X-Google-Smtp-Source: AJdET5dSsEtyz79hn62RZvj3s0cKDjOxlKLd0xUJXS01hkYdnkmcO8MMiN1G1ic4wEiIy3N/8GHw
X-Received: by 2002:ac8:520b:: with SMTP id r11-v6mr17644656qtn.4.1541426591135;
        Mon, 05 Nov 2018 06:03:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541426590; cv=none;
        d=google.com; s=arc-20160816;
        b=LPQ7AK8FkOTsEGN7Q7f33oF2RT1ajV5qQAMhL7Bkfwkph2eSa2N519nP3xCVOmFGU5
         1TslK45NfN55suO6K9unbpPm65kwSB/FoBEaQs4yUsVc8UhFrwAEB/Hea+V6RrlB2qUc
         R9H0OAC7mikIel78ioMfIoW2ZSqo0XF34rcl0BJ2fMFglJE46KY2kXhlAI+uaQaN9UqF
         w8FB57WSqZYOKMG97/Q+9X7gddjWbHnEQ3vhgis1NrALaKfiwYfae1hYevn1Xd7OMuu9
         pS34vBeHZDGy/YNN2zZwEevdgtFrl3HS8WY6d+hIQ0g1zo6hvpCOgq1BZeUH0jY7eoeg
         qOEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RLjt98eFsVInyDpypFrOCvf7G25PCqskNtMfrIP/zQ4=;
        b=SkANGzYGHwZ7bsPnxoesCw+n36zwAWWf7eUoa0PQgLhiEkHe9kb53iIERmb+A8yT/6
         GEJ6sZiFUM9tA523rRbaa4rVH39g3NXp3RQ82nvAtpzWtTRpEinS9/dcU2kWuZn/AFDJ
         szmIO4t/vnk1ynwhlsjZiIQB8xCyBYCyhJuRUZ2Bo3aPt0aiYFFlnYysInfB0Z7cgywU
         gxWXTk7nDU/ZMGaC0Zi0g9aCFJv2ptajWpw82n5czChSRrK6fKoB1CTn3N8O7GmGx5Ep
         JYJDVts2w9QEivdwfmwpvaRr/G19D9dxNweozCm4Ws7XsuaaGP8gydxcKU/ny2qAIP3k
         aUfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="c5Bfyu/R";
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l18-v6si1547531qtj.0.2018.11.05.06.03.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:03:10 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="c5Bfyu/R";
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3D3D020827;
	Mon,  5 Nov 2018 14:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541426588;
	bh=zCNcZ8E71X7UnvjA/pRvMPBotwDdof9iBa+xCBaDOdI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c5Bfyu/RITaMD99wPcM1W1V+wt4mO5j1Gg6hviYnlrft3+S7tC6Hb9OJmmcd7JCl+
	 1oKB2KAotcFKyzgc0tBUlOWkehZq/VUwbs6VQv54P7KowEOKaJhbu7rbkBXnuFQtQh
	 I/M+47lJ2aKBWq5YkXqy+BvR+jdKdZ4R5lkKdOpk=
Date: Mon, 5 Nov 2018 15:03:06 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
Cc: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Sasha Levin <sashal@kernel.org>,
	Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org
Subject: Re: [PATCH v3 2/2] staging: erofs: Modify conditional checks
Message-ID: <20181105140306.GA20228@kroah.com>
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541421259.git.digholebhagyashri@gmail.com>
 <b36253c9dacce060a90e84f3e8d854749800d720.1541421259.git.digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b36253c9dacce060a90e84f3e8d854749800d720.1541421259.git.digholebhagyashri@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Nov 05, 2018 at 12:35:03PM +0000, Bhagyashri P. Dighole wrote:
> Fix coding style alignment issues detected by checkpatch.pl
> Use ! for NULL test rather than explicitly comparing to NULL.
> 
> Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/erofs/data.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Why did you send this patch twice?

And what changed in it from v1 and v2?  Always put that information
below the --- line.

Please fix this up and resend the whole series with that information.

thanks,

greg k-h

