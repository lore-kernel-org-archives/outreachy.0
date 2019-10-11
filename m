X-GM-THRID: 6746422022313607168
X-Received: by 2002:a37:520a:: with SMTP id g10mr14425681qkb.39.1570784465540;
        Fri, 11 Oct 2019 02:01:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a853:: with SMTP id r80ls1429663qke.0.gmail; Fri, 11 Oct
 2019 02:01:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwm48M7UF5KUKgulK+5AfdQaVz7+6H5ZyjmD9BJLXNNQhirJdUPQLjltkdq0eCSEl14Fx0l
X-Received: by 2002:ae9:f204:: with SMTP id m4mr14575282qkg.376.1570784464480;
        Fri, 11 Oct 2019 02:01:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570784464; cv=none;
        d=google.com; s=arc-20160816;
        b=jLzlj2jWmJQATLE6EkAJ1b5XgPKWGrKulARNYShVGLO+gMr9w/KRpebiu5Tq83nNz+
         fYlJSzz0hp6b51GePwrveNkZoCAm9wUztqJWHpZlqsRbX6v6oZRUIRHCz30yG5IrvODv
         XfXdIoBpDT8lYIj4TCcNI83G16KAtcCIZHdfPwKUzgMP+cYrXxxa3FyGEoNvq1WaEfKl
         lFCOQ6tfcEEomwO2jXlWsGIFBcr7zQgpZUO/lPmIgufthV4uhPXSofVCtINYn5zQ1j5W
         3cWpDfg49cCidKPyBjXUdYCFaAKOQlr8Mu81YmO1lebmwhv0vMWjbpdTFmsN2QODXkKC
         Jx6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dip7WC1d3rYrivzNjiGrxb+JxW/shzeEbWuhLH4bGU4=;
        b=IBWRJ3wPLyMCFUZwLI+o7NBFn4jvhnpgKdZEcebvhRMsfUHzHpW+kpjmrLDTkBmhVY
         PyTn8UzXSCWUYHchycwe4M9hJ8UZsOswNtKLfXs8vgxv+ZHI5Vc7jn431/ZX2X6SPtzA
         /ESTZbirKw88DH/kpUf0XBJLtSj39zjjkzHAHl+GmkQmmA/sVpWRWLkhs2BAzp4zMjmq
         VwHuJQN3UMYr1IvXYfPiISELrUyZVXmSaTdD2/PnSr2u9x4DMBroqiJ3NtFvm6RltT2N
         0h2v3M8edEW5PPZe6sut4wYl4IrQH0jqT7uy+tYbWbu/mFDOwtbvFlvdpRhqegudqAgv
         gqDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OeoZJMrz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t53si395321qte.2.2019.10.11.02.01.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 02:01:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OeoZJMrz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D28002084C;
	Fri, 11 Oct 2019 09:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570784463;
	bh=dip7WC1d3rYrivzNjiGrxb+JxW/shzeEbWuhLH4bGU4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OeoZJMrz6g7GMmqtbXAue4SM8x4nJovtuam288P3K9MefGoPi+gXjDeWLkcB10tCC
	 JUmUCoaRNjKC0W1+YBri/KJIfafpU/7nWO/grf4/BdSwzK6xU+F0RuClWm6bjLhJwj
	 6Wcy9Tsl1by9TdfFqlEqxndt7IyHlWBYuUyeJsbA=
Date: Fri, 11 Oct 2019 11:01:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Wambui Karuga <wambui.karugax@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/5] Remove declarations of new typedef in
Message-ID: <20191011090100.GA1076760@kroah.com>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570773209.git.wambui.karugax@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Oct 11, 2019 at 09:02:37AM +0300, Wambui Karuga wrote:
> This patchset removes various typedef declarations of new data types
> in drivers/staging/octeon/octeon-stubs.h.
> The series also changes their old uses with the new declaration
> format.

The subject line of this email seems to be lacking something :)

thanks,

greg k-h

