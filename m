X-GM-THRID: 6394528999032225792
X-Received: by 10.25.33.67 with SMTP id h64mr2272472lfh.22.1488871649546;
        Mon, 06 Mar 2017 23:27:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.198 with SMTP id s189ls1672956lja.6.gmail; Mon, 06 Mar
 2017 23:27:28 -0800 (PST)
X-Received: by 10.25.17.102 with SMTP id g99mr2324502lfi.6.1488871648742;
        Mon, 06 Mar 2017 23:27:28 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si1529407wmd.0.2017.03.06.23.27.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 23:27:28 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,257,1484002800"; 
   d="scan'208";a="263431196"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 08:27:25 +0100
Date: Tue, 7 Mar 2017 08:27:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, w.d.hubbs@gmail.com, 
    chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
    diaconita.tamara@gmail.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3 0/2] Improve code readability
In-Reply-To: <841c49f9-9f4b-4705-9c70-7b8e469f20d2@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703070826470.2098@hadrien>
References: <20170306231817.7076-1-diaconita.tamara@gmail.com> <20170307054109.GA14438@kroah.com> <841c49f9-9f4b-4705-9c70-7b8e469f20d2@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-890799545-1488871645=:2098"

--8323329-890799545-1488871645=:2098
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 6 Mar 2017, Tamara Diaconita wrote:

> I modified just the cover letter in v3. I sent the v2 of the patches from
> this set earlier and I didn't send them again because I didn't make any
> changes. Should I send the whole v3 set again?

Whenever you change one patch, you need to send the whole series again.
Otherwise it is too complex for the person receiving the patches to figure
out what goes with what.

julia

>
> marți, 7 martie 2017, 07:41:17 UTC+2, gregkh a scris:
>       On Tue, Mar 07, 2017 at 01:18:17AM +0200, Tamara Diaconita
>       wrote:
>       > Fix multiple checkpath.pl issues to improve code readability
>       in speakup driver.
>       >
>       > Tamara Diaconita (2):
>       >   staging: speakup: keyhelp: Add spaces to align
>       >   staging: speakup: keyhelp: Fix 'if' continuation
>       >
>       > Changes since v2:
>       > *Replaced the subject of the patches.
>       >
>       > Changes since v1:
>       > *Deleted the patch: 'staging:speakup:keyhelp.c: Remove
>       unnecessary else' from the set and remake the original file.
>       > *Deleted the '.c' in the subject of the patches.
>       > *Added a space after ':' in the subject of the patches.
>       >
>       >  drivers/staging/speakup/keyhelp.c | 12 +++++-------
>       >  1 file changed, 5 insertions(+), 7 deletions(-)
>
>       I don't see any patches attached to this 0/2 email, what
>       happened to
>       them?
>
>       thanks,
>
>       greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/841c49f9-9f4b-4705-9c70-
> 7b8e469f20d2%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-890799545-1488871645=:2098--

