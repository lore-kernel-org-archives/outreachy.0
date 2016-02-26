X-GM-THRID: 6253815100366389248
X-Received: by 10.66.146.231 with SMTP id tf7mr43853344pab.6.1456468506979;
        Thu, 25 Feb 2016 22:35:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.194 with SMTP id 60ls737188qgf.81.gmail; Thu, 25 Feb
 2016 22:35:06 -0800 (PST)
X-Received: by 10.13.216.150 with SMTP id a144mr43443816ywe.52.1456468506443;
        Thu, 25 Feb 2016 22:35:06 -0800 (PST)
Return-Path: <bounce-md_30481620.56cff21a.v1-e713b630c5fc4896aa06958b0f6ada65@mandrillapp.com>
Received: from mail132-22.atl131.mandrillapp.com (mail132-22.atl131.mandrillapp.com. [198.2.132.22])
        by gmr-mx.google.com with ESMTPS id v197si789994ywa.1.2016.02.25.22.35.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 22:35:06 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56cff21a.v1-e713b630c5fc4896aa06958b0f6ada65@mandrillapp.com designates 198.2.132.22 as permitted sender) client-ip=198.2.132.22;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56cff21a.v1-e713b630c5fc4896aa06958b0f6ada65@mandrillapp.com designates 198.2.132.22 as permitted sender) smtp.mailfrom=bounce-md_30481620.56cff21a.v1-e713b630c5fc4896aa06958b0f6ada65@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=MrXNNZF994o0zOR96G6NgKwRS5c=;
 b=TCq4QLnv8XoLNwWuZcGZtpNgip5Mk5AsKIWXGVx9/y0qUKZJXQnZiKGCvfpk4yGLnT/zKhxlt9xl
   kiBBtTJGkRpbUJDNwTogPBb6PcCUo4ek5loguWF9KCquQAsxoWpgcfdcsQyYnwMnLkLFu/V6KSEp
   8XuHvRi7Fu8hEouCK6Y=
Received: from pmta02.mandrill.prod.atl01.rsglab.com (127.0.0.1) by mail132-22.atl131.mandrillapp.com id hpvp1k1sar8v for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 06:35:06 +0000 (envelope-from <bounce-md_30481620.56cff21a.v1-e713b630c5fc4896aa06958b0f6ada65@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456468506; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=it10lkECTOXSh0HXE8Hu5bcJoyz5/id8T25frhybMJ4=; 
 b=V4nfbSQaWpIfpUvszIPf6l3GsVLsPGr00h4qYD0T1eV3KrIUeC/aEfJVkf2Cs2cXT8AFvS
 ipxaO1ljYpYLz+tp4Na8nZBno/xJ8Y3qFn78NTEYmsNVIEem52lmb55AbVB8CP1zH3tECeR9
 gWiks23rDyYwF+04F90xdN0iMCiaA=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2 4/4] staging: most: hdm-dim2: Use macro DIV_ROUND_UP
Return-Path: <bounce-md_30481620.56cff21a.v1-e713b630c5fc4896aa06958b0f6ada65@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id e713b630c5fc4896aa06958b0f6ada65; Fri, 26 Feb 2016 06:35:06 +0000
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160226063505.GA13799@kroah.com>
References: <20160222122906.GA16722@Karyakshetra>
In-Reply-To: <20160222122906.GA16722@Karyakshetra>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.e713b630c5fc4896aa06958b0f6ada65
X-Mandrill-User: md_30481620
Date: Fri, 26 Feb 2016 06:35:06 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Mon, Feb 22, 2016 at 05:59:06PM +0530, Bhaktipriya Shridhar wrote:
> The macro DIV_ROUND_UP performs the computation
> (((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
> This was done using the coccinelle script:
> @@
> expression e1;
> expression e2;
> @@
> (
> - ((e1) + e2 - 1) / (e2)
> + DIV_ROUND_UP(e1,e2)
> |
> - ((e1) + (e2 - 1)) / (e2)
> + DIV_ROUND_UP(e1,e2)
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
>    - None for this file.
>  drivers/staging/most/hdm-dim2/dim2_hal.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/most/hdm-dim2/dim2_hal.c b/drivers/staging/most/hdm-dim2/dim2_hal.c
> index 3c52450..03da89e 100644
> --- a/drivers/staging/most/hdm-dim2/dim2_hal.c
> +++ b/drivers/staging/most/hdm-dim2/dim2_hal.c
> @@ -120,7 +120,7 @@ static int alloc_dbr(u16 size)
>  		return DBR_SIZE; /* out of memory */
> 
>  	for (i = 0; i < DBR_MAP_SIZE; i++) {
> -		u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
> +		u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
>  		u32 mask = ~((~(u32)0) << blocks);
> 
>  		do {
> @@ -140,7 +140,7 @@ static int alloc_dbr(u16 size)
>  static void free_dbr(int offs, int size)
>  {
>  	int block_idx = offs / DBR_BLOCK_SIZE;
> -	u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
> +	u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
>  	u32 mask = ~((~(u32)0) << blocks);
> 
>  	mask <<= block_idx % 32;

This patch breaks the build :(

ALWAYS test-build your patches.

greg k-h

