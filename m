X-GM-THRID: 6810513252473110528
X-Received: by 2002:a92:9fd0:: with SMTP id z77mr3273266ilk.257.1585834263100;
        Thu, 02 Apr 2020 06:31:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ab47:: with SMTP id u68ls1110698ioe.2.gmail; Thu, 02 Apr
 2020 06:31:01 -0700 (PDT)
X-Google-Smtp-Source: APiQypKFUFb/VccAIPIeo6H1zKbYeexoOhM5Pf22Xw1QlWQWiLKaICdfJfGDKvzUctiN1okqLOn0
X-Received: by 2002:a5d:8186:: with SMTP id u6mr2825312ion.126.1585834261749;
        Thu, 02 Apr 2020 06:31:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585834261; cv=none;
        d=google.com; s=arc-20160816;
        b=alhIHifJpyw6mB3IpgsodgAVD7b8AwaLJRMry0ZjGnfMHUrw+/mQVgOqnkKMu2kqw8
         AdmLIt2vyeZmaHAKc9UyVluk0DGo9s+Zq2OXHiKKRtEEDYVQDUxdCxMhFtzd2WkJFhy8
         dAb7xo98xbV9L16hDNAmu/tNyvplJ/axp19k18MXuqYC9zKq/N5tlMHa6eleQnFKqMYW
         Kn30znA9G2fsfEIUx8fwrfgTV//Bn1Vx9HTOLJS10XBfJUdIGWGD1Qipo/pSyYfCB4WW
         a0eNT5nC5JsNfLnCXeT3+/dP18GaXVM0b4Prnl7uUZIIucXmnmyJdUv1KxFy2YoJ0/4h
         n7Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bKJsxL+E6v9oXcLp07YpRUqONRFVTjBsTvFfT4oInd0=;
        b=sSaGS2HdeEB3kaImBQjqxB58ZTE4Ju7oYIz/KVg8AQL/vVhzHooi+HZnojY/xCFC9r
         IsxOiSn4918ywcgNgTQ+cJXX+aEsjcxvB8ai14SIxV0F13TgL2PDTLQBBmO3cPqQMCdt
         gfHsqfRgA6g2Is04zy+GOJAyjK5zdNVKPQbsu+ffdLu/6nohTCzuX1nPYfK5cg28orj6
         DQSMUr1vPzffHBNYmHK0eyYmnstHxOv0j+1aTugafpPVGWgiBJ5lT6ng3bPjdbIE/yWr
         VtrjkOaV14eDIJxpCukyA0ZQYYMOujthT4JeniWgptL4KTsVmGFZnB/Fw0jtoIZ4NuDc
         umJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MRsaV9tR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v22si355153ioj.2.2020.04.02.06.31.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 06:31:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MRsaV9tR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 80DF4206E9;
	Thu,  2 Apr 2020 13:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585834261;
	bh=skppS38WvpBAKV7kEN8XJgf3JPKIwQYnW1Tn6CG+cE4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MRsaV9tRXxjQnbcPX60A4Z41wMBtL59B2CmRqP8JX5gQPQen00/MQkxgO5PMR1hOT
	 nAKxJ+zbSNzA3sPkQ1aa3O2ESQjDyucPsPmJuf/KtEonsTgf2Lx6/pKf8AmxoH1DuU
	 Cy9MPw8lPCyhGVYIe1v2BV//zsPtNhjU6D9GHsx8=
Date: Thu, 2 Apr 2020 15:30:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
	Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>, benchan@chromium.org
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: gasket: using octal
 permissions instead of symbolic permissions
Message-ID: <20200402133058.GA2903248@kroah.com>
References: <20200331230940.GA12376@siyah2>
 <20200401055650.GA1903894@kroah.com>
 <CAL9LiB+PSd68yRfkrbr9yHkShzuPceJHosvswETO1-w1zgkqFw@mail.gmail.com>
 <alpine.DEB.2.21.2004021442590.3014@hadrien>
 <CAL9LiB+u+xxxrPzFEgrOTznojBrium5WhE+Ofiig5Vqs8NDyrA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL9LiB+u+xxxrPzFEgrOTznojBrium5WhE+Ofiig5Vqs8NDyrA@mail.gmail.com>

On Thu, Apr 02, 2020 at 04:18:05PM +0300, Gokce Kuler wrote:
> Can I edit like #define GASKET_SYSFS_RO(_name,_permission_, _show_function,
> _attr_type)    ?

As you seem to have lost the context of the email here, I'm sorry, but I
have no idea what you are referring to.

Remember:

	A: Because it messes up the order in which people normally read text.
	Q: Why is top-posting such a bad thing?
	A: Top-posting.
	Q: What is the most annoying thing in e-mail?

thanks,

greg k-h

