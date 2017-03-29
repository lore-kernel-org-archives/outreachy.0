X-GM-THRID: 6402897717905850368
X-Received: by 10.107.164.99 with SMTP id n96mr335737ioe.70.1490799137518;
        Wed, 29 Mar 2017 07:52:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.46 with SMTP id h43ls17458951ote.9.gmail; Wed, 29 Mar
 2017 07:52:16 -0700 (PDT)
X-Received: by 10.200.49.99 with SMTP id h32mr257742qtb.71.1490799136953;
        Wed, 29 Mar 2017 07:52:16 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id u204si500109vke.5.2017.03.29.07.52.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 07:52:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id y16so2543807vky.1
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 07:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=P0GR+hq2S+jTGIaBesWlSPTgj8n2RnPkfwQFnmYtTng=;
        b=bQjWjzRI1SCWlYHayKgr6NzSmlh5zYVFZ8wyjfIMqRBH2rukpdsa7dysdNP40LYqho
         +ylZB/wvSuUPPdGR+hWKv01yoMYZTr5V14ziXE8czSNiqDna1eJ0xoodDl445aybm71E
         cqiALpYgoASK7BxGfePxpZaQZ/LYR156N5muXpBgagFfsI425b/N4rCkcC5cNtgjwYX+
         ZBGucFIYydlVFzGJ8G9LKqlyRDcb02yQQDRGnDaRTq6+xnUQBHkWYavCklkPOyk2MLvx
         NiOVTpvDeOmHimA7B2IMcC0TCJ0qxq1PwDpmgm6NHEZTqbDKm4HjWqaPTIiWjftGkHm7
         f7Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=P0GR+hq2S+jTGIaBesWlSPTgj8n2RnPkfwQFnmYtTng=;
        b=RAtCTul0nWN2H3iVrrI8mY9zpWZOoliJ6yWX7m5sHK7U4Mh0nU18bii35wmUFs926f
         piCDXUYoaqmtB5N25ypF56GijavgCS3TKn326zRxv+Usuv6r/ZVvuQ+aBZeGTHbWqvfr
         LOWdUzi/ljpc35yof2VIv67T0IUgIMsMo07qBR3y5mhRuSjYo8bDgYWvnWftF5uMte2s
         0WsmlrbNYncRydpklptJawqBb4GsEySk0yN4/ddJZw8OM6hkGT9O0AqJN+9DZhTYMCU8
         gJAct0u/47/ETRq5UUVJS6pIYMQ0Z9+S/WSfmwudStEur9MJlub9Tdv+vsW8sOoP+D1p
         dcAw==
X-Gm-Message-State: AFeK/H2cydcOiIt6uuJoj74Fp1PWE/J/zZ07w9GFXl/q7vS6bzl+OJDDjZDb5VR+NFai9M+4nB/om2zH/tzqZg==
X-Received: by 10.31.218.195 with SMTP id r186mr384224vkg.112.1490799136650;
 Wed, 29 Mar 2017 07:52:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.212 with HTTP; Wed, 29 Mar 2017 07:52:16 -0700 (PDT)
In-Reply-To: <bd1805f2-4c8b-f51a-89fc-87d719f20ed6@metafoo.de>
References: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>
 <1490790791-5694-5-git-send-email-singhalsimran0@gmail.com>
 <alpine.DEB.2.20.1703291440070.2989@hadrien> <bd1805f2-4c8b-f51a-89fc-87d719f20ed6@metafoo.de>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Wed, 29 Mar 2017 20:22:16 +0530
Message-ID: <CALrZqyNRRC76QONYRxdtjrg9RyeZth=f+BzFywpvWbB_YYLHkg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/4] iio: light: si1145: Replace
 ternary operator with min macro
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Julia Lawall <julia.lawall@lip6.fr>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 29, 2017 at 6:23 PM, Lars-Peter Clausen <lars@metafoo.de> wrote:
> On 03/29/2017 02:40 PM, Julia Lawall wrote:
>>
>>
>> On Wed, 29 Mar 2017, simran singhal wrote:
>>
>>> Use macro min() to get the minimum of two values for brevity and
>>> readability.
>>>
>>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>>> ---
>>>  drivers/iio/light/si1145.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/iio/light/si1145.c b/drivers/iio/light/si1145.c
>>> index 096034c..e7ad6fb 100644
>>> --- a/drivers/iio/light/si1145.c
>>> +++ b/drivers/iio/light/si1145.c
>>> @@ -557,7 +557,7 @@ static int si1145_set_chlist(struct iio_dev *indio_dev, unsigned long scan_mask)
>>>      data->scan_mask = scan_mask;
>>>      ret = si1145_param_set(data, SI1145_PARAM_CHLIST, reg);
>>>
>>> -    return ret < 0 ? ret : 0;
>>> +    return min(ret, 0);
>>
>> A similar change involving max was already rejected.  ret < 0 is a
>> standard way of detecting an error, so perhaps leaving that explicitly
>> present will be preferred.
>
> I think a more sensible thing to do here is to check whether ret/err can
> actually take any positive values and if not, replace the whole thing with
> just 'return ret;' or 'return some_fn()'. I'd expect that his can be done in
> most of the cases.
>

