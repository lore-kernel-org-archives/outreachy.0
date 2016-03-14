X-GM-THRID: 6261863495109705728
X-Received: by 10.28.232.155 with SMTP id f27mr1869907wmi.0.1457954218642;
        Mon, 14 Mar 2016 04:16:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.23.149 with SMTP id 143ls532931wmx.16.canary; Mon, 14 Mar
 2016 04:16:58 -0700 (PDT)
X-Received: by 10.194.19.195 with SMTP id h3mr2795333wje.1.1457954218118;
        Mon, 14 Mar 2016 04:16:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h187si484646wme.0.2016.03.14.04.16.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 04:16:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,335,1454972400"; 
   d="scan'208";a="207632566"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Mar 2016 12:16:57 +0100
Date: Mon, 14 Mar 2016 12:16:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: tejaswini allikanti <tejaswini.allikanti@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Unable to clone Git Repository
In-Reply-To: <0f7561c0-b6ef-4179-9f5e-f2ee3d2d53f8@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1603141210450.2688@hadrien>
References: <0f7561c0-b6ef-4179-9f5e-f2ee3d2d53f8@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 14 Mar 2016, tejaswini allikanti wrote:

> Heyy
> I am unable to clone the Greg Kroah-Hartman's staging tree repository.It is
> showing the error 'unable to connect to git.kernel.org' although i am
> connected to the internet
> please look into the matter ASAP

What command did you use?  I just tried

git clone git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

and had no problem.  The problem may be on your side.

Maybe you will have more luck with the following:

git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging

I'm not sure that it is up to date, though.  On the web page

https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging/

if I click on staging-testing, I get a patch dated March 2 and committed
March 5, while I have more recent patches from git.kernel.org

julia

