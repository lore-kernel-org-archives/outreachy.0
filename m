X-GM-THRID: 6402897717905850368
X-Received: by 10.200.39.202 with SMTP id x10mr256946qtx.84.1490799206663;
        Wed, 29 Mar 2017 07:53:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.48.22 with SMTP id d22ls5470296otc.43.gmail; Wed, 29 Mar
 2017 07:53:26 -0700 (PDT)
X-Received: by 10.157.41.1 with SMTP id d1mr289108otb.24.1490799206259;
        Wed, 29 Mar 2017 07:53:26 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id h4si544474vkd.3.2017.03.29.07.53.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 07:53:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id y16so2550189vky.1
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 07:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=N8IAy7EJTMY0+asu8GEPdLpHnrRkrdemilB9OZcOv20=;
        b=XaLF/x9CmDlnv/kKlZZGgQ+5/Vt2SVnUwaJtVe3xO5IJDxA7Fo9Ro6W3KL8GcfZ2QD
         0Mx7SU4IRJooGCnymwOVtjtYSoplIvJGl2yQ9rwtQtaE5DPAwPCpVQ3HM0+pQZlN9hBa
         dipQdXzEktthjGC+6TyL13drG4SmMUEi7DU1+dnEhcBsE6r+JnbSQ+0DXbj3xFA5d1/k
         KusbDjzcfNLn9n4gKj8lZy/HCO+64Sccceb5nuzsWAx/W9z8d1ZEot94wnEJfPoKfAGq
         o/XDMzqbZAjsiY9evLFy5bgTKfQsTawhqdSDEHbmeRcFnpGGMHuz3swSjg9LiusR9LVx
         69/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=N8IAy7EJTMY0+asu8GEPdLpHnrRkrdemilB9OZcOv20=;
        b=WUbobeyURP4Vz0x6lxhbydC9vHb4UAO50gyMriU4ER1YbZQI3fPYJXJhfXkN1cPRo4
         Bsn6K2EW3AX+93V1U4V3Xs9C+N/r9D9ad/36WacauJDXKx+Ffmb+NWgNjvWAlN6enN4N
         yMmyMKxEzFgjcFisRKAcHA1zHqhyK9s7qwdCDzzz5jf9G8JfJKTRODKWI930fYzLeKwl
         2bngQNL6r7lWvE3cBTrinifEq1yVoLm8Lq52gFtwhDmkQVONm/vMFjRxQly/ngcBAIVD
         +Fy9XtWVdgUabENpnMnUDZDzW3bjqbWmnpM92JxzDCYdgrfhsuMGoi3ODBzPy1ab9ohH
         Mkfg==
X-Gm-Message-State: AFeK/H3geZShEC9YVgm81ICjNWdbrXHB/nNja1ZSyHFtdH56YqikQMtipTfc0NX6zo4QXweAoeygXU16u0h9dg==
X-Received: by 10.159.39.66 with SMTP id a60mr406321uaa.28.1490799205916; Wed,
 29 Mar 2017 07:53:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.212 with HTTP; Wed, 29 Mar 2017 07:53:25 -0700 (PDT)
In-Reply-To: <CALrZqyNRRC76QONYRxdtjrg9RyeZth=f+BzFywpvWbB_YYLHkg@mail.gmail.com>
References: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>
 <1490790791-5694-5-git-send-email-singhalsimran0@gmail.com>
 <alpine.DEB.2.20.1703291440070.2989@hadrien> <bd1805f2-4c8b-f51a-89fc-87d719f20ed6@metafoo.de>
 <CALrZqyNRRC76QONYRxdtjrg9RyeZth=f+BzFywpvWbB_YYLHkg@mail.gmail.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Wed, 29 Mar 2017 20:23:25 +0530
Message-ID: <CALrZqyOvQjwd49q2mkfy-2=2a0bepxbCc-686+sBtrk0ABRQrA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/4] iio: light: si1145: Replace
 ternary operator with min macro
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Julia Lawall <julia.lawall@lip6.fr>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 29, 2017 at 8:22 PM, SIMRAN SINGHAL
<singhalsimran0@gmail.com> wrote:
> On Wed, Mar 29, 2017 at 6:23 PM, Lars-Peter Clausen <lars@metafoo.de> wrote:
>> On 03/29/2017 02:40 PM, Julia Lawall wrote:
>>>
>>>
>>> On Wed, 29 Mar 2017, simran singhal wrote:
>>>
>>>> Use macro min() to get the minimum of two values for brevity and
>>>> readability.
>>>>
>>>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>>>> ---
>>>>  drivers/iio/light/si1145.c | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/iio/light/si1145.c b/drivers/iio/light/si1145.c
>>>> index 096034c..e7ad6fb 100644
>>>> --- a/drivers/iio/light/si1145.c
>>>> +++ b/drivers/iio/light/si1145.c
>>>> @@ -557,7 +557,7 @@ static int si1145_set_chlist(struct iio_dev *indio_dev, unsigned long scan_mask)
>>>>      data->scan_mask = scan_mask;
>>>>      ret = si1145_param_set(data, SI1145_PARAM_CHLIST, reg);
>>>>
>>>> -    return ret < 0 ? ret : 0;
>>>> +    return min(ret, 0);
>>>
>>> A similar change involving max was already rejected.  ret < 0 is a
>>> standard way of detecting an error, so perhaps leaving that explicitly
>>> present will be preferred.
>>
>> I think a more sensible thing to do here is to check whether ret/err can
>> actually take any positive values and if not, replace the whole thing with
>> just 'return ret;' or 'return some_fn()'. I'd expect that his can be done in
>> most of the cases.
>>

Lars, I will check it and resend it.

