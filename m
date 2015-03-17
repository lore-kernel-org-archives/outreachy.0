X-GM-THRID: 8816133406720
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,dcb10757ef2bddd8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.97.10 with SMTP id dw10mr30437219pab.48.1426608866793;
        Tue, 17 Mar 2015 09:14:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.99 with SMTP id g90ls232386qgg.53.gmail; Tue, 17 Mar
 2015 09:14:26 -0700 (PDT)
X-Received: by 10.236.31.97 with SMTP id l61mr69537792yha.10.1426608866596;
        Tue, 17 Mar 2015 09:14:26 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-pd0-x22a.google.com (mail-pd0-x22a.google.com. [2607:f8b0:400e:c02::22a])
        by gmr-mx.google.com with ESMTPS id gu4si2625625pac.1.2015.03.17.09.14.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 09:14:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) client-ip=2607:f8b0:400e:c02::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22a.google.com with SMTP id ni2so13694910pdb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 09:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Iiv3+YveZ6oSWf1g997AM/yoHOpBoZaktLBl1o2pXVI=;
        b=rL/F2tt9QByBhqF/RLYGrysEK2YMM5fJW2m8mJA45wNi1nDT7jQMlPIqvxcePc96/H
         9AeIj11EtUhoZOcoTUz8VAFJPTju+5L/znfChHCBUfnQdohpfWBm6cSgEc23oYIvLe73
         INbn9DjMQikKqYLIS16eUQbOPp/F1ULzcO4d14LKfQTwf64uD3z7oUdUXcdxE9eAyej5
         ZLwXzVQ+ob6pMpVSwHnS+yBdMmOoKf5nkPJAUU/Yij5rAXNqUYkcc1wbMqsTZhOzwFUP
         47gjHm+2tdoD/ap7aVLk3W4zsGDR+bfn6QhM3Rh9FrKxPV5MAW/IO98rGgRRyGt0obpv
         84bw==
MIME-Version: 1.0
X-Received: by 10.70.31.66 with SMTP id y2mr89472286pdh.118.1426608866442;
 Tue, 17 Mar 2015 09:14:26 -0700 (PDT)
Received: by 10.70.124.101 with HTTP; Tue, 17 Mar 2015 09:14:26 -0700 (PDT)
In-Reply-To: <550843A4.5050103@gmail.com>
References: <8570c5e2-98ae-4a1a-8024-83b60ad55ea4@googlegroups.com>
	<550843A4.5050103@gmail.com>
Date: Tue, 17 Mar 2015 18:14:26 +0200
Message-ID: <CAHWJYFn2NXmW6GkE4XzDpCyF_YU3jy0m22beZcHiN44QMEPzaA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Compiling a specific driver
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 17, 2015 at 5:09 PM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
>
> On 03/17/15 09:53, Ioana Ciornei wrote:
> > I was wondering if anyone could explain the steps to be followed in order
> > to make sure the driver I am working on is compiled
> > when running 'make -j5'.
> >
> > So far, I did the steps explained at [1], under the 'Recompiling the
> > driver' section, but when selecting 'Staging drivers' the driver list is
> > empty.
>
> If you are working on a specific driver, you can type something like this:
>
> make drivers/staging/rtl8723au/r8723au.ko
>
> Cheers,
> Jes
>
>

I run the following command as you suggested:
      make drivers/staging/wlan-ng/wlan-ng.ko
but I get the output:
     CHK     include/config/kernel.release
     CHK     include/generated/uapi/linux/version.h
     CHK     include/generated/utsrelease.h
     CALL    scripts/checksyscalls.sh
     make[1]: *** No rule to make target
`drivers/staging/wlan-ng/wlan-ng.o'.  Stop.
     make: *** [drivers/staging/wlan-ng/wlan-ng.ko] Error 2

