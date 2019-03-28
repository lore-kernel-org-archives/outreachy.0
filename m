X-GM-THRID: 6673486345256566784
X-Received: by 2002:a1c:a98f:: with SMTP id s137mr106580wme.14.1553799075871;
        Thu, 28 Mar 2019 11:51:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c403:: with SMTP id k3ls589969wmi.2.gmail; Thu, 28 Mar
 2019 11:51:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwriWVLxAfo86TMUFu1dvvDIzvMKW8ZZ13VYKrr6PazLTAH2uhJhXNlgYvhmgrBYaRCesy9
X-Received: by 2002:a1c:48c4:: with SMTP id v187mr111974wma.2.1553799075096;
        Thu, 28 Mar 2019 11:51:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553799075; cv=none;
        d=google.com; s=arc-20160816;
        b=MNctC5Er857vafcHQM9cMhtgsKBRhFKenXIGUk3jkxrxEIMOezy2mxN401zUIoUncU
         ZgB/PTyzx2f3f8SXBRaT3pM3VPxXR7gK0se9F7bqxD8zV3z5r5/EPT+1EuGJjRnPm7Nn
         e3NlnCXlhOrCWuWJXnxfRNwD5bo5inhii/bDuEN6d0QL+mv3oLpjLVbp+MJ3IgMXBd2X
         HhoJCtDH2Xn6iLyIgXyRoZBk0hZ2aS0GVmHupZo3mONS5aOYaauiF78MmKVkwa5fpRu8
         S/k0DFVsslrqMrna5SXYOoj1YUXSRvlpW2Og2Ypl8p07b+Ni5y+McfgUIfdmW6lXjrtB
         l0Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=PC4R/hOcGWtQs64b52yZgPfZWxiFEq0bmQKW1vEO48A=;
        b=0S4ZQAFxcIsh04ONU2kxFqkSdxtmgsc5pZHhwmVwNBBfavngvZJKbkTiVWfSkiPHbV
         jCRniVzt5fqQ2VRqRWHKWYuFd74WtQbSociI+HXSHAScJi9FJGMD3kYN9wTsn8zAwWv+
         a1CgWXUexENdijHR0QvgftTuTw8dLzDAgpb6ZPSAEkbNnhbLXsNCiRXWr/Z3H2U7j0Py
         tCo780LOnnX/dmAkrSJRENMfQNgMfXeRDHXcJ/rtXjcZ8EYd/2k4Z92zaj14JyppccMm
         z8OrAs4CI4mWjdIPbnpRCTax4AzbaCWdMdHS8nzMtlyTVgQveSiYzhtOQF+kdLEMBONy
         T+JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n65si159791wma.1.2019.03.28.11.51.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:51:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,281,1549926000"; 
   d="scan'208";a="376227008"
Received: from unknown (HELO hadrien) ([94.134.122.206])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Mar 2019 19:51:14 +0100
Date: Thu, 28 Mar 2019 19:51:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: erofs: unzip_vle.c: Remove
 unnecessary parenthesis.
In-Reply-To: <20190328165508.17702-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903281950280.2760@hadrien>
References: <20190328165508.17702-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Mar 2019, Sanjana Sanikommu wrote:

> Challenge suggested by coccinelle.
> Reomove unnecessary parenthesis around the right hand
> of the assignment using the below script.
>
> @@
> local idexpression id;
> expression e;
> @@
>
> id =
> -(
> e
> -)
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/erofs/unzip_vle.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
> index 8715bc50e09c..03b9c0f256fe 100644
> --- a/drivers/staging/erofs/unzip_vle.c
> +++ b/drivers/staging/erofs/unzip_vle.c
> @@ -870,7 +870,7 @@ static inline void z_erofs_vle_read_endio(struct bio *bio)
>  		 * If mc has not gotten, it equals NULL,
>  		 * however, page->mapping never be NULL if working properly.
>  		 */
> -		cachemngd = (page->mapping == mc);
> +		cachemngd = page->mapping == mc;

There is a feeling that it is better to keep the parentheses when the
right side of the assignment involved ==, so that it doesn't look like a
double assignment.

julia

>  #endif
>
>  		if (unlikely(err))
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190328165508.17702-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

