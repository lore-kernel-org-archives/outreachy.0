X-GM-THRID: 6396079372840730624
X-Received: by 10.46.87.27 with SMTP id l27mr3989313ljb.28.1489231941357;
        Sat, 11 Mar 2017 03:32:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.92.71 with SMTP id q68ls1209729ljb.40.gmail; Sat, 11 Mar
 2017 03:32:20 -0800 (PST)
X-Received: by 10.46.87.80 with SMTP id r16mr3959368ljd.12.1489231940818;
        Sat, 11 Mar 2017 03:32:20 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id f7si184234wmg.3.2017.03.11.03.32.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 03:32:20 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id y193so8529713lfd.1
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 03:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=blHfJHeAKkjnQcEoZjkRX9oBF2tn2XBHNqjYkd4bQVA=;
        b=Rn2ezwITWVcTiNZiefsU3WwP5FCsoG4P20P8GakGvzkXiFoeX3MA3fILl1igVdoP3M
         ufA0NbhfBHACwe7Rshm3Jgznk5mQltlyCLFWmFA3cl/cmDe6aw1rJog9OaIuQAUVUtWJ
         3ZWzoCFguq0NE5jlNqluk3qsvkolhADqf4bhI+VmwdqBVzH4YFVEoN2uoHCfykQcoo7I
         DhGboJ38H7ytW19Cmz8Bxur9W8WIq2sJeYteFgFB5aBrPKG4tysuIDs6oNPRG5NDbFI4
         y+LFXayFdnFKkWWWY8T0Kv9QEtOe/e4vcTOeQC/AKznHC/Weh7mvxtzkwE3b/GGAmOkB
         Ntgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=blHfJHeAKkjnQcEoZjkRX9oBF2tn2XBHNqjYkd4bQVA=;
        b=Ra1wUO5N5VWP/uSJfQOhIeoBDMn0I7dh/ZxykLwEtBiaV/loYOhGrc51FtL+xCjzbW
         yYEAtYWiyaSuJl15fsnPhHj14wEjOmfsZuOWwENTLfHx6frNjx2ek53aChtCNUGXmRDh
         YT/U4xZKlEv0T69H3JzRQl2HUrqnNeMKzFnAbkBFw3ev2f4Cq0EQq1NCHFsPsngctvKh
         /UguKUnnXyXjdUbvI9vGznIFsOR5tzIuCpWMgVlJFye7LK87B/ei8ha4NTyA88kQWlTM
         jNdDL7AxP9YIIM/ay/bNQJA7fZtyR3exxtvcZdi4CsGEs/fbulH28Mfg5hB4kiTKLniC
         pHFw==
X-Gm-Message-State: AMke39mdVz0lv43TwO7EDPO3/+Jb4hIex5jjPsEhSKEXqxoE41qNdWtTrx5MXs6KTwMOw+ZtJN/c0KchUPBapw==
X-Received: by 10.46.9.136 with SMTP id 130mr7606763ljj.87.1489231940468; Sat,
 11 Mar 2017 03:32:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sat, 11 Mar 2017 03:32:20 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703111025390.2202@hadrien>
References: <1489203401-17518-1-git-send-email-singhalsimran0@gmail.com>
 <alpine.DEB.2.20.1703110741530.2202@hadrien> <CALrZqyODTiF+gdwwYnmL1W1oi-R0u2rM4c40jb5iWXFxJpfdJw@mail.gmail.com>
 <alpine.DEB.2.20.1703111025390.2202@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sat, 11 Mar 2017 17:02:20 +0530
Message-ID: <CALrZqyMcYgzH27n4gnRH5ydMajNJNs2n_n86hvQspeOMk0WoNg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 00/10] staging: iio: Remove exceptional
 & on functions name
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael.Hennerich@analog.com, 
	Jonathan Cameron <jic23@kernel.org>, knaack.h@gmx.de, Greg KH <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 11, 2017 at 2:57 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 11 Mar 2017, SIMRAN SINGHAL wrote:
>
>> On Sat, Mar 11, 2017 at 12:12 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Sat, 11 Mar 2017, simran singhal wrote:
>> >
>> >> This patch-series removes exceptional & on functions name.
>> >
>> > The semantic patch shown does nothing to check that the use of & is
>> > exception in the given file.  It just removes all the & on function names.
>> >
>> yes, I used this semantic patch only for only finding the functions with &
>> and then I find out this drivers and use semantic patch for removing &.
>
> The commit message should be written with respect to what was actually
> done, and not copied from a patch that actually did something else.  The
> original semantic patch, that was probably only put in the cover letter,
> actually checked if the file mostly used function pointers in a particular
> way.
>
Julia, so what should I do?
I should not include this semantic patch as it does not check that that the use
of & is exception in the given file.
OR
As I did it manually so I should mention this.

> julia
>
>>
>> > julia
>> >
>> >>
>> >> simran singhal (10):
>> >>   staging: iio: ad7192: Remove exceptional & on function name
>> >>   staging: iio: ad7780: Remove exceptional & on function name
>> >>   staging: iio: cdc: ad7746: Remove exceptional & on function name
>> >>   staging: iio: cdc: ad7152: Remove exceptional & on function name
>> >>   staging: iio: adis16240: Remove exceptional & on function name
>> >>   staging: iio: adis16201: Remove exceptional & on function name
>> >>   staging: iio: adis16209: Remove exceptional & on function name
>> >>   staging: iio: adis16203: Remove exceptional & on function name
>> >>   staging: iio: resolver: Remove exceptional & on function name
>> >>   staging: iio: gyro: Remove exceptional & on function name
>> >>
>> >>  drivers/staging/iio/accel/adis16201.c     |  4 ++--
>> >>  drivers/staging/iio/accel/adis16203.c     |  4 ++--
>> >>  drivers/staging/iio/accel/adis16209.c     |  4 ++--
>> >>  drivers/staging/iio/accel/adis16240.c     |  4 ++--
>> >>  drivers/staging/iio/adc/ad7192.c          | 12 ++++++------
>> >>  drivers/staging/iio/adc/ad7780.c          |  2 +-
>> >>  drivers/staging/iio/cdc/ad7152.c          |  6 +++---
>> >>  drivers/staging/iio/cdc/ad7746.c          |  4 ++--
>> >>  drivers/staging/iio/gyro/adis16060_core.c |  2 +-
>> >>  drivers/staging/iio/resolver/ad2s1200.c   |  2 +-
>> >>  drivers/staging/iio/resolver/ad2s90.c     |  2 +-
>> >>  11 files changed, 23 insertions(+), 23 deletions(-)
>> >>
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489203401-17518-1-git-send-email-singhalsimran0%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALrZqyODTiF%2BgdwwYnmL1W1oi-R0u2rM4c40jb5iWXFxJpfdJw%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

