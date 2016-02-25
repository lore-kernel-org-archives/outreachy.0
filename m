X-GM-THRID: 6255258611058999296
X-Received: by 10.28.172.194 with SMTP id v185mr536191wme.5.1456419630568;
        Thu, 25 Feb 2016 09:00:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.213.141 with SMTP id m135ls102055lfg.72.gmail; Thu, 25 Feb
 2016 09:00:29 -0800 (PST)
X-Received: by 10.112.17.37 with SMTP id l5mr5622871lbd.21.1456419629810;
        Thu, 25 Feb 2016 09:00:29 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si173831wmy.2.2016.02.25.09.00.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 09:00:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="165992198"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 18:00:29 +0100
Date: Thu, 25 Feb 2016 18:00:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lov: Use
 list_for_each_entry instead of list_for_each
In-Reply-To: <CAOH+1jEUq-kp09wHNCBMVi+Sd-E_HBG-XnkcqEAyFtNUPz7wxA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602251759440.2708@hadrien>
References: <1456415872-7808-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1602251701180.2708@hadrien> <CAOH+1jEUq-kp09wHNCBMVi+Sd-E_HBG-XnkcqEAyFtNUPz7wxA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 25 Feb 2016, Bhumika Goyal wrote:

>
>
> On Thu, Feb 25, 2016 at 9:31 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>       On Thu, 25 Feb 2016, Bhumika Goyal wrote:
>
>       > Use list_for_each_entry instead of list_for_each and
>       list_entry as it
>       > simplifies the code. Done using coccinelle:
>
>       Did you check in each case that req is not used after the loop?
>
>       julia
>
>
> Yes I checked and req is not used anywhere after list_for_each_entry loop in
> each case.

OK, it would be good to update the patch with that information.
Basically, req should only be used inside the loop.

julia

