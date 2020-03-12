X-GM-THRID: 6802850530437627904
X-Received: by 2002:ac2:5605:: with SMTP id v5mr5384438lfd.184.1584016670832;
        Thu, 12 Mar 2020 05:37:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:6c13:: with SMTP id h19ls1071675ljc.7.gmail; Thu, 12 Mar
 2020 05:37:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtCY+1X94I7nH4Fyt/yTzfIIasBUdlyXkaKlH/rb1fkdwBVc7py6rpj7QG7DQGsRG2VKQh7
X-Received: by 2002:a2e:9910:: with SMTP id v16mr5207871lji.281.1584016669111;
        Thu, 12 Mar 2020 05:37:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584016669; cv=none;
        d=google.com; s=arc-20160816;
        b=lCcr2GT2gwMn89Z2l0jSdn7Luu+ya/2KZ+EtBc9A5ZSc/zLFJwtr88D41Dsafei//V
         jzVxUw4S3+09yqp+ySHJq6UZzSxcIg2CcC1FcSQWkBtQZsTGOyzyQp2b1LMvGdnnWQsX
         q8wpqpePPrGp+rsKQr+y3+jTxCPjh47JYNALW4dobQE/T3i447NRyu1GGw8Hu1h14/tA
         GkSnjds5yDzUhFNJfK9RaD3ra+s2f7PXbkIkR/H9SenmbOcjv+dvhIsGC2RplJs6SeRK
         DLbLuCB9xlBmyoviDCqEUI+4508BYGiC3xAUvRGdJNXikIu3v82eYysdPxKh/MTUEJVb
         Leww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=lcucmou5r/mC2iWQdrkBiye4JATudcD8Chwb4W5zxSQ=;
        b=EG/KetI700482U/0jih+0Lnmw5tN/Z/UH7aCMIDp41GBSCDULyqf0WOk1TwXMGVcIh
         uZq+xX/bJggxlwncur0WmS3ODdvuNPqPbGhz4GvDYKcDJZbjQfWvZn0cPw/GWNs2/WDr
         1XC0jaBEJ2lTQrZkygREBmOQQmmMmK801DrrBwKbMpiYbGRWbH48gw0VLpnQK8EHOvy3
         25EfulznntrtEpd0GTWj7lDQkYj2+L2rBZUHMXp7v3x1wZ9gdlbiAUvVCE5p3IL9aqPM
         IsyXsv3kf1rVAQVLuaXTIkuUw4X8gtmMdI1NV4JzmrkhWTp7Q7BJosDhznHwJx6hWriM
         MNNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t3si284309lfq.5.2020.03.12.05.37.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:37:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,544,1574118000"; 
   d="scan'208";a="342133907"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2020 13:37:48 +0100
Date: Thu, 12 Mar 2020 13:37:47 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, Larry.Finger@lwfinger.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] [Outreachy kernel] staging: rtl8188eu: hal: remove
 an unneeded variable
In-Reply-To: <13eb3ca2d7db751231b3a755e1609e385ce3c36a.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003121335310.2418@hadrien>
References: <20200311073418.7476-1-payalskshirsagar1234@gmail.com>  <20200312082739.GA54601@kroah.com> <13eb3ca2d7db751231b3a755e1609e385ce3c36a.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> > Always test-build your patches so that you do not get grumpy kernel
> > maintainers telling you to test-build your patches to prevent the
> > build
> > from breaking.
> >
>
> HOW TO test-build the patches?

Compile the code and be sure you obtain a .o file for the file you
changed.  If you don't you may need to adjust the configuration variables.


>
>
> > Are you _SURE_ you used coccinelle for this?  If so, something is
> > really
> > broken as this patch is totally incorrect :(
> >
> > The suggestion might be correct, but the implementation is broken.
> >
> > thanks,
> >
> > greg k-h
>
> Yes, I used following semantic patch to get this file for cleanup
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;

The semantic patch is fine, but you also deleted the variable declaration.
If you use a tool, it is best to make clear how you used it and what you
did beyond what the tool said to do.

julia


> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/13eb3ca2d7db751231b3a755e1609e385ce3c36a.camel%40gmail.com.
>

