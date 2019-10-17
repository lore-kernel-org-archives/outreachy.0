X-GM-THRID: 6748575425662812160
X-Received: by 2002:a17:902:6b05:: with SMTP id o5mr1233858plk.33.1571275786813;
        Wed, 16 Oct 2019 18:29:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1103:: with SMTP id g3ls171581pgl.11.gmail; Wed, 16 Oct
 2019 18:29:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwP5b3BsApOtFxttOvwxZ7lDUOdDvUUC+jgLJJGuWNsglTghcR+40FHSBfvDD1rD3vz03fk
X-Received: by 2002:a62:e90d:: with SMTP id j13mr783107pfh.86.1571275785422;
        Wed, 16 Oct 2019 18:29:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571275785; cv=none;
        d=google.com; s=arc-20160816;
        b=0TM2ebq6+D92m/FsHqExWzexaW1pToPEXQFGgCY3vv2lw7WHQDiGN3DcPiCYloRtqu
         8rR5+aFY6m6TILzgtriEjrJr+uhTS1vYkx/oEH5avObU+YjTFXl57bG73rghV6M4jyZb
         4DnGtO0HDPEG3rUjWJldgck2kSgxROeNxNpy0+Exp5/Jxzu2ndCD4t/zijV7LYgktlY6
         JV37PeifQEZCxzXgPXjVvMLlI6daLrJs9a45E79OghEBhmlKkWikGxHwOaeRPKgW6BLH
         I2gXYFdW12F57AbBJ0fx4QXstPB7Kn9XDaU1d6PN0j5ne7c5iJwZ6JwMAaGAJ6661U23
         OykA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=WuM4nCTZ81BlJjiPSurvi5qoJfBbsasN21+Lbs4hI80=;
        b=Wh1w1VWSkj7U2KTSxgaSfdDVNt8d7qh3kBk0uV7GxOusn6PHw18HIiv4/Ap3sILyC3
         iV8/sgM/gYZLgUne7c9qpZzOdCwEpMPpEQTXGI51S+vzzkNlff34ANM9cAyBAHCq2EmR
         NnAoXz74uJVwkHLUZXzOE6WT0pz6DyWoszfF2e8zPV2kHdF3SdqZUfoXt5CEuyFWHDZI
         wRVF8TcNEJtBttMVs4+4sywn26SLIXBJQ0V9WPHOPGqd9EdVHAheh2a1LrPbz1/aNsnO
         jRyCQZYaPpXuwcyMU3b91ZkVrgVsilV9Nsi0SDyZgtdGTceEws0dmeyK0bT/RgkIaY0h
         nZrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YZgbqFiO;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id o23si48889pjt.2.2019.10.16.18.29.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 18:29:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YZgbqFiO;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x741.google.com with SMTP id u22so361958qkk.11
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 18:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=WuM4nCTZ81BlJjiPSurvi5qoJfBbsasN21+Lbs4hI80=;
        b=YZgbqFiOHWigqEcnJTqSXSR3rpJQ9coxv7bijJC+IrPHRpZfIMgmMKhjjg8ltsUrzY
         d3fm19++8UGhjVn/X0+q2Q2uAY/8+ogW8b3lLVAwHB+yIbhvadVpU5f5Dw5hGIWONQQj
         cz5lAUxv5QsvX4TsyvcRAc6L0inAPwA2WuDEq6COkDo92UjY7tDN9KQo5y7sc+DzWYLx
         LVL1FA9TFH0kOlqet1p/FCqG5ptiGrftb5LIWKFdxMuS3ERsBhXtMtp7PmlPBUcSgxmc
         O8V8P4oQsfDs/FDa5FKdKIhXc9h8UFxCPSt5zOx8TzMtIMw8EnnHbDnC8766FJcDTALH
         FrUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=WuM4nCTZ81BlJjiPSurvi5qoJfBbsasN21+Lbs4hI80=;
        b=OUXh0V6rEXRQ+8kdo949CTzsq2nAbJMxCjSedMc2KLlMiIf9gziVLCVsmTScxDTn1k
         6mqoxj0O1+qHUT4gchKv7N855lNIeoKZLVNRBLMAphyc/SF3JDBGNHPO9wk1L3SRdcHV
         xioe1BGO1WLdfRkVwS+5dk+1b2XwJtO6cs3GI4pWxOU3DYv7nlvzEO320IvY0Bl+uMzL
         QqHc8SV4yFwpspNv4umXWYGE8P46zFzKo6Ung752pioI0mUs0Smh56T9R5wOHUviywLT
         kjLZ25Bb1INAZng+555Q/5SGcLhfw1aGb2v1v1z8wR+/Dd4DfdlzL6EF5BAIzCzICsTq
         Arhw==
X-Gm-Message-State: APjAAAWJ3KU6ozNgwQdmp+jR/Ex9kvbrwF6Cp6ghelw0rc3sw6qdGFAn
	p8srVXZew0WWeFHvGm67oZPHlruxt/w=
X-Received: by 2002:a05:620a:1211:: with SMTP id u17mr975797qkj.310.1571275784353;
        Wed, 16 Oct 2019 18:29:44 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from [192.168.1.101] ([201.53.210.37])
        by smtp.gmail.com with ESMTPSA id g25sm350465qtp.96.2019.10.16.18.29.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 18:29:43 -0700 (PDT)
Subject: Re: [PATCH] staging: sm750fb: format description of parameters the to
 kernel doc format
To: Randy Dunlap <rdunlap@infradead.org>, outreachy-kernel@googlegroups.com,
 sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
 gregkh@linuxfoundation.org, linux-fbdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org, trivial@kernel.org
References: <20191017011849.6081-1-gabrielabittencourt00@gmail.com>
 <799632e2-a328-d72b-397d-3ee6b5e87e06@infradead.org>
From: gbittencourt <gabrielabittencourt00@gmail.com>
Message-ID: <d55516db-28c5-aa53-8d07-20201dc4ffca@gmail.com>
Date: Wed, 16 Oct 2019 22:29:27 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <799632e2-a328-d72b-397d-3ee6b5e87e06@infradead.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi Randy,

On 10/16/19 10:25 PM, Randy Dunlap wrote:
> Hi,
>
> On 10/16/19 6:18 PM, Gabriela Bittencourt wrote:
>> Cluster comments that describes parameters of functions and create one
>> single comment before the function in kernel doc format.
> Good plan.
>
> How did you test this patch?
I haven't test it. How can I do it?
>
>> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
>> ---
>>   drivers/staging/sm750fb/sm750_accel.c | 65 +++++++++++++++------------
>>   1 file changed, 37 insertions(+), 28 deletions(-)
>>
>> diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
>> index dbcbbd1055da..d5564cd60f3b 100644
>> --- a/drivers/staging/sm750fb/sm750_accel.c
>> +++ b/drivers/staging/sm750fb/sm750_accel.c
>> @@ -130,20 +130,24 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
>>   	return 0;
>>   }
>>   
>> -int sm750_hw_copyarea(
>> -struct lynx_accel *accel,
>> -unsigned int sBase,  /* Address of source: offset in frame buffer */
>> -unsigned int sPitch, /* Pitch value of source surface in BYTE */
>> -unsigned int sx,
>> -unsigned int sy,     /* Starting coordinate of source surface */
>> -unsigned int dBase,  /* Address of destination: offset in frame buffer */
>> -unsigned int dPitch, /* Pitch value of destination surface in BYTE */
>> -unsigned int Bpp,    /* Color depth of destination surface */
>> -unsigned int dx,
>> -unsigned int dy,     /* Starting coordinate of destination surface */
>> -unsigned int width,
>> -unsigned int height, /* width and height of rectangle in pixel value */
>> -unsigned int rop2)   /* ROP value */
>> +/**
> Missing function name and short description.  Documentation/doc-guide/kernel-doc.rst says:
>
> The general format of a function and function-like macro kernel-doc comment is::
>
>    /**
>     * function_name() - Brief description of function.
>     * @arg1: Describe the first argument.
>     * @arg2: Describe the second argument.
>     *        One can provide multiple line descriptions
>     *        for arguments.
>     *
>     * A longer description, with more discussion of the function function_name()
>     * that might be useful to those using or modifying it. Begins with an
>     * empty comment line, and may include additional embedded empty
>     * comment lines.
>     *
>     * The longer description may have multiple paragraphs.
>     *
>     * Context: Describes whether the function can sleep, what locks it takes,
>     *          releases, or expects to be held. It can extend over multiple
>     *          lines.
>     * Return: Describe the return value of function_name.
>     *
>     * The return value description can also have multiple paragraphs, and should
>     * be placed at the end of the comment block.
>     */
>
>> + * @sBase: Address of source: offset in frame buffer
>> + * @sPitch: Pitch value of source surface in BYTE
>> + * @sx, @sy: Starting coordinate of source surface
> Those should be on separate lines.
>
>> + * @dBase: Address of destination: offset in frame buffer
>> + * @dPitch: Pitch value of destination surface in BYTE
>> + * @Bpp: Color depth of destination surface
>> + * @dx, @dy: Starting coordinate of destination surface
> Ditto.
>
>> + * @width, @height: width and height of rectangle in pixel value
>> + * @rop2: ROP value
>> + */
>> +int sm750_hw_copyarea(struct lynx_accel *accel,
>> +		      unsigned int sBase, unsigned int sPitch,
>> +		      unsigned int sx, unsigned int sy,
>> +		      unsigned int dBase, unsigned int dPitch,
>> +		      unsigned int Bpp, unsigned int dx, unsigned int dy,
>> +		      unsigned int width, unsigned int height,
>> +		      unsigned int rop2)
>>   {
>>   	unsigned int nDirection, de_ctrl;
>>   
>> @@ -288,20 +292,25 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
>>   	return de_ctrl;
>>   }
>>   
>> -int sm750_hw_imageblit(struct lynx_accel *accel,
>> -		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
>> -		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
>> -		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
>> -		 u32 dBase,    /* Address of destination: offset in frame buffer */
>> -		 u32 dPitch,   /* Pitch value of destination surface in BYTE */
>> -		 u32 bytePerPixel,      /* Color depth of destination surface */
>> -		 u32 dx,
>> -		 u32 dy,       /* Starting coordinate of destination surface */
>> -		 u32 width,
>> -		 u32 height,   /* width and height of rectangle in pixel value */
>> -		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
>> -		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
>> -		 u32 rop2)     /* ROP value */
>> +/**
> Similar comments here...
>
>> + * @pSrcbuf: pointer to start of source buffer in system memory
>> + * @srcDelta: Pitch value (in bytes) of the source buffer, +ive means top down
>> + * and -ive mean button up
>> + * @startBit: Mono data can start at any bit in a byte, this value should be
>> + * 0 to 7
>> + * @dBase: Address of destination: offset in frame buffer
>> + * @dPitch: Pitch value of destination surface in BYTE
>> + * @bytePerPixel: Color depth of destination surface
>> + * @dx, @dy: Starting coordinate of destination surface
>> + * @width, @height: width and height of rectangle in pixel value
>> + * @fColor: Foreground color (corresponding to a 1 in the monochrome data
>> + * @bColor: Background color (corresponding to a 0 in the monochrome data
>> + * @rop2: ROP value
>> + */
>> +int sm750_hw_imageblit(struct lynx_accel *accel, const char *pSrcbuf,
>> +		       u32 srcDelta, u32 startBit, u32 dBase, u32 dPitch,
>> +		       u32 bytePerPixel, u32 dx, u32 dy, u32 width,
>> +		       u32 height, u32 fColor, u32 bColor, u32 rop2)
>>   {
>>   	unsigned int ulBytesPerScan;
>>   	unsigned int ul4BytesPerScan;
>>
> Thanks.
Thanks.

