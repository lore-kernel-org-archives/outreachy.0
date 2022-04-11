Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BBC81840
	for <outreachy@lists.linux.dev>; Mon, 11 Apr 2022 12:03:24 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id s8so14371265pfk.12
        for <outreachy@lists.linux.dev>; Mon, 11 Apr 2022 05:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=JeTNf5kySRoYul3ANU+zkK1mwgOg/nm5sgvNJVEgSGE=;
        b=nzVCaS39JKNhuDNaVz91Vlq84GnxlSI0tlqI9+wb1Fmli2AbICNCyK0K+cfzdgXPs/
         IpaBdj4+nbc8RJHpxy8kjAXnJ3mjFyEIfgbsdWtM3TnGJupRCTLx9NNogXWjKnSFhtEy
         TUPS/7ze7JI1eNadc/NMRXztQPk/Isx9zF+hQ5nY3wcoT1SjNDE/v4SrOyRSePNtbX6n
         /JItvP6kA1yweQ4RegU0On1AbiDfBaflqWV22uBs2ceCiAzTzO2LsK7G84V1GWjYvCXL
         +Zc7h6VGMuj0aCDOEI4cjj2RcdrH0a/85o+PRy9JNAGRlxaebAqfX83C1qDr6ymL97uS
         3nqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=JeTNf5kySRoYul3ANU+zkK1mwgOg/nm5sgvNJVEgSGE=;
        b=DbjRGyTBuceUs7UmRUl/+ItWjE5UivKkHHLRNL0cQCuiaowGKOdkTHTG0fvwcTu4xl
         jm5ocRSTq3JVi5zMeg8nMs9ks+wIHNBbLrBTyPsjKBLX+fNrqmZK+V88ADKaRNKN35aV
         RVOqnItQOsLgxkO9dhJLc0elKsjjbTbIBjIwjl67AdT5igvDDMLeNSsp+LBOLPIkH5bK
         HFFlYhKCA16wn4Ah5H89v6rqXvuzq0tye0lt5Nm6g5aMCDu7/CjgkH++37GT2ul9V/ng
         uzKjhN6XQDNTHDoURgcBrmO2zOVQfyxLHlZfLsQkQ+GqeJC1RjiPA3RrDzBsGbVgCs39
         nLhw==
X-Gm-Message-State: AOAM532v/BpibODj6TqCEGkGe/erubEvqZIMl2Y3j3wrvE84RTJ3czf8
	yHf0sPqBnBd39ARi54X76diRtoYH87Rr8y48XEPRB9q9sJc=
X-Google-Smtp-Source: ABdhPJwUQNTZgpb2Pb0XetwTrfb1Ws2DV7ycPMtiXB68CkFDbYk/d+OKOW0eFeTYtRcJv9zkdPhq5C23s3JvwCE3HWs=
X-Received: by 2002:a63:1242:0:b0:39d:3aa6:4162 with SMTP id
 2-20020a631242000000b0039d3aa64162mr6309387pgs.426.1649678603440; Mon, 11 Apr
 2022 05:03:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <alpine.DEB.2.22.394.2204110845280.3197@hadrien> <20220411110250.51959-1-aliyarahmani786@gmail.com>
In-Reply-To: <20220411110250.51959-1-aliyarahmani786@gmail.com>
From: Aliya <aliyarahmani786@gmail.com>
Date: Mon, 11 Apr 2022 17:33:11 +0530
Message-ID: <CAGTWmRHr1jcyZ66EwJ6S6jXfJ_KfsPt3_2n=Scs3sdmq3OWAyA@mail.gmail.com>
Subject: Re: [PATCH v2] staging: rtl8712: efuse: code style - avoid macro
 argument precedence issues
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 11, 2022 at 4:33 PM aliya-rahmani <aliyarahmani786@gmail.com> wrote:
>
> From: Aliya Rahmani <aliyarahmani786@gmail.com>
>
> Added parentheses in 'offset' and 'word_en' to avoid macro argument
> precedence issues.
>
> Signed-off-by: Aliya Rahmani <aliyarahmani786@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_efuse.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl8712_efuse.h b/drivers/staging/rtl8712/rtl8712_efuse.h
> index 4969d307e978..2e1ea9d7a295 100644
> --- a/drivers/staging/rtl8712/rtl8712_efuse.h
> +++ b/drivers/staging/rtl8712/rtl8712_efuse.h
> @@ -15,8 +15,8 @@
>
>  #define GET_EFUSE_OFFSET(header)       ((header & 0xF0) >> 4)
>  #define GET_EFUSE_WORD_EN(header)      (header & 0x0F)
> -#define MAKE_EFUSE_HEADER(offset, word_en)     (((offset & 0x0F) << 4) | \
> -                                               (word_en & 0x0F))
> +#define MAKE_EFUSE_HEADER(offset, word_en)     ((((offset) & 0x0F) << 4) | \
> +                                               ((word_en) & 0x0F))
>  /*--------------------------------------------------------------------------*/
>  struct PGPKT_STRUCT {
>         u8 offset;
> --
> 2.25.1
>
Should I make some more changes to the subject line? Also, should I
create a v2 patch for the changes?

Thanks,
Aliya
