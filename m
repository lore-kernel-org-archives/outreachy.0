X-GM-THRID: 7024064041486123008
X-Received: by 2002:a2e:9b0e:: with SMTP id u14mr3995894lji.247.1635420080074;
        Thu, 28 Oct 2021 04:21:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c74d:: with SMTP id x74ls1953034lff.3.gmail; Thu, 28 Oct
 2021 04:21:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwRGnKUeeEqUPqIHt4ftls9OJXG2F8rVn0zjvW8UDNm1qZk8I/UHT2bFzFJEGhLAwn8/wMg
X-Received: by 2002:ac2:5f44:: with SMTP id 4mr3555337lfz.538.1635420078440;
        Thu, 28 Oct 2021 04:21:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635420078; cv=none;
        d=google.com; s=arc-20160816;
        b=e30e4pnRniaAbMUxWPi43W1ADNrc6hzhOBhw3wFpLP1ntHD3mvsG47+7YRnfZZ/FCG
         CdKAy/cT4y/XSCwsaRKG1N4ONJ/FSz7hDrwKGMJUivKnNeCaL8wF++J0lKOwXotvu2uc
         gdT/jyGnJvNfQnCHezIZYklZ6TizESlH8RUci9W7zoxqXXtV2ijK5zxwxXwuK02W38JE
         99P6DVDbR2rkkX+8pptQh/yPrQOpybNW3ZQUVaOgYr7MG4dyAjpeiRArue77E+g/PV6o
         Oog4s+uMTTBd9CqfGxszGczQVkXOECsAgOj3CFuaKSIDI4MQTKjMpeP9Qf06iIZe+YDv
         fwsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Op6C5+sI2HRkHLePoE/V+Eu4upF10actJBzQJBisYEY=;
        b=q1vb8GdmvJufk/5fgMUcAS9b1BWuuLyz+bUg9i1eg9GcRxJqgUl6Zz4qilrMBuX5Uw
         yxwGljNFkGBn/7VoNddf0FVOiFO1Gah39C07fxTbQD+54YnlbwDpDixaRQTnGYO0app9
         iodFH+JGf8SWAO3SMClaDRRgOaiSgbtdvILWMQhN2se/SG7WQpq0Nq8sLR9ehJsgg+PC
         esG+hxCbpUuAizfWyLVPE0XOYaItWxES5KUUcYwjPvTLcN2afSM7Lq9+Ocz039e7w78H
         30GusejyhUY2e1cdKCuu/hUg0E1WZiBhT8ezmyRGOoMoa8If41pN9ATs5mfu9mDXvcNZ
         gU9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=IiBM5elO;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com. [2a00:1450:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id z1si181703lfu.5.2021.10.28.04.21.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 04:21:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=IiBM5elO;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52e.google.com with SMTP id 5so22724635edw.7
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 04:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Op6C5+sI2HRkHLePoE/V+Eu4upF10actJBzQJBisYEY=;
        b=IiBM5elO1GRwsifeUBbzlGsnrdnNe0MMKrHZbQV4qs9ibGLxvC1WEhSJdbrhfpCiCc
         YSPsio769dLE37ClBW2keNGTu0+UnrbdNBhOAda5EJ9wEzyFafnkmx0P82n2IOjgcWQ+
         z9pYjILQIJEsJUL6iW9rzaQsXNmkGsO8/wahUDnNfXMr4noL2A4P5Rq8faTSVHMQLSQR
         KuAfTVH5lx+DTEs3ynk/3AhoXO3QnY1j61cgfrk65sToRFXJPfjCJGx7hkAl5iDy6g22
         lY8r1XtMoexnt5PQsf+fSBKlWnrDv2AFlFxsz0bbgxbeYMZqmpVprOQx/unlC9BTbs/c
         i/Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Op6C5+sI2HRkHLePoE/V+Eu4upF10actJBzQJBisYEY=;
        b=PbEhC0XHHZYHYjcv9Q5+ep+DzgJTP1hDdGa/JEH8y2ROl1phnJaWemUPtGHTzaLiRc
         Hc3DYywzXQi4E5CU9Z3WdSdWFoPpn7DLpARoW6TWUYSfFP7Sxqc5Qj19yoWVabOyyu/9
         0wjr4Br59JVUjIo5CILEFgR7xchUGS4O0cUc21l0sS0JEwajPhGrZJgfqPyJA2w1/C0z
         To5ZnIrcJG5Hcrr2J7I+s4OVY90XuHhZPWzQbT36DmrW426l+blbHaZ/Gp+tHb9cPwLd
         UZbv0KHQhruXOuGGIfnWrlmRGlUmlUIVFagGOMHlf+6/td5vL5uHOlExiDKPxPVxSee0
         h9tA==
X-Gm-Message-State: AOAM533hDTml2iLMVF1yh44SOgYUjIilNkHVF2z4rwcbdv8CGnWjRla3
	HRT851a2wCGGY2imKWk+ROrxULK9L7U=
X-Received: by 2002:a17:906:16c9:: with SMTP id t9mr4706299ejd.104.1635420077776;
        Thu, 28 Oct 2021 04:21:17 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-56-54-101.retail.telecomitalia.it. [79.56.54.101])
        by smtp.gmail.com with ESMTPSA id q17sm1148529ejp.106.2021.10.28.04.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 04:21:17 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Karolina Drobnik <karolinadrobnik@gmail.com>, Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/7] staging: vt6655: Introduce `data` temporary variable
Date: Thu, 28 Oct 2021 13:21:16 +0200
Message-ID: <2039159.k92FijXA2m@localhost.localdomain>
In-Reply-To: <dc72a4c3539aed70569f66396ed3b51818bc2aea.1635415820.git.karolinadrobnik@gmail.com>
References: <cover.1635415820.git.karolinadrobnik@gmail.com> <dc72a4c3539aed70569f66396ed3b51818bc2aea.1635415820.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

On Thursday, October 28, 2021 12:35:34 PM CEST Karolina Drobnik wrote:
> Add a variable to store initialization tables. Use this variable
> in AL2230 initialization.
> 
> Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> ---
>  drivers/staging/vt6655/rf.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index ea74701917e5..afd202ea3356 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -684,6 +684,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, 
unsigned char rf_type,
>  	unsigned short idx = MISCFIFO_SYNDATA_IDX;
>  	unsigned char init_count = 0;
>  	unsigned char sleep_count = 0;
> +	const unsigned long *data;
>  
>  	VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
>  	switch (rf_type) {
> @@ -699,8 +700,9 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, 
unsigned char rf_type,
>  		if (init_count > (MISCFIFO_SYNDATASIZE - sleep_count))
>  			return false;
>  
> +		data = al2230_init_table;
>  		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
> -			MACvSetMISCFifo(priv, idx++, 
al2230_init_table[i]);
> +			MACvSetMISCFifo(priv, idx++, *(data++));

Hi Karolina,

I think you are using redundant parentheses in "* (data ++)" but understand 
that those increments and dereferences are equivalent to "* data ++" 
(according to the C precedence rules).

Some time ago I suggested that you use those redundant parentheses because
Greg Kroah-Hartman had previously explained that he prefers not to see 
"*foo++" because maintainers and reviewers are not required to remember the C 
precedence rules.

I hope my suggestion isn't based on a misunderstanding of what Greg wants 
here and that your patch can be accepted as is.

While we are at it, please notice that Maintainers of different subsystems 
may see this topic from a different point of view and that they might very 
well ask you for removing those redundant parentheses.

I'd suggest to use grep and find out what is preferred in other subsystems, 
when you want to contribute to other parts of Linux.

Thanks,

Fabio

>  		MACvSetMISCFifo(priv, idx++, 
al2230_channel_table0[channel - 1]);
>  		MACvSetMISCFifo(priv, idx++, 
al2230_channel_table1[channel - 1]);
> -- 
> 2.30.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
"outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/
outreachy-kernel/dc72a4c3539aed70569f66396ed3b51818bc2aea.
1635415820.git.karolinadrobnik%40gmail.com.
> 





