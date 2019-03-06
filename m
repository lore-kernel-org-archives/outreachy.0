X-GM-THRID: 6664861839759769600
X-Received: by 2002:a67:7b10:: with SMTP id w16mr4207104vsc.6.1551863662648;
        Wed, 06 Mar 2019 01:14:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7f0e:: with SMTP id a14ls361868vsd.6.gmail; Wed, 06 Mar
 2019 01:14:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqyHekr1nOOJbHTBY4H00b9Hgc68Q8wgYIfaLOzwPKTY/mqaoB69cJgr9dSDNS+3qDXJsBhW
X-Received: by 2002:a67:ca8e:: with SMTP id a14mr4394325vsl.44.1551863661786;
        Wed, 06 Mar 2019 01:14:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551863661; cv=none;
        d=google.com; s=arc-20160816;
        b=HuyQp4dI85NQOppxEo1f2Jeg4nJXxWsy/5wWc1lJ3l6E5Jjgojv1tHpZGua/JD7EmM
         dIDwYY2iMGNzvsW2Uaj2pQBrO5wqDLwImICwBIhWsu7rS/DKNcl14M6SF1CZYDdyZxJx
         4HGBbAreJ3QOuugUSxwxYXt2IUzSxNf+DWTXVVse5qBxKM/mzGAsON0lKiTUG/+vrI6A
         e9YYGhvTARqBqg9NLvkeYehL7Kk/reIZw7snxESvGo0o029WlwKnoymnyCa6N6U7D/U+
         7XMeZ4uUYD4XTvjAekATDhVJxw9ImvjUpHoFcQ1yQLslBDJ2It0JVW7SR7Q369Q0sD/c
         hjbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=B235v408ielrQgbZjU9nYYXyezV7BUU8+9IC5ecnltY=;
        b=Ewo7S9426vIS8rr7kEP8uEFU+/dtdJ2jnLLUQ5bcPTQjBzb0sHBhMryt7Ct78ZWDFp
         w/07n5zYFv9+cKreN37GTpxDprwCsHUzjQd3P35Pii+lcyEw7/lIJEJg09ThlR4lW2u4
         tfFJiR32VWZbIbW6vl4KfXH/AWo/B1wAkixBWA3DNqQtrXNwuZZPzvIx+WpPQl5y1At9
         bjEUCXs2XXVaIx6GINcEcmwWTuKd589Honbs2BaT1IAW8Itz/V/dGKlJqpTrrH1rdCWB
         cecYJwPFZjVEpxhSpJ61pvpPzjef+5Ct2birhAz1iGf6D2UMQZ6BmXR4QTE/r8UZKV1U
         pN0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ed5ySZf9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s73si49822vkd.1.2019.03.06.01.14.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:14:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ed5ySZf9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2119E20840;
	Wed,  6 Mar 2019 09:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551863660;
	bh=uUoAUqgnqrKHilKq4CbDvbehVrIg7smbj/n3S4KO3ZI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ed5ySZf9WqnMwysf5gl2p9Z3wWSEQjmwOf2OO5VwAW/R3hFXYWa1Tl/EEQTyepFKg
	 Ko28DQh+QmrR8+cNbpJbddcZLrSiZYPWx0dUTUIH7wCviSehmTRAC3p2euG37s6c9d
	 NbXf5lKUNgzQ90MZGP/5BYqsR1xljHA9t+LMrFIQ=
Date: Wed, 6 Mar 2019 10:14:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Daniela Mormocea <daniela.mormocea@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 4/4] Fix unnecessary space after
 cast
Message-ID: <20190306091417.GC7927@kroah.com>
References: <1551790140-19291-1-git-send-email-daniela.mormocea@gmail.com>
 <1551798306-20836-1-git-send-email-daniela.mormocea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1551798306-20836-1-git-send-email-daniela.mormocea@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 05:05:06PM +0200, Daniela Mormocea wrote:
> Delete space after cast
> 
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
> Changes in v3:
> -correct mistake from previous patch, regarding 
> a blank line

Your subject line forgot to mention the driver being modified here :(


