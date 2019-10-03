X-GM-THRID: 6743623075363815424
X-Received: by 2002:a37:7ac1:: with SMTP id v184mr5533000qkc.129.1570123752723;
        Thu, 03 Oct 2019 10:29:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:518b:: with SMTP id b11ls1140087qvp.5.gmail; Thu, 03 Oct
 2019 10:29:11 -0700 (PDT)
X-Received: by 2002:ad4:5812:: with SMTP id dd18mr9201670qvb.136.1570123751202;
        Thu, 03 Oct 2019 10:29:11 -0700 (PDT)
Received: by 2002:ae9:f009:0:0:0:0:0 with SMTP id l9msqkg;
        Thu, 3 Oct 2019 10:19:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxKgi1RXgklEA+nrLS1Yuu4ikAzS4CCrR2+kSjim6q2YJ4eAMUbDzV6smfyzHd6gPEO6HL6
X-Received: by 2002:a17:906:564b:: with SMTP id v11mr8460737ejr.225.1570123141527;
        Thu, 03 Oct 2019 10:19:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570123141; cv=none;
        d=google.com; s=arc-20160816;
        b=f89b7fYE2vczjBQCS9mAeNtHbnnUdxh1sR+uuy2XQLG6stgwtaoWzxICMnxRzugTvX
         6CYpI5vzLBXpb/OnTHIsMkqdZBIHm8Kdt82FiEsuri6vrq0GWPDqr4Qf/cDzfOUATJpM
         J4K8GPbmwWuGeMSsvuwCrojL3E0Op3DIb3QbyE6fvTxb9Weql5prklKUwGhWN2LyfVow
         QQx3bZDQf88Iy79RAp0BnunTLv3paWxmDwtbdXqmiPjWO1YKTp+/pqgu4hIYE+S1Idf8
         BMBssoqAnqqJY0tPg4aD5ue6XmJ6aiLQGUBvGhVz/XfBV365JBBSm9tdK6skE09umA+7
         Mmwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=VZU0upGkEA04T33xYbca1pIbPOMKlY+Pzjac+63bQXg=;
        b=RlIdxivSMpqDAHjLyzGlfwwlbTD+n+C8wsZFHbvToMMCelvv2RMxZ+txCYMIZEINfj
         uM7hu/KeeEfIrEAOHfQggu6dGfKD6X6fepUwjJvNML39UhiUUXRT+cxGgu2VBKVYlo+W
         ea+kAKwPKJSQnz9WdcUfm/B/b8oDix/C4tv3hDqxvvxCLMjSd+NTg6t8EujX6D6dhcd6
         BWkLfAb6oOu8uChn8LeSRwe2Q0ROzPGqcBFmysV93bUjnQzdDPpOVgdh+RC8GMnY2Q4s
         /Z94Her1aDeu/fnmNgGJuD2qTZNsNvjJcn6+oYx6yKnHqv7/9eTR3PkJH92YalpzqhIh
         sj1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=iv21vXTW;
       spf=pass (google.com: domain of wahrenst@gmx.net designates 212.227.15.19 as permitted sender) smtp.mailfrom=wahrenst@gmx.net
Return-Path: <wahrenst@gmx.net>
Received: from mout.gmx.net (mout.gmx.net. [212.227.15.19])
        by gmr-mx.google.com with ESMTPS id d11si153483edh.3.2019.10.03.10.19.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Oct 2019 10:19:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of wahrenst@gmx.net designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=iv21vXTW;
       spf=pass (google.com: domain of wahrenst@gmx.net designates 212.227.15.19 as permitted sender) smtp.mailfrom=wahrenst@gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1570123139;
	bh=vmfaSBojOIrI0izPfH7t3+FxXkojx1Jiu3+u/KVSSQw=;
	h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
	b=iv21vXTWNa0lhmYRMjQr12BtCjECGf94D9GXMYkjvgmCOgGJMUTpkQXONE8JVVzhA
	 MvjmVVj2lu0WegT6lTxyRPUweDcnH2LSHNj9qF0ZdV9UY269JYHoIQSSTGTV2Ilyts
	 9T3db8YXa20lYUmAibp+ZAHpP8CkbQbI0b1IqP6s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.116]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1McpNo-1hgT1F2ivK-00ZxRd; Thu, 03
 Oct 2019 19:18:59 +0200
Subject: Re: [PATCH] staging: vc04_services: Avoid NULL comparison
To: Nachammai Karuppiah <nachukannan@gmail.com>, Eric Anholt
 <eric@anholt.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
References: <1570122078-23942-1-git-send-email-nachukannan@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <adbee5e1-f2ab-778f-4682-e84b61f48611@gmx.net>
Date: Thu, 3 Oct 2019 19:18:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1570122078-23942-1-git-send-email-nachukannan@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Provags-ID: V03:K1:3CKwvmf2e5Cqz+ZiEN7ajCs6pUyZ9feXX4N5h8caFJmcSNzj+74
 qvQl0Ic7Bh/Ks8dLy8e29mOD8ucEraFbXp6Cj8pmb9JmsqjKeHpZ/wJjL407FUlha1Twlpz
 56VZkJpM3tRHVAbJn7RoydCAyxMCnJfz7Bz790zGbpPBK//piPhTwz/Ww7YhjElAsOEDKBa
 lj23c85wBgf4tKTLNYw8A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uYQUQ5UvoTI=:HTr2iWzx38iOM473zsyLop
 iWQcJUUkHMJ8suPRuoiHb1wAMIAdSMllKrUyBTSucmhd2rR+nycGHk1WQl+nIDPqCmur3eXCb
 5ySEFopLkQT8/ZEcDHMKJYdpauwgb5iP3ux6I1thBFwrCHY86KgA8U2VYBGfDvZQm9GrOopL5
 wTCNXncJEuQxv8pf/60oubl0N/OcXMiFE2eH2gABxF29bg8t0DXwrxsZDRHCMocixYyrPizdq
 JhmDIAxUK/CAP2xKAMuMEfuJhoOEBgbnoKJkqBM/7Cd9DOuuzOcPexWZc+ga466F0sheZ8gwU
 XaI8ePyYpdrlWGqm1ms9CYNOebaOsb7gK7kcoph1snemOe7CzmnPBMLo+K1jL8HAXPdzYzLlx
 CgzGFSM57MhnHpfFzz3oBZxc0N5MxqsSz/hNLElrwj7LE1zk6K5cpT6JDaPUoW0ulgVSlDXyn
 kaZhGUxUbS23llbKUJEbOKCsiv/DwNnAbB8TVBIx6PYs0vR46NRBk+6km1W6bJkiges5IXLIy
 1DVmrgpjduy2+4Y+OZLsXorwFIb0LeA0WXJZmKcSpNeF3QPLhjb8mTXQPFM0WVbYMUR+zQSbo
 xZ4UiU1VaKzy+U46s4euOL047k8HUYDOK++RHgYjAajy9XmhnKxoBOMJubC5PxVlaRGBKi5MP
 jmJ6BsAVbaxe32WBg25QYkck25+hOI+PF2PFF3iZZkm2m/96dGBj8n/0zJSW/SEUodB4vzA2A
 j3Hl6SbuSMOwsxFkVr50Ao4aJPDcVkjuR7tQg8YjbRnEnAr5SWALDK5gP9s6mIJhAA6gXmHdO
 KTGeNYDeU1wVTT9VgRmZuKkmoGH0wtb71xkPngR/dVh7ClOIiIDBXjYALP5tKr1ary6aR/Ktp
 ve8zzgzeEL9NRrQ8TBKWiQzsLBx0gjFnZNVAGBEe/DBECtGkxz+DvBZf4vYcNlAPFKNBaxRf7
 DK/efXFy9Jv0xziDs7yjawpQ/yHY8tkcBBn4+Fk7izfhlY/8YwtSrLhA4lBSTUxnAUcaH1XBa
 N9XRG5nIpMqK6ebnSzfobG1SYYT3IFQEJGDkAlXJd97HeVOM2k36OprZmE8m2w5gJV+lt2Het
 NUAF8pu4sXMyY+/RCarvMUueszMByEqF2bvjvvRDmBjEvkj7LK9cK/181rr6xGkj5KouOKaUk
 N/JIAeOUIEj8jRRPTBAQz1XZydsX2sNJ8sglKodeF96oNBylpWLVKXRMqPsel1lrFjNCdAMHT
 3jh8Gaj7Z5IOS/uY9sj7RN3RcBdLcwm7H/eyMLGPkUeZOUl2TcstWVEZjopk=

Hi Nachammai,

Am 03.10.19 um 19:01 schrieb Nachammai Karuppiah:
> Remove NULL comparison. Issue found using checkpatch.pl
>
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> ---
could you please add devel@driverdev.osuosl.org to CC?
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shi=
m.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index 17a4f2c..a2268d5 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -628,7 +628,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_h=
andle,
>  		}
>  	}
>
> -	return (service !=3D NULL) ? 0 : -1;
> +	return (service) ? 0 : -1;

Do you think the braces are still necessary in this case?

Btw a quick find -type f | xargs grep "!=3D NULL" within the
vc04_services/interface reveals more occurences. Would be nice to fix
them all and for once.

Thanks
Stefan

>  }
>  EXPORT_SYMBOL(vchi_service_open);
>

