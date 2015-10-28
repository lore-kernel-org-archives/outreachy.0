X-GM-THRID: 6210663897171492864
X-Received: by 10.112.162.169 with SMTP id yb9mr3254200lbb.15.1446048592645;
        Wed, 28 Oct 2015 09:09:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.23.129 with SMTP id 123ls149376wmx.15.gmail; Wed, 28 Oct
 2015 09:09:52 -0700 (PDT)
X-Received: by 10.28.55.209 with SMTP id e200mr415454wma.1.1446048592184;
        Wed, 28 Oct 2015 09:09:52 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id q6si575274wiz.0.2015.10.28.09.09.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 09:09:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wmec75 with SMTP id c75so9222880wme.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 09:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=9a/v2n/1CghUR39Bnr+klK6KvvV2ZaS5m06QYNzuza4=;
        b=sU17iRJfuHqAX4EK9/gUM7LEYXcW3/adNcKeZE8QUwlLAwoCAo3XJ0c3yzLoo2wjwE
         xjBh94hp1ynL20nByqggDBYITD+PefZWCaHlpIq8MexolWat0M/K/7zMXAuI1ogS2NCj
         E6ckqPOuB5Df2E5kHhFH06vahi8hCzGFV2o1ZTtShfwf6d9/0dEC5/r23xltf9w0H0AD
         QevcajcksPYpCXNKAyWwdr4fiNC338yv/z8VN5k+Mp6Afe/traKDasY6Vlrt2za6tSf4
         YRlN5hJ0td06Owekd4Gi2m2eNQSUIIYYwTQLSsIwBsuidl4hlAqBjvIgqw4lHuZTNTZM
         euVA==
MIME-Version: 1.0
X-Received: by 10.28.46.143 with SMTP id u137mr2074572wmu.52.1446048592083;
 Wed, 28 Oct 2015 09:09:52 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Wed, 28 Oct 2015 09:09:52 -0700 (PDT)
In-Reply-To: <20151028131019.GB16810@sudip-pc>
References: <cover.1446032441.git.shivanib134@gmail.com>
	<f2a06d6455d1f322d873ec728f622162fd00d959.1446032441.git.shivanib134@gmail.com>
	<20151028131019.GB16810@sudip-pc>
Date: Wed, 28 Oct 2015 21:39:52 +0530
Message-ID: <CAKHNQQE6UVcQ9eS_pisCed4ExE4BU-KdzVGcd_T269tP8Pim2A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] Staging: wilc1000: linux_wlan:
 Replace function calls
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 28, 2015 at 6:40 PM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Wed, Oct 28, 2015 at 05:19:04PM +0530, Shivani Bhardwaj wrote:
>> Replace calls to wrapper functions with the actual functions called by
>> wrapper functions. Definitions needed to make those calls should also be=
 added.
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>
> Not build tested. :(
>
> error: implicit declaration of function =E2=80=98linux_sdio_set_speed=E2=
=80=99 [-Werror=3Dimplicit-function-declaration]
>   nwi->io_func.u.sdio.sdio_set_max_speed =3D linux_sdio_set_speed(MAX_SPE=
ED);
>
> drivers/staging/wilc1000/linux_wlan.c:990:41: warning: assignment makes p=
ointer from integer without a cast [enabled by default]
>   nwi->io_func.u.sdio.sdio_set_max_speed =3D linux_sdio_set_speed(MAX_SPE=
ED);
>
> drivers/staging/wilc1000/linux_wlan.c:991:68: error: =E2=80=98sdio_defaul=
t_speed=E2=80=99 undeclared (first use in this function)
>
> regards
> sudip

I'm really very sorry I didn't do make allmodconfig, make didn't show
me any errors at that time. In order to fix these mistakes, I'm
thinking of changing some part of code. Please check the next version.
Thank you

