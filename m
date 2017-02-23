X-GM-THRID: 6389791832562204672
X-Received: by 10.28.158.136 with SMTP id h130mr60847wme.0.1487833741442;
        Wed, 22 Feb 2017 23:09:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.15.84 with SMTP id e81ls64256lfi.43.gmail; Wed, 22 Feb 2017
 23:09:00 -0800 (PST)
X-Received: by 10.25.67.70 with SMTP id m6mr3893869lfj.21.1487833740319;
        Wed, 22 Feb 2017 23:09:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h62si248527wme.2.2017.02.22.23.09.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 23:09:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,197,1484002800"; 
   d="scan'208";a="261737860"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2017 08:08:14 +0100
Date: Thu, 23 Feb 2017 08:08:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tahia Khan <tahia.khan@gmail.com>
cc: arend.vanspriel@broadcom.com, outreachy-kernel@googlegroups.com, 
    aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org, 
    devel@driverdev.osusl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: wilc1000: renames
 struct tstrRSSI and its members u8Index, u8Full
In-Reply-To: <20170223035400.GA9378@coolbox>
Message-ID: <alpine.DEB.2.20.1702230804410.2203@hadrien>
References: <20170222171403.GA20626@coolbox> <838d3e67-646d-b2d3-ef7d-5812675db6db@broadcom.com> <20170223035400.GA9378@coolbox>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Thanks for the feedback Arend, I really appreciate it. I've decided to go with
> these changes in my follow-up patch request:
>
> - rename tstrRSSI to 'rssi_history_buffer' as Aren suggested since it makes the
> purpose of the struct clear
> - remove Hungarian notation from all tstrRSSI members' names
> - change type of u8Full to bool since it's only ever 1 or 0
> - change name of as8RSSI to 'samples' since this buffer is only ever used to
> compute an average, and the "rssi" prefix is implied by the struct's name
> - rename str_rssi to rssi_history in the network_info struct for clarity
>
> Since my reasoning for these changes deviates from just "renaming to
> avoid camel casing" (as in the original checkpatch.pl warning), would it still
> make sense to submit all this in a single patch? I know my commit message
> needs to change but I wonder if this is too much detail.

I would strongly suggest not to do it all in a single patch.  Even if these
changes are not very complicated conceptually, there is always a chance of
doing things wrong.  Taking the problems one by one will improve the chance
that the result is correct.  Also, the results will be easier for you and
others to review if each patch only does one thing.  And easier to revert
if needed later if something goes wrong.

julia

