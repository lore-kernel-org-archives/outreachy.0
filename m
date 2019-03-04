X-GM-THRID: 6664067951305424896
X-Received: by 2002:a24:5c5:: with SMTP id 188mr388999itl.3.1551726094583;
        Mon, 04 Mar 2019 11:01:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:66c5:: with SMTP id k188ls91580itc.3.gmail; Mon, 04 Mar
 2019 11:01:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqyY+ALJvmaBCGDnphMLpJMtTESb6JDqBPrhDs4jVyro5bt4k8H97HFVN5Cq0z7zOgRRy9o3
X-Received: by 2002:a24:37c6:: with SMTP id r189mr377760itr.13.1551726093623;
        Mon, 04 Mar 2019 11:01:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551726093; cv=none;
        d=google.com; s=arc-20160816;
        b=nmMHewZ5TppETIS5Pi1BpgXah8qydIpn36fqIcp5Un4daAAcEMT6FA8VSN6wzYrL4e
         2Uj0IWmgaewMML+oInwzZM4Z0ZCGwL/lwb0dVD8SdsNHacpIuIUV+bZYWujZUVKZKHvw
         nPYAUO8yZCWWFqMfQo1Ryq8yQ7Hj5dLy7fEteY0FE3cPK7zunn5Jc8S4djTcJCaZcV4w
         wOrbhPLPvC8YMMtJLGA4HuOemnBkX6DxL2/loKswgF9JhtL4YSg2+wOqIAQl50siQYD1
         9kRNIQ9I+iU/1zlgorVxC+umCokNOETT7gZSo6ekwlvRQkCmOIcH2agd4d2Q8a8igO4+
         oX5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cPcDmzS+hYIqhhZJuAwEV98T9xFScr+xxG+WBBtfvgo=;
        b=fLEQnSB5MT08TlM1e+fr0k6FHwQg0MqnZC922Acw2j4RI9k/WMyYJbjfqja7bqWGwv
         bPekbOGwp/0laZBHkSmN8nXiHfaDB7aKco0R2taHKdZf450Dxja6GYqHNruEx6tttHs8
         fmk5oksOlS0e3eIfOuJHoJA5uHuTAWWFxehfyAKwU8WxZpO3GQF50bywJ1Vl2cOxHiSK
         RWDaJJk50s11Pk+CODZFig1ynR5dJA8kK1eAJf+uIyzEcoItFP6BP2Vk9hzBb7U0vPm6
         VVl9I3CUQdMAxLm2xdNASEU3ciQ8t3eYF5yoHeym8NdujEwfOapJ0lvjlwXnXD7IRPZt
         QX6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iMyE6dqB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d127si389315iof.1.2019.03.04.11.01.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 11:01:33 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iMyE6dqB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4F5EE20663;
	Mon,  4 Mar 2019 19:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551726092;
	bh=bG1vFnqg8jbKmopiNPw5D8uQn25VCYPW/U/+081YR94=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iMyE6dqBGwfhp+jrAXFzYPnu0ixzjuC7Ixc27bpdmu2mELvX//8/T3tDvvGv4D+sX
	 Dklkizy2r1hZh++4p6L9acJyMrl/sGBaeGYhpIEtNaZ7qaRh+9oFiezvFZuOWHKzw1
	 cU/9gCs5R/eVFrNNz1bfwH2bTwTD6C74CpJX7CUE=
Date: Mon, 4 Mar 2019 20:01:30 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Debleena Sen <idebleenasen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] Staging: pi433: Fix line over 80 characters issue
Message-ID: <20190304190130.GC13830@kroah.com>
References: <1551720850-101768-1-git-send-email-idebleenasen@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1551720850-101768-1-git-send-email-idebleenasen@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 09:34:10AM -0800, Debleena Sen wrote:
> Delete extra whitespace and tab space and use one tab space to
> remove the checkpatch.pl warning:
> WARNING: line over 80 characters
> 
> Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> 
> Changes in v3:
> 	- Add version change log
> Changes in v2:
> 	- Add "and use one tab space" to the log message
> ---
>  drivers/staging/pi433/pi433_if.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

The "changes in" lines go below the --- line, not above it :(

(note, one kernel subsystem does want it above the line, the graphics
developers.  But they are crazy anyway and like doing things
differently, so don't worry about them just yet...)

thanks,

greg k-h

