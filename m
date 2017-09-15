X-GM-THRID: 6465882401621934080
X-Received: by 10.36.107.78 with SMTP id v75mr1484410itc.29.1505457742380;
        Thu, 14 Sep 2017 23:42:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.135 with SMTP id y129ls3087396iod.32.gmail; Thu, 14
 Sep 2017 23:42:21 -0700 (PDT)
X-Received: by 10.107.34.85 with SMTP id i82mr2508222ioi.61.1505457741616;
        Thu, 14 Sep 2017 23:42:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505457741; cv=none;
        d=google.com; s=arc-20160816;
        b=toYuSatNKl6/rFPV2vYG6uWayJ1DtGsbMFqX1eL9dVpYKK4JEjTt6JJkyO1QLYZ11M
         /WoJO/RyJyNQwBOTsJh8z1LDRVUeq3nd6px/n5U9ggRhkN957UhCWcOivzmfzA20WJpv
         8tnPpmkrnNiS5UKC5SFpqIzvEsyUddXkVBUAVKCG/37iEB3wOEA47th/PEm5Nmi+b6by
         6LZTGXucd6bxkt8Lb/s+wjmt0EDFWvLguIhMaR8Hv980y5RfsbFIEtgzrQqeBznsKQMx
         Nte0zMRJ6rxDlz2mWiaemdlTmfhyb7qIfJBFua+VA6BqWMzXe/uIpJ81ZpDy0+4QpQ5X
         G1nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=HXr2qpgq/qcGv3+uroUd9IV4fb8rtAZ6k1hoQc9PMi0=;
        b=i5HSpd5NnuCdHLaNrByPQF1H47NLbbfD7+3Z2cTWX3n/Hah9xlFugYD6Zoiyd6TRS+
         XEQSo54p5ZtZ71IcP+8LLwpbZgFYcVWu72wKIbz8X9rchO1I0e21hdLqlvcVcGK9J/BW
         fTilvvNwm3Py8imdYeuob5kee0EmqRcvmJJfRbn++o9uqwpd6nhfIpx8SyeAQwun/7jO
         7ELdNuYRu7sINBzDSgiqQ/EwPYh9aGJTObqsAz2Uk2DwYQ/SPTMdDdCaWiCgBumsqa1A
         ShVZBrC5ARx0GurbWjMvopUw76rBbfLlbt4Nk3OFlTkSPZafED06RxjJWuMBSEm5jPXn
         RNLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=twDKdTLU;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id k199si7572vka.9.2017.09.14.23.42.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:42:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=twDKdTLU;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id o22so364483vke.5
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 23:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=HXr2qpgq/qcGv3+uroUd9IV4fb8rtAZ6k1hoQc9PMi0=;
        b=twDKdTLU+e5i5IEoyOnfFIzFcsQc7DtHA5KRx+tugdwTMpEVf3BGx1gwwa748gQd1B
         9JF5pcVgomUoDOkoq7VDuFhrdORAroVfnWzj6mcklEgnhMsqjbYM961wA+2WdLeWQRlP
         p0oTJdN5bTXJB7rOcC+Ox7v3+sYfBSNlhJBngGHe6I1jsRv8c3fBLMDBaNtMgXH0ytLZ
         4r2UDe8H+hhk2z2Bm5UwwjcGdoMex+y3EGtlmlsTdfto1okBLnTWuhtxh5z498mxLT+h
         jC9cQpzH9ugkdY+7eyC4bc0tTwfWsvP5ZRiKD6GQNwTgzJN2+p9/zkmc+KLuf/hmz9PP
         9B2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=HXr2qpgq/qcGv3+uroUd9IV4fb8rtAZ6k1hoQc9PMi0=;
        b=BNzoKlMa6zwaKXPV+zjxGg4T7H/mdICM/e9DraBPuIwATybOIIWQlniiVroC32kKd3
         YtraUv70MxOo6mDnKi4bCIcIHpwqg5222/yc48Ek0q7YyQaB+jkMN/1Fc0RJhgHzPlVu
         3flKyCw5P9FH+fJhDEoysjxpws6/WB6V7ivDZCK0G0jRVfmSl8wJtGvMHn5rsT/6CjJS
         AS/C6Fl97ar2jNVoIEcnxYVLCresQ7BOjGhhWioLEI9cWULf8mQWPYI+J4weyZABBvSf
         xo+4dYvTb/dybaMd0o26IQlbcE954D8/pMkAk6xcTiiwkgoSFYyVrNzLj5Gih8YBhjz1
         D0/w==
X-Gm-Message-State: AHPjjUiYAwYmn4FfkUtxwoyj4sUUzVi/55D8JopqR/lJSIn6D4ABgM4b
	nI3mevYTRB4/t6EzLk8coRiceqyTWb7fttN6P2I=
X-Google-Smtp-Source: AOwi7QA9ZbPk7c2DKl7pjoJeOgHpCYwh2402+bpjLD5l8udFrVV1hez5BGs44wDdBeRdvFiiX6o3Z+qFnj8sBtxS80A=
X-Received: by 10.31.60.203 with SMTP id j194mr15447521vka.134.1505457741305;
 Thu, 14 Sep 2017 23:42:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.2.149 with HTTP; Thu, 14 Sep 2017 23:42:20 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709150820250.2287@hadrien>
References: <1505455551-14649-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1709150820250.2287@hadrien>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Fri, 15 Sep 2017 12:12:20 +0530
Message-ID: <CAHXiS58xWtzqVeKcO7ZdSoqeFs196ETbvVSBBH4RQ7xgcfKo=A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: fid: fix line over 80 characters
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
	Andreas Dilger <andreas.dilger@intel.com>, James Simmons <jsimmons@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 15, 2017 at 11:51 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 15 Sep 2017, Aastha Gupta wrote:
>
>> This patch fixes checkpatch.pl warning:
>>
>> WARNING: line over 80 characters
>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/fid/fid_request.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> This one is on the same file as the one I acked, but is not in a series
> with it.  And they have the same subject line.
>
> julia
>

This is 'fid' and that was 'fld'.Both are different files.

>>
>> diff --git a/drivers/staging/lustre/lustre/fid/fid_request.c b/drivers/staging/lustre/lustre/fid/fid_request.c
>> index ba73623..6a98225 100644
>> --- a/drivers/staging/lustre/lustre/fid/fid_request.c
>> +++ b/drivers/staging/lustre/lustre/fid/fid_request.c
>> @@ -279,7 +279,8 @@ int seq_client_alloc_fid(const struct lu_env *env,
>>       *fid = seq->lcs_fid;
>>       mutex_unlock(&seq->lcs_mutex);
>>
>> -     CDEBUG(D_INFO, "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid));
>> +     CDEBUG(D_INFO,
>> +            "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid));
>>       return rc;
>>  }
>>  EXPORT_SYMBOL(seq_client_alloc_fid);
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505455551-14649-1-git-send-email-aastha.gupta4104%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

