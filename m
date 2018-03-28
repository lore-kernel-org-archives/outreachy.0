X-GM-THRID: 6536210357179908096
X-Received: by 10.129.62.4 with SMTP id l4mr19716460ywa.128.1522258765160;
        Wed, 28 Mar 2018 10:39:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.251.194 with SMTP id l185ls403972ywf.43.gmail; Wed, 28 Mar
 2018 10:39:24 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvTZiqmilPxlEDE7aAM3QUiDWObKlU5OsICF8KHrCuAwVOCsvQIQzQt2gAQXINWhKmLLLzh
X-Received: by 10.129.122.196 with SMTP id v187mr20262422ywc.106.1522258764241;
        Wed, 28 Mar 2018 10:39:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522258764; cv=none;
        d=google.com; s=arc-20160816;
        b=FnSuZvUGlqIhGDKMaMlfyHzo1Am6jDxl13MlF/9RDfWHf/I5C0Kt1r7xSAOjffvMBh
         JMv2ncRHIMj+wpTBdK01dTU/t6O069cF5KPhrK9EOygY+2ykkdGF0hWmTyxQ6Nwq3lye
         JupFX39qat6VTCdGIqS8ZiHNV5Jo4T4UNzO3zQar1bV0dnl8PuPfFxXbqMyAMvUhhcSH
         EucN8oe9oEo6JJPj+Gdgf06h4z7I8Gs4dJDUxsToIPmK+2rp7S6vXxahcTuYM79Ylb86
         Y64fNvw8ucgHgD2Ghkdlr1M1giSAJuvdI8rw6XVbuPxiWozcfkdijAgzaG4HVoK8coz4
         T6jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=Cg3nf0G84sKwLVB7NCf9Mj5UemehQgX3gWydnETL3I8=;
        b=la44SvHM3sQHQ/NIzOecnYNqGvaa6QWgJjvLdJoXFnHkT6+5/VGst+RLw7RHWOzUaT
         /mk0qdQp2YnW8r3P8DhiZRvtdLGDbsz3stemIROR2BT29x+vFlnYHQwMxfVGa+a6M3dc
         +N5s/NJjMeW1oOsp/zgPv7cePqtdQISRw4DLZU5T72y3AxR2VsnyZ9nEGupiINpeqAkI
         ZJMgM3Xtmhjq/HEZms0xcyhw/NmaKLhzfgYO7CGmFiK/ZUK/TxJEmVqQyKzwMfULdyZR
         XUEKzvNUsvOfj6KmUafCdih1Opi6pEkVP28lPL6hhIAY5YCIB5PTgvcd6dwMG2mu8mki
         S8xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id t3si304269ywl.3.2018.03.28.10.39.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Mar 2018 10:39:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12247-202.w90-92.abo.wanadoo.fr [90.92.61.202])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D9E10D16;
	Wed, 28 Mar 2018 17:39:22 +0000 (UTC)
Date: Wed, 28 Mar 2018 19:39:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] staging: vt6655: Remove else after return
Message-ID: <20180328173920.GA15160@kroah.com>
References: <1522257283-2147-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1522257283-2147-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 28, 2018 at 05:14:43PM +0000, Nishka Dasgupta wrote:
> Remove else after return. Issue found with checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
>  drivers/staging/vt6655/rxtx.c | 37 ++++++++++++++++++-------------------
>  1 file changed, 18 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 9c4a532..ee327c2 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -552,6 +552,7 @@ s_uFillDataHead(
>  			return buf->duration_a;
>  		} /* if (byFBOption == AUTO_FB_NONE) */
>  	} else if (byPktType == PK_TYPE_11A) {
> +		struct vnt_tx_datahead_ab *buf = pTxDataHead;
>  		if (byFBOption != AUTO_FB_NONE) {

Do not add checkpatch.pl warnings in patches you create to get rid of
other checkpatch.pl warnings :(

thanks,

greg k-h

