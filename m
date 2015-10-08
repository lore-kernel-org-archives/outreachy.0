X-GM-THRID: 6203187246248493056
X-Received: by 10.112.151.9 with SMTP id um9mr1119319lbb.19.1444294110657;
        Thu, 08 Oct 2015 01:48:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.34 with SMTP id fl2ls80718wib.21.gmail; Thu, 08 Oct
 2015 01:48:30 -0700 (PDT)
X-Received: by 10.180.208.7 with SMTP id ma7mr442753wic.5.1444294110272;
        Thu, 08 Oct 2015 01:48:30 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id w4si107870wiz.0.2015.10.08.01.48.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 01:48:30 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0MIe7s-1ZmIjN26Ke-002DJe; Thu, 08 Oct
 2015 10:48:29 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Alison Schofield <amsfield22@gmail.com>
Subject: Re: [Outreachy kernel] Where is IBMEBUS in makeconfig?
Date: Thu, 08 Oct 2015 10:48:28 +0200
Message-ID: <5142957.QYB8fYfozY@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151008082632.GA12448@sudip-pc>
References: <20151008081436.GA31765@Ubuntu-D830> <20151008082632.GA12448@sudip-pc>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:NL8pdpyFbfRC8c1QcUZw8e9yMto0OH4EW3jmkHF2AYzZrGrjrRC
 MhfMU7lE7juueUIcCbpA1DNEdn37kPgELWxDDSyCvrPYdvhJhDwdEkxZZoSvTJbhtrb5a2h
 SlUgpMlCuLsTnOvW2BXxXtwAZZzy4Y67rPzF34NJklZyI4tX3tAS5/3325Lz+r7crz5A+fW
 91zNP6FmoYJh9iKOlavpQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Ot1fqyto38w=:bxikUtVL9Et1bX2iSm0f/U
 0XJhRccAAhCyjPH4k/bnE26dx7q6AByihChylZysVIwCBvH2onoZQCvMwO3ATwb3oyoNKhXjN
 5gob1By21ooTIxZXqxir6YQ0K83CiO7L4fC1AIoZ++L7GQ73WeHHIWuB1PzwHnCtTRrhlBnok
 khgJqtPoNIhIc0XlnK1xHh8Akf6SOQJ9mbaDEL21zCUGwZG+YmmSyshtKcwMaJPrHW3qWsmBp
 vSRwo6o0SRrgqrUFghoRd74JWPgDB0SRgb1VWciHZCKGO9LgImDYV/SMEoReqpXSON2yoLQCm
 mV8FA6PcRCUGCLuQbJjMnL85yb4w3y7Tt9U1nmf9AY8wlUKWdPrejGu66ivWid7hEombrBdsZ
 FkJE0iOV/k8z6FbbkcWSfgZZAq36/qNDGFglQ+9q0AEKRh2lDoh6i3TNWyGJaWnlQzTiAYnZs
 70m7yExnwBXWuVXMRGQB421CyyeKR6xbUCPMmoM8eO4EfdMxSwdkUq48buPP6i+TAm2P4RmPS
 lyq3BauuLYQYcS4ZjaqXgM1jVq8eIRW3iuQbtSxYzG9WJHgT7kVtelI7zUVZd+LufFNmEWk9D
 rIkDXlkJhKx0/QYX09G14ZIRqHJi29xKfXDqEVFjG0Lgr/PWIFgOSqErlBQpRBb5DA8kxObVH
 ieWOqg/d3avZ93CcpJLVpYqXQxHIdLVDar3U6DUU+PiIjnBdcQUPKq0bJH2lz60HjSX9xiH+5
 WELxJ7ZXU+HTQT2K

On Thursday 08 October 2015 13:56:32 Sudip Mukherjee wrote:
> On Thu, Oct 08, 2015 at 01:14:36AM -0700, Alison Schofield wrote:
> > Need to load this module but cannot find IBMEBUS dependency in
> > makeconfig.  Appreciate the help!
> > 
> >       config INFINIBAND_EHCA
> >               tristate "eHCA support"
> >               depends on IBMEBUS
> 
> Looks like IBMEBUS is not there in staging tree, I checked linux-next
> also and its not there even. That means this module cannot be built.
> 
> Maybe Greg knows what to do now... remove ehca folder as it has out of
> tree dependency?

$ git grep IBMEBUS
arch/powerpc/configs/ppc64_defconfig:CONFIG_IBMEBUS=y                                                    
arch/powerpc/configs/pseries_defconfig:CONFIG_IBMEBUS=y                                                  
arch/powerpc/include/asm/ibmebus.h:#endif /* _ASM_IBMEBUS_H */
arch/powerpc/kernel/Makefile:obj-$(CONFIG_IBMEBUS)           += ibmebus.o
arch/powerpc/kernel/ibmebus.c:#define IBMEBUS_BUS_PM_OPS_PTR    (&ibmebus_bus_dev_pm_ops)
arch/powerpc/kernel/ibmebus.c:#define IBMEBUS_BUS_PM_OPS_PTR    NULL
arch/powerpc/kernel/ibmebus.c:  .pm        = IBMEBUS_BUS_PM_OPS_PTR,
arch/powerpc/mm/hash_utils_64.c:#ifdef CONFIG_IBMEBUS
arch/powerpc/platforms/Kconfig:config IBMEBUS
drivers/net/ethernet/ibm/Kconfig:       depends on PPC_PSERIES || PPC_DCR || (IBMEBUS && SPARSEMEM)
drivers/net/ethernet/ibm/Kconfig:       depends on IBMEBUS && SPARSEMEM
drivers/staging/rdma/ehca/Kconfig:      depends on IBMEBUS

IBMEBUS is a construct from the times before device tree based nodes
would become platform devices implicitly. It is used for the GX/GX+/GX++
bus on POWER4 through POWER7 (but not the current POWER8), and usually
just connects PCIe cages adapters these days.

EHEA and EHCA are directly attached, and at least EHEA seems to still
be around and commonly used on older machines.

	Arnd

