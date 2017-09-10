X-GM-THRID: 6463854288984604672
X-Received: by 10.107.52.68 with SMTP id b65mr4949078ioa.71.1505034870988;
        Sun, 10 Sep 2017 02:14:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.223 with SMTP id 92ls219853iol.7.gmail; Sun, 10 Sep
 2017 02:14:30 -0700 (PDT)
X-Received: by 10.107.132.21 with SMTP id g21mr411938iod.15.1505034870341;
        Sun, 10 Sep 2017 02:14:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505034870; cv=none;
        d=google.com; s=arc-20160816;
        b=mZZsXhfZ5Hh5tJdwItiCK2ebbfUqa/2u9bWE5CNsvXIJd1Zwr3dZlKe4dMp0Fyh73N
         Qqr9MaeaY7+E5DioXI8jhOI4zaNyBFd71CK+0ofe4tDOlEyczvA50rjI4AtHpgyOQQVp
         qdbpcmjBG035euNYYJBcL4nINz6676NljAQSZdP9UFV6gt80643H9VW8PsYneac1a47a
         kIhCmyakEYHadSRQlxbjeZLwI+DqB+B0/ugIJTYAc/wXe9ILxoXKc94f8EbWm1xRduMy
         OmROOSM/73Xt6exWvpuTS0SqqtN0zuV3GNWcv9SDXdEU8noU+sM8AXt4OxgXuiTOkzkn
         REMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:arc-authentication-results;
        bh=55oO/cjdsg7Zt1sj0kfZ/pbk1+qpvPvdyQoNalyrOAA=;
        b=aL20CDvNsXSMhWr3A1+CG3wu8QeXnBp8LIoiDIsmUr39cxCbiAhSPV3YdkS8SsOE7D
         O74nGzntlVUU44Efimfga6YkmP/6NnYGaACXtXJ40TmSoG/molm4MoOzoSFxe+ypckVO
         gYrm5KPxIUPFiNo+vL/+5TntaewY/hyYXufZLDUlhk7gjNVz7lnDYasDVzBN7xd//PWt
         A6iiC4seu09/uCgwfuq4/+0+ulh7mkLmy1InJJ7cmxrPU9JENRoMCdNgfRIueWKO+ZYN
         R0CLAleTc9v2QL2Kz9hbhV0w8vIQfFaNW9la+lrHs2ohEAUBujoeK72Y3rjng0mtUuep
         0btQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mx32N8C5;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u19si657572pfl.4.2017.09.10.02.14.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 02:14:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mx32N8C5;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i130so1286529pgc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 02:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=55oO/cjdsg7Zt1sj0kfZ/pbk1+qpvPvdyQoNalyrOAA=;
        b=Mx32N8C5Uyp/aoabdqaE3xDlieMKpXrj3Hyt/jbKf1R0F+RrwqBjfXOi7BnTfK4KbM
         R+hARv0o+aGX2ucVBaImdBp/RS1r5l6NUma63tjTqQq8OFBOiZrHl2S9QLeM4KNf2hGD
         FRPsTYNqBzKgI7vYZcEGQif3nFWGngA3AyX3C8wUkfy44Jcq5oTFux9IuPAPA2KGogjP
         ZusOBkGxDBiJ//xczqTxOD8mmP+P3zQ2kY4B/M5euK/tOSWuhOOOeB/jVxpg1tSfK3Zt
         qBbru3jTuDtxqq9RuIo5oIt08m4d/okeN06ly7Salf7kFkcByHgagDmqVE2p4BS5Wa6k
         zXPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=55oO/cjdsg7Zt1sj0kfZ/pbk1+qpvPvdyQoNalyrOAA=;
        b=JVbfXEjs/t5TP2vDsKiFmJ4GJzdQQcMC6ScglRoGoqTjgvOx41hhMCgrTYtACWl8Bs
         nKFFp1mr9FGfa10GZNWQUp6aY/mrX19ek3blsmlCIULZibmi8pUw0OlNpHtlknwD9C7d
         2/V84cmr0MLPB0GACK+J/h6175gBsnyXH63Rw0fjiBpqLzjPGxx+WaibLmNytHYDkIMH
         eMjLko5l1Ln/brlUj0mejw46PsuiXb9ektitM0jMiV9soUGODVztUVpIZG16mS6WSwW/
         U7Lzc2LaiTyhBYGwa11B23y1fB1ARJFR1Bhyz0TrgXgijQm2figAvROaNam3+v8WXqp6
         f+PQ==
X-Gm-Message-State: AHPjjUi/B0Qzl37+nPBlZlfGCrqAzU40P2QcVyoc2Hrw5HM2xRTMMSru
	xrLN6QMCwLWFWpmsYeM=
X-Google-Smtp-Source: ADKCNb46A+HlqRp47066mXdUotjf4fb/9P9+W1Xugg4NZsMlg3lF91NrSTgDGe9zSNXTruSm1q/Gow==
X-Received: by 10.101.78.7 with SMTP id r7mr8536177pgt.64.1505034869855;
        Sun, 10 Sep 2017 02:14:29 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.93])
        by smtp.gmail.com with ESMTPSA id i84sm11178017pfj.105.2017.09.10.02.14.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 02:14:29 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: rtlwifi: Remove
 unnecessary 'out of memory' message.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
References: <1505033456-3365-1-git-send-email-shreeya.patel23498@gmail.com>
 <alpine.DEB.2.20.1709101107400.6842@hadrien>
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <3d2a37bd-a0b1-4aa9-9c6a-46382b0ad7a3@gmail.com>
Date: Sun, 10 Sep 2017 14:44:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1709101107400.6842@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On Sunday 10 September 2017 02:41 PM, Julia Lawall wrote:
>
> On Sun, 10 Sep 2017, Shreeya Patel wrote:
>
>> Logging messages that show some type of "out of memory" error
>> are generally unnecessary as there is a generic message and
>> a stack dump done by the memory subsystem.
>>
>> These messages generally increase kernel size without much
>> added value.
>>
>> Problem found by checkpatch.
>>
>> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
>>
>> Changes in v3:
>>    -Make the commit message more appropriate.
> The changelog needs to be under the ---.  In that way it will be discarded
> when the patch is committed.  When looking at the git tree, the
> information about the previous versions is not relevant, because those
> versions aren't available in the git tree.  Explain all the changes, not
> just the most recent one.  It's a bit awkward in this case because v1
> wasn't sent to the list, but put something for that, so that it will be
> clear why we are up to the current version number.
>
> julia
Ok.
I will do the necessary changes and will send as v4.
>
>> ---
>>   drivers/staging/rtlwifi/rc.c | 4 +---
>>   1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
>> index 65de0c7..779a5c6 100644
>> --- a/drivers/staging/rtlwifi/rc.c
>> +++ b/drivers/staging/rtlwifi/rc.c
>> @@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
>> 	struct rtl_rate_priv *rate_priv;
>>
>> 	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
>> -	if (!rate_priv) {
>> -		pr_err("Unable to allocate private rc structure\n");
>> +	if (!rate_priv)
>> 		return NULL;
>> -	}
>>
>> 	rtlpriv->rate_priv = rate_priv;
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505033456-3365-1-git-send-email-shreeya.patel23498%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>


