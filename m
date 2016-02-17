X-GM-THRID: 6251974012736372736
X-Received: by 10.182.247.68 with SMTP id yc4mr16951743obc.34.1455684332248;
        Tue, 16 Feb 2016 20:45:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.36.73 with SMTP id k70ls1964151iok.104.gmail; Tue, 16 Feb
 2016 20:45:31 -0800 (PST)
X-Received: by 10.107.10.217 with SMTP id 86mr1050545iok.6.1455684331944;
        Tue, 16 Feb 2016 20:45:31 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-io0-x232.google.com (mail-io0-x232.google.com. [2607:f8b0:4001:c06::232])
        by gmr-mx.google.com with ESMTPS id k15si1499461igt.3.2016.02.16.20.45.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 20:45:31 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) client-ip=2607:f8b0:4001:c06::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x232.google.com with SMTP id z135so22791536iof.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 20:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=A2J/FpDkboLmO9oS/qJumCibBWtLHLVwK3PewoSTwLI=;
        b=s7ArK0TC/qD9j3IdEjDaCfiyrDHaBoNXfcglnq1mzxnUyrYcC82O2gSIB9OVATiumy
         1dQrLIEsFtyLkSR4OK/2ZcjSOOobetyvdiueas4laWQcNAnT4waORJq3fQuYgK7d+n2U
         Ydw7AeK94gHrR/3JeaVUfQ5mxH8ZQ+qbbinWpPnSmBWw21xAi+ilbk60Ddk1e+vp+Oh7
         iPYrG7LzabHSBsIKAipKpFK9Uq0UrIX5Fv6bSPml0xSCzUoaLFws+9PNilCDASZXKQZ9
         bPYMNFTtb+MEMgOu23eAKcf4JWqZHs6owOE1JwJ21vsUxwqVX/CiNbrlVQbvg+Z7ECgs
         Ld4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=A2J/FpDkboLmO9oS/qJumCibBWtLHLVwK3PewoSTwLI=;
        b=TBOlOWC0G3wXH6C80ODb+mMkAmtdnW+8UBywTQUkOVhpKejBqToIiH1vjNxH7MBgr6
         iQACqYTqoFoe0WWYTJ93Y5Xh0hgl4l7KP6ftTyFwZn2Zg2sTQzd/kF8jNsuB+HncknkB
         3415ayhiFFGlMr0Zv6axqbblfHrm+gk+lDm6OuqMbyvJ1n6/b75jY6VgZr1Vf/rDfqUp
         VZbZAyxUqxjfECcjAGdLBY5/PUEjBnbzzMx7pcMxOpJ7FXlmQpRjzf8jvQmEg29ih35x
         opSL2GFLzOXg3K4tARYshC7Nid3TvsaBwpy+R3hZJI827XqLUCnlTMTctWaHbBm+QpCE
         9s6g==
X-Gm-Message-State: AG10YOT3a6CHcKnw4L5ruAQYQPTC31Vq89U7HwfAzyWC9fI+GTpjGqabDkhoYVBOyQvPy+wCqrHVgijSb31VIw==
MIME-Version: 1.0
X-Received: by 10.60.227.74 with SMTP id ry10mr19510897oec.48.1455684331826;
 Tue, 16 Feb 2016 20:45:31 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Tue, 16 Feb 2016 20:45:31 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602162000310.2690@hadrien>
References: <1455651118-18615-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.10.1602162000310.2690@hadrien>
Date: Wed, 17 Feb 2016 10:15:31 +0530
Message-ID: <CAOH+1jF35M_3d-7RGCPrP3a5SQ-1amXRFYCG0kwLdTj7c1Cwag@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lov: Pull assignments
 out of function call
From: Bhumika Goyal <bhumirks@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 17, 2016 at 6:30 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 17 Feb 2016, Bhumika Goyal wrote:
>
>> Assignments in function call arguments are undesirable. So pull such
>> assignments out before function call.
>> Made a coccinelle script to detect such cases:
>> @@
>> expression fn,b,d;
>> @@
>> * fn(...,d=b,...);
>
> The script looks fine now.
>
> julia
>
Thanks for the input Julia.

Bhumika

>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/lov/lov_merge.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/lov/lov_merge.c b/drivers/staging/lustre/lustre/lov/lov_merge.c
>> index 97115be..029cd4d 100644
>> --- a/drivers/staging/lustre/lustre/lov/lov_merge.c
>> +++ b/drivers/staging/lustre/lustre/lov/lov_merge.c
>> @@ -129,7 +129,8 @@ int lov_adjust_kms(struct obd_export *exp, struct lov_stripe_md *lsm,
>>                              "stripe %d KMS %sing %llu->%llu\n",
>>                              stripe, kms > loi->loi_kms ? "increase":"shrink",
>>                              loi->loi_kms, kms);
>> -                     loi_kms_set(loi, loi->loi_lvb.lvb_size = kms);
>> +                     loi->loi_lvb.lvb_size = kms;
>> +                     loi_kms_set(loi, loi->loi_lvb.lvb_size);
>>               }
>>               return 0;
>>       }
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455651118-18615-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

