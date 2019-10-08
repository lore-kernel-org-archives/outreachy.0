X-GM-THRID: 6745433279172706304
X-Received: by 2002:a5d:8ac4:: with SMTP id e4mr6259275iot.185.1570557485904;
        Tue, 08 Oct 2019 10:58:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:3f8a:: with SMTP id m132ls768879ioa.13.gmail; Tue, 08
 Oct 2019 10:58:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyn2OcxvAtghmoQGQDcm/FIP5SCLU7Qbix/qcXQY6Lv1igJO7XDphkyo9PHs69zbDBpdmWn
X-Received: by 2002:a6b:a0d:: with SMTP id z13mr28918438ioi.5.1570557484586;
        Tue, 08 Oct 2019 10:58:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570557484; cv=none;
        d=google.com; s=arc-20160816;
        b=TTYww7RnxJO31okVgy7T6AoDVKYtC+OHUuJXJBNo3gjyXeynJLuUG7hKciLE3lU2R6
         dh10y1Bcz2Y18x+RWGvGKwgdxQYii8unRmi75om6r4ybt/8ztmJBx/679n2Qzqc6eNld
         bS5CKzu03spJtwAgjIkeatSey1GgmyspMpfT6/igIJL7Rntd6qldGEoJbSVwNp/81XCj
         PTHspfNAc4U+zMYKVU5Scb8x9H15QGT/763NC2w+pD3KmKxwkT5MuWxA3fTk0/oynwbV
         o8H16iSufO+lw6wHMEcvJnZj7zEN9+O7kXxfYhhZZSf/GhaBcMKrz0/KIleBOwyjyjFJ
         ppBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ihGwtiynE0O/hbVHFduCTPxo3BBb7CeYIUlX2oedgSc=;
        b=vQQPnXVk7e2FlWDKBRUMIRu3gR4+MGFLrd8/mrL4Tyc5pZAtF1QYsRhRyamxOvNPy8
         LLSmv5lBRrRP0Yv+lXmGB9nCZun/449Hjz4nmxkD5XOsSD8Bqoa/+NlfObTGISWcwBBn
         LtTk30hYBf8gfM1yoZq3WAhxfubheArSjP4WwWfJWSmrwS33pD3z7hPq1AwO6bVXbUyD
         iRDqnjNChhXdz6SnQGQeBx0F0E3w+O/HaKQaedq8M0lNf3fOTDVCMV1Wd9TfvhYdUT8W
         l0aVjK3nnK+btpqxAp01LpLa42Dr/w/4BQSya0sv6/AG7LKgdB39e4iGYDzcK2dL3SzE
         cmOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1xOU6wuo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b2si1341765ilf.5.2019.10.08.10.58.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Oct 2019 10:58:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1xOU6wuo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 75FDE206C0;
	Tue,  8 Oct 2019 17:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570557484;
	bh=HbuA6L7Cvs7jU+24GWAgdF7XRoGQQ/pNu4NhM6LNBM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1xOU6wuoPjSwFidt3xtA6grAhyy3pIii1LiDezTsZaaeTtpf0aOYDAY4QHpMri+ft
	 JqOtXyEAohuI1OwPv0Au8rZOBpgDyiUgykevoa/+qJdY3/Qp1MylsO/GAEjUC1SHHl
	 vZXeS9LR6KD1Zj4Ssmzs+nczPzZqJ9t5j+MRKcHQ=
Date: Tue, 8 Oct 2019 19:58:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, matthias.bgg@gmail.com
Subject: Re: [PATCH] staging: mt7621-dma: add a blank line to fix checkpatch
 warning
Message-ID: <20191008175801.GA3015744@kroah.com>
References: <20191008140552.25639-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191008140552.25639-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Tue, Oct 08, 2019 at 03:05:52PM +0100, Jules Irenge wrote:
> Add blank line to fix missed blank line warning.
> Warning issued by checkpatch.pl tool:
> "WARNING: Missing a blank line after declarations".
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index d964642d95a3..e309923aed2c 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -157,6 +157,7 @@ struct mtk_hsdam_engine {
>  	struct device_dma_parameters dma_parms;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> +
>  	volatile unsigned long chan_issued;

Look at the code, does this look correct?  :)

thanks,

greg k-h

