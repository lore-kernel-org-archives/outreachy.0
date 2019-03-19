X-GM-THRID: 6670105232964321280
X-Received: by 2002:a17:902:234b:: with SMTP id n11mr7023865plg.22.1553005021262;
        Tue, 19 Mar 2019 07:17:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5081:: with SMTP id r1ls7898709pgp.9.gmail; Tue, 19 Mar
 2019 07:17:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx+Pn43jgBMRVHJMpxyeO7ZaiOdmxPIQ8rEr+f7bGtanCyBIMip/0xIRlHoSiY6QuVr6bSN
X-Received: by 2002:a62:e512:: with SMTP id n18mr435918pff.68.1553005020389;
        Tue, 19 Mar 2019 07:17:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553005020; cv=none;
        d=google.com; s=arc-20160816;
        b=LuCZM1cWUrzraoPsAY42u0+m+4tXO8KMTK4eLh99V1scj750A0w+tvXaJtFkXSAZjX
         qGHAC0yiUxaIA/r17VGKymvJamvkwvxoEqc5nVroRy8UctOfe7d/4Za3vzpHqx7ruraU
         mII3HwAW3Tf5BYax619TGx0DwLdtAQDa9KHJy53tdsXsInWk2HCfliJkVRSQHXT37CTn
         lWNjYLEAvi79l6WPG/KJVnwNEOncTD1QOd9WkbKCHxls6vJI34VO5HGRx0T8HdQtRyvT
         Rt0xugFYlSSZJ65hPims5AHpB14ns7adNGkcj9K+xGvMdYdWWyyyeHXPGowi0XDl5LtX
         ISMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BpHTUwKhU0Qlb1nq088QSvb/vs2uEMqA+BfX+Qv6DtA=;
        b=R3t3Ad87XtNO4M8iMAT7KMEob6PCF/B+Ct6GGaMfZ0HW8gdqbnhhfBDm2LcB1rwsY+
         UTmqUjhO1vk1GzspWtKgBni1bBjNtMB5uGZtg0kxd2gLE/c7jLEHud6c2xryQCw4Y/u6
         WMCwUyILi3u+XcfkQWeb93UW0UF2VPVWPLnEHnhAkIcf4mMzj1e/dA2vVZiH0/jb7Kun
         vuPrvKyYGBB2g/5TIpdcFD89KxpJ9I3bVAUdbKZf/kBEYACVcLjuZon2rY4AExFos6F1
         tPjX3GID04rsXMTbCcDImf8mN2RDb+EZjxZAdZsa/zOWdv8SVd9BFRaH6n8VUC0Kgvm9
         5+rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Br3mzuaM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b77si641745pfj.5.2019.03.19.07.17.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:17:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Br3mzuaM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9854A2133D;
	Tue, 19 Mar 2019 14:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553005020;
	bh=yZAVrXLxMXMsDAyY+KRAG9Q2YQvTXm76TKa8g6JJHvI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Br3mzuaMsBF3rfUtZDqIpkbM5nxSBuzdKOyDQJxSXKHEiAPnOdsWNjzyd12IkxFYN
	 5Vg/71n53/zuW4KGDyIv95w4Jlu7qS/PCia3W7aqyX7hx5urto6Pezoksx4qx+eS31
	 Sjy4/Xis08geFJFagx/6Qeae4H+Xep69SpmjZqP8=
Date: Tue, 19 Mar 2019 15:16:57 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/3] Fix various warnings and checks.
Message-ID: <20190319141657.GA12867@kroah.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Mar 19, 2019 at 07:44:39PM +0530, Sanjana Sanikommu wrote:
> This series fix the following checks and warnings.
> 1. Remove unnecessary blank lines.
> 2. Fix alignment issue.
> 3. Add spaces around operators.

The 0/X email needs to have the subsystem (staging), and the driver name
in it, just like your patches do.  Otherwise they often get dropped by a
maintainers email client.

thanks,

greg k-h

