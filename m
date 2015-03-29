X-GM-THRID: 10320556851200
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,15c5bfe5b0735a7
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.95.67 with SMTP id di3mr6775690wjb.0.1427634253156;
        Sun, 29 Mar 2015 06:04:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.37 with SMTP id q5ls551909lag.40.gmail; Sun, 29 Mar
 2015 06:04:12 -0700 (PDT)
X-Received: by 10.112.118.203 with SMTP id ko11mr6646631lbb.15.1427634252471;
        Sun, 29 Mar 2015 06:04:12 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id f5si79886wix.1.2015.03.29.06.04.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 06:04:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id gn9so90544222wib.1
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 06:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=5b3CnLGP33U3y96rV3DBPOV1bFbO6jnDdL6tmyssPhU=;
        b=bY2u1nl92DsqHfhzUPn3kWOzNiM2s0Gkf3rn7SPi+PRHRudcwRANLCoOYiFBMflNZG
         hoFMh1n0FmuzYRmfg3gKsFvy54FzjkHbM9mVfeIlrFHjCawCmfQB/PQ+kPmvxSzV7YeI
         ezA0Bq+J29DTlHqIVMKcfURAqxnGj3O3A2GBkpRe/MH9IOfQ5M9DbZLzdbKi6ba3kPbM
         BBpP6d2OSYmVmGWgr/EsK6CpAe1CRnG9VRwvOXzg4SW9nQDmJlYn2GP7B+CBEDXi86zl
         TTiVM/Ix5Yo8FYR8X9Ib/uxZ4AS9vc8/lFBEuJ48mULdQSl9M/Stl4R9xz1L7x+MhWFV
         YPCg==
MIME-Version: 1.0
X-Received: by 10.180.93.5 with SMTP id cq5mr13268186wib.18.1427634252382;
 Sun, 29 Mar 2015 06:04:12 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Sun, 29 Mar 2015 06:04:12 -0700 (PDT)
In-Reply-To: <cover.1427630628.git.cristina.opriceana@gmail.com>
References: <cover.1427630628.git.cristina.opriceana@gmail.com>
Date: Sun, 29 Mar 2015 16:04:12 +0300
Message-ID: <CAEnQRZB6B=MLBfcFLDygHUz2NNjaxTEGvRf79w+7D+52k-TKiQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] iio: Place drivers on standby on error
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 29, 2015 at 3:19 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> This patchset places drivers on standby when an error occurs.
>
> I know these don't belong to the staging area, but I need a
> review before sending them.
>
> Cristina Opriceana (2):
>   iio: magnetometer: mag3110: Place driver on standby on error
>   iio: light: ltr501: Powerdown device on error
>
>  drivers/iio/light/ltr501.c         | 19 ++++++++++---------
>  drivers/iio/magnetometer/mag3110.c | 18 ++++++++++--------
>  2 files changed, 20 insertions(+), 17 deletions(-)

This are outside staging please send them to linux-iio list.

Daniel.

