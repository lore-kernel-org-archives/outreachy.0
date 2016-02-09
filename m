X-GM-THRID: 6249320187876605952
X-Received: by 10.50.59.212 with SMTP id b20mr4854232igr.5.1455034739718;
        Tue, 09 Feb 2016 08:18:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.93 with SMTP id i90ls2174350iod.41.gmail; Tue, 09 Feb
 2016 08:18:59 -0800 (PST)
X-Received: by 10.66.218.40 with SMTP id pd8mr32666165pac.45.1455034739294;
        Tue, 09 Feb 2016 08:18:59 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u66si5354398pfa.2.2016.02.09.08.18.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 08:18:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EF9451036;
	Tue,  9 Feb 2016 16:18:58 +0000 (UTC)
Date: Tue, 9 Feb 2016 08:18:58 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Rakhi Sharma <rakhish1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia.Lawall@lip6.fr
Subject: Re: [PATCH] drivers: staging: lustre: lustre: lov: lov_request:
 Fixed a coding style warning.
Message-ID: <20160209161858.GB28133@kroah.com>
References: <1455033212-16140-1-git-send-email-rakhish1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455033212-16140-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 09, 2016 at 09:23:32PM +0530, Rakhi Sharma wrote:
> Fixed a coding style warning.
> WARNING: braces {} are not necessary for single statement blocks
> 
> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lov/lov_request.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/lov/lov_request.c b/drivers/staging/lustre/lustre/lov/lov_request.c
> index 42deda7..c77b987 100644
> --- a/drivers/staging/lustre/lustre/lov/lov_request.c
> +++ b/drivers/staging/lustre/lustre/lov/lov_request.c
> @@ -340,9 +340,8 @@ int lov_fini_destroy_set(struct lov_request_set *set)
>  	if (set == NULL)
>  		return 0;
>  	LASSERT(set->set_exp);
> -	if (atomic_read(&set->set_completes)) {
> +	if (atomic_read(&set->set_completes))
>  		/* FIXME update qos data here */
> -	}

As Julia pointed out, you just changed the logic in the code :(


