X-GM-THRID: 6746097817477971968
X-Received: by 2002:ac8:1208:: with SMTP id x8mr8935699qti.126.1570698296294;
        Thu, 10 Oct 2019 02:04:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3f5a:: with SMTP id q26ls139022qtf.13.gmail; Thu, 10 Oct
 2019 02:04:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxyM6pUUk3CmxCg5QI5EDkRO4XX9DS7Q45GD1J65+jZ547ll3IDcylL6BEhpOAnWd2eiI91
X-Received: by 2002:ac8:234e:: with SMTP id b14mr9257589qtb.346.1570698295485;
        Thu, 10 Oct 2019 02:04:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570698295; cv=none;
        d=google.com; s=arc-20160816;
        b=Xbs41N2iBCpPFP7EZX54tCM98+u3uw/5OAjLSHEEsp44iO0v7e43jdnTpGUWCGSoO0
         AW/Ps9De+WhGoIzur20OskEq3XDVE7mn7Eya4kWvY7BMSqrpWXPXQ6TsxlRAWuBdMq8q
         HL9fw7/km1JIbRLm/jNesQN0Bqr9KfyOD7T75ku+NjxA28wigay17aQDBQ/a5mdeoD4e
         YDY2xE5mVNWm94tz1fICe5tsgP2bG6qNX+BqbhUVcQzTDl3elM6QPmJrCrfoJiXwr9B2
         DNugbMIyXeFcpX6z6mjZ0J6gWgM9Wn4jiSisa0g7iFHo3PkGCaxkmT4wLjtw5JF+Bj2H
         bLKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=SXhQtPvESo1d3iy3x3bTMe/5f7QJhySYM7R9V0iiil7NnUrPsRAOj/UGuHOeq2iOCg
         z4ciqpTANUYV7xQL6C+GWRiyoagAE+wmZm+eul/PSg+P9LfZflma+pb7A81Fd9xAcRz4
         b+TMSF3Z2BWmi6B+HlPPBejkMFYUq0s7sENmm8QBbrEAbe6S+tcewTPYsI5YiHxgb9Z9
         DZbOwNdusnyleBXXDGw0OPWINx4RGf5u0dG3pp/hiE5QkP/+i2kc7YcjvtIkZK+sW5Ij
         b54gCXcfO7wDd8O7CBBb0SrvXFQW3eHnsMYdzJuzxHTBYz9Kqt68NIsxmsDzCFwaRWG2
         ommg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wQb0StSV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t53si220217qte.2.2019.10.10.02.04.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Oct 2019 02:04:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wQb0StSV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DB3042067B;
	Thu, 10 Oct 2019 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570698294;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=wQb0StSVbPTPArkJo0pQRz6NSw/ZL0XAvT5aOG7/6MuwM/T+xoIu3sCz6yTDXZf59
	 Vu0csgrYHljX55dTYJanA9PzLSD4ghFDwjrXXlREJIFU62sBq2pkE7kQUeExzurSVK
	 LxpPioVwFosG4giorXDkM2DGiMfxZKnqYOICBS0M=
Date: Thu, 10 Oct 2019 11:04:52 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <20191010090452.GA467315@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

