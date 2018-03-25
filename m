X-GM-THRID: 6534517780926955520
X-Received: by 10.46.156.194 with SMTP id g2mr239479ljj.30.1521990467659;
        Sun, 25 Mar 2018 08:07:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.44.9 with SMTP id s9ls1438325ljs.12.gmail; Sun, 25 Mar 2018
 08:07:46 -0700 (PDT)
X-Google-Smtp-Source: AIpwx483lDX/FXzuzs+DJONQKyL1C/zcigbxIixPDCmAp+tfosOaq7fgbsNuzdWE66okrTBXY0AU
X-Received: by 10.46.157.133 with SMTP id c5mr187959ljj.26.1521990466322;
        Sun, 25 Mar 2018 08:07:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521990466; cv=none;
        d=google.com; s=arc-20160816;
        b=CDQMncj6uG2eto0ZTxYLTXi7/Mkw+r4VtkohcTUPdZ4TG5+T2CR6lxrEsA3iPSf2hL
         KpwayKwKceCOAxc49AgJzZUPGB+ycT84a/sOcsvnMNzB4LfL2IAnG62ofTTQ0SK5+a1a
         FaRu88uX03nnSgjAvPnFJnc4S8SKEBlIHkLjwAE//LqP+COVylREofSQuupHvPfnJ397
         4birbASVrHimj2QjK/BTc28eDu2p7AMmsFZwxiSwyMbpXscb8Q8iqY4JXqR0SRRxpD0p
         v9554o0y7Yl49Ap8kE8a1etOaNucBiC1TyQiYTEqe2m/A/RXB4gCXwChWLv1Fg6b43YY
         UH5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=PnLNDO9bVco1mHCODO+IrnrZmNBbJ57HMYDm7p4/R74=;
        b=YysCL8sWHSroQ3WxnEna0BE/cqf43huxhi2ksvtUji4q6qzJ3+Okb6RtQ7nQNz7+Sf
         pRAcDHcvhF/Dy+yJfp3LzkfKI21tAHZaZ122hJAQzBi/lu+VGL/APjeOwRBChh02sUTj
         eiN6WsCa7ZDRF8ZOzUWMGvrGCOd8PCUo/d5CdnrJn3oSHNSrDFTotAA+wAjrvH6pnaVN
         9H4l4BPunw/3M9o8YOonDwMRY/skMFGFFryZlm9fRtYHhUgQxRyh8CWGnQbUqoCqgwUS
         PEv8zi8CF3WS1Ga7RkxQE9VA1DdU2fWfAVBTpCmB/w/mwX+2M8QDCHQdoNrUIPSxLJWd
         5D3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w7-v6si438384lfc.2.2018.03.25.08.07.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Mar 2018 08:07:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,360,1517871600"; 
   d="scan'208";a="319839455"
Received: from ip-146.net-89-2-7.rev.numericable.fr (HELO [192.168.0.15]) ([89.2.7.146])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Mar 2018 17:07:45 +0200
Date: Sun, 25 Mar 2018 11:07:44 -0400 (EDT)
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
Message-ID: <alpine.DEB.2.20.1803251107190.2488@hadrien>
References: <20180319050530.GA25589@seema-Inspiron-15-3567> <alpine.DEB.2.20.1803190805260.2864@hadrien> <CA+XqjF9jHrOFL4LosK5GdbAgpmQRd9=08eNzvfzYxFaeXk972g@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-783883557-1521990465=:2488"

--8323329-783883557-1521990465=:2488
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

No, I didn't have a chance to fix it yet.

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
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CA%2BXqjF9jHrOFL4LosK5Gd
> bAgpmQRd9%3D08eNzvfzYxFaeXk972g%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-783883557-1521990465=:2488--

