X-GM-THRID: 6397270990644051968
X-Received: by 10.25.0.141 with SMTP id 135mr4936004lfa.5.1489493995625;
        Tue, 14 Mar 2017 05:19:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.220 with SMTP id 89ls345036lfw.5.gmail; Tue, 14 Mar 2017
 05:19:54 -0700 (PDT)
X-Received: by 10.25.26.80 with SMTP id a77mr5030952lfa.18.1489493994840;
        Tue, 14 Mar 2017 05:19:54 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b186si180070wme.1.2017.03.14.05.19.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 05:19:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,163,1486422000"; 
   d="scan'208";a="216683478"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2017 13:19:35 +0100
Date: Tue, 14 Mar 2017 13:19:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    linux-doc@vger.kernel.org, corbet@lwn.net, diaconita.tamara@gmail.com
Subject: Re: [Outreachy kernel] [PATCH v2] Documentation: admin-guide: Fix
 typos
In-Reply-To: <cf778fed-1495-4382-86ab-f043a2641112@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703141318450.3174@hadrien>
References: <20170314083835.4317-1-diaconita.tamara@gmail.com> <alpine.DEB.2.20.1703141003550.3638@hadrien> <cf778fed-1495-4382-86ab-f043a2641112@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-717616004-1489493976=:3174"

--8323329-717616004-1489493976=:3174
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 14 Mar 2017, Tamara Diaconita wrote:

> Should I keep this in mind for the next patches or should I also reorganize
> this patch?

I didn't suggest any reorganization.  I just meant that if you find one
file in which a certain word is misspelled, then you may find the same
problem in other files, and thus find more opportunities for patches.

julia

>
> marți, 14 martie 2017, 11:05:55 UTC+2, Julia Lawall a scris:
>
>
>       On Tue, 14 Mar 2017, Tamara Diaconita wrote:
>
>       > Fix typos in admin-guide directory.
>       > Make documentation clear and grammatically correct.
>
>       You may want to collect the words in which you find problems,
>       and see if
>       other files have the same problems.
>
>       julia
>
>       >
>       > Signed-off-by: Tamara Diaconita <diaconit...@gmail.com>
>       > ---
>       > Changes since v1:
>       > *Remove the changes in tainted-kernels.rst file.
>       >
>       >  Documentation/admin-guide/kernel-parameters.rst |  2 +-
>       >  Documentation/admin-guide/ras.rst               | 12
>       ++++++------
>       >  2 files changed, 7 insertions(+), 7 deletions(-)
>       >
>       > diff --git a/Documentation/admin-guide/kernel-parameters.rst
>       b/Documentation/admin-guide/kernel-parameters.rst
>       > index b516164..c5eae20 100644
>       > --- a/Documentation/admin-guide/kernel-parameters.rst
>       > +++ b/Documentation/admin-guide/kernel-parameters.rst
>       > @@ -197,7 +197,7 @@ and is between 256 and 4096 characters. It
>       is defined in the file
>       >
>       >  Finally, the [KMG] suffix is commonly described after a
>       number of kernel
>       >  parameter values. These 'K', 'M', and 'G' letters represent
>       the _binary_
>       > -multipliers 'Kilo', 'Mega', and 'Giga', equalling 2^10, 2^20,
>       and 2^30
>       > +multipliers 'Kilo', 'Mega', and 'Giga', equaling 2^10, 2^20,
>       and 2^30
>       >  bytes respectively. Such letter suffixes can also be entirely
>       omitted:
>       >
>       >  .. include:: kernel-parameters.txt
>       > diff --git a/Documentation/admin-guide/ras.rst
>       b/Documentation/admin-guide/ras.rst
>       > index 1b90c6f..8c7bbf2 100644
>       > --- a/Documentation/admin-guide/ras.rst
>       > +++ b/Documentation/admin-guide/ras.rst
>       > @@ -8,7 +8,7 @@ RAS concepts
>       >  ************
>       >
>       >  Reliability, Availability and Serviceability (RAS) is a
>       concept used on
>       > -servers meant to measure their robusteness.
>       > +servers meant to measure their robustness.
>       >
>       >  Reliability
>       >    is the probability that a system will produce correct
>       outputs.
>       > @@ -42,13 +42,13 @@ Among the monitoring measures, the most
>       usual ones include:
>       >
>       >  * CPU – detect errors at instruction execution and at
>       L1/L2/L3 caches;
>       >  * Memory – add error correction logic (ECC) to detect and
>       correct errors;
>       > -* I/O – add CRC checksums for tranfered data;
>       > +* I/O – add CRC checksums for transferred data;
>       >  * Storage – RAID, journal file systems, checksums,
>       >    Self-Monitoring, Analysis and Reporting Technology (SMART).
>       >
>       >  By monitoring the number of occurrences of error detections,
>       it is possible
>       >  to identify if the probability of hardware errors is
>       increasing, and, on such
>       > -case, do a preventive maintainance to replace a degrated
>       component while
>       > +case, do a preventive maintenance to replace a degraded
>       component while
>       >  those errors are correctable.
>       >
>       >  Types of errors
>       > @@ -121,7 +121,7 @@ using the ``dmidecode`` tool. For example,
>       on a desktop machine, it shows::
>       >  On the above example, a DDR4 SO-DIMM memory module is located
>       at the
>       >  system's memory labeled as "BANK 0", as given by the *bank
>       locator* field.
>       >  Please notice that, on such system, the *total width* is
>       equal to the
>       > -*data witdh*. It means that such memory module doesn't have
>       error
>       > +*data width*. It means that such memory module doesn't have
>       error
>       >  detection/correction mechanisms.
>       >
>       >  Unfortunately, not all systems use the same field to specify
>       the memory
>       > @@ -145,7 +145,7 @@ bank. On this example, from an older
>       server, ``dmidecode`` shows::
>       >
>       >  There, the DDR3 RDIMM memory module is located at the
>       system's memory labeled
>       >  as "DIMM_A1", as given by the *locator* field. Please notice
>       that this
>       > -memory module has 64 bits of *data witdh* and 72 bits of
>       *total width*. So,
>       > +memory module has 64 bits of *data width* and 72 bits of
>       *total width*. So,
>       >  it has 8 extra bits to be used by error detection and
>       correction mechanisms.
>       >  Such kind of memory is called Error-correcting code memory
>       (ECC memory).
>       >
>       > @@ -186,7 +186,7 @@ Architecture (MCA)\ [#f3]_.
>       >  .. [#f1] Please notice that several memory controllers allow
>       operation on a
>       >    mode called "Lock-Step", where it groups two memory modules
>       together,
>       >    doing 128-bit reads/writes. That gives 16 bits for error
>       correction, with
>       > -  significatively improves the error correction mechanism, at
>       the expense
>       > +  significantly improves the error correction mechanism, at
>       the expense
>       >    that, when an error happens, there's no way to know what
>       memory module is
>       >    to blame. So, it has to blame both memory modules.
>       >
>       > --
>       > 2.9.3
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170314083835.4317-1-di
>       aconita.tamara%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/cf778fed-1495-4382-86ab-
> f043a2641112%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-717616004-1489493976=:3174--

