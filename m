X-GM-THRID: 6463409376999768064
X-Received: by 10.107.176.8 with SMTP id z8mr1866591ioe.66.1504882774871;
        Fri, 08 Sep 2017 07:59:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.192.71 with SMTP id q68ls211696iof.54.gmail; Fri, 08 Sep
 2017 07:59:34 -0700 (PDT)
X-Received: by 10.55.161.23 with SMTP id k23mr1631638qke.40.1504882774050;
        Fri, 08 Sep 2017 07:59:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504882774; cv=none;
        d=google.com; s=arc-20160816;
        b=GdzGvx9vZr7RSndjiJulcvgRQUAVvl/UmpCr+o0s17PY7QZ5ZzXABQ/dOHtwTpZ4Kj
         AGmK/mpuIQngdFLNPvqXl0VTRGQHEONqH3OLZddVbAHY5gAeyhzR4OW3+MQteXuKe56Z
         4b6dn9RWSmqjeu0//1uhfmPCKfDPvoYlzTVLGo0c7KRYnLRGFgwvfB5GBkVDhSfyNbyn
         XJYcIFqTFprym27OfhP4ipAe5lB7xlRuxrecVgpyotA0BSyklB4H9WH+2AyQaAQFIh4Y
         Z6nzS64ah5eEPguYpCBhUpAOkT1HrWHd/b5tjsuRc5fXqpsIr7azSjjrN+TBazS9KvWC
         jHCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=O1sapGXnDjZzDJ2sSQNnLJ82ku05Jg1Yi09ejSFJqvY=;
        b=YMa7lDqvA6MvY9ehfzhZDcRJy05vBpkhs9TUeYj0PcyziTAdtcrsXHlWxy0x2DEwZs
         kjr078A1rd0ZRK7BdmBhXAj0XYtVZFR9bs60e4nOtWOAeTZkg0SP96vhIiUsmbWgaXsg
         AYcX4ks4jDYZGd3v0lLQeMlPxH+5+vp6Tpeu0+wBCaWG+YI2Uc+kx55xqp/pePJBOqRu
         UUjXEuhWowldEYXdGNpv3vx1tszyo2yk3VoFdyNXS4snCHWDnwoCD0xC8h1IFGwDK0MX
         qH5jD4wUvImqpEWL52w6HiBwljzk7EyzsI/aqVWdGx3niqOXbGKmLi0WICkYkW0shOzP
         13IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ztlbqa0N;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id t131si159650ywe.15.2017.09.08.07.59.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 07:59:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ztlbqa0N;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id q8so1701537qtb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 07:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=O1sapGXnDjZzDJ2sSQNnLJ82ku05Jg1Yi09ejSFJqvY=;
        b=Ztlbqa0NaoA+ETfPRbK6j1uA8H0htIwVEYA7RffSAWLZCnGI8MashcB3jw5SKF5gp/
         75pxZuCoMZ9QQUHAy/ZeaBCyHI4G5ymPiaBZLeGHRVV4xNEi2wXiqN25ucZOWLCjF3m7
         T9EP/NmKM3n8m81tkdGVt7W48ps3Vvir+7wmwGtAhM9pbndvlXbb2clLcFJjlothSbus
         8qJNLbToLw7iChze6uaHAaLo4CIPHJlRUBlENVWJdrgDzX+pwurqSSJqUA2qhFu+k8T8
         Zr4QJGanWpWU8+t/ywwPABaIiUYP3uIGMyJfqgggBoxG3px6h6HTEH2Yzy6AdtuUOLIJ
         +jAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=O1sapGXnDjZzDJ2sSQNnLJ82ku05Jg1Yi09ejSFJqvY=;
        b=tbo8884KUq+s0XsmeiyuHfQJTtWHctIXc2wR5je/6K8eKZnQrLbVx+WWb95aTkZlNt
         hGnOdMkn7yaWj9ShwdRaYCqtXox618Vz3i9aLxtvuCuReVf3hIvYNDe4DB+bSmTyqo4y
         Cl8qx/zzmU752WLRPqjT/tXAsmDvDTAycbJWbHqdPBgjpbbRe0l+THEl9ycOWwGzwm4s
         qMHSqJhbbBTHo/xIo51OLUvUbIK2cJ+nieHJ6ZkiI0m1kZJja525wxoROhfEFlXyA32G
         obBtgbipqCqVtzmdeWOGGi9jgKf8ps9Lre6V+p7JtGRxyzsmimnfEqYmYosHD5/b9AY9
         j++A==
X-Gm-Message-State: AHPjjUhexkIj1uk/rSTtHzyj/Je8dxl1pW6sm3MtIbAJFrN2I3ZSFY+L
	wIrLvsZDaMvbDWVUKMqkvBKHADRV+Q==
X-Google-Smtp-Source: AOwi7QCcHg12A2hPwIS9N+0YZHrrkAHd+/W/4cyVJEGC/c51RPGN03aqMdzb945hc89YVHM6nPRuU6Y1xjaLsATmzHk=
X-Received: by 10.237.53.23 with SMTP id a23mr4755550qte.125.1504882773799;
 Fri, 08 Sep 2017 07:59:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Fri, 8 Sep 2017 07:59:33 -0700 (PDT)
In-Reply-To: <20170908143833.yisoj3t2yp5httle@mwanda>
References: <1504879698-5855-1-git-send-email-srishtishar@gmail.com> <20170908143833.yisoj3t2yp5httle@mwanda>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Fri, 8 Sep 2017 20:29:33 +0530
Message-ID: <CAB3L5owMjYyFcLQP7p_+R2DzZz3KpUhCxaVrB0qJeJh08UzM1w@mail.gmail.com>
Subject: Re: [PATCH] Staging: media: omap4iss: Use WARN_ON() instead of BUG_ON().
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com, 
	laurent.pinchart@ideasonboard.com, mchehab@kernel.org, 
	linux-media@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 8, 2017 at 8:08 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> On Fri, Sep 08, 2017 at 07:38:18PM +0530, Srishti Sharma wrote:
>> Use WARN_ON() instead of BUG_ON() to avoid crashing the kernel.
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>>  drivers/staging/media/omap4iss/iss.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
>> index c26c99fd..b1036ba 100644
>> --- a/drivers/staging/media/omap4iss/iss.c
>> +++ b/drivers/staging/media/omap4iss/iss.c
>> @@ -893,7 +893,7 @@ void omap4iss_put(struct iss_device *iss)
>>               return;
>>
>>       mutex_lock(&iss->iss_mutex);
>> -     BUG_ON(iss->ref_count == 0);
>> +     WARN_ON(iss->ref_count == 0);
>
> ref_counting bugs often have a security aspect.  BUG_ON() is probably
> safer here.  Better to crash than to lose all your bitcoin.

Okay, Thanks for this.

Regards,
Srishti

>
> regards,
> dan carpenter
>

