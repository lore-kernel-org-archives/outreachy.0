X-GM-THRID: 6534517780926955520
X-Received: by 10.107.3.79 with SMTP id 76mr13139893iod.134.1522017921112;
        Sun, 25 Mar 2018 15:45:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:1ad3:: with SMTP id 202-v6ls1206809iti.10.canary-gmail;
 Sun, 25 Mar 2018 15:45:19 -0700 (PDT)
X-Google-Smtp-Source: AIpwx48jMMTXN0+IjN9RuGO39Xj8dcjYZZqCM7SoLsQHfzMt7z95t5i3x4tyL3iQqnx6H0b7lsIb
X-Received: by 2002:a24:a704:: with SMTP id a4-v6mr4390610itf.53.1522017919958;
        Sun, 25 Mar 2018 15:45:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522017919; cv=none;
        d=google.com; s=arc-20160816;
        b=lVRlBkUaV5Egi93iBQqLuCGlnbFglyEoEsedaB8qKln6AWm+92aK6zYqEUdu6U815m
         pPNUkBjReSMyR8VcItJ2d6Mc1okPB0tuYBdB9sjiKxW1dj+iIlz5xP1ww5HLySj/SWPD
         O+zenjOgYI/iijNjQmfaN8ZsnMI/zwxlDLLl7HPCM87KpBGAmxobHiIQgCMhKifR/0w1
         oPiR31dRIo3o3i4xiSEUurzTHeR9dmUfBu+JPXy22a5wQGeCCfD9qwVPAMFidtGoumyZ
         HoKfx3pxFZ1T6O4VcqZvJ1Jj66JcGnCceqKwoiLm5pgD8i4NCLhz5F/Xs4NNx0/0zdm9
         W2CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=SNe6h/wNdeueDDkLWNqy2CYeLrLfDQfrgv82TSZWb0I=;
        b=OBcSDpbOrvtkW+LhKmM6xb7+lLs92wkxAIUcbF4jkn1IxrQ8ULa9CHRwfRCGGfoKNZ
         nrozJBGB9OC82B9qOL2cPV7TIt4ce5rduecBHPqT5gbVPAGB4iTTEeOdyUyHi5lKkWFU
         22BMW9KAorkmZvgWHYkJVAmfwlfvSgN6C9dU6dr/vhEAcIZiO1TIcIZSF9jEI4P01Om8
         fev2IkI9Mvw/MeC/KyYTvWX2Vp0J09WpRY+pijnQ5UbWp9vYk3+tNjcK8iLkz46fQSqb
         vg2AQwVhGKVwrzsWcef2WXjTVTBHenrLI2yjK1kF9r+n8OITRf+t3w615TEJzp5bf9Kq
         RtBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c186-v6si443039ith.1.2018.03.25.15.45.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Mar 2018 15:45:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,362,1517871600"; 
   d="scan'208";a="259740526"
Received: from ip-146.net-89-2-7.rev.numericable.fr (HELO [192.168.0.15]) ([89.2.7.146])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2018 00:45:14 +0200
Date: Mon, 26 Mar 2018 00:45:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: daniel.vetter@intel.com, Gustavo Padovan <gustavo@padovan.org>, 
    Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, 
    Ben Skeggs <bskeggs@redhat.com>, dri-devel@lists.freedesktop.org, 
    LKML <linux-kernel@vger.kernel.org>, nouveau@lists.freedesktop.org, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] gpu: drm: Use list_{next/prev}_entry
 instead of list_entry
In-Reply-To: <CA+XqjF9jHrOFL4LosK5GdbAgpmQRd9=08eNzvfzYxFaeXk972g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803260044440.2488@hadrien>
References: <20180319050530.GA25589@seema-Inspiron-15-3567> <alpine.DEB.2.20.1803190805260.2864@hadrien> <CA+XqjF9jHrOFL4LosK5GdbAgpmQRd9=08eNzvfzYxFaeXk972g@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1052078271-1522017915=:2488"

--8323329-1052078271-1522017915=:2488
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 25 Mar 2018, Arushi Singhal wrote:

>
>
> On Mon, Mar 19, 2018 at 12:44 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Mon, 19 Mar 2018, Arushi Singhal wrote:
>
>       > This patch replace list_entry with list_{next/prev}_entry as
>       it makes
>       > the code more clear to read.
>       > Done using coccinelle:
>       >
>       > @@
>       > expression e1;
>       > identifier e3;
>       > type t;
>       > @@
>       > (
>       > - list_entry(e1->e3.next,t,e3)
>       > + list_next_entry(e1,e3)
>       > |
>       > - list_entry(e1->e3.prev,t,e3)
>       > + list_prev_entry(e1,e3)
>       > )
>
>       This looks like a rule that could be nice for the Linux kernel
>       in general,
>       because the code really is much simpler.
>
>       I would suggest to write the rule in a more robust way, as
>       follows:
>
>       @@
>       identifier e3;
>       type t;
>       t *e1;
>       @@
>
>       (
>       - list_entry(e1->e3.next,t,e3)
>       + list_next_entry(e1,e3)
>       |
>       - list_entry(e1->e3.prev,t,e3)
>       + list_prev_entry(e1,e3)
>       )
>
>       @@
>       expression e1;
>       identifier e3;
>       @@
>
>       (
>       - list_entry(e1->e3.next,typeof(*e1),e3)
>       + list_next_entry(e1,e3)
>       |
>       - list_entry(e1->e3.prev,typeof(*e1),e3)
>       + list_prev_entry(e1,e3)
>
>       This checks that the type that is specified corresponds to the
>       one on e1.
>       It could actually be that the call is getting the first element
>       of a list,
>       from some different type, and coincidentally the two types have
>       the same
>       field name for the list element.
>
>       Unfortunately, the second rule, with the typeof call, doesn't
>       currently
>       work in Coccinelle, because the semantic patch language doesn't
>       actually
>       support typeof, and thinks that it is a function call.  I will
>       fix this.
>
>       To make a semantic patch for the kernel, you can try running
>       spgen on the
>       above file and answer the questions that it asks.  You can find
>       examples
>       in the coccinelle/scripts directory.  Just run
>
>       spgen foo.cocci
>
>       Then answer the questions.  Then run
>
>       spgen foo.cocci > foo_for_kernel.cocci
>
>       The second run will use the results of the first run to print
>       the semantic
>       patch.  Let me know if you have any questions.  You can always
>       adjust the
>       semantic patch that is generated by hand afterwards if needed.
>
>
> Hi Julia,
>
> I tried spgen and found that second rule is still not working. It's not able
> to detect the second rule.
> Is it working for you?

If you get the latest version of Coccinelle from github, it shoudl be
working now.

julia

>
> Thanks,
> Arushi
>
>
>       julia
>
>
>       >
>       > Signed-off-by: Arushi Singhal
>       <arushisinghal19971997@gmail.com>
>       > ---
>       >  drivers/gpu/drm/drm_lease.c                    | 2 +-
>       >  drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c | 2 +-
>       >  2 files changed, 2 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/gpu/drm/drm_lease.c
>       b/drivers/gpu/drm/drm_lease.c
>       > index 1402c0e..4dcfb5f 100644
>       > --- a/drivers/gpu/drm/drm_lease.c
>       > +++ b/drivers/gpu/drm/drm_lease.c
>       > @@ -340,7 +340,7 @@ static void _drm_lease_revoke(struct
>       drm_master *top)
>       >                               break;
>       >
>       >                       /* Over */
>       > -                     master =
>       list_entry(master->lessee_list.next, struct drm_master,
>       lessee_list);
>       > +                     master = list_next_entry(master,
>       lessee_list);
>       >               }
>       >       }
>       >  }
>       > diff --git a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
>       b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
>       > index e4c8d31..81c3567 100644
>       > --- a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
>       > +++ b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
>       > @@ -134,7 +134,7 @@ nvkm_cstate_find_best(struct nvkm_clk
>       *clk, struct nvkm_pstate *pstate,
>       >                              nvkm_volt_map(volt,
>       volt->max2_id, clk->temp));
>       >
>       >       for (cstate = start; &cstate->head != &pstate->list;
>       > -          cstate = list_entry(cstate->head.prev,
>       typeof(*cstate), head)) {
>       > +          cstate = list_prev_entry(cstate, head)) {
>       >               if (nvkm_cstate_valid(clk, cstate, max_volt,
>       clk->temp))
>       >                       break;
>       >       }
>       > --
>       > 2.7.4
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20180319050530.GA25589%4
> 0seema-Inspiron-15-3567.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
>
>
--8323329-1052078271-1522017915=:2488--

