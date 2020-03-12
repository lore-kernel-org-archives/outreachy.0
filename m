X-GM-THRID: 6802850530437627904
X-Received: by 2002:ac8:4910:: with SMTP id e16mr6984267qtq.260.1584017247505;
        Thu, 12 Mar 2020 05:47:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:34c6:: with SMTP id x64ls2168775qtd.5.gmail; Thu, 12 Mar
 2020 05:47:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuANXFbxBkwvcYhW2nZXQaOlZ1KUeho4zLDICTCyd5YvLeUD0lAgkXZOsjwl/3nAsUC6t/V
X-Received: by 2002:ac8:1762:: with SMTP id u31mr2342770qtk.359.1584017245923;
        Thu, 12 Mar 2020 05:47:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584017245; cv=none;
        d=google.com; s=arc-20160816;
        b=y5TQjl72lYIDmFiOQpQQ/TOD+ldpPFfZOWujTlj06s5cq1+cF5rJkk3ie1fbd/+zIR
         9C954bI+2Wv8FhvbqlBEACWpJPMz+HJ9uCQxvzvm0Q+ffv1Li+fhJk3U6Igo34eD/TpR
         weCOrz9/u5U9tavy1oZEw0akMwxqUKHSQDtgge3m1BFbTIdNC5sCNP9yBkEf3X81RokG
         wzgZMGyI1ofn6M1hteFWHMbSU2VAZ0+eMCMrtf47XoXtokIxPGJw6usytnudEq0oCXxD
         RqXY4mCAXSnlRN6g/J/HQ+hXpBEMUUsBVV57gY977HkYyXkWJVwbml0OrfgmMc578Y34
         UmWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=e7PUaTU6NPdeNUwMVNr+jR/3uJqIEmfG76/xbo6D6FU=;
        b=oTRMrGDpiMUUqyTAgXP7etKWp/JthChiKeSVFccEyf646yc6M9QOEI9sgHQikgYE7R
         IVlkxa7fn+I0PeC2DEtrZIGEeev2R2749QUyJ+ioPhXcGmJRjrBQLsBXNQ0MvDYiRJf4
         OkQsPaNdLVpcgZ9rx8y5w3y5zBUybcWK+eK/1s32LunevyL3D13a+hHtdDZemW8eHET2
         7scPylK/Ho8bnObofT89W2TP0ejaFVRxKT6eL3+HtRZ4GDAYeXkIaBuac0Q0fXKXG428
         AfbeqjRI4chxbi5prM8kFOlkWDbKH2ZxxwIxUzKyglh3zAN+PUe7XCQ+zusZ9K7h3k/r
         L7uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wi6qbfjD;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id n138si213639qkn.5.2020.03.12.05.47.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:47:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wi6qbfjD;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id x2so2856523pfn.9
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 05:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e7PUaTU6NPdeNUwMVNr+jR/3uJqIEmfG76/xbo6D6FU=;
        b=Wi6qbfjD4r2fZOjwUxPzEYvoA0oUHnVWqDIOdtaiNB4uy+eGMfe+7ccnpYAfnufBhd
         +QkiJl8x3cXlNbf++e4sopUWsg7Bv+5ybwrXDoE/NGWnZVXgUEfHzblUJxZHMLyMseSx
         oD811/QBSWDhJNQz/aUhzKVbv3Ux/buGnPrmVP+cQ7X87kEvnDd4FVQQR/6CmTd+kBGN
         mFUexi/eAwatLSBUi48HwUAHP45CMEcO3VHtPfg/3/vz8HjlEYGvasuYS4kRR5cnrSQW
         TgZ745n+NXf6/pwq9MZ5//f7kjgIvAAL5PKMNqTO36SrvaQv0i44S3XOI1sVWcI+0Rq2
         JdBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e7PUaTU6NPdeNUwMVNr+jR/3uJqIEmfG76/xbo6D6FU=;
        b=hZzjDdLQ1TGT90HKnA+6DGSDdu1eEGdVEC9kdSWRhr+gGteMpzLku+IaJYwIHTWbrC
         Z12X/FKB0kS6wmu7z9PxVBolh5Hae4hUtg4lek+PQbeZV3/1ASvYnvkFxVXI4ZS5WMzs
         UUgRe0rhekxfGETRUBvGl1yXhVC3KFDt2Dyhw8wiD9zN6KYG4fTNWFGbCT1uEHprlJKi
         OHvkioc7JWwY05Ofo6dQRFnq4PLKj5qjpXk6GH3Jg2On5yIaVdWMEUyjH95qGFqETyEj
         vvyq1MQL44dAZgDH4ek+6rWc5xbbk5lRn/bnKmaZV7ZeKblk+gXFidvviK7leCzcAXSR
         EXPA==
X-Gm-Message-State: ANhLgQ2AdbLH1y4IuMszd3M7t9NzOe0WKjUnurzDjJ3SXMxqCnkOaRBr
	peNyMYi29KZIrjCcK7xXf82SUCO4
X-Received: by 2002:a63:7c4:: with SMTP id 187mr7420782pgh.369.1584017244833;
        Thu, 12 Mar 2020 05:47:24 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.142.89])
        by smtp.googlemail.com with ESMTPSA id l1sm5584066pje.9.2020.03.12.05.47.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 05:47:23 -0700 (PDT)
Message-ID: <53433b4e1b0e28e1ebf25f8bb5f395f6880f39ba.camel@gmail.com>
Subject: Re: [PATCH v2] [Outreachy kernel] staging: rtl8188eu: hal: remove
 an unneeded variable
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, Larry.Finger@lwfinger.net, 
	outreachy-kernel@googlegroups.com
Date: Thu, 12 Mar 2020 18:17:17 +0530
In-Reply-To: <alpine.DEB.2.21.2003121335310.2418@hadrien>
References: <20200311073418.7476-1-payalskshirsagar1234@gmail.com>
	  <20200312082739.GA54601@kroah.com>
	 <13eb3ca2d7db751231b3a755e1609e385ce3c36a.camel@gmail.com>
	 <alpine.DEB.2.21.2003121335310.2418@hadrien>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-03-12 at 13:37 +0100, Julia Lawall wrote:
> > > Always test-build your patches so that you do not get grumpy
> > > kernel
> > > maintainers telling you to test-build your patches to prevent the
> > > build
> > > from breaking.
> > > 
> > 
> > HOW TO test-build the patches?
> 
> Compile the code and be sure you obtain a .o file for the file you
> changed.  If you don't you may need to adjust the configuration
> variables.
> 
> 
> > 
> > 
> > > Are you _SURE_ you used coccinelle for this?  If so, something is
> > > really
> > > broken as this patch is totally incorrect :(
> > > 
> > > The suggestion might be correct, but the implementation is
> > > broken.
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > 
> > Yes, I used following semantic patch to get this file for cleanup
> > @@
> > local idexpression ret;
> > expression e;
> > @@
> > 
> > -ret =
> > +return
> >      e;
> > -return ret;
> 
> The semantic patch is fine, but you also deleted the variable
> declaration.
> If you use a tool, it is best to make clear how you used it and what
> you
> did beyond what the tool said to do.
> 

I deleted the declaration because it will be of no use if I delete
other two lines which is the only use of that variable.
I am Extremly sorry, but I am not understanding what need to be done.
 

> julia
> 
> 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit 
> > https://groups.google.com/d/msgid/outreachy-kernel/13eb3ca2d7db751231b3a755e1609e385ce3c36a.camel%40gmail.com
> > .
> > 


