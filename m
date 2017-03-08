X-GM-THRID: 6393699904957448192
X-Received: by 10.107.26.6 with SMTP id a6mr1920310ioa.23.1488971499202;
        Wed, 08 Mar 2017 03:11:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.107.18 with SMTP id v18ls3956724itc.7.canary-gmail; Wed, 08
 Mar 2017 03:11:38 -0800 (PST)
X-Received: by 10.107.39.15 with SMTP id n15mr1941975ion.45.1488971498315;
        Wed, 08 Mar 2017 03:11:38 -0800 (PST)
Received: by 10.202.96.85 with SMTP id u82msoib;
        Wed, 8 Mar 2017 02:23:32 -0800 (PST)
X-Received: by 10.13.199.132 with SMTP id j126mr2500254ywd.120.1488968612371;
        Wed, 08 Mar 2017 02:23:32 -0800 (PST)
Return-Path: <abbotti@mev.co.uk>
Received: from smtprelay.hostedemail.com (smtprelay0040.hostedemail.com. [216.40.44.40])
        by gmr-mx.google.com with ESMTPS id f73si636884ita.1.2017.03.08.02.23.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 02:23:32 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.40 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) client-ip=216.40.44.40;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.40 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 89E08352015;
	Wed,  8 Mar 2017 10:23:31 +0000 (UTC)
X-Session-Marker: 69616E406162626F74742E6F7267
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,abbotti@mev.co.uk,:::::::::::::::::,RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1261:1263:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1541:1593:1594:1683:1711:1730:1747:1777:1792:1801:2393:2525:2560:2563:2612:2682:2685:2859:2933:2937:2939:2942:2945:2947:2951:2954:3000:3022:3138:3139:3140:3141:3142:3352:3865:3867:3871:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4605:5007:7514:7652:9025:10004:10400:10848:11232:11657:11658:11914:12043:12555:12740:12760:12895:12986:13069:13311:13357:14096:14097:14181:14571:14685:14721:14764:14777:21080:21451:30021:30054,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:4,LUA_SUMMARY:none
X-HE-Tag: kiss61_58c02bc39be53
X-Filterd-Recvd-Size: 2195
Received: from [10.0.0.53] (unknown [81.133.34.160])
	(Authenticated sender: ian@abbott.org)
	by omf12.hostedemail.com (Postfix) with ESMTPA;
	Wed,  8 Mar 2017 10:23:29 +0000 (UTC)
Subject: Re: [PATCH v1 3/3] staging: comedi: Replace "is is" with "is"
To: simran singhal <singhalsimran0@gmail.com>
References: <1488649261-10261-1-git-send-email-singhalsimran0@gmail.com>
 <1488649261-10261-4-git-send-email-singhalsimran0@gmail.com>
Cc: hsweeten@visionengravers.com, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, johan@kernel.org,
 dtwlin@gmail.com, outreachy-kernel@googlegroups.com,
 greybus-dev@lists.linaro.org
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <26e85ee0-84ed-5bd3-2140-f21b05c636d1@mev.co.uk>
Date: Wed, 8 Mar 2017 10:23:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <1488649261-10261-4-git-send-email-singhalsimran0@gmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/03/17 17:41, simran singhal wrote:
> This patch replace "is is " with "is". The replacement couldn't be
> automated because sometimes the first "is" was meant to be another
> word.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
>  drivers/staging/comedi/drivers/ni_usb6501.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/comedi/drivers/ni_usb6501.c b/drivers/staging/comedi/drivers/ni_usb6501.c
> index 5036eeb..9a0a963 100644
> --- a/drivers/staging/comedi/drivers/ni_usb6501.c
> +++ b/drivers/staging/comedi/drivers/ni_usb6501.c
> @@ -45,7 +45,7 @@
>   *	byte 3 is the total packet length
>   *
>   *	byte 4 is always 00
> - *	byte 5 is is the total packet length - 4
> + *	byte 5 is the total packet length - 4
>   *	byte 6 is always 01
>   *	byte 7 is the command
>   *
>

Looks good.

Reviewed-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

