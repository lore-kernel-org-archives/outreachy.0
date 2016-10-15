X-GM-THRID: 6331784353650049024
X-Received: by 10.25.89.197 with SMTP id n188mr483576lfb.26.1476519151722;
        Sat, 15 Oct 2016 01:12:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.27.14 with SMTP id b14ls324668wmb.19.gmail; Sat, 15 Oct
 2016 01:12:31 -0700 (PDT)
X-Received: by 10.194.134.101 with SMTP id pj5mr452833wjb.15.1476519151249;
        Sat, 15 Oct 2016 01:12:31 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id r82si91936wma.1.2016.10.15.01.12.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 01:12:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id l131so16591153lfl.0
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 01:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=7Uxgsi071o8wWEcptPRCVaHBo9YROTEtfX0PeXCpktM=;
        b=T53abF0vARIW8qd/vj+MieSkXkOVbaIIjawtfJgoxmG6wXcQ45EJI0r4+Wwjo2hLcD
         K346E6ZExuBeqqIV15W2MKsj9X+1s1VqxKyAUhWRh+Iaq2WgckQ1E2pAKuCaYsLAJYpz
         tcB/qrb5HI29OU8yPY9BZj4/kwLCFqZ2Eq/dFpybB/w5hnSQktJ6I8TIWVTgiGoVTatH
         0/15yozNgcGSGhfjgG46Sd0abmPqNQfnQR+g70gAN9RossSVmB0WeWauYafUWSHAAEYs
         gWTrqLpx+WXYyAJxPgeamxXIFKcXdWSvMfvnUzW7wBlu0z6F1JN6c5XQOIdf7PgTPqkR
         DDSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=7Uxgsi071o8wWEcptPRCVaHBo9YROTEtfX0PeXCpktM=;
        b=cYm2jpl+U2EdIK4zYxRg/tK5f1zWkmUYYzm2n903T7sLJLDwsYRdn1McOFuMs6aozn
         0HnhSX1FFRPOhYby6zzNPx9F4EwK/nQI4DTrjJC3cjUKXjw4ClS8F9NV6t7WlSPhAPvO
         r5l25jP8ls90uYCrlmQi+gzYJwzZACHWt5bqmIWXmehHX4pENHvs8qE29qcGdktF8gdI
         jEMe2sCALtQMWQcWUPuknLeDcomO9QDFJ2iJZzzbF9m3BMtB9CfQVsm/uYkdOjhI8jAc
         O6bayx5vNLYz5hHdjXk4xnrO5whOu/h8FAx1+AuKYJ1j5F6d2iIGH/u0I8GLpC07fwcB
         z7xQ==
X-Gm-Message-State: AA6/9RlnXpR6TQFWACTDYMMdsUHUd14PusxUAzQygkW04o0iwdUnCU9lYlFqTLL0iVTrC/jz6CbvkIKBIIUwQA==
X-Received: by 10.25.17.219 with SMTP id 88mr6688901lfr.182.1476519150623;
 Sat, 15 Oct 2016 01:12:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Sat, 15 Oct 2016 01:12:29 -0700 (PDT)
In-Reply-To: <20161014192713.GA2356@d830.WORKGROUP>
References: <1474233410-6932-1-git-send-email-bhumirks@gmail.com>
 <20160919054442.GB2699@d830.WORKGROUP> <CAOH+1jFsWGDVcifqDU0_9MPw=uEXQ+u0E8dg0hkimx+eJbWq1Q@mail.gmail.com>
 <alpine.DEB.2.10.1609191120270.3203@hadrien> <fc36bfeb-abae-f8ad-aca0-161cd6743137@kernel.org>
 <b02b84c9-0575-d10d-6b43-d95d167a2429@metafoo.de> <20161014192713.GA2356@d830.WORKGROUP>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Sat, 15 Oct 2016 13:42:29 +0530
Message-ID: <CAOH+1jGqvpb21CCHEE7OV0mMChsYzSfW0tuwqxjZ2mcqyqYbCw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: trigger: Use devm functions
To: Alison Schofield <amsfield22@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com, knaack.h@gmx.de, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
	"Hennerich, Michael" <Michael.Hennerich@analog.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 15, 2016 at 12:57 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Mon, Sep 19, 2016 at 10:06:08PM +0200, Lars-Peter Clausen wrote:
>> On 09/19/2016 09:29 PM, Jonathan Cameron wrote:
>> > On 19/09/16 10:21, Julia Lawall wrote:
>> >>
>> >>
>> >> On Mon, 19 Sep 2016, Bhumika Goyal wrote:
>> >>
>> >>> On Mon, Sep 19, 2016 at 11:14 AM, Alison Schofield <amsfield22@gmail.com> wrote:
>> >>>> On Mon, Sep 19, 2016 at 02:46:50AM +0530, Bhumika Goyal wrote:
>> >>>>> Use managed resource functions devm_iio_trigger_alloc and
>> >>>>> devm_request_irq instead of iio_trigger_alloc and request_irq.
>> >>>>> Remove corresponding calls to free_irq in the probe and remove
>> >>>>> functions. Drop the now unnecessary goto labels and replace various
>> >>>>> gotos with direct returns.
>> >>>>> request_irq replacement done using coccinelle.
>> >>>>
>> >>>> Hi Bhumika,
>> >>>> Thanks for the patch.  This seems like it's worthy of 2 separate
>> >>>> patches.
>> >>>>
>> >>>> Also, I'm a bit confused with why I don't see an iio_trigger_free
>> >>>> that is going away, when you switch to the devm_iio_trigger_alloc
>> >>>> functions, but I realize there isn't one there to remove. hmm???
>> >>>>
>> >>>> alisons
>> >>>>
>> >>>
>> >>> Hey Alison,
>> >>> Ok, I will separate this in two patches. I will do
>> >>> devm_iio_trigger_alloc in patch 1 and devm_request_irq in patch 2 as
>> >>> devm_request_irq requires all previous memory allocations to be devms.
>> >>> Regarding iio_trigger_free I didn't find any in either of the two
>> >>> functions(probe and remove).
>> >>> Thanks for the input.
>> >>
>> >> I think that normally people devmify everything at once.
>> > I would as well.  It is 'kind of' one change...
>> >>
>> >> I dimly recollect that iio_trigger_unregister does the free.  Check
>> >> whether this is the case, and whether it is devm safe.
>> > Given it's referenced on the next line I certainly hope it doesn't ;)
>> > There are quite a few reasons this one is in staging!
>>
>> For some reason this driver uses iio_trigger_put() instead of
>> iio_trigger_free(). Which is wrong, since iio_trigger_put() does an
>> additional module_put() which would release a reference we've never gained.
>> So the first fix should be to replace iio_trigger_put() with
>> iio_trigger_free() (which is a patch for stable) and then switch to the devm
>> version and remove the iio_trigger_free() (which is a patch for next).
>>
>> This does not seem to be the only driver that gets this wrong,
>> iio-trig-sysfs and iio-trig-interrupt are also affected. These would make a
>> good target for further patches.
>>
>> Bonus points if you can present a proof-of-concept that exploits this bug to
>> run arbitrary code with kernel privileges.
>>
>> There seems to be another bug regarding trigger reference counting in
>> iio_trigger_write_current(). The reference to the trigger should be acquired
>> in iio_trigger_find_by_name() while holding mutex. Otherwise we risk that
>> the trigger is already freed before we grab the reference later in
>> iio_trigger_write_current(). That's another opportunity for sending a good
>> patch and also some opportunity for bonus points.
>>
>
> Hi Bhumika,
> I have interest in working this issue.  Let me know if it's ok for
> me to run with.
> Thanks!

Hey Alison,
You can surely go ahead with this issue :)

Thanks,
Bhumika

> alisons

