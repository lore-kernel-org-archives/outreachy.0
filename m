X-GM-THRID: 6206247613706010624
X-Received: by 10.180.208.7 with SMTP id ma7mr1275103wic.5.1445007992348;
        Fri, 16 Oct 2015 08:06:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.212.195 with SMTP id l186ls172568lfg.67.gmail; Fri, 16 Oct
 2015 08:06:31 -0700 (PDT)
X-Received: by 10.112.181.10 with SMTP id ds10mr3711998lbc.3.1445007991665;
        Fri, 16 Oct 2015 08:06:31 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id hs5si132881wib.1.2015.10.16.08.06.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 08:06:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ll6so14418497wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 08:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=BeOk7ZKJV5INm1hSgkXBL+58HbpNZ/Tw+9jZSU/WEsQ=;
        b=ybO3dI6k4AcPzwLR4gTVEhjzhOud+Np5I9aVVzhQiOQEtucW025Ysa4syGPzmXQLY7
         GgoPkQFsht4Y04wGSyaf/2utimgjzEZOc9DTSygoB3tKMMuq65FISSeZgHku7n9rPaMx
         bKxXykFYGViEcSLfD84CadRjX2BhWZiKJC7CU0Zw6tknLQZDxwlKwy0lXrk0YObhekzK
         AZkYversEeqmHB6ESjDe4lG0EZTNRuSO9G/EEjGpJdIjbrCdAxgDmu29FYT4n7smdvPf
         OWWN1nlVWCI8UJaOR61GwleGfu03MZCLNx0akmcXqvSVgU8aTZIrmKBxclk8mnounTKI
         wDRQ==
MIME-Version: 1.0
X-Received: by 10.194.52.6 with SMTP id p6mr19372580wjo.119.1445007991516;
 Fri, 16 Oct 2015 08:06:31 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Fri, 16 Oct 2015 08:06:31 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510161621210.2459@hadrien>
References: <20151016141011.GA14411@ubuntu>
	<alpine.DEB.2.10.1510161621210.2459@hadrien>
Date: Fri, 16 Oct 2015 20:36:31 +0530
Message-ID: <CAKHNQQEh3JHw-u=f8MZBSzU1UvGjUpnvVPD=+qPh83WDbdrDtw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: tsl2x7x_core: Remove
 extra parentheses from DIV_ROUND_UP
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Shivani


On Fri, Oct 16, 2015 at 7:57 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Fri, 16 Oct 2015, Shivani Bhardwaj wrote:
>
>> Remove parentheses surrounding the first argument of the macro
>> DIV_ROUND_UP as they are not required.
>> Semantic patch used:
>>
>> @@
>> expression n,d;
>> @@
>>
>> - DIV_ROUND_UP((n),d)
>> + DIV_ROUND_UP(n,d)
>
> This is just a comment; no need to change anything.
>
> In Coccinelle, there is a notion of isomorphism, where it will take the
> term that you write and convert it to other terms that are "pretty much"
> the same.  One of these isomorphisms is to remove parentheses.  Thus, if
> you run spatch --parse-cocci this_sp.cocci, you will see that it matches
> both the case where the parentheses are there and the case where they are
> not there, and transforms both of them according to your + code.  In your
> case, this will amount to saying
>
> - DIV_ROUND_UP(n, d)
> + DIV_ROUND_UP(n, d)
>
> which looks completely useless.  But it doesn't actually necessarily do
> nothing at all.  Actually, it will remove DIV_ROUND_UP(n, d), and then use
> its own strategy for pretty printing DIV_ROUND_UP(n, d) again.  Thus the
> output might have some newline that the original code didn't have.  (This
> might be a good thing :).
>
> To avoid it removing code and putting the same code back, you could write
> your rule as:
>
> @@
> @@
>
> DIV_ROUND_UP(
> - (
>   n
> - )
>   ,d)
>
> Now it knows that the () are important to the rule, because they are
> annotated with - and the rest is not.  It will only transform cases that
> actually have the parentheses in this case.
>
> julia
>
>
Thanks, Julia! :) I'm updating the patch.
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/iio/light/tsl2x7x_core.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
>> index 010e607..bf9627e 100644
>> --- a/drivers/staging/iio/light/tsl2x7x_core.c
>> +++ b/drivers/staging/iio/light/tsl2x7x_core.c
>> @@ -418,9 +418,9 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
>>       if (p->ratio == 0) {
>>               lux = 0;
>>       } else {
>> -             ch0lux = DIV_ROUND_UP((ch0 * p->ch0),
>> +             ch0lux = DIV_ROUND_UP(ch0 * p->ch0,
>>                       tsl2X7X_als_gainadj[chip->tsl2x7x_settings.als_gain]);
>> -             ch1lux = DIV_ROUND_UP((ch1 * p->ch1),
>> +             ch1lux = DIV_ROUND_UP(ch1 * p->ch1,
>>                       tsl2X7X_als_gainadj[chip->tsl2x7x_settings.als_gain]);
>>               lux = ch0lux - ch1lux;
>>       }
>> @@ -1057,7 +1057,7 @@ static ssize_t tsl2x7x_als_persistence_store(struct device *dev,
>>       z = y * TSL2X7X_MIN_ITIME;
>>
>>       filter_delay =
>> -             DIV_ROUND_UP(((result.integer * 1000) + result.fract), z);
>> +             DIV_ROUND_UP((result.integer * 1000) + result.fract, z);
>>
>>       chip->tsl2x7x_settings.persistence &= 0xF0;
>>       chip->tsl2x7x_settings.persistence |= (filter_delay & 0x0F);
>> @@ -1103,7 +1103,7 @@ static ssize_t tsl2x7x_prox_persistence_store(struct device *dev,
>>       z = y * TSL2X7X_MIN_ITIME;
>>
>>       filter_delay =
>> -             DIV_ROUND_UP(((result.integer * 1000) + result.fract), z);
>> +             DIV_ROUND_UP((result.integer * 1000) + result.fract, z);
>>
>>       chip->tsl2x7x_settings.persistence &= 0x0F;
>>       chip->tsl2x7x_settings.persistence |= ((filter_delay << 4) & 0xF0);
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151016141011.GA14411%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

