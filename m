X-GM-THRID: 6885367021918224384
X-Received: by 2002:a17:906:d159:: with SMTP id br25mr859971ejb.155.1603126913759;
        Mon, 19 Oct 2020 10:01:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:1d3c:: with SMTP id dh28ls644474edb.0.gmail; Mon,
 19 Oct 2020 10:01:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwR+kF+e5FatbynXFdvWebYWFWqUwy5oQ+E2HqJo62Bm7OB9hriwge8q710Fdh82s3UZVOK
X-Received: by 2002:a05:6402:3094:: with SMTP id de20mr786398edb.350.1603126911509;
        Mon, 19 Oct 2020 10:01:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603126911; cv=none;
        d=google.com; s=arc-20160816;
        b=OAMG+pu2e9UNaMnkC3SqrjVb5GnjaudXSeMGjTgek+2ZTDgtOb/vuWWUTZi8N3tCBU
         XJCCvB8M0NnHBnqjRNCbLlvSv6vSZsHKriruaEjC6HBsSAGNKp+COCDxQ6H7Fjss0Pms
         gLSETE1YrlthCo3+OufgMKjw5YNIMFX+a00SX0BRC+EwLPYrv5vcsEe3ckU3lzRm5bRZ
         9JFPqXd1k9CNuDBGpqjsx6g9daVP7ezAKL+7WcTiWdJgnO3gQCwX8TM5pmo5JpSmtp51
         vWwcwBS62Rxif/+Ef5oMaNr0TGgrFzEsa0EN7pZ3YpVw04hxZ4FdO0GNRI2zWQHwr21u
         IBJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ttJB5SZzJLENqHT/Oe4yuonFaE0KqIggXQGK0Em28wI=;
        b=f0Wi/VdZlGD3Q4btReb6FIeSSwYlXyiLA3dV6NNLkG85Y55fpOF9ciAgtg3YZ3tpeF
         wQaW9CUfwudF25qafG/MLl1q0uFR78a+rbZ8UN5tfGSYu05IElKvzMMDn11OwWVBLUrD
         diOiZS5CSGQAqwPQwsA6QJiaVCMwp/T4Hy0cBIU+i2Uq4vDKN1kUEzjCus2Kfav+eh4I
         2ZAeDOWVuagmm10fD0vSUNe9ctPLUyYgjUSQWYUOoATT4CErDqitY5wtZf1kNdbg6rki
         Ugk7k5l/HjDjKRS13ef9VnQMQ2/Lduh0whcWdc0114QLKCW6cZCfLXAerRb14y3JPPVF
         zTKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id lf25si24618ejb.0.2020.10.19.10.01.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2020 10:01:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,395,1596492000"; 
   d="scan'208";a="362215961"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Oct 2020 19:01:51 +0200
Date: Mon, 19 Oct 2020 19:01:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Need help building a driver: mt7621-pci
In-Reply-To: <20201019162028.GA68635@ubuntu204>
Message-ID: <alpine.DEB.2.22.394.2010191858240.2781@hadrien>
References: <20201019162028.GA68635@ubuntu204>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 19 Oct 2020, Deepak R Varma wrote:

> Hello,
> I have made a change to drivers/staging/mt7621-pci/pci-mt7621.c file and
> now trying to build to ensure the driver builds fine. However, this file
> doesn't get included in the build process.
>
> I tried looking for driver dependencies and am not able to locate RALINK
> in my driver tree [in menuconfig] to enable it.
>
> Can you please suggest what may be wrong here?

A colleague of mine, Paul Gazzillo, makes a tool called klocalizer that
figures out how to compile Linux kernel files.  It suggests:

make.cross ARCH=mips olddefconfig; make.cross ARCH=mips clean drivers/staging/mt7621-pci/pci-mt7621.o

You can look at this blog about cross compilation:

https://nishkadg.github.io/2019/07/25/make-cross.html

If you want to try klocalizer yourself, the code is here:

https://github.com/paulgazz/kmax

julia

