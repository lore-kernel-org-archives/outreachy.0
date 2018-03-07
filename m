X-GM-THRID: 6528705081880084480
X-Received: by 10.28.124.10 with SMTP id x10mr2021281wmc.20.1520451691217;
        Wed, 07 Mar 2018 11:41:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.192.1 with SMTP id z1ls773957wre.8.gmail; Wed, 07 Mar 2018
 11:41:29 -0800 (PST)
X-Google-Smtp-Source: AG47ELsPhQj74MV6R1noqL4bA7+rawkEkfHLqFd9CWKJWGxUKrgQ7Mn75AWeBHvD7lbA6VoPMIQe
X-Received: by 10.223.139.198 with SMTP id w6mr2125740wra.27.1520451689876;
        Wed, 07 Mar 2018 11:41:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520451689; cv=none;
        d=google.com; s=arc-20160816;
        b=eaeTLgcL0Luh1QNhmXmNSyEMbY3XOZMZWpfZBNNgCIiQjoq7gofCJv1ilp7oZCkUoF
         lVbNlimQtAQMckqWiLJ8L9eiwIrqn5nNNRuUivs6BoqlN0a9aGnqeLpHyrfnbsRooHoj
         18kOBEnZ2zoL2FY18h7BB+tFmBIStiU00XmGlDHoI6PnZYb/ni5fTA7XlL8b81+pY70B
         CWkEUQlNwYIjejj83AqtYA77PGaVWDkSYgllwU4hU9noP2HM/4z+hW6ZzYjpJcIaJ2T5
         u4Zt/iWPHCN0oOcsxjDMXGCCVExMClpF6ur6tue/drbh1ukO1nx+Wxk9/eCV10Xzyktw
         yJ7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=x3DFct0gzDLqj5ZWkpGS/2/Lto0euLgOpunajAICXN4=;
        b=jMNFw35nXZgPqerZ/I052dWq6WE1xxu4+DiGy/GqBHDVxC6Z4bDzCh/VIZg6UPLqRd
         LCVmgSSpnVqae09NfkJecnMX4wfXutsQ+Oehdh2IGdDbR432nU+jh4hkhRqAVKRjpyB0
         /o/ZJ9lsIST0n++iFIL3VBaktpEyvWM86ftHaYSXiCqI+dlwi10AsooPyng5NP1zNq6S
         CSl9PGoCGspW6zmzjQJ7vCPy136v1GSPOxvEvVQ7OWmvnr2e5HKnW1C020M+VwMubSUj
         8aSgbioZ1Zd8bXdDQhtvZ2It9L+2QwsXB+F2uU7d8V5p9LJZg5iG+eaBW+wqcRCtcF4B
         IEog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r10si579774wmg.2.2018.03.07.11.41.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 11:41:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,437,1515452400"; 
   d="scan'208";a="316918024"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2018 20:41:29 +0100
Date: Wed, 7 Mar 2018 20:41:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: David Miller <davem@davemloft.net>, jdmason@kudzu.us, 
    Jakub Kicinski <jakub.kicinski@netronome.com>, 
    Linux Kernel Network Developers <netdev@vger.kernel.org>, 
    LKML <linux-kernel@vger.kernel.org>, oss-drivers@netronome.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2] net: ethernet: Drop unnecessary
 continue
In-Reply-To: <CA+XqjF8_axeTnahPmokxmDnm4NmWo8QWSEmLejN4fO1nAiDaBA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803072039260.2814@hadrien>
References: <20180303161456.GA20194@seema-Inspiron-15-3567> <20180307.103901.1771176275743006915.davem@davemloft.net> <CA+XqjF8_axeTnahPmokxmDnm4NmWo8QWSEmLejN4fO1nAiDaBA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1036440338-1520451689=:2814"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1036440338-1520451689=:2814
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 7 Mar 2018, Arushi Singhal wrote:

>
>
> On Wed, Mar 7, 2018 at 9:09 PM, David Miller <davem@davemloft.net> wrote:
>       From: Arushi Singhal <arushisinghal19971997@gmail.com>
>       Date: Sat, 3 Mar 2018 21:44:56 +0530
>
>       > Continue at the bottom of a loop are removed.
>       > Issue found using drop_continue.cocci Coccinelle script.
>       >
>       > Signed-off-by: Arushi Singhal
>       <arushisinghal19971997@gmail.com>
>       > ---
>       > Changes in v2:
>       > - Braces is dropped from if with single statement.
>
>       Sorry there is no way I am applying this.
>
>       Just blindly removing continue statements that some static
>       checker
>       or compiler warning mentions is completely unacceptable.
>
>       Actually _LOOK_ at this code:
>
>       >               if(cards[i].vendor_id) {
>       >                       for(j=0;j<3;j++)
>       > -                           
>        if(inb(ioaddr+cards[i].addr_offset+j) != cards[i].vendor_id[j])
>       {
>       > +                           
>        if(inb(ioaddr+cards[i].addr_offset+j) != cards[i].vendor_id[j])
>       >                                       release_region(ioaddr,
>       cards[i].total_size);
>       > -                                     continue;
>       > -                       }
>       >               }
>
>       The extraneous continue statement is the _least_ of the problems
>       here.
>
>
> Hello David
>
> Yes you are correct.
>  
>
>       This code, if the if() statement triggers, will release the
>       ioaddr
>       region and then _CONTINUE_ the for(j) loop, and try to access
>       the
>       registers using the same 'ioaddr' again.
>
>       That's actually a _REAL_ bug, and you're making it seem like
>       the behavior is intentional by editing it like this.
>
>       And the bug probably exists because this entire sequence has
>       misaligned closing curly braces.  It makes it look like
>       the continue is for the outer loop, which would be fine.
>
>       But it's not.  It's for the inner loop, and this causes the "use
>       ioaddr after releasing it" bug.
>
>
> Yes I know it's for the inner loop.
> But I am not able to find, where I am wrong here

Arushi,

You are preserving the current behavior and David is telling you that the
current behavior is incorrect.  He doesn't want a patch that changes the
code but preesrves the current (wrong) behavior, because that somehow
contributes to the illusion that the incorrect code is correct.

julia

>
> For example
> BEFORE:-
> for(i=1;i<10;i++)
>        if (expr1)
>           {
>              statement;
>              continue;
>           }
>  
> After My Patch
> for(i=1;i<10;i++)
>     if (expr1)        
>        statement;
>
> I am not understanding where I am getting wrong in understanding this.
> For me both are equivalent.
>
> I Agree with Jakub reply:-
> "This is an error handling path so the continue makes sense here to
> indicate the processing can't ever fall through if more statements are
> ever added to the loop.  But OK."
>
> Thanks
> Arushi
>
>
>       Please do not submit patches like this one, it makes for a lot
>       of
>       wasted auditing and review for people.  The onus is on you to
>       read
>       and understand the code you are editing before submitting your
>       changes.
>
>       Thank you.
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CA%2BXqjF8_axeTnahPmokxm
> Dnm4NmWo8QWSEmLejN4fO1nAiDaBA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1036440338-1520451689=:2814--

