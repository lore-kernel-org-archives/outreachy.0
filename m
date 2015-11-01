X-GM-THRID: 6212095586717401088
X-Received: by 10.194.82.193 with SMTP id k1mr3327426wjy.2.1446368820503;
        Sun, 01 Nov 2015 01:07:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.218.205 with SMTP id r196ls360251wmg.44.gmail; Sun, 01 Nov
 2015 01:06:59 -0800 (PST)
X-Received: by 10.28.145.198 with SMTP id t189mr1224277wmd.5.1446368819969;
        Sun, 01 Nov 2015 01:06:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t18si325653wme.0.2015.11.01.01.06.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:06:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,228,1444687200"; 
   d="scan'208";a="185426136"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Nov 2015 10:06:59 +0100
Date: Sun, 1 Nov 2015 10:06:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: rdma: hfi1: Remove
 set_sbus_fast_mode() wrapper function
In-Reply-To: <CA+5yK5FrkzY+_YZde7e-Y5EUtAFh5H8niFo-=neivh8JQ7MDBw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1511011006180.2070@localhost6.localdomain6>
References: <cover.1446366036.git.amitoj1606@gmail.com> <5cd4f403201b3e1c6b0f44429a5203b3447e2d27.1446366036.git.amitoj1606@gmail.com> <alpine.DEB.2.02.1511010942530.2070@localhost6.localdomain6>
 <CA+5yK5FrkzY+_YZde7e-Y5EUtAFh5H8niFo-=neivh8JQ7MDBw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:

> On Sun, Nov 1, 2015 at 2:14 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
> >
> >> Drop set_sbus_fast_mode() wrapper function that can be replaced by
> >> a single line of code.
> >>
> >> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> >> ---
> >>  drivers/staging/rdma/hfi1/chip.h     |  1 -
> >>  drivers/staging/rdma/hfi1/firmware.c | 15 ++++++---------
> >>  drivers/staging/rdma/hfi1/pcie.c     |  3 ++-
> >>  3 files changed, 8 insertions(+), 11 deletions(-)
> >>
> >> diff --git a/drivers/staging/rdma/hfi1/chip.h b/drivers/staging/rdma/hfi1/chip.h
> >> index f89a432..092fc9d 100644
> >> --- a/drivers/staging/rdma/hfi1/chip.h
> >> +++ b/drivers/staging/rdma/hfi1/chip.h
> >> @@ -619,7 +619,6 @@ void sbus_request(struct hfi1_devdata *dd,
> >>                 u8 receiver_addr, u8 data_addr, u8 command, u32 data_in);
> >>  int sbus_request_slow(struct hfi1_devdata *dd,
> >>                     u8 receiver_addr, u8 data_addr, u8 command, u32 data_in);
> >> -void set_sbus_fast_mode(struct hfi1_devdata *dd);
> >>  void clear_sbus_fast_mode(struct hfi1_devdata *dd);
> >>  int hfi1_firmware_init(struct hfi1_devdata *dd);
> >>  int load_pcie_firmware(struct hfi1_devdata *dd);
> >> diff --git a/drivers/staging/rdma/hfi1/firmware.c b/drivers/staging/rdma/hfi1/firmware.c
> >> index 5c2f2ed..0ce9a16 100644
> >> --- a/drivers/staging/rdma/hfi1/firmware.c
> >> +++ b/drivers/staging/rdma/hfi1/firmware.c
> >> @@ -987,7 +987,8 @@ void fabric_serdes_reset(struct hfi1_devdata *dd)
> >>       ra = fabric_serdes_broadcast[dd->hfi1_id];
> >>
> >>       acquire_hw_mutex(dd);
> >> -     set_sbus_fast_mode(dd);
> >> +     write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
> >> +                             ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
> >>       /* place SerDes in reset and disable SPICO */
> >>       sbus_request(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000011);
> >>       /* wait 100 refclk cycles @ 156.25MHz => 640ns */
> >> @@ -1214,12 +1215,6 @@ void release_hw_mutex(struct hfi1_devdata *dd)
> >>       write_csr(dd, ASIC_CFG_MUTEX, 0);
> >>  }
> >>
> >> -void set_sbus_fast_mode(struct hfi1_devdata *dd)
> >> -{
> >> -     write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
> >> -                             ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
> >> -}
> >> -
> >>  void clear_sbus_fast_mode(struct hfi1_devdata *dd)
> >
> > set_sbus_fast_mode seems to be the pair of clear_sbus_fast_mode just below
> > it, so it's not clear that it is a good idea to remove one and leave the
> > other.
> >
> 
> clear_sbus_fast_mode() is not a wrapper function. So I didn't remove
> it. But if you think one change without the other is pointless then I
> can drop this.

Pointless is not quite the right word.  I think that it hurts readability 
to drop one without the other.  So I think it would be better to drop it.

julia

