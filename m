X-GM-THRID: 6947995427572547584
X-Received: by 2002:a05:6602:2348:: with SMTP id r8mr24252230iot.77.1617718368847;
        Tue, 06 Apr 2021 07:12:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:6213:: with SMTP id f19ls2900519iog.1.gmail; Tue, 06 Apr
 2021 07:12:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyj8VAluNjWJfbihDHQnp7SiVLgBsahyQDPgTgTxxg0RozK7n1F2gSDca0F7ZPu6h9Ce/qh
X-Received: by 2002:a6b:7319:: with SMTP id e25mr22934253ioh.0.1617718368057;
        Tue, 06 Apr 2021 07:12:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617718368; cv=none;
        d=google.com; s=arc-20160816;
        b=TmiIY7w09svQpi3Y6tyGGjZ1SCOroXnIQ00QWnO1X0l3O18fHmydeZfyPV6oV9ctR0
         Aagkql+3pNW+dNNTKeNmJIqfOchrflLc1QADJRfJjuVFFZn0SK78LFJVk8z2QHG0DLHJ
         wy9vm/RrU896kJAvRdDbx5knhv5c5PicUmOng6qAhuURvn1gRjXrNPoXOFwoHkLqPbvM
         4M1dl2OA8dDZOpexKyAFJT4cQyfLyCwQseHN8XxRxvRRPQBfMi4zBvm+WdCxej7QhVPw
         Yn3yWpp4E+dZPEnN51tWsF4R5529UUTQ3BryCTCXqOfS/gplSlHa9gfb/bB3ls8dxeXH
         TZaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7HCoxXEKITE52blGtDSu/8VDV29HS08hDHN03Xcsu6s=;
        b=jBdCSU0hYfMtWf4fDq/zI7SgcDheQvBwXxp1Nc2sEDnzJ8xiEB5kUtVOhH69SQaE+n
         06iJp5hnC1qPco4OB2OH4BISFIsZSwNskMgzPMCn8FTx3P7VVyqZ9FOEz2xHRR2Y0h5P
         k31tdq4rzGDex2NZTB5+3za3Re3eT0wGbw+BR13+5U7EF4XiLd4S7qH8makFA7+hctjh
         XtGRXjPaGOw0WkJTk45XCdehKK+KSVAlSeA9+mHkVgUHWij7qm46UZWSGlkmKf6Oo58o
         lpRRUZ0J/8BTj+6UTmdlTJk8QBAK0YAUxE3oBTG5GCoJi9x56hd1cZHoChf/h1zSFLpP
         fA7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=KdFawesu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i2si1127355iov.2.2021.04.06.07.12.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 07:12:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=KdFawesu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id D4A8A6139C;
	Tue,  6 Apr 2021 14:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617718367;
	bh=pcziQPHW1TqS0kWxpYxP9neRIebp6sZAONItqnbfQvY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KdFawesu53kdwMYki+QYg5Bso5YqGTCFpROshhmtT4kuZCLKQ0VG1OPQhi/eB6zhz
	 2G3/wPjNSfuOdfSHAK+PxgQTmAZ8BlUpVFRhQ3W7utBYiH1qoz+FspI8B5EPgTdluY
	 e6u9GyNQIbzYX7pPVNff0eyhIIue0MnR8eF/wjhw=
Date: Tue, 6 Apr 2021 16:12:44 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 2/2] staging: rtl8712: Remove extra blank lines
Message-ID: <YGxsXMonD5TvtUyB@kroah.com>
References: <cover.1617710602.git.zhansayabagdaulet@gmail.com>
 <f61f6d330bc3fa53d4d420754d1d461b6cfcb2de.1617710602.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f61f6d330bc3fa53d4d420754d1d461b6cfcb2de.1617710602.git.zhansayabagdaulet@gmail.com>

On Tue, Apr 06, 2021 at 06:09:58PM +0600, Zhansaya Bagdauletkyzy wrote:
> Remove extra blank lines after an open brace to adhere to Linux kernel
> coding style.
> Reported by checkpatch.
> 
> Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_io.h   | 1 -
>  drivers/staging/rtl8712/rtl871x_mlme.h | 1 -
>  drivers/staging/rtl8712/rtl871x_recv.h | 1 -
>  drivers/staging/rtl8712/sta_info.h     | 1 -
>  4 files changed, 4 deletions(-)

This does not apply either :(

