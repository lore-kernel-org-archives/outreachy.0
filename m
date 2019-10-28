X-GM-THRID: 6751575419230617600
X-Received: by 2002:a67:f7c4:: with SMTP id a4mr5782337vsp.148.1572267034773;
        Mon, 28 Oct 2019 05:50:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6102:18b:: with SMTP id r11ls261138vsq.8.gmail; Mon, 28
 Oct 2019 05:50:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwijvr5re8vcw4iZW9WJjlxRvMU0TV5sWyorI/vV41Gyy6E4fQWK6YsWBUygpFNvvTsfjon
X-Received: by 2002:a05:6102:66a:: with SMTP id z10mr918685vsf.146.1572267033689;
        Mon, 28 Oct 2019 05:50:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572267033; cv=none;
        d=google.com; s=arc-20160816;
        b=VhWeZaXngwrsE3/Tv1qHlb1LXljiNVYOIr/Luylu1PBDV20Zt53ZDAxQ1KClO7Bane
         2A2tPS+Ly+HYtSiJPmJa0OtKhDo+jvagIuCzqCvrJ6FjlX4+Mrx0sUkc/4efC4nNHsvn
         EBcKYsAe1mzov5FVvqM8qEsc1s7knt3eogIbOdXgYEuq2L+zrN5ygz+nT4MoLE3kDTKv
         /p4yMTeH1wCG4JlUCf7XKcYrz9ngrB4CuKyoKtE3oc9KHdUzpzgmHQGnQpWWrd3u4gRT
         /1fGBimHvKOCNQx7lhkTzeZbYDt4fCW7gNyBQqjJ74mV8tybgm8/s9bRyyOqcy2I1ibz
         HpfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+AQPB4+2lglvjBYXdAamxve1rnKb8+aSmPrTALTg78Y=;
        b=rfc03XZQoApVQlaVBlIN7vCophpqaDQobClckrY/0CDRvrdmADYyY0dAKFHcEQTEyH
         f6++1Dlt8SN3ZpIbfpVJelZJhd/tmfeL7aU5EKvS1wq0MdKDr3VysPmeeSlDOMDcCoHM
         h3/2ax3T2/yn296t732ZY67ZC56jAJxlXAtirTZUEHV0BEKcGBU2ox9GOps944gTXzff
         IuFrws1TcifK8w4lVpFZNmQhxJYmUzOL53ou3vvAxhzEVpy4sSFalqopr0d8QU+eHZdF
         cpHDdIXFKW14AVqzB/zx5BAC6At+s3t5xZ7KlgJixVt1opmD66uQQ/7b/fw+UNFQejOf
         iaVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WHG5kweR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a12si859172vkm.1.2019.10.28.05.50.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 05:50:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WHG5kweR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [91.217.168.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5E8CB20873;
	Mon, 28 Oct 2019 12:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572267032;
	bh=+AQPB4+2lglvjBYXdAamxve1rnKb8+aSmPrTALTg78Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WHG5kweRukiYo0+fknbraz4xpgtgukIi9EAp8pK4aH7179MOaW5GTa3zGmPUVftop
	 qmQIdHl6IdkG3t/MwgO4trlwOCvYaSrsOcu3nh8vw/qFb/VyiQPPlvZlK1vBuM0EA4
	 qhMl6uwR52lTTDWsexjYuT0203xdxYIWa/AlsFoA=
Date: Mon, 28 Oct 2019 08:07:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com
Subject: Re: [PATCH v2 0/4] Edit CamelCase in sm750fb
Message-ID: <20191028070740.GA2193@kroah.com>
References: <cover.1572226786.git.jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572226786.git.jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Oct 27, 2019 at 06:43:03PM -0700, Jamal Shareef wrote:
> This patch removes CamelCase in sm750fb files.
> Patches are organized into groups of dependent files.

In the future, you should put "staging:" in the subject of this email as
well, to make it easier to search/find in an inbox.

thanks,

greg k-h

