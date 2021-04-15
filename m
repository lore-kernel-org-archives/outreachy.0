X-GM-THRID: 6948900055812145152
X-Received: by 2002:a7b:cf2e:: with SMTP id m14mr3316516wmg.73.1618493821019;
        Thu, 15 Apr 2021 06:37:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls1948298wrb.1.gmail; Thu,
 15 Apr 2021 06:36:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw2PKH+4+QZzeJ4jAONuKBj6gcJYynfHBNsi16q18uZn5OYbz57z8fkDf+84wQiu9zBvmLk
X-Received: by 2002:adf:90f0:: with SMTP id i103mr3460635wri.318.1618493819541;
        Thu, 15 Apr 2021 06:36:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618493819; cv=none;
        d=google.com; s=arc-20160816;
        b=hoKdCwdLafrNAg5lUdeHsYj7c1PqjzF6s38k7XYNnJaxpKfLVb85339z4WY+e04bLX
         aDeeucJ2MtFkjP+UHzhAueH7mPCB60z35PiMJbvvEiDcz22lQRxhaSX5IVyzmTUOk+p+
         HWEpN6KOoMXKaCx7oqH/ov7vuci7uoGqpfOhbGYjzHrm7p/3aw7BK8iCiZRaBOFRUtPy
         bjgvVI7Xr+/g5gY7/ekm82JystnVuQriCRm6i357sQfWnDFdhqDLJ2FLRDMOFJIUAQ7e
         jVurAfj2WNOCWe59lWsj19nxnjqQE7Nnnxv3lFfdU1FRYi+0cZgY+C9JlydzSYHqSGQd
         DKIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=gZoHwNCMoKyEmoDVfhautmQ8Mg0LQtbn5JZYlZAijxU=;
        b=SPVwwBxptxpho5v4OpgGwrCioHiHMHn2TtcRPYYhhTY/xfdMYDmcA80/wmxPn0hoDX
         uHW/aAtBhnThwdKeOJP+37yI0tPbN6jNtwjsH3hhe/cL7fcXLeRLLU5Gvf3OmdjcCqg+
         SepIqnBykuWdehfN0e+wYXahLqZ3FOLVMgv7W1nqYStF6J9BDvJzs5Ewpuainx/AXH97
         8kDL45CNrPC25Dh5WG0KFwKKPrswmPzbt8Jocw7KlnZxT2Ue6SUO88CWeRS7Wn9ShQb4
         tc6Nik9W3ZEuZToRxGGLxcGiFkNjcsjqGWDwpCNT/FZWrl8zlvXBvKiD+EQRXSVKdq7Z
         qpYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=mIjvdkYk;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb1-smtp-cloud8.xs4all.net (lb1-smtp-cloud8.xs4all.net. [194.109.24.21])
        by gmr-mx.google.com with ESMTPS id l4si148931wru.4.2021.04.15.06.36.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 06:36:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) client-ip=194.109.24.21;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=mIjvdkYk;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [192.168.2.10] ([84.202.3.209])
	by smtp.xs4all.nl with ESMTPA
	id X2Axl3eNOsMyaX2B0lULVP; Thu, 15 Apr 2021 15:36:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1618493819; bh=gZoHwNCMoKyEmoDVfhautmQ8Mg0LQtbn5JZYlZAijxU=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=mIjvdkYkWYVJLty5slqCe1PoUZ3rpdG6GeSyU0GnbmHbnCQEm/o5iAW0zWQs03AoK
	 8K9QvGZsHtG5piJgaxS29cPMeN9Mm55nfkuSzfukSrYG7xl0XYbsCSaLxLuD7FNSJ5
	 HZYo8KxK2wECqbY5mZVOkYEw50zd8816q1kldYhqeTPfWLSkbMxGUFG82wo3o86G6O
	 PoADtAC3it5W30FRCRTeAIIusNB9YfjV2qT2GnOQALmCfOWCZUEU8GKHogvt+yB/4c
	 sJFODgYIJOS749H8t4YXxfRoq8I7rgvCnBtINWRc6CoypbysJYUmV+/PDF8/EFnjy9
	 D2MrV/XIV3KRQ==
Subject: Re: [PATCH v3] staging: media: zoran: reduce length of a line
To: Mitali Borkar <mitaliborkar810@gmail.com>, clabbe@baylibre.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 mitali_s@me.iitr.ac.in
References: <YHXITpUbYOb2lO/u@kali>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <fbfe2705-30bd-dbaf-e3f4-95ef678a5089@xs4all.nl>
Date: Thu, 15 Apr 2021 15:36:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <YHXITpUbYOb2lO/u@kali>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfF3kyduNUb4qus6KIfTU6+sc7BExhW7ghIVg9vBpD1Uf5EddXtrtZprcgXSCOUf4dC2fXnlx98lOQPg35NxGvOd2kl4jcpnRs+chJj5aAYsInSVqmKYb
 fJeFHmbjtyxshFYEYouyY3n38ywXrlZ+6BEOdZm78kDALClha5nFFYknUjHZroVEvI1+WovF5VkKsAf5WLmmZWT67vruVRjr1qey8/cHQG0mHqUa5aW3FWrV
 d1o5XX8NyOCA+sP7waguefMZd7sNDoOExhaf7bFC8h4F88sFaLoFlwfL00WRSGM0rkhbPwyHaDkV+acscIw+PgQ80qu1YMvvwMr1W3NBcvuEsVKWHBmtToWg
 kn5apcFH6cV7kb1/KYqZguNBLqLcf8QvydO7IEJzJoiLIjMC+B9M5DStPF1TQjthb7Aoa4ePPk6bKLXw15zUI0UEYj9HRlZpU66MIKkHnhYzscAXeaC2ZjS/
 tYNiGCrirBaBeItjov2es+okdiaOvmPJw7ZW8g==

On 13/04/2021 18:35, Mitali Borkar wrote:
> Reduced length of a line which exceed the 100 columns limit by splitting
> the line into two statements and commenting it with '*' to meet linux
> kernel coding style for long(multi-line) comments.
> Reported by checkpatch.
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
> 
> Changes from v2:- Rebased this patch and made changes against mainline
> code.
> Changes from v1:- Made style changes according to linux kernel coding style
> for long comments.
> 
>  drivers/staging/media/zoran/zr36060.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/zoran/zr36060.c b/drivers/staging/media/zoran/zr36060.c
> index 4f9eb9ff2c42..27eec3446592 100644
> --- a/drivers/staging/media/zoran/zr36060.c
> +++ b/drivers/staging/media/zoran/zr36060.c
> @@ -249,7 +249,11 @@ static const char zr36060_ta[8] = { 0, 1, 1, 0, 0, 0, 0, 0 };	//table idx's AC
>  static const char zr36060_decimation_h[8] = { 2, 1, 1, 0, 0, 0, 0, 0 };
>  static const char zr36060_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
>  
> -/* SOF (start of frame) segment depends on width, height and sampling ratio of each color component */
> +/*
> + * SOF (start of frame) segment depends on width,
> + * height and sampling ratio of each color component
> + */
> +

No need for this extra newline. The comment block describes the function,
so the function should directly follow that comment.

Regards,

	Hans

>  static int zr36060_set_sof(struct zr36060 *ptr)
>  {
>  	char sof_data[34];	// max. size of register set
> 


