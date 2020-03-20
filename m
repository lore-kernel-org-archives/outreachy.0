X-GM-THRID: 6806104906273914880
X-Received: by 2002:a25:80d0:: with SMTP id c16mr11226902ybm.68.1584687616940;
        Fri, 20 Mar 2020 00:00:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e691:: with SMTP id d139ls1859686ybh.4.gmail; Fri, 20
 Mar 2020 00:00:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtect+zj7DyAQc+ozVtXzslYrdxJ2YqXy6bG+sORoqsTbCkrAonlMVBOkELQP2KxI6k/MdG
X-Received: by 2002:a25:b81:: with SMTP id 123mr10721358ybl.41.1584687615307;
        Fri, 20 Mar 2020 00:00:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584687615; cv=none;
        d=google.com; s=arc-20160816;
        b=kvwnqb/nPlSz08Yc6BMLslMmCEAi9RoRuElsdzBDvx1lGqb4jDnMX8I1aQiiLQNUDL
         3hdmOtCgKLWVbHAY6JBDZ5ZnC9KzksTaAiEKZqWd54zz9Q0dyH4337fcUbAVSpcOBLIN
         iAC3j6nRa5EEEEkvPhjYlTsw6PPMWlTlBr8GSAZ7kn8hfqA9JN1hRxEV6yRS4+SpMtaz
         d5vQes/Im5HSmXqbdjB6WpAFJI4xaY5XhRcBfHZKCWhtJRn6+Evn3aQgwafNmj6bscYV
         qb9Ny0/XEAckHfbOPyQmQYRrUlF9XypNCT4mKkmSos3fzFDhW7ry9/POZ0+rBLWZATDq
         qLyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tmgIxdDu27jMd5aC9UgQDcQKb9+ChNqRXvlUIVqsUsE=;
        b=Rf76dhqSrvKNACS4oj/yIXA4z0bbU0Y32qmuwuDpH6FWUfRuQfdk8zokWhOt0bzTUI
         ubFP9OcDQXwcWhRgxPSMQnsncGAJPv2aYXGMYe3alkovbt5+mziK0jgZcW5yhoFk2b0b
         vdfHpjrL1gOL7lRIifghU6YYN/2KSTlVe41i3VQdMpnsmuPL88nvdUT/RdFgDrLoly9W
         9tLIWNtd9z4UulA9V38LSVKTOsbT6tY0oyBPKOSiqchhI/v+zP78LHfCgSV7HFaCxhTo
         iJa7w9Yag1jUmN/8GOD9wrAFosUASL2kjSDZTTgia5Y28sRzO7ls5b/6MvRECrsNSn/Y
         k9lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=T7gWueNg;
       spf=neutral (google.com: 198.145.29.99 is neither permitted nor denied by best guess record for domain of gregkh@linuxfoundation.org) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e14si340244ybp.0.2020.03.20.00.00.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 00:00:14 -0700 (PDT)
Received-SPF: neutral (google.com: 198.145.29.99 is neither permitted nor denied by best guess record for domain of gregkh@linuxfoundation.org) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=T7gWueNg;
       spf=neutral (google.com: 198.145.29.99 is neither permitted nor denied by best guess record for domain of gregkh@linuxfoundation.org) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E925D20774;
	Fri, 20 Mar 2020 07:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584687613;
	bh=aAHhohSluW1bfihNLheN64ej1irjrw/6k2pQEwuho6Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T7gWueNgQm9SA9JMf/3iIOpU32heaJ3v9Sn5YBp5S81x4yxkt2JFQ+ALmbZOaZa1O
	 bxc3p+sUCfwiSb2smxZKxNncSH6zPDVpppOUZY9hYouudfwAWhRlcXLHqVp8Vh7DsH
	 KIgtRtd4Mi2uNymS4KOoQqihHX5UOD+Y9/iMVt0I=
Date: Fri, 20 Mar 2020 07:59:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-usb@vger.kernel.org
Subject: Re: [PATCH 0/2] Avoid multiple line dereference
Message-ID: <20200320065906.GB307955@kroah.com>
References: <cover.1584668081.git.gokcekuler@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584668081.git.gokcekuler@gmail.com>

On Fri, Mar 20, 2020 at 05:03:03AM +0300, Gokce Kuler wrote:
> merge a line -> with a line ending with a sign
> 
> merge a line -> with a line ending with a sign
> 
> Gokce Kuler (2):
>   staging: rtl8712: Avoid multiple line dereference
>   staging: rtl8712: Avoid multiple line dereference

You should put the subsystem and driver in this 0/2 email subject as
well.

But the big problem of this (have you been reading other patch
submissions here?) is that you sent 2 patches that did different things,
yet had the same subject line, which is not ok.

Please make them unique.

thanks,

greg k-h

