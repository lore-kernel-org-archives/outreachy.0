X-GM-THRID: 6885049612383551488
X-Received: by 2002:a17:90a:7802:: with SMTP id w2mr17286632pjk.160.1603107259269;
        Mon, 19 Oct 2020 04:34:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:483:: with SMTP id 125ls3516969pfe.6.gmail; Mon, 19 Oct
 2020 04:34:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzQNYp65ryAM8eBPhHrB+Fhf7Z1hYfDpXAhIJEovOAYViQo58KC7KVi7otgqPDyghUQPz1A
X-Received: by 2002:a65:628f:: with SMTP id f15mr14382428pgv.168.1603107257668;
        Mon, 19 Oct 2020 04:34:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603107257; cv=none;
        d=google.com; s=arc-20160816;
        b=WDa/w3JAPunTSz31K0pCWkHrwel74hHB+oGXwndaHnKk6rKCgJ7TwqDPb5mTNqE0nK
         KGXwGwF/UlBmodn2lDEFUfGIxzhE1zO97P428RjUpO713MOAat4t6E48Yxbfji1AwcSP
         XgluJxjVC9fF9UIW1rzMcI65/WNnEajgf2QiM3O4i+XJUNQUwXQ9XctKQ4fMC6Ouek3P
         iRZ4YEIARvsbnAjfwqRpAhlAco8EWcdxEOSiGJasLcdbmcPHj7QcDGDA4PVBr9YoQ9rH
         r7ueDGqkaKECV/bArMq8lN1jQKDGYYw2zHNU9naMCVFTS0qQQcEnDSiIeg8TcXlgSyRP
         Hk6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature:dkim-signature;
        bh=Ukujt3sP5ixzevGD9tjQoi9P6VxtB4T7C8ZqDKKsxK4=;
        b=V9p4haAUBDjZqcXUUISj/QvkJFADaBaOH39YWGxnZ3np0jwsvzvN8QJ4DdsFvG6NRK
         HWrvub/5asAuBeGirI9E09DTVxMDOpFEsDgtOlEmDTWS9uWLkcYkwPJePUgYL4YnV+Pk
         dAeKk9cjx1SABgJbVVMrqsxwD77jqX+hzxrs/Zpm2kMVFIsqijkP6p/AJyaxB/83uVCS
         sHI+cWpEbz4vyZyPK6kfvx3LBZXXTnRDtHk+2ZsZk2j8Lc/HMMCWbvzHxA9+s0gvc4bg
         b1Kdd9/xC1pZUQUcCaEB8kWcNeLXduAzubTVdRtNMJzWun+D48HL/l9wZ+iuMRApmo8f
         SB3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b=D5nNsi9E;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=AKRebitm;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 108.166.43.65 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp65.ord1c.emailsrvr.com (smtp65.ord1c.emailsrvr.com. [108.166.43.65])
        by gmr-mx.google.com with ESMTPS id c6si603109pjo.0.2020.10.19.04.34.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2020 04:34:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of abbotti@mev.co.uk designates 108.166.43.65 as permitted sender) client-ip=108.166.43.65;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b=D5nNsi9E;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=AKRebitm;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 108.166.43.65 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
	s=20190322-9u7zjiwi; t=1603107256;
	bh=yBp9rr7OZNRF/u7GaFtOixl1IsNd9gKNYKczRfG2RCc=;
	h=Subject:To:From:Date:From;
	b=D5nNsi9EH/WEqFWYMIWqbDvk3ohHDgURKoDoiWXC1BlWQKUvDaOrWjGWrIybCjLAo
	 dmh+wer8maGKT0HQTIHUT2HWbWLISmcho1p6I9lnpVJAYqRRQLbGIJt4SnWdlV8S51
	 ZXCr+QbXvGJYGhd92062NQ0SCQ0aHY5O+uuz7J6Y=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1603107256;
	bh=yBp9rr7OZNRF/u7GaFtOixl1IsNd9gKNYKczRfG2RCc=;
	h=Subject:To:From:Date:From;
	b=AKRebitmsSqOyDIduwAl0ccKH5BxQsiDmyE01D/oY58uxE43u7PQbM8cD7BOE1ls8
	 xUzwwUKhGLoehb7DJyU9viC21GUQkDQno0n6QPQ3eHSJmsKDMTbmv5KX//qjz1YOV8
	 PNzzLC3AXORgRIuZrdcdoDmpHK6FN6nALYpxfbOg=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp1.relay.ord1c.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id E7A9B2011A;
	Mon, 19 Oct 2020 07:34:15 -0400 (EDT)
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] staging: comedi: combine split
 lines for improved readability
To: Deepak R Varma <mh12gx2825@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>, devel@driverdev.osuosl.org
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
 <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com>
 <f81a537c-c0fb-5133-52a3-825128814435@mev.co.uk>
 <alpine.DEB.2.22.394.2010191239360.2781@hadrien>
 <20201019105731.GB9681@ubuntu204>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <3bcf050c-97e4-666a-20fd-44585a913a8d@mev.co.uk>
Date: Mon, 19 Oct 2020 12:34:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201019105731.GB9681@ubuntu204>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Classification-ID: eb7ae317-66c9-4ae4-a4f2-e696b587c4ac-1-1

On 19/10/2020 11:57, Deepak R Varma wrote:
> On Mon, Oct 19, 2020 at 12:41:14PM +0200, Julia Lawall wrote:
>>
>>
>> On Mon, 19 Oct 2020, Ian Abbott wrote:
>>
>>> On 18/10/2020 20:49, Deepak R Varma wrote:
>>>> Instructions split on multiple lines can be combined on a single line
>>>> for improved readability of the code.
>>>>
>>>> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
>>>> ---
>>>>    .../staging/comedi/drivers/tests/ni_routes_test.c    | 12 ++++--------
>>>>    1 file changed, 4 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
>>>> b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
>>>> index 7db83cf5e4aa..a3b1be623861 100644
>>>> --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
>>>> +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
>>>> @@ -499,14 +499,10 @@ void test_route_register_is_valid(void)
>>>>    	const struct ni_route_tables *T = &private.routing_tables;
>>>>      	init_pci_fake();
>>>> -	unittest(!route_register_is_valid(4, O(4), T),
>>>> -		 "check for bad source 4-->4\n");
>>>> -	unittest(!route_register_is_valid(0, O(1), T),
>>>> -		 "find first source\n");
>>>> -	unittest(!route_register_is_valid(4, O(6), T),
>>>> -		 "find middle source\n");
>>>> -	unittest(!route_register_is_valid(9, O(8), T),
>>>> -		 "find last source");
>>>> +	unittest(!route_register_is_valid(4, O(4), T), "check for bad source
>>>> 4-->4\n");
>>>> +	unittest(!route_register_is_valid(0, O(1), T), "find first source\n");
>>>> +	unittest(!route_register_is_valid(4, O(6), T), "find middle
>>>> source\n");
>>>> +	unittest(!route_register_is_valid(9, O(8), T), "find last source");
>>>>    }
>>>>      void test_ni_check_trigger_arg(void)
>>>>
>>>
>>> Is it worth breaking the 80-column limit for this?
>>
>> Deepak,
>>
>> It was much nicer before.
>>
>> It can be awkward to break eg a + operation at the 80 character limit.
>> But function argument stand by themselves.
>>
>> julia
>>
> 
> Hi Julia and Ian,
> I wanted to take advantage of the relaxation of 80 column limit to 100
> columns and hence proposed combining the lines. Are you saying this is
> allowed only in certain cases?
> 
> Please confirm and I will handle it accordingly.

Hi Deepak,

80 columns is still the preferred limit.  I think the relaxation is 
mostly to avoid the need to split sub-expressions across lines in really 
ugly ways to keep within the 80 columns at the expense of readability.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

