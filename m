X-GM-THRID: 6470117861435113472
X-Received: by 10.37.64.79 with SMTP id n76mr7934603yba.11.1507411890945;
        Sat, 07 Oct 2017 14:31:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.173.88 with SMTP id l24ls106479ywk.33.gmail; Sat, 07 Oct
 2017 14:31:30 -0700 (PDT)
X-Received: by 10.129.31.139 with SMTP id f133mr7862649ywf.32.1507411890192;
        Sat, 07 Oct 2017 14:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507411890; cv=none;
        d=google.com; s=arc-20160816;
        b=YArEaaMMor2q5AdaWBoidvvTiIT+44yYBQhFTsYUXUUR2cmZ7iQiY/ixxA9TLR7yJV
         rKTAOBtBf3qyDrm95sfI+3TUk7kq9QOrirn3qY5V7LfhNav9daWeQu/RQAPAXhLlOZ97
         kr2mb8u/GwIg6FXeuM45lyAHqbQrNAz0o33Cv8j3cB2GW1oGSCvMIpGhUE+9LqU/V/V5
         nALk8+2MN2w+TCJp1IAQRYKpVLvCgigGLrD1PED+nAL2Nz6jwsgWZ/nDfOsonoVidlvk
         TpsHeKzNVmwcJQuHiAZJJcZ3Bjqv+YWaAFnc1/WfIXzdgRF47sABk3c146sSYuNxEP+s
         mNXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=qetLrRogERj6jgxLP1davzeeO5MkkQTZ0KGKVc8ViJ4=;
        b=wOO8V2Y2s2b7kReqzthNZd2NjuJ5qKM2+16O6HhCiIKq/4lSn/+YRH0yW1WnwEOURU
         bREPkLVWgrGt23rN5hr04oijCQHDcrmKdyr6xWIYQRuo8Q9MSzsHw7r7u928f2SodVcD
         SoI/lHowQKo5YtA/t4XUibqGNa0bz0zbqVFY1myzZspcRbvNTuAGODL4SYwrSLjoyZX7
         bs60hscmurZ/pKae0Qb6Ya+85ekhzbS8VFJVytPXy7kpO3hSy33gcQ/p7H/6L8agGk5p
         3oE5TOUhasIjn+XELQOkkwDriQ2PLtrdxOsMp/Tv6+YrLsncs2eYoEvweT9jp+tbOrZ7
         Wf1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EDlOnUjE;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::233 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x233.google.com (mail-qt0-x233.google.com. [2607:f8b0:400d:c0d::233])
        by gmr-mx.google.com with ESMTPS id u194si120179ywe.17.2017.10.07.14.31.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 14:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::233 as permitted sender) client-ip=2607:f8b0:400d:c0d::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EDlOnUjE;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::233 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x233.google.com with SMTP id k1so26231640qti.2
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 14:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=qetLrRogERj6jgxLP1davzeeO5MkkQTZ0KGKVc8ViJ4=;
        b=EDlOnUjEbCiQMycUytmhIaCa676Q+DKux9r4+SD9MVnqLZYh94lglTaWNn1HxWmubh
         gqFcHqDdWZYDwx2qxpdwRbmRVKAaEk+a45kSfXTjHOoQtTEtU3tneYco+2aznWwb3heV
         ohS/dc61VIm4tpz1cKA8cr4Lw527LO+A2kP7FrX6IQ9yMtiEZm7PywHN8VjASNnS99bP
         nva+4pPEpaYldr5Kj7ed84LipSyQbhXK80uOM+nSfencEOu1AQTQGrJSY4TinKS7Na8W
         imngG6x79VEJPju1S+3jwXqFzDuX/A0hJvprOvuraPdLkqFjLXTrgyWCXHSWd/KN/mkC
         O5sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=qetLrRogERj6jgxLP1davzeeO5MkkQTZ0KGKVc8ViJ4=;
        b=IbRmf0vf8vLXWJoHZIKQRNa0mNBcCVwouPpOet4Em1fibHrahzk3BkasDtT5JMiQqn
         BTz0p091zf4+1q+u1L0sFtqtto2kY5xlBqLb/aw0qztwbmDFqLrUvhxsE1KtsYqGRcBl
         R2CHoW879fGWDGgraUe8AtjUf0HWbvrlQnTHSNx3pgL/8c7yuXhUNWSVEt/D5KXUbpvo
         ALoy9azC/yOp0NQCEmip2euJAhnYSt7IEQYd7tI7ejM0q9bGbWq0+9ePFlz13wEKJFrf
         09Q45ecSD9g2kr1O04UVBqI+wcnCYyVAHc6iWzPwjSwA4VH/KrmvnBWJTNau6R5d5B1l
         otdQ==
X-Gm-Message-State: AMCzsaUk3TQBlzoI6pcIZWaOJf9MoCPOQrgaAfaR6p6IfZsVZVzrwtTk
	mBbuGM8SVmit9RMse3j3ta5nx8oVKPoGfTKsjUI=
X-Google-Smtp-Source: AOwi7QBfSpJALzR3hgM2mWfCPyGEBd0Y8ByDl4fnJXA5ri35kwoBBSrukLVU+m1r8BPHPs0z50g1NJHY4NRwHr4zJ0c=
X-Received: by 10.237.36.145 with SMTP id t17mr8334158qtc.162.1507411889922;
 Sat, 07 Oct 2017 14:31:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.20.119 with HTTP; Sat, 7 Oct 2017 14:31:29 -0700 (PDT)
In-Reply-To: <20171003160930.GA7303@kroah.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com> <20171003160930.GA7303@kroah.com>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Sun, 8 Oct 2017 00:31:29 +0300
Message-ID: <CALta04wncGNRndib5VSwQCVqzr=J2opJVvHuJHwzrBMENyXHxw@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Fix checkpatch issues
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On 3 October 2017 at 19:09, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Mon, Oct 02, 2017 at 12:34:35AM +0300, Georgiana Chelu wrote:
>> This patchset was created to fix warnings introduced
>> by several patches from the previous patchset.
>> The number of the patches was reduced from 10 to 7
>> because 1 patch is already accepted, 2 patches were
>> combined into a single patch, and the changes from
>> the 10/10 patch were added in the patches where
>> coding style fixes were required.
>
> In the future, please put the subsystem and driver name in the subject
> of your 0/X email, otherwise it can get lost in my inbox.

I will keep it in mind.

>
> Also, why wrap your lines so narrow here?

I wanted to be a compact message, but now I see that is quite
difficult to read it. I will take into consideration to increase the
number of columns. Thank you for the review!

Georgiana

>
> thanks,
>
> greg k-h

