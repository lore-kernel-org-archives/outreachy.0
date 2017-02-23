X-GM-THRID: 6389791832562204672
X-Received: by 10.25.204.15 with SMTP id c15mr2602716lfg.5.1487857101094;
        Thu, 23 Feb 2017 05:38:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.196.15 with SMTP id u15ls2555677wmf.1.canary-gmail; Thu, 23
 Feb 2017 05:38:20 -0800 (PST)
X-Received: by 10.223.135.199 with SMTP id c7mr1012822wrc.18.1487857100219;
        Thu, 23 Feb 2017 05:38:20 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si471568wmg.3.2017.02.23.05.38.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 05:38:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,197,1484002800"; 
   d="scan'208";a="261800105"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2017 14:38:19 +0100
Date: Thu, 23 Feb 2017 14:38:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arend Van Spriel <arend.vanspriel@broadcom.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, Tahia Khan <tahia.khan@gmail.com>, 
    outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com, 
    ganesh.krishna@microchip.com, gregkh@linuxfoundation.org, 
    linux-wireless@vger.kernel.org, devel@driverdev.osusl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: wilc1000: renames
 struct tstrRSSI and its members u8Index, u8Full
In-Reply-To: <1ffdd756-aaa4-5e1e-b72f-3e5d1f2daeb2@broadcom.com>
Message-ID: <alpine.DEB.2.20.1702231437150.3073@hadrien>
References: <20170222171403.GA20626@coolbox> <838d3e67-646d-b2d3-ef7d-5812675db6db@broadcom.com> <20170223035400.GA9378@coolbox> <alpine.DEB.2.20.1702230804410.2203@hadrien> <1ffdd756-aaa4-5e1e-b72f-3e5d1f2daeb2@broadcom.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 23 Feb 2017, 'Arend Van Spriel' via outreachy-kernel wrote:

> On 23-2-2017 8:08, Julia Lawall wrote:
> >> Thanks for the feedback Arend, I really appreciate it. I've decided to go with
> >> these changes in my follow-up patch request:
> >>
> >> - rename tstrRSSI to 'rssi_history_buffer' as Aren suggested since it makes the
> >> purpose of the struct clear
> >> - remove Hungarian notation from all tstrRSSI members' names
> >> - change type of u8Full to bool since it's only ever 1 or 0
> >> - change name of as8RSSI to 'samples' since this buffer is only ever used to
> >> compute an average, and the "rssi" prefix is implied by the struct's name
> >> - rename str_rssi to rssi_history in the network_info struct for clarity
> >>
> >> Since my reasoning for these changes deviates from just "renaming to
> >> avoid camel casing" (as in the original checkpatch.pl warning), would it still
> >> make sense to submit all this in a single patch? I know my commit message
> >> needs to change but I wonder if this is too much detail.
> >
> > I would strongly suggest not to do it all in a single patch.  Even if these
> > changes are not very complicated conceptually, there is always a chance of
> > doing things wrong.  Taking the problems one by one will improve the chance
> > that the result is correct.  Also, the results will be easier for you and
> > others to review if each patch only does one thing.  And easier to revert
> > if needed later if something goes wrong.
>
> It is all related to cleaning up stuff in a single struct which I
> consider "one thing" here. To me it looks a bit silly if you rename one
> struct member when it is obvious that the other two need to be renamed
> as well. The only somewhat sensible split I see here is: 1) rename the
> struct itself, 2) rename the struct members, and 3) rename str_rssi
> member in struct network_info.

OK.  I guess I mainly saw the change of type as being different.

julia


>
> Regards,
> Arend
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1ffdd756-aaa4-5e1e-b72f-3e5d1f2daeb2%40broadcom.com.
> For more options, visit https://groups.google.com/d/optout.
>

