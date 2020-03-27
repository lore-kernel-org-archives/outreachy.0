X-GM-THRID: 6808597928719941632
X-Received: by 2002:a17:902:9a4c:: with SMTP id x12mr12559813plv.297.1585316031379;
        Fri, 27 Mar 2020 06:33:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:316:: with SMTP id 22ls6221086pgd.5.gmail; Fri, 27 Mar
 2020 06:33:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtcir4Wb4J3cjtM9G9kOjlQiX5E30iXvh7iqglF4qC/NlkLjhSDIcyutJ9xXHS2qpKtVxdf
X-Received: by 2002:a62:5c3:: with SMTP id 186mr14492903pff.312.1585316029738;
        Fri, 27 Mar 2020 06:33:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585316029; cv=none;
        d=google.com; s=arc-20160816;
        b=lWuWVYAL4uC2aA00pWnxjD92syYfMU5bFxYPKWwqj6uTDcCelmj0we0Gs2X+ueQ8hn
         wofaF+m8574b0WTbAsUWpXk8Fl5Gcxoccg+OX/BdpHQ9RQq4KWVGSESe+UkPC9vm0yMR
         Hi5YLi0YkDSoMuVNzKicJx0N3TIaLrWPLMXdm3B5xXMeEMOyGrIN/c24VhKGsyRwbFja
         Am8ZpslpSr8wjDm7lexmx+q6VWZcyBzmDWT2PPIoc+DhLKbDIS1s/MAG6N4iW77s877R
         f+1QF7udWFY1pm5JmO3er4ZoHX0ktviPEtbDWvcDs721qVF7CZByEXY9vtcy1cDGKBC/
         fDcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=k3JphykvLtXkGKRQzpQ54yXyZ79MvsGZDS2zuOS7ZQE=;
        b=OX+6PD4wx8FZnFIFneTzPSsopeZB4xciYonmf4D6IFzDfCRYHJO1Qt2crIJ/z2SijY
         uWyZZOOrp+AcgC1Aaefn/hnMp5IDEr1V4kGNbRv6f1IZQ5zAxeLHenN699Q50yFj9AUt
         BH0ov/N0czXoObYEcfoJnYM1Yt+WORkRUczSp0q0VdGFNNhQDoEzsiMSzo0dKZfIyKsl
         UP3AenyuW5eJ3c7gONZhpvs/PtEDDkm3omfN4blEUea284r3evp73VAMbRNZJYiqQn3w
         fVgKVtos3gjoFmmU842aXzZc9gFgNYBXF2wIIDSFh2ceNj0CwgQWIuZ3ohMwkJswDUIU
         PHaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eqkU9xKr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 59si302368ple.2.2020.03.27.06.33.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2020 06:33:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eqkU9xKr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E62FE206F2;
	Fri, 27 Mar 2020 13:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585316029;
	bh=k3JphykvLtXkGKRQzpQ54yXyZ79MvsGZDS2zuOS7ZQE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eqkU9xKrpQh33D+ANEz7wLUkQPhr9Q+mhe0XCE/tBPe4b20f7NyLtrxz9nYl3CtjW
	 s7POMq0OFa3aadZT+LrktlRG8XBVV5+M+aRYLUNCgK6tfx2ON+gtpMrmqlV1VAfzcs
	 0Z6b8lEV6OED2DgaiwB9jK4A5WBrlsHs1eFwQDjc=
Date: Fri, 27 Mar 2020 14:33:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: qlge: Adjust end of block comment
Message-ID: <20200327133346.GB2267097@kroah.com>
References: <20200327131659.GA8032@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200327131659.GA8032@siyah2>

On Fri, Mar 27, 2020 at 04:16:59PM +0300, Gokce Kuler wrote:
> Drop an unnecessary * on the last line of
> a block comment to follow the Linux kernel coding conventions.

Odd line-wrapping, can you fix that up please?

thanks,

greg k-h

