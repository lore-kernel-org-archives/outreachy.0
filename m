X-GM-THRID: 6751148085003419648
X-Received: by 2002:ac2:5de1:: with SMTP id z1mr10294957lfq.36.1571941328243;
        Thu, 24 Oct 2019 11:22:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:4b4d:: with SMTP id y74ls673149lfa.0.gmail; Thu, 24 Oct
 2019 11:22:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxV1x7gx3js0un4sM3+Nq5f0dPkoS+4oIoRP2uj6haZJ+MU3hSOehI97/DEwa1OvqP/DXvT
X-Received: by 2002:a19:3fcd:: with SMTP id m196mr25642242lfa.118.1571941327364;
        Thu, 24 Oct 2019 11:22:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571941327; cv=none;
        d=google.com; s=arc-20160816;
        b=Cnv3jXD1oZtElm9EB5E/NqeE1spugdSTpHgsalguWEZL/aMo9fsX02otBZM8Lww1No
         D0PfFPoStJ/yI6b5JAqn3Y9oXR4br0xIzxji/IN8hRE4RWIXlI8RWVSLKCqYRqgQu6ZR
         7N1lclCwEDt8rtt8l8mxbAMPM3ZAr1z2DRAZU2oc4io+HFLWg9He+JGNbFroTwhVuQYZ
         TCGfZHpynvyD+xJxjAKZYAWywS8cDb/rHEaei9LGa/mmzaGSu3OcBc0uXP3nROnaXUn6
         K88qHAIK8bdZggBnKduBsquzRY57xRfQ5HVcdTj9NFKm5OvHnbG1Nc80qeSMtqWry0Bi
         9JEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+tVp1tPdoa5JA/0QH1OxBwyD+qemhVL+OFCjrHfqSTE=;
        b=PJV3EuK6N5b4VgPv++w2pLmrbXh002ShMgVCVYZz1KbjvKb2StN33D45IojIhMp61F
         sio3cYMP69YJj84lGCm1VCeBd3i/nOQHyKIBpbhf1znEMuz20FRExIaZAcEgYIBTbi9L
         hs4+PFDSqkzmNUmUs2kG1caRPNOVrrbr8wWEE+Lwk6qS/QeY22zTO6QA4hi/GNHMc5pz
         PSfXg1NX/cOMnwM9FIg6ejzpjcYqH63T5m6k9p8fLX9sasHjLPrwe9697IfPuMAWceeA
         +dTfV+KqXS05vJd5XXKoTExz5XDe9nDUjQZc1buv2umzHR5mft0VABjdrQHItgw8GJI2
         x4SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z26si811034lfq.4.2019.10.24.11.22.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 11:22:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,225,1569276000"; 
   d="scan'208";a="324182621"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Oct 2019 20:22:05 +0200
Date: Thu, 24 Oct 2019 20:22:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: evan chime <chime.evan.dri.devel@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/7] Staging: comedi: Remove
 wrapper function declarartion
In-Reply-To: <CANR89jaTcgtXzkPH-O6vTNoCjQXyHSTe-zY35y=O9p9WBQ=X7A@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1910242021470.2621@hadrien>
References: <20191023234230.GA4485@ik-ubuntu> <b4d518c4-602a-9db3-4370-e26dfb780637@mev.co.uk> <CANR89jYTpnXXZXBkmYwox-i+ZF_0bSWWCCTLOpjaYKJpXJkEZw@mail.gmail.com> <CANR89jaTcgtXzkPH-O6vTNoCjQXyHSTe-zY35y=O9p9WBQ=X7A@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-745970089-1571941326=:2621"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-745970089-1571941326=:2621
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 24 Oct 2019, evan chime wrote:

> So should we maybe email the names on the TODOs, next time, to clarify the
> tasks

Please don't top post.

julia

>
> On Thu, 24 Oct 2019 at 10:53, evan chime <chime.evan.dri.devel@gmail.com>
> wrote:
>       Hello Ian
>
> Thanks for the reply. Got it
>
> Kind Regards
> Evan 
>
> On Thu, 24 Oct 2019 at 10:38, Ian Abbott <abbotti@mev.co.uk> wrote:
>       On 24/10/2019 00:42, Evan Chime wrote:
>       > Remove wrapper function "comedi_buf_map_get" declaration
>       > as part of remove all wrappers in
>       drivers/staging/comedi/TODO
>       >
>       > Signed-off-by: Evan Chime
>       <chime.evan.dri.devel@gmail.com>
>       > ---
>       >   drivers/staging/comedi/comedi_internal.h | 1 -
>       >   1 file changed, 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/comedi/comedi_internal.h
>       b/drivers/staging/comedi/comedi_internal.h
>       > index 515f293a5d26..df3b1af109f7 100644
>       > --- a/drivers/staging/comedi/comedi_internal.h
>       > +++ b/drivers/staging/comedi/comedi_internal.h
>       > @@ -28,7 +28,6 @@ int comedi_buf_alloc(struct
>       comedi_device *dev, struct comedi_subdevice *s,
>       >                    unsigned long new_size);
>       >   void comedi_buf_reset(struct comedi_subdevice *s);
>       >   bool comedi_buf_is_mmapped(struct comedi_subdevice
>       *s);
>       > -void comedi_buf_map_get(struct comedi_buf_map *bm);
>       >   int comedi_buf_map_put(struct comedi_buf_map *bm);
>       >   int comedi_buf_map_access(struct comedi_buf_map *bm,
>       unsigned long offset,
>       >                         void *buf, int len, int write);
>       >
>
>       Sorry, I don't really see the point of this patch series. 
>       For a start,
>       the comedi_buf_map functions were added a long time after
>       the TODO file
>       was written.  I can't even remember what the "remove all
>       wrappers" line
>       in the TODO file is referring to.
>
>       Besides that, as pointed out by Julia, the patches have
>       been ordered in
>       such a way as to break the build between the patches.
>
>       --
>       -=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk
>       )=-
>       -=( MEV Ltd. is a company registered in England & Wales.
>       )=-
>       -=( Registered number: 02862268.  Registered address:   
>       )=-
>       -=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK.
>       )=-
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CANR89jaTcgtXzkPH-O6vTNo
> CjQXyHSTe-zY35y%3DO9p9WBQ%3DX7A%40mail.gmail.com.
>
>
--8323329-745970089-1571941326=:2621--

