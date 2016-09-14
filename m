X-GM-THRID: 6329987466337976320
X-Received: by 10.28.43.129 with SMTP id r123mr628437wmr.6.1473862693744;
        Wed, 14 Sep 2016 07:18:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.142 with SMTP id v136ls39485lfa.53.gmail; Wed, 14 Sep
 2016 07:18:13 -0700 (PDT)
X-Received: by 10.46.5.140 with SMTP id 134mr578500ljf.6.1473862693102;
        Wed, 14 Sep 2016 07:18:13 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id w134si718456wmf.3.2016.09.14.07.18.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 07:18:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id l131so729528lfl.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 07:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=7nXbUUMT+6dFUjSGFU2M9mg3TQe7LXpSstbGBgEtlE8=;
        b=TWyhAdhKq/97iupCt0mt2F4ux11M6v2tBcQhs0hcYj0UiAaBDDhVdwO2mMCql1b3+B
         VxWPC5R06An+C7brENxRyYMZv9ssrRvZ4ISi1tWdh7h1lhxO20JXoe6k+us/BHuYtvto
         4CS5AbakFgqVLFZjXoP50klS9j3KEH7e+mwWm982aZjN4qEdJGqc4hhnBsche0jH8NHJ
         tcm2dv8XEesP5U4lBUy8It9FaQMbMeAPRr7HIm+lJi61nhj3rdcNXFlac0r5WmJ/Hp1W
         HWAhDx5j8DU2QUl/N7Rni+AQ3UiIvovkDInDV5zqd/jBBCitd0UBLa2CsS1CBXAxdxbM
         Zk5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=7nXbUUMT+6dFUjSGFU2M9mg3TQe7LXpSstbGBgEtlE8=;
        b=RPTWfVDGxUMd3A/qnyIIQdRtPgetjaHgiH0RyWf/MUj/QP2sxl6S2Yw1AWhQHN8oqv
         SFd2q8HuKKYhHNjG3bj0qF+PEQD7om7GAB88PayRnhbqTxVjNWSsdYtqA3mIziCXxTD1
         RMcs1w3Bfc/ykpZ7Df8lnb9bXmS42gz2NLtKNDpGKlWHV6SjqbhGxmrKai+3U4FKrNC0
         69el6gi7K/YgfIWhCMoJBKQMjNEbv1zoEOiMJlojjEA9LG9/yR/i6A2sZPqlIFwD5ZIX
         veqquooLmloR6xfOImRoGSYKDWmCmezK3KwAFvEhUCK70OWAeqaZrw6owFmP4C8agQ0U
         BulA==
X-Gm-Message-State: AE9vXwNzaRxXK2LNOasC7fjascWUGUHa5OhttU1yoO2St8yJWcUL9mmCyZyshsh1NQCobCm9AnNju6G74jzudQ==
X-Received: by 10.46.71.149 with SMTP id u143mr1253462lja.18.1473862692717;
 Wed, 14 Sep 2016 07:18:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.208.15 with HTTP; Wed, 14 Sep 2016 07:18:12 -0700 (PDT)
In-Reply-To: <20160914141041.GA2039@katie-Inspiron-5748>
References: <20160914010414.GA441@katie-Inspiron-5748> <20160914051142.GA7205@d830.WORKGROUP>
 <20160914141041.GA2039@katie-Inspiron-5748>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 14 Sep 2016 17:18:12 +0300
Message-ID: <CAEnQRZCagb1u5-4tsezMZ1WvnRFUPmigXPBdvRkX9ZPNtcj=Qw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ad5933: align arguments
 on new line with open parenthesis
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: Alison Schofield <amsfield22@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	"Hennerich, Michael" <michael.hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 14, 2016 at 5:10 PM, Katie Dunne <kdunne@mail.ccsf.edu> wrote:
> On Tue, Sep 13, 2016 at 10:11:43PM -0700, Alison Schofield wrote:
>> On Tue, Sep 13, 2016 at 06:04:14PM -0700, Katie Dunne wrote:
>> > knaack.h@gmx.de, pmeerw@pmeerw.net
>> > Bcc:
>> > Subject: [PATCH] staging: iio: ad5933: align arguments on new line with open parenthesis
>> > Reply-To:
>>
>> Hi Katie,
>> Something odd happened just above here...with the cc list and subject
>> repeating.
>
> Thanks Alison. Something weird happened with mutt where the subject
> disappeared so I had type it twice. I will try to figure out what went
> wrong.
>
>> It looks like some of these can be pulled into less lines.  If it fits
>> within 80 chars, it's fine on one line.  See below.
>
> I wasn't sure if I could do this in the same patch, but that makes
> sense.
>
> I will send a v2.

Hi Katie,

Just to make sure that everything works fine, it's always a good idea
to send the email first only to yourself.

Then if it looks good send it to everybody :). I usually find late problems
with this approach.

thanks,
daniel.

