X-GM-THRID: 6754659369649963008
X-Received: by 2002:ac8:30f4:: with SMTP id w49mr4162381qta.35.1572691688561;
        Sat, 02 Nov 2019 03:48:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:1f1:: with SMTP id x17ls1140634qkn.13.gmail; Sat,
 02 Nov 2019 03:48:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzGIC0wndHN+jty2+QWXvIIWicOra1IpHMHSKjY06EfbN6iZI7bgMFn2kaN/VsVzWejsjlO
X-Received: by 2002:a37:6643:: with SMTP id a64mr7431885qkc.144.1572691687743;
        Sat, 02 Nov 2019 03:48:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572691687; cv=none;
        d=google.com; s=arc-20160816;
        b=KG1akPJnIkPAcPVLOsSZmlcNvpD7erHI8Vw5wG1ONllUJFfeOZJfBwfZXt9+HxRi4D
         Gt1r09NtEUBVIjl2YbDa4Da9imxzMZhLTTMTingBlwle4xoqYfXtVG/IaEggJja13JlH
         gHxmz3BtdfQO3+RjF6JEO8/vWfAFGQNcgbMRdrwcPlZ3GDkKa/QS7lZS63OYhJ1E+UaP
         hxBbPcn7Yx0LZ5uaoTgyXvQwIimaQRgJOoJglB1Ktho0pjFOiM+XgCBuClBT96V+5EKi
         YA32ecIVTHEV7VJr/H26VffKzb3TsYqSvv8RvTjbf6lNwubmqjQfOqXuh8zTUZ3uDEOt
         WUTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=IVDcS9J2C8Jup0kZnjUSPmt4tuDByrnIfE6OUXrIQ2NO0a7dRgbYuCAG73Y59ePJnS
         8Cr/l6UYvaqVfkAreRNxjfn0k6I21WKGyeke+wS4FahKjuHIbmlRi9RpidjUIprqFiRr
         ywAFQfHSjwnvJVfO2lXoa5gzn7cV9QByRulXvkB01qfkB6h/qq6PyHZyIE4MjS1GDXoY
         pOk++UVKGcpalw7Y3050D/ZdpqMv9n+ouaC9vuxCiLin0w95sq5YLImI0x3m7V1688kU
         X+Ut4Te3kcGVnMJsgSnt6JvnX5PAbJ1s65MaZxI8Z5KIJ8tqn8lfrbaQ10a1ejWgQhXI
         k9Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="XMYC1to/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d189si582657qkb.1.2019.11.02.03.48.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 03:48:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="XMYC1to/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 00BEF214AF;
	Sat,  2 Nov 2019 10:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572691686;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=XMYC1to/zMhG8ejr2GvyFFDMCIvbbFsuvYdwG7tT08/wOeBDW153gbtvfDj1oVDJO
	 rJEs6PhrcqSJ7aeCQkzantiZD/rwWkYWwajiJ4USDL0RmbcAM2S7n+iIuQIesVdo6V
	 PHS+YXFQTcZMFgLJazrX0DAxHnQVaK/zd5+3PsVs=
Date: Sat, 2 Nov 2019 11:48:00 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on, yet again
Message-ID: <20191102104800.GA212049@kroah.com>
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

