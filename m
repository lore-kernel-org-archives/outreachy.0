X-GM-THRID: 6668981360875536384
X-Received: by 2002:a02:3c06:: with SMTP id m6mr7395091jaa.9.1552819863763;
        Sun, 17 Mar 2019 03:51:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls2737046ita.0.canary-gmail; Sun,
 17 Mar 2019 03:51:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxUNW5E/ao0GWqMtU3Go2Jpf3IlK5hfob1Vr3f5MLMK8dUQQpzWbR9JUOTGcpOaWaFq8NpO
X-Received: by 2002:a24:7647:: with SMTP id z68mr7247580itb.27.1552819862834;
        Sun, 17 Mar 2019 03:51:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552819862; cv=none;
        d=google.com; s=arc-20160816;
        b=HpyWcMvL4eJccIZLJYhQNZpkyl08c833ifrRf7wPGr3U8OMKq6c0NNOIn1renPgKY7
         po4ZNOTxzJEzYM4f3U65jyhkRZLW20DTtLoMXhppyeBu4cwBS0Z6/3hy8avBigUV4yDT
         xf6OJRPIcz/9sieDAbdM9T+mXjKa5+96xCnLLmbb52yRUhn8C3Y22GQTZdbDHNADahZy
         BnWiOOsDycAfT+OAKGjqOlBzyN9IHhJMdN3DYIzU/U6AKz2zeSWP2juvCZ2u5qiVXsxj
         B7PqoNX/3lUUnGbDZoeslF5wHo9+0vhNikubrvySE+abH2yyVUiyraS+EOs9AQuSlC6a
         Z58A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cX9boyoD8YDEbeVIpVvhbwAMp/no5oplh7MxwZgVVo4=;
        b=waIslDI+/BzzUPOzXZG37cRS7Jk8iu6iVjL3LaLPeGjtYlHX2fJfzajSOnWf+dYpue
         7MzHo0yynHPqOD8neoaazrXUBvaAESg5S3qbYCC1ujwmrHBclH0bWNr7EbwN9nBVavCf
         i0SCq8CArv0gg+yT4VXu5mOFORDsuS+z+TQCF8AyZQNcc954dDy+Mz7qeKfL5wAKGSGI
         J8qGGwl1DfxYkssH0+s6rDCJkVoj9R+JvuZfHk1TvzQss1g32+D1N+AxoTzk/xt+J7w8
         eQJOLxVnfH3Tcnr7D2JtFDsYpfI+r0VQnJmnpI5zxjsfjZdXwMtcLbtyPyxDe5/55RGX
         vbxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qxmr31nT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 65si716787itx.1.2019.03.17.03.51.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:51:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qxmr31nT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 83FB32085A;
	Sun, 17 Mar 2019 10:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552819862;
	bh=Gt29u96wRo0O5p40CfCbY2Qh8MO4N0JbILd5miLCahE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qxmr31nTCbUfUKQEEvBvQVAttUi5/b5k6Ttk099UVVxjthPnKJ7GoJFoNc9skmTnn
	 5QLZ/OFSis2L1ezPwl/nbxXfl8FxobOExWE0n2hNG2ngP5z4lo/oYkt6XQSnl3MAox
	 2p66Ug0KmyKMFLlCfBUl5nfoQrgOy5R0GlKaPbM4=
Date: Sun, 17 Mar 2019 11:50:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 0/3] Staging: rtl8188eu: rtw_recv.c: fix various
 warnings and checks in rtw_recv.c.
Message-ID: <20190317105058.GF16257@kroah.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
 <20190316195619.2533-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190316195619.2533-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 01:26:19AM +0530, Sanjana Sanikommu wrote:
> This series fix the following checks. 
> fix a paranthesis issue around -> 
> fix a space issue 
> 
> Changes in v3: 
> Change the log message from the [PATCH v2 1/3] 
> Change the subject line from the [PATCH v2 2/3] 
> Change the log message from the [PATCH v2 2/3] 
> fix a overflow of 80 characters from the [PATCH v2 3/3] 
> fix a space issue around '>>' from the [PATCH v2 3/3] 
> fix a space issue around  '-' from the [PATCH v2 3/3] 
> 
> Changes in v2: 
> Remove "From" line from the [PATCH 1/3] 
> Remove "From" line from the [PATCH 2/3] 
> Remove "From" line from the [PATCH 3/3] 
> Change subject line in [PATCH 2/3] 
> Change subject line in [PATCH 3/3] 
> Change log message in [PATCH 2/3] 
> Change log message in [PATCH 3/3] 
> 
> Sanjana(3):
>   Staging: rtl8188eu: rtw_recv.c: fix a tab indent issue
>   Staging: rtl8188eu: rtw_recv.c: fix a paranthesis issue around pframe
>     -> list in rtw_recv.c
> 
>   Staging: rtl8188eu: rtw_recv.c: fix a space issue

I do not see the v4 patches sent to the list anywhere, did I miss them?

Can you please resend.

thanks,

greg k-h

