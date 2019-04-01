X-GM-THRID: 6674542859228545024
X-Received: by 2002:a6b:7614:: with SMTP id g20mr10231759iom.14.1554140423247;
        Mon, 01 Apr 2019 10:40:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:a890:: with SMTP id l16ls2115868jam.3.gmail; Mon, 01 Apr
 2019 10:40:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw0s3gXZ/UBJG+5Wke+VQjWvTTNoI7JSqbyNFVzVfBTtWnQEjNAZZ07yc2ytyrnrdUmmj84
X-Received: by 2002:a02:8243:: with SMTP id q3mr9221259jag.6.1554140422253;
        Mon, 01 Apr 2019 10:40:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554140422; cv=none;
        d=google.com; s=arc-20160816;
        b=qQijR/AbwTdC1G9EQkiNbByPD8CUyQZDN+vs5hTF9VYQfxR0FOoaCPjJn6mYeR9/Qv
         NnZADhpDHKII9QmhpYUNNUsJGWW4/GQaB4pndNLYh10Njgg12Mz3QXZ+hgpPJktxQmqP
         TIISZJyroZxZBEtag7rAhrs5ZS4rJ/nNZQsDb7YKQq4H21IvExdsCGNKxKxprTcM7YCA
         T7UN8ZXGY+HdzzQWTkUmCWwR7Yp9jg1xSe7YXj7x7mIt1tNBPyi6VIvHNvJ8+VSJ4cd9
         b6La+1wTC4c1FGZEgmQ7CBhr9Nq5TG6psFa2MOsSvCaKDjl3Ma2+GZAEJ20Kyz5rTQ/Z
         WczQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gqDGvSGpyfB0XEMr6toVBoLnosxrZkLjJRnSlkDyu5U=;
        b=uRBKBJHKXCfgPfiFc2xg8SnykGDxw5hWBynI3lbpv5+SRu+3SCRwQXX7vlAjno+LLN
         dXkx6/c5YuidqaJbHgGget14flLTWb7bJh1IPNEu9EzpKjTEG5Psv4eeklxAWL5vkf6Q
         iG+iYL4Bxqtf7xkJC1NoLAxWjqarS3EBmSx6UmRWvnchCc0NKOUvbqck81YUSUKLxDdA
         jNb4Ffh8vSZpNVGfctnNinG7bZoC+5dS/QUjJiEb1ipXZImvK1TeOY2IZ5WUr/eejNy4
         3zpQUjN04DiAxWmhxoX75DR4pG+rMj70v1Vvf3UDhEYjOtdcBVjogw/Ra6x68mL214NE
         w70w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="a/28NAZT";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w136si552749itb.2.2019.04.01.10.40.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 10:40:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="a/28NAZT";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 17F0220857;
	Mon,  1 Apr 2019 17:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554140421;
	bh=f0aMcmGnmP/cWE1jEGh6wpHhJbtcC44ZxFXZwQW6YUM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a/28NAZTTeoyuw1xMVUKK+bXj7wVVuoZHGH0gtKfrzitm3qEME57Ht7UtagaI/hSx
	 VKpH8T/c5vGnVFHDD+YSTkF/2Sx7NWu4IS9xT+5KcOASE9cTNrtVoZZLbNbzhkeeQk
	 wgJqXWDG0DfoUoPSGq1ukLuTQWc8/fEYHTanfbyQ=
Date: Mon, 1 Apr 2019 19:22:10 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/7] staging: rtlwifi: Compress two
 lines into one line
Message-ID: <20190401172210.GA2256@kroah.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
 <b6405f65834d83d12478b14e310295c4c27da469.1554042596.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b6405f65834d83d12478b14e310295c4c27da469.1554042596.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 31, 2019 at 08:11:28PM +0530, Payal Kshirsagar wrote:
> Challenge suggested by coccinelle.
> Compresses two lines into one line and remove unnecessary variable.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtlwifi/rtl8822be/phy.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)

This patch does not apply to my tree :(

