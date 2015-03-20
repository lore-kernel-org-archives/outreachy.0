X-GM-THRID: 9130553114624
X-Received: by 10.152.27.134 with SMTP id t6mr13481206lag.5.1426886583668;
        Fri, 20 Mar 2015 14:23:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.106 with SMTP id db10ls430858wib.16.canary; Fri, 20 Mar
 2015 14:23:03 -0700 (PDT)
X-Received: by 10.181.29.66 with SMTP id ju2mr3165988wid.1.1426886583361;
        Fri, 20 Mar 2015 14:23:03 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id c8si16987wiw.1.2015.03.20.14.23.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 14:23:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id p45so91495799weo.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 14:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=EPlPmCs6DdN2h9JNP83UQl1vtoJ8OXp+V3i80iRsdYI=;
        b=OYJ8aGYnu6gDF1PaNwOC3kYOEkWB/zyQMbaTeSoEm6iJz7Y1JdxXgiF8uoSzvTPZAZ
         UdC/oOexdJseTlicoTJKqBcJ3x1Qx57M7nkTS+IKWa39i2RskpxSMYUxGE6bDInLsF+y
         sevld3y53xmKCsSZEBS2RPzQzaoQW36Og9WHAQ6GBooYFWKlKxhKJDRDR2PNbMIDV1qb
         DRWy6EjK9B+7nStpYoxPznDZMsLrXast5Cs8Qd8+YOE3e7AMUoOoRLkHSMG3awJk/HTb
         t8GuHF5l4uRPK8TLH9JJo4YA0XzQDkjSBUIdU3O939S7IVm0yEvVvaEddSzN3Wl7kqkD
         z3hA==
MIME-Version: 1.0
X-Received: by 10.194.86.135 with SMTP id p7mr167007834wjz.89.1426886583294;
 Fri, 20 Mar 2015 14:23:03 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Fri, 20 Mar 2015 14:23:03 -0700 (PDT)
In-Reply-To: <1426886373.22881.2.camel@Inspiron>
References: <bf54cd694e0103b4e26cd91b243614f716bb693c.1426867335.git.cristina.opriceana@gmail.com>
	<CAEnQRZBLofR0x9V8fYi90NVDJu8XyM4+jjYqfAfBhkVufCMgQQ@mail.gmail.com>
	<1426886373.22881.2.camel@Inspiron>
Date: Fri, 20 Mar 2015 23:23:03 +0200
Message-ID: <CAEnQRZC23C2XCF5DzBmF1ULDy8j3gFgp0hyxFYYe1TP7JdC41A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] Staging: iio: Add kernel-doc
 for struct hmc5843
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 20, 2015 at 11:19 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> On Vi, 2015-03-20 at 21:39 +0200, Daniel Baluta wrote:
>> On Fri, Mar 20, 2015 at 6:09 PM, Cristina Opriceana
>> <cristina.opriceana@gmail.com> wrote:
>> > This patch documents the struct hmc5843 specific data following
>> > this warning:
>> > "CHECK: struct mutex definition without comment".
>> >
>> > Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
>>
>> Please resend the whole patch series even if not all patches are changed.
>>
>> Daniel.
>
>
> The other patches have already been added to the staging-testing tree,
> so I thought it wasn't necessary anymore.

Ah, all right then. Sorry for the noise :).

Daniel.

