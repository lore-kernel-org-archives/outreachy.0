X-GM-THRID: 6885049612383551488
X-Received: by 2002:a63:4661:: with SMTP id v33mr13989269pgk.163.1603102949138;
        Mon, 19 Oct 2020 03:22:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b093:: with SMTP id p19ls1809127plr.2.gmail; Mon, 19
 Oct 2020 03:22:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwBVlOQyAla52Z5NgCbmCJWIA+ecUPFCDG7Gh2IPrYvMW7sO+XHgKSxHQy2KfJ03WuHtmmR
X-Received: by 2002:a17:90b:ecb:: with SMTP id gz11mr16912189pjb.25.1603102947734;
        Mon, 19 Oct 2020 03:22:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603102947; cv=none;
        d=google.com; s=arc-20160816;
        b=CHP8al/U6KECtCDj5JM0w8G/Var5tmiyyVl8bboIvoaStd6kP9LcVC/DSDlBq7RWc6
         y7mRYk+l/Fv9P+J/zf3e3U/hAqYdVXP89D/Bjhe5dTMTJwtmU2s7pvhnQHuvIYHp8RDs
         /d4gDfQSWVkWaZK0Xrcie7t6fwsjjBI7IvimWXRhyrcimiaAuXUaQE4ohZOpMDLWMo/j
         mFZ7TspprMS/OpqJOGQsmnC0xhAYM6fn7qxs23132AW0ytGaYMAkiZyptQ4LLnMg4SLa
         haPkCxHGGCpKWBav1iseSQ11bKInt+sivzkw8jV5Xgn9yd0elF9YrGanANCJo+PopyyD
         VhjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:to:subject
         :dkim-signature:dkim-signature;
        bh=0N6AvWmBJZEF4DII3exuS7DcklFwCVBL9zc8AAvfTsw=;
        b=Wju9LR5f/CrFW08dYT1XNsFbBsKrC64+RRDOCd6v9KZVuZ+3fQ8/qRni5sfsB5BbnF
         fyxQSKUkqselg5oeoHP5QrDgJRH/TLHOZw12Bfvu/DQZZ1XlaMFOzgVUF1obn2tWCYNm
         bz54DSkdzi+B/8xZuNDXGolNI68H8pIu/Ci9Br/huvTOgF9cPh2is1QasJf+v0O150Oe
         kj4SZwetklVobPK8r2Pb4B1ZLnGYyKirj8upUPuuV6C2EZ/g9DQGnmDp85+rHHVyfJ//
         eXbk0diG1ddpEl6DOvm5wacsmOpc7FceppytXwGRiVJ/AMezOHIw6KyAVxB6zLubiBS5
         N0aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b="OC/i2OBF";
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=SaZkHHfU;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 108.166.43.83 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp83.ord1c.emailsrvr.com (smtp83.ord1c.emailsrvr.com. [108.166.43.83])
        by gmr-mx.google.com with ESMTPS id 100si126709pjo.3.2020.10.19.03.22.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2020 03:22:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of abbotti@mev.co.uk designates 108.166.43.83 as permitted sender) client-ip=108.166.43.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b="OC/i2OBF";
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=SaZkHHfU;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 108.166.43.83 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
	s=20190322-9u7zjiwi; t=1603102946;
	bh=2zdV9GD+mJPGO9A/oz/bHJv/mqP1TIedJuYm0deYQzg=;
	h=Subject:To:From:Date:From;
	b=OC/i2OBFieTXdxuRartjpbWERkudm/M6LocT/vUnQ8b+kVFNUAFynajhtugEZu9eq
	 BLQpv6hST8EfLgxBUaMJ7GkTM82e9qG6PZxkplXMCosebr3JHZ07paxtsz6upEu0SA
	 cf39hLhQkUx/F7E0vl61rHuBOtiYsyI7eG4ULM7I=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1603102946;
	bh=2zdV9GD+mJPGO9A/oz/bHJv/mqP1TIedJuYm0deYQzg=;
	h=Subject:To:From:Date:From;
	b=SaZkHHfUotTIJgymH5+Vd+QB+aTCGdhfpElHzFnVWx5dqTXFK/oQNGs+GCNR99B67
	 r8mpsILzV7PWPwntFZ3g0vbjXb9VXCUeZ8PQWBKs87s14QALBW+hnc3XabYqmzeMU6
	 jpKecUJDFkaewTrzxhVJ5dXAIQ0lOuLSqHntalnw=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp27.relay.ord1c.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 1836C4016E;
	Mon, 19 Oct 2020 06:22:25 -0400 (EDT)
Subject: Re: [PATCH 2/2] staging: comedi: combine split lines for improved
 readability
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>, devel@driverdev.osuosl.org
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
 <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <f81a537c-c0fb-5133-52a3-825128814435@mev.co.uk>
Date: Mon, 19 Oct 2020 11:22:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Classification-ID: 6637e444-76ae-4a51-b9ca-2924c296f361-1-1

On 18/10/2020 20:49, Deepak R Varma wrote:
> Instructions split on multiple lines can be combined on a single line
> for improved readability of the code.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>   .../staging/comedi/drivers/tests/ni_routes_test.c    | 12 ++++--------
>   1 file changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> index 7db83cf5e4aa..a3b1be623861 100644
> --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> @@ -499,14 +499,10 @@ void test_route_register_is_valid(void)
>   	const struct ni_route_tables *T = &private.routing_tables;
>   
>   	init_pci_fake();
> -	unittest(!route_register_is_valid(4, O(4), T),
> -		 "check for bad source 4-->4\n");
> -	unittest(!route_register_is_valid(0, O(1), T),
> -		 "find first source\n");
> -	unittest(!route_register_is_valid(4, O(6), T),
> -		 "find middle source\n");
> -	unittest(!route_register_is_valid(9, O(8), T),
> -		 "find last source");
> +	unittest(!route_register_is_valid(4, O(4), T), "check for bad source 4-->4\n");
> +	unittest(!route_register_is_valid(0, O(1), T), "find first source\n");
> +	unittest(!route_register_is_valid(4, O(6), T), "find middle source\n");
> +	unittest(!route_register_is_valid(9, O(8), T), "find last source");
>   }
>   
>   void test_ni_check_trigger_arg(void)
> 

Is it worth breaking the 80-column limit for this?

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

