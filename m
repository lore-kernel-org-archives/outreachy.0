Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED998EED8
	for <outreachy@lists.linux.dev>; Sat,  5 Apr 2025 14:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743862761; cv=none; b=qf0UXbimtcqPGpfEkSX8zCYcOZOROzRhFaDGFYefpvtkp4nsZF28vAYQxW59gHFJLF1lfFPfJmCdKkp25Dtxu2XA3FPs7F3jibX5eGT5Ueb3/oX3f8jfa4vMULvX5EPMGwlbHuOB0NXqd8LtTqVu7PlNucLIgc5/tOP0bNZjqCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743862761; c=relaxed/simple;
	bh=l74iBGb8CYoPepq0f+0E27YnDUTS+yR30dVNzQkwb8s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EMCoryT6dMnCWdzxxGn5H0U+tco6KvKTmCmgzzdbbBLpU3nsPus1FPOiFfvrrqmp0oGt6/kR7xuxrvnktW7tKq3dGvPmtOZ9znfZvb46FvCpzb+qwDP7XZ2sjiq3Bv3qwt8AkYktduIfbDko20o5IYn5Ty62nNRPC+7nLhRFl4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NKiATMyu; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NKiATMyu"
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43ce70f9afbso31527465e9.0
        for <outreachy@lists.linux.dev>; Sat, 05 Apr 2025 07:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743862758; x=1744467558; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QREsqMnXp3ed/MAkal6kS2dgg2uSOYjf8lEHpd+2mJA=;
        b=NKiATMyuk3Iwg/XRYZDGulq298divBMTN5bKVOL2TByh7JRiE9CCTiqHevBFLAKDaY
         BQHv0+S/2FE0M0fdu8P9FW/W3sfo7sgREmN4AUCYqDj9g2BxNxAqjL/d3RYQP8zVINNy
         1qfoAqVzPmJOy566ANJ8+A8yCfF6i/5mzJQIXFum+D/33o4vG2qchDa75vBfWwItWCGh
         xl9wvErIa18/AeJ5kwc60MO4o4Fh+xV7nN3UX+pS/rQ3I+jP5rdaZ8L/7UexStOeYFe+
         2Kb8a08Q/eiRXHIjISEX5nPLd6KKdzcE1zSYZLvlvAad/0xX1VC1ng3TWvfYP9aN8TO8
         4vog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743862758; x=1744467558;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QREsqMnXp3ed/MAkal6kS2dgg2uSOYjf8lEHpd+2mJA=;
        b=xOtLyV0GGtdrNev8Rym0wyLWgJ5k6txF2BZmIuNEob4gDLqskIDgNYE97L+3d6bj1d
         ZApECxuK72fmAHHa3MyIPZ98A+A2pmtoHq3DyNOSLOhtRSD/Txri+vfn85rpXa5oAh0h
         rXgdeqBDJufqXngqyhFhjM+Q9qnrawnhZJC8/+1G2bYC5ng1VlFAPqWcpI+l65T8yIzh
         4Sz/L9ynCLJTwQIErOn+k9ilIS37SHpYLhEukoZ54wLU+av0H+rQhip/DE4Entu26OJp
         2X6PCTaWiN0qW0YEIkt6kkBrcy15VCUffPmL9iDiMZyTOAkiG0HGzFfw2NZWgjMaFg4V
         nyCA==
X-Forwarded-Encrypted: i=1; AJvYcCUZ1DHQ4aqgEjov/p2wNtwu9UxxSFcNOYt+VXzJfWhcjIoa/mMCHlo1ovnTl2/U4v6HPLhg/qnyMQ4=@lists.linux.dev
X-Gm-Message-State: AOJu0YxiExHsjNdwLrBo+GvzEX0HzHpSgIjZWWuoyHofudlS0J2UMTmr
	46wMd20+qm4yEnu2Qg3l+Zj4GB9hgmEKoto6QiiSwo028br99XjOBjKgcN5SFRw=
X-Gm-Gg: ASbGncuE7X5d6/13CqmkH5Jkxi/OzLEUAlratO2ykSjMMtvGVzk85AgJMoPEVKoKip9
	Tku1Yl1/LLtHq1QJVscf73C/i+tSc4uYq6HfJRhN4UdfrEaBFgQpCGjN48BaN1m3y29o2JGs4B1
	O4w7C+cSCHVo6urf67suhnG8gw/xHFMRI4hx6r5xtBpOZ0UEd0+df+LVUuvDfvOIUBLLeXYakmX
	aLX+ZqHJPbH/UDtsbD7ZFTyFbkdAsAA/2HUlhZ/lnGwFYbwLevd0HyhMVP2SQqDzEmteDuDlPT0
	7I6k015IqNzXdyaM+RQfjgfcdyiMjadumPkKTYj0onmB298Hfw==
X-Google-Smtp-Source: AGHT+IFW8L+8WZ3ckDNSGjgYJDZALIThBZS5wEzhYuabxviGgmk9WPLFChRNbWZnh+bHR59rItd3kA==
X-Received: by 2002:a05:600c:1387:b0:43c:f513:9585 with SMTP id 5b1f17b1804b1-43ed0bde88amr69216715e9.13.1743862758182;
        Sat, 05 Apr 2025 07:19:18 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-39c301a9da1sm6900116f8f.22.2025.04.05.07.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Apr 2025 07:19:17 -0700 (PDT)
Date: Sat, 5 Apr 2025 17:19:13 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Erick Karanja <karanja99erick@gmail.com>
Cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev,
	philipp.g.hortmann@gmail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] staging: rtl8723bs: Optimize variable initialization
 in rtl8723b_hal_init.c
Message-ID: <8ce041b2-087c-4d47-891f-28ecc0c91c76@stanley.mountain>
References: <cover.1743820815.git.karanja99erick@gmail.com>
 <f7b63d834b98aedfe2ce277d8008d7e398ea29ba.1743820815.git.karanja99erick@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f7b63d834b98aedfe2ce277d8008d7e398ea29ba.1743820815.git.karanja99erick@gmail.com>

On Sat, Apr 05, 2025 at 06:14:48AM +0300, Erick Karanja wrote:
> Optimize variable initialization by integrating the initialization
> directly into the variable declaration in cases where the initialization
> is simple and doesn't depend on other variables or complex expressions.
> This makes the code more concise and readable.
> 
> Signed-off-by: Erick Karanja <karanja99erick@gmail.com>
> ---
>  .../staging/rtl8723bs/hal/rtl8723b_hal_init.c | 155 +++++-------------
>  1 file changed, 41 insertions(+), 114 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> index e15ec6452fd0..1e980b291e90 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> @@ -152,13 +152,12 @@ static int _WriteFW(struct adapter *padapter, void *buffer, u32 size)
>  void _8051Reset8723(struct adapter *padapter)
>  {
>  	u8 cpu_rst;
> -	u8 io_rst;
> +	u8 io_rst = rtw_read8(padapter, REG_RSV_CTRL + 1);
>  
>  
>  	/*  Reset 8051(WLMCU) IO wrapper */
>  	/*  0x1c[8] = 0 */
>  	/*  Suggested by Isaac@SD1 and Gimmy@SD1, coding by Lucas@20130624 */
> -	io_rst = rtw_read8(padapter, REG_RSV_CTRL+1);
>  	io_rst &= ~BIT(0);
>  	rtw_write8(padapter, REG_RSV_CTRL+1, io_rst);

I hate this.  It's a bad idea to put "code" in the declaration block.

> @@ -501,8 +499,7 @@ void Hal_GetEfuseDefinition(
>  	switch (type) {
>  	case TYPE_EFUSE_MAX_SECTION:
>  		{
> -			u8 *pMax_section;
> -			pMax_section = pOut;
> +			u8 *pMax_section = pOut;

This is fine because "pOut" is a variable.  It doesn't have side effects
and it's not "code" in that sense.

regards,
dan carpenter

