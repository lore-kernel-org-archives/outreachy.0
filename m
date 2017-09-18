X-GM-THRID: 6465168256299696128
X-Received: by 10.176.72.173 with SMTP id x42mr21356949uac.102.1505731748925;
        Mon, 18 Sep 2017 03:49:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.10.133 with SMTP id 127ls2376188itw.20.gmail; Mon, 18 Sep
 2017 03:49:08 -0700 (PDT)
X-Received: by 10.107.145.198 with SMTP id t189mr7941505iod.120.1505731748242;
        Mon, 18 Sep 2017 03:49:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505731748; cv=none;
        d=google.com; s=arc-20160816;
        b=ZglH1A0vC1s1OiWP9w9/nu7OYx1AmoYLCZndNfh+YZ7mERoKbqvSNa4wfxEglSPyQT
         2GHLrpgb5+IrRDcW01VoSg7UuvaFt+7B9ydz1vXz1HkDGKxO4AHhhPplGBfApsoUd03m
         Wr4ul9bx7BvYJXaonPsbuyeHhPqMqPPhdLQfsdNpt5AzbsVVjx42KA0pcY4thmN2xvGY
         1Q7zDWT4qdy9TUc9P/1fMBKH7tZZNwvDlFgbu4BYP/cVmmE+cK2gfKk4qOk3O+7RkxEV
         7C6S5kGqd8KsxORnDtD9nZwhQW8JbhV0xM2FcaQ0cKpFCCNmyx6tumT1VY1LaRvmyTRO
         aENQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=bxSKLgq0ImBKSy49aydwVy03y4x5TFB2gUoLa4Um6mA=;
        b=0JCwuwL6ACD4DMfSDz0Yhtz6SGYbxujP3oVhIENjCoaNoFeXj86GhZTg7iRYD2wzJq
         ned6TdVvEhgLIn6Clh7hqRhqtVJNbN2pmdDVymoAvD1pBiJdc1vBB30bk3HUoJL1Ha5w
         x9M3BVR5jAagpPqszJ4B2yBycrXdcY7+6biyZe8dn1lGF1GTPRqI7AOWQQ0jpV247sx3
         nDxeFnWVxt2B5+ATbRtFpNZTpb2aLNw5Ze0M7bCWT6X14hmnCA2DwTRB9jdIN5ANp3ac
         9vWf3v3Im20SlbEvF4bQzDl68nn5FTyN6qKjhTWUaRVTv7I2b60y/TfO4t46772qyjbK
         ng0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L8l6LmIR;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id w65si335012ywg.18.2017.09.18.03.49.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 03:49:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L8l6LmIR;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x242.google.com with SMTP id e9so551731iod.5
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Sep 2017 03:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=bxSKLgq0ImBKSy49aydwVy03y4x5TFB2gUoLa4Um6mA=;
        b=L8l6LmIRSVuUGLDs6CBA5Ow/MsHTJHfgRCRYrtagk8/C84gPLjpMDOu2DtNMEDaWAM
         Vl04np0a7CvJmOiaIn9lmqhDr5syjvzs+zUW2QspjaWNdeDbd1KIJMV/QKVp0+BAmTgp
         3UYJyaOiSMUsiw3ORFe5XQaTSH3UvIbFhAQpU/1puTP4sbQDJrvul0nv9h9IiS4G2OQl
         91MVe8EQLoefyHlyIgrp147heuUxpWZp7AHTjU9N8N3rWru/hd2aCBy5lyNKAJhHqBSR
         yAzmeaIogTQmTsU2Xjs0/IbGzSSOXPGhCwAW8AXqUE0iX0IsOK5zUNqSmBOcbSAjwJN5
         5IJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=bxSKLgq0ImBKSy49aydwVy03y4x5TFB2gUoLa4Um6mA=;
        b=cEplzCj6zW/R2da/ev0QOTBkRXPFwgdchmgy4rvFjB88Ol4Jp92cOyMHtgtwFEmIvu
         mPn/O7i/jkmtR4RDDtq7R7CBU4aUX2c94E/dgqnQqs0Fh85yElX4Fr3iW2tE1zgKCkxt
         8BTUu3nc/XYmcdjxmrQLythPEfpn9wM60sEfm1jDo/OrJZkKU5bbcacsCHqa5eCMqyAx
         xSalxyOP+nyMAdoBwSKpg5mJNKdQycWqxWfwR1x3aAZEZGsgi6VNtyKbzeQ3KZNbieh/
         T8LfLKNUGbFu8RLDi1gH5EN7u+hLI3ov1PABeb0LLb+rCfnQsa0Bk6gdTw33QBDNWDBC
         DSgg==
X-Gm-Message-State: AHPjjUhgfPeEAVKcAekh7PjSUW6DiOr/Dp0tLr2OM5kg7UFa3fJGkFRb
	uwZaCo0hb8LDOjt1nNgSq7yqMK7JAqeOVcUs3pA=
X-Google-Smtp-Source: AOwi7QDeQsGF9EX+copWvLUekvFfvFFEF4ffvp6O1aREFHzQERArpfFBdBWDVshE5d9H1A4Wk/T4xTtFNMhrpXvs44A=
X-Received: by 10.202.166.16 with SMTP id p16mr11218516oie.156.1505731747585;
 Mon, 18 Sep 2017 03:49:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.174.198 with HTTP; Mon, 18 Sep 2017 03:49:07 -0700 (PDT)
In-Reply-To: <A955BE73-0C63-4316-943D-DF9181CE7AC5@jic23.retrosnub.co.uk>
References: <cover.1505291907.git.himshijain.hj@gmail.com> <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com>
 <20170913180310.27cbf1b1@archlinux> <20170913185805.GB26390@kroah.com>
 <5e43ea4d-eab8-c4be-c5dc-2f862578d011@metafoo.de> <A955BE73-0C63-4316-943D-DF9181CE7AC5@jic23.retrosnub.co.uk>
From: Himanshi Jain <himshijain.hj@gmail.com>
Date: Mon, 18 Sep 2017 16:19:07 +0530
Message-ID: <CAKJRnmMwfxz-98qGnR+cMRC=70rE8CUncE3rR=d3=KQkyoTGRQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] include: linux: sysfs: Add __ATTR_NAMED macro
To: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Greg KH <gregkh@linuxfoundation.org>, 
	Jonathan Cameron <jic23@kernel.org>, driverdev <devel@driverdev.osuosl.org>, 
	Daniel Baluta <daniel.baluta@gmail.com>, 
	"Hennerich, Michael" <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Nick Desaulniers <nick.desaulniers@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, Peter Meerwald <pmeerw@pmeerw.net>, 
	Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 14, 2017 at 2:20 AM, Jonathan Cameron
<jic23@jic23.retrosnub.co.uk> wrote:
>
>
> On 13 September 2017 12:23:31 GMT-07:00, Lars-Peter Clausen <lars@metafoo.de> wrote:
>>On 09/13/2017 08:58 PM, Greg KH wrote:
>>> On Wed, Sep 13, 2017 at 06:03:10PM +0100, Jonathan Cameron wrote:
>>>> On Wed, 13 Sep 2017 14:14:07 +0530
>>>> Himanshi Jain <himshijain.hj@gmail.com> wrote:
>>>>
>>>>> Add __ATTR_NAMED macro similar to __ATTR but taking name as a
>>>>> string instead of implicit conversion of argument to string using
>>>>> the macro _stringify(_name).
>>>>>
>>>>> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
>>>>> ---
>>>>>  include/linux/sysfs.h | 7 +++++++
>>>>>  1 file changed, 7 insertions(+)
>>>>>
>>>>> diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
>>>>> index aa02c32..20321cf 100644
>>>>> --- a/include/linux/sysfs.h
>>>>> +++ b/include/linux/sysfs.h
>>>>> @@ -104,6 +104,13 @@ struct attribute_group {
>>>>>    .store  = _store,                                               \
>>>>>  }
>>>>>
>>>>> +#define __ATTR_NAMED(_name, _mode, _show, _store) {                       \
>>>>
>>>> I'm not sure about the naming here.  The normal __ATTR macro is also
>>>> 'named'.  Maybe something as awful as
>>>>
>>>> __ATTR_STRING_NAME ?
>>>>
>>>> Greg what do you think?
>>>
>>> ick ick ick.
>>>
>>>> This is all to allow us to have names with operators in them without
>>>> checkpatch complaining about them... A worthwhile aim just to stop
>>>> more people wasting time trying to 'fix' those cases by adding
>>spaces.
>>>
>>> Yeah, but this really seems "heavy" for just a crazy sysfs name in a
>>> macro.  Adding a whole new "core" define for that is a hard sell...
>>>
>>> I also want to get rid of the "generic" __ATTR type macros, and force
>>> people to use the proper _RW and friends instead.  I don't want to
>>add
>>> another new one that people will start to use that I later have to
>>> change...
>>>
>>> So no, I don't like this, how about just changing your macros
>>instead?
>>> No one else has this problem :)
>>
>>Nobody else realized they have this problem yet. E.g. there are a few
>>users
>>of __ATTR in block/genhd.c that have the same issue and are likely to
>>generate the same false positives from static checkers.
>
> For IIO there is the option of moving these over to the core generated available callbacks, but
> that won't work in every case and is a more major change.  I need to shift a few more drivers
> over to the available callbacks and see how well it works out.  Might find time to do one in a
>  gap between interesting talks this afternoon...

Can I help you in this? It is about exploring options as far as I can
make out, although can't really understand what options are those for
now.

Or do you want me to put comments to not to fix this checkpatch
warning as you suggested earlier?

>
> If I am feeling really keen I might write this missing docs I promised a while back on that stuff. Jet lag dependant...
>
> Jonathan
>>
>>--
>>To unsubscribe from this list: send the line "unsubscribe linux-iio" in
>>the body of a message to majordomo@vger.kernel.org
>>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>
> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.

