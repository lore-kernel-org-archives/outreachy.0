X-GM-THRID: 6885049612383551488
X-Received: by 2002:ab0:240a:: with SMTP id f10mr6809825uan.27.1603102661776;
        Mon, 19 Oct 2020 03:17:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:2442:: with SMTP id g2ls584558uan.8.gmail; Mon, 19 Oct
 2020 03:17:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxpHPQiMwFURIVcEMb/GBOe8/pi0NmC0AslezH9oEC8to8xjNlvLyR93idYoz92yNjXwqEB
X-Received: by 2002:ab0:2793:: with SMTP id t19mr7322342uap.40.1603102660390;
        Mon, 19 Oct 2020 03:17:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603102660; cv=none;
        d=google.com; s=arc-20160816;
        b=vvquMp3OdUVjjMKX17AO5yKVR8JfTDMKjqZZGyI5qOE+vdfR5aMjJM6Fa3R7+AEHjo
         bmD+kyiVcHMbXtGdgzFpOwvwPKngrEaC5Xx6j9Zhe/qdTbGY/d2PpFIbLbb9ibFLp+ly
         0tJQK8yq0jV88+6lCQLmg0khAXbeJcetMxapJ9WaHYNlOfTJ5leDyHRnbhct2z9Iie+3
         RtfVM+ptxqqW4LpZPn28PnhFyTlgxdXhtHqikgMS7ZN2FfMpj31vIqpJmH0zlhORxEop
         E9VGaoqYd6XGOJ4EC/QR6V6dowcDspLqAFS/QlHyb587JeSnmZx38qliZZIfd8TLMF7e
         7TGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:to:subject
         :dkim-signature:dkim-signature;
        bh=A6Rl4OLdXh9CoGbCXs2tmi0EO2fI6oHh5Y+wzJW+8R8=;
        b=FVc7M4ZiZT3CxfS8CLSv8VzYuZrRDlV/VF/MijpW7Ae5ZzLHKPWPavfcfvaleLX1Kx
         FeAbnrawxFORmZNicp1gxpB6oehGnn/F4sRckrhvbGiCtv/oMZ4Em6BWcEwAthT1aLAe
         2LSoLfokf2aFph1OOM5pjCvZl2XGlxiCvqJmXkUz5y6iXhYnX/3RMtIGYMAdcraf5wC4
         GbIQ4DAsk2HsBGNrIKZNFho/Erz/S9HBAMKgzTuoITCZgpKVSdpBJMrVjSWPY4MN/LUQ
         i6ilqh2/4AyFvd4UxI1yuVVjjbxp1ltbXftzYI1QtQvGnhT6A/6sBW27eiY8C5Ekg/v+
         JBqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b=VBPPvwww;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=TUXtbTdx;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 108.166.43.73 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp73.ord1c.emailsrvr.com (smtp73.ord1c.emailsrvr.com. [108.166.43.73])
        by gmr-mx.google.com with ESMTPS id b16si220552vkn.5.2020.10.19.03.17.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2020 03:17:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of abbotti@mev.co.uk designates 108.166.43.73 as permitted sender) client-ip=108.166.43.73;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b=VBPPvwww;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=TUXtbTdx;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 108.166.43.73 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
	s=20190322-9u7zjiwi; t=1603102659;
	bh=Q38jMMHGA8QbxKliO/kHA3t7E+8f9zj7tr41kGV64vY=;
	h=Subject:To:From:Date:From;
	b=VBPPvwwwEAxSKShtPtQO/3I7T6OpVa/591EEoRb4aeMlScPYZlvRpptoeH/hqtPQf
	 RcIofsxQ7I/Q4ooOoR64tHqYMz9bjM96XTnFCCcxrsEExYfkhrs0VEg8lCs2QWhwM1
	 DWgz6igDlgLH6jpcoeZiw6MYdKdtv4uj6hfPJpBU=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1603102659;
	bh=Q38jMMHGA8QbxKliO/kHA3t7E+8f9zj7tr41kGV64vY=;
	h=Subject:To:From:Date:From;
	b=TUXtbTdx5/QZLvxV2e2Ezy6ko7O/7XDV/zBpL/vmaFngE/BaSlPxI5coHzS+KCD8O
	 AHc1b31pHl4cduGozTodk7Nbqun4OuKibW+u6EpOjA7BBYEKr0qyLk6IGlnkHCQbks
	 Fmg2K9ObrSJZN3LJpJaiVyum3o6yT/Bvo3rn84rg=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp2.relay.ord1c.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 011EBC00F9;
	Mon, 19 Oct 2020 06:17:38 -0400 (EDT)
Subject: Re: [PATCH 1/2] staging: comedi: Simplify conditional evaluation
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>, devel@driverdev.osuosl.org
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <90da78e2-eaa3-1174-744e-5ab6a49eb338@mev.co.uk>
Date: Mon, 19 Oct 2020 11:17:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Classification-ID: 51a88216-630d-4d21-a8d2-7f481d9ad21c-1-1

On 18/10/2020 20:48, Deepak R Varma wrote:
> Boolean comparison of the condition inside unittest function is
> unnecessary and can be simplified by directly using the condition
> outcome for evaluation. Issue reported by :
> scripts/coccinelle/misc/boolinit.cocci
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>   drivers/staging/comedi/drivers/tests/ni_routes_test.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> index eaefaf596a37..7db83cf5e4aa 100644
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
> +	unittest(!route_register_is_valid(0, O(1), T),
>   		 "find first source\n");
> -	unittest(route_register_is_valid(4, O(6), T) == true,
> +	unittest(!route_register_is_valid(4, O(6), T),
>   		 "find middle source\n");
> -	unittest(route_register_is_valid(9, O(8), T) == true,
> +	unittest(!route_register_is_valid(9, O(8), T),
>   		 "find last source");
>   }

NAK.

It looks like you have inadvertently inverted some of the tests.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

