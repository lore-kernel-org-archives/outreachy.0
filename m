X-GM-THRID: 6754659369649963008
X-Received: by 2002:ab0:7643:: with SMTP id s3mr4068144uaq.117.1572974035440;
        Tue, 05 Nov 2019 09:13:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6122:c1:: with SMTP id h1ls271168vkc.16.gmail; Tue, 05
 Nov 2019 09:13:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqwlDZQHb0AVXp+7JQ8wILCZkfHeHEqrDEVmU7Blnx1uW3bKlocBfcIlTpeSRRlUvDsZvaKg
X-Received: by 2002:a05:6122:125:: with SMTP id a5mr6021518vko.79.1572974034568;
        Tue, 05 Nov 2019 09:13:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572974034; cv=none;
        d=google.com; s=arc-20160816;
        b=eIE0+IxVz1dhk5Xkly8o1E/7BE0AkovyDj7yUj6u6UAhAXkhAUel8kYNKe05iuMvCk
         875UX190SbkTCiZvR+j4GSjFQR9gZdMalJK/sER4+jUF8Htr7WKkpU3BY/yQxaez+P2o
         pxfwu3bIGV97ESjxHjVWu+kzB0rK13DZO6aSRxgfX9GUv7TXe+nAFQLTrhjAzMzT6GYW
         P9U+pM9sX6DjxMLWKRqW3A2YY4ifXcl2jqXi3ERK/IMYZJ//nX+7XZyGoQYM98rokj3M
         PntVuHoKyiyo1zj29zMJsegF1Ngb2hktS7vi66g07Lr+/b2FIoaOF3vEuUCy8XvD2x9z
         zQcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=Qiu6YFqsLYGn61Pr7R4e+4kwVsZ+FftKwmZ+LbY3mpNoyudsqU80Gh+v+GnLJmu36R
         us9bPaRq9tWEaNbVZI/90vWhvxfwacz4HV8L58+u3861PjOxYHQ7hNws8fYfue0ew9I5
         xhKNxbOpPtZyb8GV7nSaD2q9GT2EbA79buJfi2vYH/wFqTXGkjXwO1aVGIlO4YADC9Tl
         ErCM2/kg7QSAVU+tvScmVYaqsbqXdoJA7NwbtlAV8LiW3jeTkLtc0Jbfw55Dp1wDbPv/
         TWfrFgm6kKmTgGUOuBtkql1wr5gdhvdyIA09qf/lNuFjbBNHQcFnI6xGOpbHhsZO/QDt
         3ljg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Vl8sNLM5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f12si435858vso.1.2019.11.05.09.13.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Nov 2019 09:13:54 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Vl8sNLM5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.119.166.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 790A920663;
	Tue,  5 Nov 2019 17:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572974033;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=Vl8sNLM5hVXAmWhhMkYqrH9b6ctFJFwB6SXFvtVvkvkkk1qDBNBOcsGJr+KToUJdp
	 4uE56vKsoGwRvJDd1DuXYttOnjbno2jOCpX1VBujrkicV/aBRwihkkFB5JiZfqHWRP
	 Lb6pLuJwRRfBiQYrJHFVeKi/eFLkwhVTR0J1jrfc=
Date: Tue, 5 Nov 2019 18:13:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on, yet again
Message-ID: <20191105171344.GA2815774@kroah.com>
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

