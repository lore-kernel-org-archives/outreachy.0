X-GM-THRID: 6885049612383551488
X-Received: by 2002:a17:902:501:b029:d2:628a:d59f with SMTP id 1-20020a1709020501b02900d2628ad59fmr515965plf.43.1603126304669;
        Mon, 19 Oct 2020 09:51:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:941a:: with SMTP id m26ls94331pge.10.gmail; Mon, 19 Oct
 2020 09:51:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy4QGcawCAC7XYRJ+PZIev5wShWQFsVO23mOcBemqyOJ52gkrSOKvDKreJ8148P+fczlfII
X-Received: by 2002:a62:16cd:0:b029:156:13fd:b8d3 with SMTP id 196-20020a6216cd0000b029015613fdb8d3mr495154pfw.32.1603126302171;
        Mon, 19 Oct 2020 09:51:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603126302; cv=none;
        d=google.com; s=arc-20160816;
        b=Cbc2hCnt2e2TkW13YyIVcmUpHu/3AdtVMIok6nd/ofYygJsxhUa9oeQ1Gi+jrsDG02
         SuESY9gOMtW3GoLcf6SHOSMQNGeP4ivqBGb35MZAfTlAKNwmZYhzSwRAjGeUgbZCFubj
         3kRg3Ha6U8uFnU5Ny6T8Il3+US7G3Nc4bYgWtXT3zh4LewqETBRev4LG6OScr4Xw6udx
         juP7w0MSyk/QCkCDZuBZzfpyyTe5AuKkYVr87iLrvnPBWVjRs1J1RzFhxyhRCDJ2s4k0
         OMTVICDol+Jql4zDR8ePXgGzi9qidw3Ayk6r7XkO/I8mPgTmts8sw+NRzDemQa7Q97zq
         xRaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:to:subject
         :dkim-signature:dkim-signature;
        bh=bCPLnx3tzGNHaUBi55Tsjo9XqgsytKMDJFAVlu7qFtI=;
        b=WCEKHFDfqYzbW0+Dfih+dTvpSII/21ffqViIG3anXn5K22UV4RX1Mvlw46tAsvVDuA
         vvXbesW9eE6NQngT8tTN/v4fQUg2+zOemt+b/C2HGN0466S6zc3l8/Osl6KI1/drExCe
         kxcGq5rjutgYKE02GmvhPhF4eThkkF3hHxgvF+aHqg0XBmbyBf51HzLdhGM25Kj9FRe+
         eWhXW1DjxyP9BcBYGqu1BM4lRWuhvK+qp3Bo8rmjEAMAXxR/X6AlztC64FFIHVBT+3JK
         0lyIlDIAQiD17HLGlqLtj1gigZnvLTRw3s5wu8IoSRSRwECe53CNUqnACqp0UFNROy32
         k7nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b=EHzjcGUv;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=dShLW6Rp;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 184.106.54.85 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp85.ord1d.emailsrvr.com (smtp85.ord1d.emailsrvr.com. [184.106.54.85])
        by gmr-mx.google.com with ESMTPS id f189si54290pgc.4.2020.10.19.09.51.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2020 09:51:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of abbotti@mev.co.uk designates 184.106.54.85 as permitted sender) client-ip=184.106.54.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b=EHzjcGUv;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=dShLW6Rp;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 184.106.54.85 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
	s=20190322-9u7zjiwi; t=1603126301;
	bh=3Q6VFIOab6QbYf0EHuK9W1ka1jjWifrhFivk7Z9q2Xk=;
	h=Subject:To:From:Date:From;
	b=EHzjcGUv+K4CEHuxxa2ekq67i7uxP9EfmUkF3p/mjyZdgtluuR2leFbU0jIIarbWB
	 yiAcWcZg7bPmCaf3zTQAEmspUEWMFDGc+kQ838oYeiT/Hh9gKGA3K0MplOf+AeeNOh
	 5nC16HQZe4qnj8r3iuM8FhFQZrIszrnqYSRPQhw8=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1603126301;
	bh=3Q6VFIOab6QbYf0EHuK9W1ka1jjWifrhFivk7Z9q2Xk=;
	h=Subject:To:From:Date:From;
	b=dShLW6RpUVkWgaAi6z9vFriz8TGzDofOP8Adl3HR+2ZVhzWSA4hY13TfULGY5V7ui
	 2fOS60p9fPJ3V9ij5b0Drno6tb+urFnzrWHRwGOIAuCSzacLvI3D4zVJHLLOzF5nzG
	 D5GTRWd9wDXRnrf4I92hyQVVbxYssvhaVINN6tMM=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp11.relay.ord1d.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 87DEA6018C;
	Mon, 19 Oct 2020 12:51:40 -0400 (EDT)
Subject: Re: [PATCH v2] staging: comedi: Simplify conditional evaluation
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>, devel@driverdev.osuosl.org
References: <20201019144509.GA23282@ubuntu204>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <eb66ef80-da64-8935-253d-83dc348018e5@mev.co.uk>
Date: Mon, 19 Oct 2020 17:51:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201019144509.GA23282@ubuntu204>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Classification-ID: 664b0a13-3592-44d1-bcf3-db7a1ed91ced-1-1

On 19/10/2020 15:45, Deepak R Varma wrote:
> Boolean comparison of the condition inside unittest function is
> unnecessary and can be simplified by directly using the condition
> outcome for evaluation. Issue reported by :
> scripts/coccinelle/misc/boolinit.cocci
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> 
> Changes since v1:
>     - Corrected wrongly inverted tests. Feedback from Ian Abbott.
>     - Note:
>         This patch was sent earlier as part of a patch set containing 2
>         patches. The second patch of the patch set is dropped. Hence
>         sending this standalone patch as v2 version. This is based on the
>         feedback from Ian Abbott and Julia L.
> 
>   drivers/staging/comedi/drivers/tests/ni_routes_test.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> index eaefaf596a37..4061b3b5f8e9 100644
> --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> @@ -499,13 +499,13 @@ void test_route_register_is_valid(void)
>   	const struct ni_route_tables *T = &private.routing_tables;
>   
>   	init_pci_fake();
> -	unittest(route_register_is_valid(4, O(4), T) == false,
> +	unittest(!route_register_is_valid(4, O(4), T),
>   		 "check for bad source 4-->4\n");
> -	unittest(route_register_is_valid(0, O(1), T) == true,
> +	unittest(route_register_is_valid(0, O(1), T),
>   		 "find first source\n");
> -	unittest(route_register_is_valid(4, O(6), T) == true,
> +	unittest(route_register_is_valid(4, O(6), T),
>   		 "find middle source\n");
> -	unittest(route_register_is_valid(9, O(8), T) == true,
> +	unittest(route_register_is_valid(9, O(8), T),
>   		 "find last source");
>   }
>   
> 

Looks OK to me.  I have a minor quibble about the patch title.  Maybe 
change the tags to "staging: comedi: tests:" to narrow down the scope.

Reviewed-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

