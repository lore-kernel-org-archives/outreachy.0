X-GM-THRID: 6949121475424026624
X-Received: by 2002:a5d:65ca:: with SMTP id e10mr36855676wrw.331.1618324101749;
        Tue, 13 Apr 2021 07:28:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:9a6:: with SMTP id w38ls1483411wmp.2.gmail; Tue, 13
 Apr 2021 07:28:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwZU8wRyYJHpAG7w+5+tKLIxMLaFr96g9KcJX4LYYdMjoIEBfbMjt2Xj02Cnouc+j0bFxBK
X-Received: by 2002:a7b:cd95:: with SMTP id y21mr275225wmj.85.1618324100202;
        Tue, 13 Apr 2021 07:28:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618324100; cv=none;
        d=google.com; s=arc-20160816;
        b=OFhspZfOWkfNR8j300ucIDHniTwW6gXnPy9etQ7fae/WXAQMPqDNT20JoFCXxfvQaW
         842l+EgwuvwONTA8XyLpu+9EbPTUNf+jagNdVWfZHUiTN7GdmxCc6NCc8QZ8taAeMOkZ
         Z7ivaLhX4DDfl27FG09ZIVhg28J7609VL7BHhJe286bVENk8PHSqEDONT1m+dbZy8z1v
         5zje/i0Aw3DHd01WHCD2lnlVApZl+y/IDoyuzx4kvs8c3787J/CCezTHTauUtTchuUAe
         pMR4JGGtcb9IsSNhNarOYRlXpPjRMl2nGImuhYdoO5fOkpYe2gJech7n+lIN2Lysc4ZD
         iKjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=1OYRzaPYX+MdL2oJs4PbhIJNrmnwYHeYtpLOazWRad4=;
        b=zgVgRLRDjVLiQtIhsQH94oYnuIbN+brHupTjaYbZG7kGpILE0wn1xTQTHYdQ8iS5vy
         Ly3bljbkqm+O7uFLAdL32kD11XxEQCKBIYHsJWGIDqa7LYC4NOsnAp1YleeCSGLQUXAj
         fW0OdNy9Tn6Ly9IruvsWN3Dhsn5+8vmzOApbq1bw0jU/GHIQZpir4r3Hw5xbR/r//E8D
         uhTQX/4oY1Yr7ugZgSXYMmmLO+epCifWoiSoizrLrowCurpUBrISAyj24H2o/YXbbZPr
         M7UuViHsv0jtRnNm1+clVgY+TCjro4+UmnC0m8LhyG3CZfuZSYNozoSqdcYVpdrYp6nC
         Pa+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="LE5q+1/G";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.24 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb1-smtp-cloud7.xs4all.net (lb1-smtp-cloud7.xs4all.net. [194.109.24.24])
        by gmr-mx.google.com with ESMTPS id n35si172468wmp.0.2021.04.13.07.28.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 07:28:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.24 as permitted sender) client-ip=194.109.24.24;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="LE5q+1/G";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.24 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud7.xs4all.net with ESMTPA
	id WK1YlFUF2MxedWK1bliyIA; Tue, 13 Apr 2021 16:28:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1618324100; bh=1OYRzaPYX+MdL2oJs4PbhIJNrmnwYHeYtpLOazWRad4=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=LE5q+1/GxEP74ilj90iQBYAqaWO6EocuzMs6EXfE+urj8TyS9sLw1jrCYErXh3HuM
	 4Qqf1RZgCF3vX8igimzeC8drgtbs55bHgkIgHpXGjSwuudDzS1bTSbVedXduO0lYyj
	 ZI9fjWnt8JANheRv/w/tjMyNyVKTgbmmVEi9nE5X67As8aleo2SCslNwwmoCfACKek
	 Zt183z/DdY9hif5nPeH03e4WgCxTPQ4HwgTppRuq6WV55OgoiaxPUF8kQXkUbkKtiS
	 dJFOwxw/h1JUcZDSa52x4DDPO1gS54fEsUsRxCOkjqPsU1jy+uT76xtF6L2iA6r/dO
	 UCzh9lcqabkTQ==
Subject: Re: [PATCH v3] staging: media: zoran: remove and move statement in
 next line with '*'
To: Mitali Borkar <mitaliborkar810@gmail.com>, clabbe@baylibre.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 mitali_s@me.iitr.ac.in
References: <YHA9IdZVRr4kbVJ0@kali>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <74a4e59b-48b5-d054-8cb1-6cba038279ba@xs4all.nl>
Date: Tue, 13 Apr 2021 16:28:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <YHA9IdZVRr4kbVJ0@kali>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfFp9rS0rBtd8Y3HBIpiwaBaDWe58n9PZvJ5V1pfIHcnldOzfc+HLqJUBR60spsxLINEUol/VpmJjl0DjK3H8r9ilXcfW1NZF3IBaBlQ/91KDzVM88G8K
 AhYqaOZLtHR3YJGCMo9oo3ftuNa4VsvtvFXq4eJCJ0xK4knTYmJPoueFDUf34ztoVbcQCl1X0va3MEAEYxu0N8p/WcjnqZeV74aOuCY4+sk0Zub5mihzKuHh
 9q3Cf+2KxovQX7RgL+xLhurYOWz0P83ey/SS8IaOQwd0++ckH54q0JOC6FjsPkKwJy3LkMsF+3xxC1FCMEIj3UneX82xUTs8oJhyTcWzVVZJyWUOnWv74h3R
 aokQ2Dxo2mwYAC0yWoPgp+zgi4sYhMsL5dZQguPeoOPWswPy3URXW1p4+ORzv0nZSNkVSeK5VaxmlVoi53+nhj22zbNZKj8W7Qbt3vJeixl9CbDUqSU8AXv/
 11XS8vVgYrW+Q4zxBN6r5VCb/t1St9+nkWiJmg==

On 09/04/2021 13:40, Mitali Borkar wrote:
> Removed and moved statement in line in long(multi-line) comments and
> added '*' before it to meet linux kernel coding style for long (multi-line) comments
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
> 
> Changes from v2:- made style changes in code according to linux kernel
> coding style for long comments.
> 
> drivers/staging/media/zoran/zr36050.c | 26 +++++++++++++++++---------
>  1 file changed, 17 insertions(+), 9 deletions(-)

This too sits on top of other commits from your own private branch, so
it won't apply against the mainline code.

Regards,

	Hans

> 
> diff --git a/drivers/staging/media/zoran/zr36050.c b/drivers/staging/media/zoran/zr36050.c
> index 703064009c6b..b89afa239b0c 100644
> --- a/drivers/staging/media/zoran/zr36050.c
> +++ b/drivers/staging/media/zoran/zr36050.c
> @@ -24,7 +24,8 @@
>  /* codec io API */
>  #include "videocodec.h"
>  
> -/* it doesn't make sense to have more than 20 or so,
> +/*
> + * it doesn't make sense to have more than 20 or so,
>   * just to prevent some unwanted loops
>   */
>  #define MAX_CODECS 20
> @@ -311,7 +312,8 @@ static const char zr36050_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
>  
>  /* ------------------------------------------------------------------------- */
>  
> -/* SOF (start of frame) segment depends on width, height and sampling ratio
> +/*
> + * SOF (start of frame) segment depends on width, height and sampling ratio
>   *			 of each color component
>   */
>  
> @@ -343,7 +345,8 @@ static int zr36050_set_sof(struct zr36050 *ptr)
>  
>  /* ------------------------------------------------------------------------- */
>  
> -/* SOS (start of scan) segment depends on the used scan components
> +/*
> + * SOS (start of scan) segment depends on the used scan components
>   *			of each color component
>   */
>  
> @@ -432,7 +435,8 @@ static void zr36050_init(struct zr36050 *ptr)
>  		sum += zr36050_set_sos(ptr);
>  		sum += zr36050_set_dri(ptr);
>  
> -		/* setup the fixed jpeg tables - maybe variable, though -
> +		/*
> +		 * setup the fixed jpeg tables - maybe variable, though -
>  		 * (see table init section above)
>  		 */
>  		dprintk(3, "%s: write DQT, DHT, APP\n", ptr->name);
> @@ -551,8 +555,9 @@ static void zr36050_init(struct zr36050 *ptr)
>   * =========================================================================
>   */
>  
> -/* set compression/expansion mode and launches codec -
> - *  this should be the last call from the master before starting processing
> +/*
> + * set compression/expansion mode and launches codec -
> + * this should be the last call from the master before starting processing
>   */
>  
>  static int zr36050_set_mode(struct videocodec *codec, int mode)
> @@ -581,7 +586,8 @@ static int zr36050_set_video(struct videocodec *codec, const struct tvnorm *norm
>  		ptr->name, norm->h_start, norm->v_start,
>  		cap->x, cap->y, cap->width, cap->height,
>  		cap->decimation, cap->quality);
> -	/* if () return -EINVAL;
> +	/*
> +	 * if () return -EINVAL;
>  	 * trust the master driver that it knows what it does - so
>  	 * we allow invalid startx/y and norm for now ...
>  	 */
> @@ -603,7 +609,8 @@ static int zr36050_set_video(struct videocodec *codec, const struct tvnorm *norm
>  
>  	ptr->real_code_vol = size >> 3; /* in bytes */
>  
> -	/* Set max_block_vol here (previously in zr36050_init, moved
> +	/*
> +	 * Set max_block_vol here (previously in zr36050_init, moved
>  	 * here for consistency with zr36060 code
>  	 */
>  	zr36050_write(ptr, ZR050_MBCV, ptr->max_block_vol);
> @@ -661,7 +668,8 @@ static int zr36050_control(struct videocodec *codec, int type, int size, void *d
>  		if (size != sizeof(int))
>  			return -EFAULT;
>  		ptr->total_code_vol = *ival;
> -		/* (Kieran Morrissey)
> +		/*
> +		 * (Kieran Morrissey)
>  		 * code copied from zr36060.c to ensure proper bitrate
>  		 */
>  		ptr->real_code_vol = (ptr->total_code_vol * 6) >> 3;
> 


