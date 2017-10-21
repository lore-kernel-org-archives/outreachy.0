X-GM-THRID: 6478777723718205440
X-Received: by 10.28.143.13 with SMTP id r13mr141891wmd.30.1508580614273;
        Sat, 21 Oct 2017 03:10:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.141 with SMTP id y13ls641260wmh.6.canary-gmail; Sat, 21
 Oct 2017 03:10:13 -0700 (PDT)
X-Received: by 10.28.111.213 with SMTP id c82mr126283wmi.25.1508580613569;
        Sat, 21 Oct 2017 03:10:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508580613; cv=none;
        d=google.com; s=arc-20160816;
        b=q25vWTDVL5vYuI/nz/430ehTaG60nI02lpmAtBEgP2uhqdVXCt6zdveXNlKYDRdCE2
         +CqpHTtSiaJAEnbe0vmFmipyZy3wVdCCAiKe3xox9u4bhOq2/UUrKqbQM+rdpxPD6Yce
         /XqFo6XAQXiGC0aWhUzLjPbIZf5zXej00O0D32/YyIK5VORuH1Pi7Lix9QoMTSyuTc4F
         ZvWBBM2g1fbce0st2tFAq24NQc/rjEIg17cK0uXHGNyGyDrtltRiAZPJGk+GZI7tflmn
         6cY4piMqzV2FGA2YN3/j+Knwv5IuxUWJg0A5sn3bAaZhm2XE800/dsUDnRqNheot7QE+
         VntQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=TVBBLBjO0IS1mUz2KXDWiouftNNUm5J76/skziAuXfU=;
        b=LyzgWkX925qjc1YMxkBKXFjMeRfIFYeU6xcHEocU0kp8d/Pc8xuq4lr3wFWbDcVe21
         P2kfFQNKzSOyqT5pui/Gfba46eUx77zwL4WCXRNsobKP0nxGZ7UfStvg5QMNjBxs5xKx
         FZWBXKoigwQku1Ly+QcF62qGqEqxA9Bu0c8NEz6xoEZrYenVFUZwvqZydMG/LnztOy9v
         E7K6ElcNs5WJdw0Ze8LljEm1Y4GYNm3ULdVNpENqm1KRyQph6sep3aq3kHuw0YwnkbIx
         uNFUwZWb16QT4VlNjrpf+0QPcQ8NZXITl7U0XVBddLyG7J/ddHLw6NeyakLO09zSrg3E
         HfKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EfRmlj5O;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=jhovold@gmail.com
Return-Path: <jhovold@gmail.com>
Received: from mail-wm0-x229.google.com (mail-wm0-x229.google.com. [2a00:1450:400c:c09::229])
        by gmr-mx.google.com with ESMTPS id b123si24510wme.3.2017.10.21.03.10.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 03:10:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) client-ip=2a00:1450:400c:c09::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EfRmlj5O;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=jhovold@gmail.com
Received: by mail-wm0-x229.google.com with SMTP id k4so1853769wmc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Oct 2017 03:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TVBBLBjO0IS1mUz2KXDWiouftNNUm5J76/skziAuXfU=;
        b=EfRmlj5Okl7Ez5vwVxhXaKqYJAr2+gjbGcLMXNtP+4KW7z0qo6NNw7dswdKHSrKNn3
         NZdkVsNH+0jse15PDlodJte9DokNTUqkxC6GIgfT+FuKyh41MA/JsnfpaajOuB76BePF
         l26IvOzlmimZyKSYkBPEQTDC5A8cmWNr/IctfqiHxm2JMQY4gXpYnL9spyuGsfBdpr6w
         n2iu6bfB8f1f5snd/hF23fxlJX7b5beejUtIW7eSaWsLTJh25pK8wW8AdU7+kSbw/NHF
         Uhis5aRRPLCS2NQvtUDI8zVw5ZmrFBmp5B6NtRlyQ+bjWqIUKcdyA8ePKaSK4b//Wcpf
         zlww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=TVBBLBjO0IS1mUz2KXDWiouftNNUm5J76/skziAuXfU=;
        b=IKfblVQKZXTKZOqtnVLGlb8K84T9V5cZ2iE0yTZI4MXXaadJRvukYoD+NQ/am/MoLp
         wLZliQMliSASh3ydvOOoP9pUikhyVfRZF0UOt42YoHWsTIXCPGxwr2NAAuZWqhZNK2aN
         UyqN/VFuVGwMPuvARckR8zTESsaufoW4pwK/GODNblyXcYvS7nvym+AZ4sadBOcZu8ZO
         zDSIrIP7oQ78rI1ECsuOqcoBoFulkcXtiLg5lXWJrMaSylK9KAQRwClB0SaczJ5M7ZVu
         9RUMHEX57VbiI5F/7CD9WGneQycKKf84kxZyF1YFgt7vjtA5ZU2/aAlQHS+bH673MmOs
         yY3A==
X-Gm-Message-State: AMCzsaUsiRisj4jelVvXLp/S11v1Yx7RnI36IgrFfomFr4e3x1DERlR6
	hoZKFoc+i0q5bOGeGmWR0Iue9Yvt
X-Google-Smtp-Source: ABhQp+Q+N2islQAYAPfb9CKBlUnBfjA6dF0RJiVrugnZhQKPv4qc1odqkV5TwFr4ttzA3YTiFyLyAQ==
X-Received: by 10.28.173.66 with SMTP id w63mr1149731wme.17.1508580613362;
        Sat, 21 Oct 2017 03:10:13 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from pi ([62.168.35.106])
        by smtp.gmail.com with ESMTPSA id w4sm4293239wrc.17.2017.10.21.03.10.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 03:10:11 -0700 (PDT)
Sender: Johan Hovold <jhovold@gmail.com>
X-Google-Original-Sender: <johan@kernel.org>
Received: from johan by pi with local (Exim 4.89)
	(envelope-from <johan@pi>)
	id 1e5qio-0006HY-MR; Sat, 21 Oct 2017 12:09:38 +0200
Date: Sat, 21 Oct 2017 12:09:38 +0200
From: Johan Hovold <johan@kernel.org>
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
Cc: pablo@netfilter.org, Julia.Lawall@lip6.fr,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/6] staging: greybus: Remove unnecessary blank lines
Message-ID: <20171021100938.GC1226@localhost>
References: <cover.1508457306.git.frank@generalsoftwareinc.com>
 <870ff7f2e00dcc63442173183383490a0adc3169.1508457306.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <870ff7f2e00dcc63442173183383490a0adc3169.1508457306.git.frank@generalsoftwareinc.com>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Thu, Oct 19, 2017 at 08:06:48PM -0400, Frank A. Cancio Bello wrote:
> Remove unnecessary blank lines to reduce file length and address
> checkpatch messages:
> CHECK: Please don't use multiple blank lines
> CHECK: Blank lines aren't necessary before a close brace '}'
> 
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---

> diff --git a/drivers/staging/greybus/connection.c b/drivers/staging/greybus/connection.c
> index 2cf6464..cb96877 100644
> --- a/drivers/staging/greybus/connection.c
> +++ b/drivers/staging/greybus/connection.c
> @@ -12,17 +12,13 @@
>  #include "greybus.h"
>  #include "greybus_trace.h"
>  
> -
>  #define GB_CONNECTION_CPORT_QUIESCE_TIMEOUT	1000
>  
> -
>  static void gb_connection_kref_release(struct kref *kref);
>  
> -
>  static DEFINE_SPINLOCK(gb_connections_lock);
>  static DEFINE_MUTEX(gb_connection_mutex);
>  
> -

Here double newlines are used to separate and group defines, function
prototypes, and static variables, which is perfectly fine.

Johan

