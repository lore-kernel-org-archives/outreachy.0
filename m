X-GM-THRID: 6949196106394763264
X-Received: by 2002:a17:90a:a103:: with SMTP id s3mr17923154pjp.158.1618039775210;
        Sat, 10 Apr 2021 00:29:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8748:: with SMTP id g8ls2983051pfo.8.gmail; Sat, 10 Apr
 2021 00:29:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzlIrm+5kr7HgDhIUerxQQSec6Hvp5Ob17OQ1aEx7ky23Tb78QXg3d26ho9YX539zj9vRLI
X-Received: by 2002:a05:6a00:1743:b029:215:225d:9e78 with SMTP id j3-20020a056a001743b0290215225d9e78mr15339160pfc.18.1618039774072;
        Sat, 10 Apr 2021 00:29:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618039774; cv=none;
        d=google.com; s=arc-20160816;
        b=ecy7B8NlX8UKMIubfHP07W2dngzYU2uBdu0SYO0dhZ5FyAWi5lU9qR84zF1jS0dIdl
         dDLASmu9fgvAFE9MjEUdLAIGMrJJyzLCBArqgutkd7pxQtoU1fgSzGhP4GlyCgbXRxP0
         ek1heGD5eQnR0LmgYuZmOs2TL7RUztfdk7OY3LHHA9oaBWfCFRqw1TWKfMhp73W3QF0z
         dFYQHUmxFPbd6vNTYWqTfnKEWZvz9mtLP0qBwyPToZcyaWO4aP4WyBr/famRAjnmquoO
         3M5ULh3rOVTITP+3LkPSDMioA0nuZ5LfbtwRnjjJ136aJ8f9nmOj5owqNijLeAgtRMjG
         phmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9qVY/5/id9CXwrFmmaXUgn55SZFTIrVVCTE6rlx/RS0=;
        b=YmwHNn2b0T/o9lmwNtkBg/ZAlxd6vD4qDzYswSYq5LFO5jsVTHY5cktSL1vJ5u4Kze
         Qr/IDpLtBCEgT1+ZvQKANqPqMEIqbo7tEhJa32xYx//l+trODp+QxwfiZE1EAsYg0Lo2
         c2RYfFM8Q6VGsm9RjJZpzWSZAMDlujMJIE7UkhZKuQson7qy1dKLCUvQHlosxwR1RxjX
         5b99qQC/9n3f1/YEHK+YyBnqgRXoq61FSHNEpuHq7Gbkdyfu5Yi9x8pXaZ0wXucX+FA+
         PGH5riXPWucjGOE6TijUkqjNUQT5+M5CfVEWBV0Q2NJqNhQxWQ2mqAVp8rckFeBZjVnd
         HVmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=KU0+ab19;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y17si344778plr.4.2021.04.10.00.29.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 00:29:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=KU0+ab19;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id B997B610CB;
	Sat, 10 Apr 2021 07:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618039773;
	bh=6dqsCuwOxzPRtweC7qc1rnM65QPQJBohOG5bLmKsBEg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KU0+ab193iyQWutIghoi3oevU1UUdLhuFJD/YpfGtH7iOYDcjG3CIfyQ3S5gKoqWV
	 RN3PtXLX9fMIH/VcN3pzz3FfjJZCfij79O3ykmDsx8EcuIrbVil2bsdzB0i7Bzml96
	 qowIuunenOgpRwNylXCeTkP8/sFlEF/m3psd6jDs=
Date: Sat, 10 Apr 2021 09:29:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [Patch 0/3]
Message-ID: <YHFT2S31kFy72DMv@kroah.com>
References: <6552860.D8CPca6BT0@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6552860.D8CPca6BT0@localhost.localdomain>

On Fri, Apr 09, 2021 at 06:29:59PM +0200, Fabio M. De Francesco wrote:
> This patch series removes camelcases, changes the type and use of a 
> variable, and correct misspelled words.
> 
> Patch 1/3: staging: rtl8723bs: Remove camelcase in several files
> 
> drivers/staging/rtl8723bs/core/rtw_cmd.c       |  2 +-
> drivers/staging/rtl8723bs/core/rtw_mlme.c      |  2 +-
> drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   | 18 +++++++++---------
> drivers/staging/rtl8723bs/hal/hal_intf.c       |  2 +-
> drivers/staging/rtl8723bs/hal/rtl8723b_dm.c    |  6 +++---
> .../staging/rtl8723bs/hal/rtl8723b_hal_init.c  |  2 +-
> drivers/staging/rtl8723bs/hal/sdio_ops.c       | 14 +++++++-------
> .../staging/rtl8723bs/include/rtw_pwrctrl.h    |  2 +-
> 8 files changed, 24 insertions(+), 24 deletions(-)
> 
> Patch 2/3: staging: rtl8723bs: Change the type and use of a variable
> 
> drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
>  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> Patch 3/3: staging: rtl8723bs: include: Fix misspelled words in comments
> 
> .../rtl8723bs/include/Hal8192CPhyReg.h        |  8 ++---
>  .../staging/rtl8723bs/include/basic_types.h   |  2 +-
>  drivers/staging/rtl8723bs/include/drv_types.h |  2 +-
>  drivers/staging/rtl8723bs/include/hal_com.h   |  2 +-
>  .../staging/rtl8723bs/include/hal_com_reg.h   | 34 +++++++++----------
>  drivers/staging/rtl8723bs/include/hal_data.h  |  2 +-
>  .../staging/rtl8723bs/include/hal_pwr_seq.h   |  2 +-
>  drivers/staging/rtl8723bs/include/rtw_cmd.h   |  6 ++--
>  drivers/staging/rtl8723bs/include/rtw_mlme.h  | 18 +++++-----
>  .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  2 +-
>  drivers/staging/rtl8723bs/include/rtw_mp.h    |  2 +-
>  .../staging/rtl8723bs/include/rtw_pwrctrl.h   |  2 +-
>  drivers/staging/rtl8723bs/include/rtw_recv.h  |  4 +--
>  drivers/staging/rtl8723bs/include/rtw_xmit.h  |  2 +-
>  drivers/staging/rtl8723bs/include/sta_info.h  |  2 +-
>  drivers/staging/rtl8723bs/include/wifi.h      |  2 +-
>  16 files changed, 46 insertions(+), 46 deletions(-)
> 
> Fabio M. De Francesco

I have no idea how you created this patch series, but I do not think it
worked well :(

Please use our standard tools, that do this all for you automatically,
and send them out in a series of emails that have a proper subject line
(look at what you used here...) and are properly "threaded".

thanks,

greg k-h

