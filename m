X-GM-THRID: 6607095314902941696
X-Received: by 2002:a1c:d8:: with SMTP id 207-v6mr168688wma.12.1538473204074;
        Tue, 02 Oct 2018 02:40:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:85d5:: with SMTP id h204-v6ls200839wmd.19.canary-gmail;
 Tue, 02 Oct 2018 02:40:03 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61GZI3WVFJdsVefgkfa00aCCK5FxC6J03L+CnjcUTtCQ0D9tV6hmwpLHfSo5AejntXcjrvV
X-Received: by 2002:a7b:c159:: with SMTP id z25-v6mr171273wmi.13.1538473203290;
        Tue, 02 Oct 2018 02:40:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538473203; cv=none;
        d=google.com; s=arc-20160816;
        b=os28oznR5GJYQOV0bN07+asEegfGzBoiAkl8uFd1gbeLi30xCG1SWP1ERUF53V5/4b
         NvmSpTelqr4jV4YNbnSc9ld0AVBOKPdDDPszYKpk67CS2Hlz4N5B6u28iQyEvSI/mVoI
         /RmRB3T0ODG4XyHr4CI73e5c0tDnrTDxmQ4ypifTN1JIYJGF6VawN1yhFbcqBrK0I3eg
         U+qDAEdWgSMNnR9ObdnWmLHccD0aIy8SnZkJ6NjbvxAwEhBsEoX15LV4IMGF03jIZW2O
         /FCA97ILRG9H2eKV3YlFpPY0PxNpYuz50iVIqm9HygixsQWtUuU0Q9TENKRAFdNNen/G
         WeEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=TYuNMYZ7Uht2AKbQwuyKqMyI6kt7l/wGge4FMUaMvxU=;
        b=ckvGmLVNUDCBKn1AqajAs68eg8WkXbPUoGYiQK1Csibu5U9UZiuOLoY8C1FK0PdSzN
         obYLL4nK/OBZheeqBI3X9vNXjxIEJwAZDh/VCjl5Zxg33nApQFLyWpVXjOLOZcT4lji2
         DVa81wfiF7JjHWVrJYHlTwXkjlRx4mmszOj0PORUeaoAdWf7gI9PG+v5RqXrfuV2qmr5
         +9vF4uHet4YmU4ESk409kBAoIu0+inPAw9SbEznhJPxsG6zBn+ODBhHKIYC7tKkf6ydV
         dW2a/QyqTgH+YaH/ZRJBoebKqzsGb5rluPajoiG/Fi6VFY3okEI9t3gxguspJDSJRvf9
         w4IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z21-v6si550085wmi.2.2018.10.02.02.40.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 02:40:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,331,1534802400"; 
   d="scan'208";a="280649200"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2018 11:40:02 +0200
Date: Tue, 2 Oct 2018 11:39:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himanshu Jha <himanshujha199640@gmail.com>
cc: Dafna Hirschfeld <dafna3@gmail.com>, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, hdegoede@redhat.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
In-Reply-To: <20181002092816.GA7179@himanshu-Vostro-3559>
Message-ID: <alpine.DEB.2.20.1810021138450.3520@hadrien>
References: <cover.1538333858.git.dafna3@gmail.com> <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com> <alpine.DEB.2.21.1809302217480.2863@hadrien> <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
 <alpine.DEB.2.20.1810011047210.3464@hadrien> <CAJ1myNRcjyn+GoR--7uoq4iK4Go5adEkEitX=gDd4FDPnbqPeQ@mail.gmail.com> <20181002092816.GA7179@himanshu-Vostro-3559>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> > Then in run "make menuconfig" again and under "Device Drivers -> staging
> > drivers" I chose "MediaTek MT7621 PCI Controller"
> > Hoping it will solve it , but it didn't.
> >
> > The files I prepared the patchset for did compile ok , is it important that
> > all files will compile?
>
> I think for these changes just use that .config supplied by the distro
> at /boot/config-*
>
> But IIRC `make allyesconfig` should be used(not sure though..)

Dafna,

It is important that the driver continues to compile.

Make allyesconfig is often a good option.

julia

