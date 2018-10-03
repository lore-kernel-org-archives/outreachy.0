X-GM-THRID: 6607095314902941696
X-Received: by 2002:a1c:c90f:: with SMTP id f15-v6mr358986wmb.0.1538595614097;
        Wed, 03 Oct 2018 12:40:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9ab7:: with SMTP id a52-v6ls527542wrc.23.gmail; Wed, 03
 Oct 2018 12:40:13 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60/AjZBWtIuFVnSUV+q1K/dP92GKpr0MfmyzXgyHtpGiLYZ8D1YNApomakrW1m75K1N8jJD
X-Received: by 2002:adf:fa8b:: with SMTP id h11-v6mr344916wrr.14.1538595613321;
        Wed, 03 Oct 2018 12:40:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538595613; cv=none;
        d=google.com; s=arc-20160816;
        b=IXQUXoOs4PuIa4GhyZkWwN33X6EYfC0EyNLuCuZHfz+f0YN7vhEQ37wfsjx43QUUvx
         9eEDoHtwkw6M9jlSjM4PxX2RZWuHJKun7SXXTv/kXgWxdI8DbF7/qm9+wH3fhIHL5oUs
         gHwE46DYw91vdSW/OYkPiK/gm3vDuzCXw5sRXOHuQAb83LM8I7uvv0LfzsSAcyEttvlC
         vhz36fqczFYYZhYuXOtzJnzdvmP3LzoPoOnS5LsRil3L8hUdMRtXxRgdzcdfgVBRwEPQ
         4zACq+sop68+Z/kha4761H2SoaeA8K9jG0j45VTyfrh1jKcaXla5PRC8wjlo/uCR7N8j
         4Q/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qH2DSuPJ6VSNnecv+TqehZ5fyfkjL3OJJEdwRto9bh8=;
        b=kllw2KioJGqmsbFNFGoO2+bUxx92TlS8DGVIuny2nvWJ6lNndWYv06/ZJg5GdlT2aY
         QpdSlRjmiRCRHF/u1XyHIKylCdjFixc+wLmAycRuyMQnHU266r0NUDyMAB9FNOVkrM4K
         IX8yjJJYE+gxXAu7IIjla2xj7TItXjyVPdbal+eK1Zsb36Zu43Tvlk1G8BCy25S+HRTl
         JWQG+vS9OAXX63uhhAZMCQ8n8wJVKavreYVTfb51s1lsag27kmVW+WlyRxjUBcLn9+MJ
         6ehUmgWijsk2GFVHFUgDFNo8rvs7WJEzNEnlV2PDIf2zEFaiI8ExNa6u5Ipj8nhaVjPE
         xdlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h188-v6si79625wmg.2.2018.10.03.12.40.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Oct 2018 12:40:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,337,1534802400"; 
   d="scan'208";a="280877947"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Oct 2018 21:40:12 +0200
Date: Wed, 3 Oct 2018 21:40:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: Himanshu Jha <himanshujha199640@gmail.com>, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, hdegoede@redhat.com, john@phrozen.org
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
In-Reply-To: <CAJ1myNRTErSd_p5KdY6VvG9qu+e9R5QcAeJsfmO_aXkqL_SOxw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1810032139020.2527@hadrien>
References: <cover.1538333858.git.dafna3@gmail.com> <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com> <alpine.DEB.2.21.1809302217480.2863@hadrien> <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
 <alpine.DEB.2.20.1810011047210.3464@hadrien> <CAJ1myNRcjyn+GoR--7uoq4iK4Go5adEkEitX=gDd4FDPnbqPeQ@mail.gmail.com> <20181002092816.GA7179@himanshu-Vostro-3559> <alpine.DEB.2.20.1810021138450.3520@hadrien> <CAJ1myNRF+1S=epCMJxUa1YrdPK4p80CiPn2FDdqw5mnwTq+mQA@mail.gmail.com>
 <alpine.DEB.2.21.1810032100040.2527@hadrien> <CAJ1myNRTErSd_p5KdY6VvG9qu+e9R5QcAeJsfmO_aXkqL_SOxw@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1653209307-1538595612=:2527"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1653209307-1538595612=:2527
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 3 Oct 2018, Dafna Hirschfeld wrote:

>
>
> On Wed, Oct 3, 2018 at 10:05 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Wed, 3 Oct 2018, Dafna Hirschfeld wrote:
>
>       >
>       >
>       > On Wed, Oct 3, 2018 at 7:06 AM Julia Lawall
>       <julia.lawall@lip6.fr> wrote:
>       >       > > Then in run "make menuconfig" again and under
>       "Device
>       >       Drivers -> staging
>       >       > > drivers" I chose "MediaTek MT7621 PCI Controller"
>       >       > > Hoping it will solve it , but it didn't.
>       >       > >
>       >       > > The files I prepared the patchset for did compile ok
>       , is it
>       >       important that
>       >       > > all files will compile?
>       >       >
>       >       > I think for these changes just use that .config
>       supplied by
>       >       the distro
>       >       > at /boot/config-*
>       >       >
>       >       > But IIRC `make allyesconfig` should be used(not sure
>       though..)
>       >
>       >       Dafna,
>       >
>       >       It is important that the driver continues to compile.
>       >
>       > Hi,
>       > Fixing the compilation error
>       in drivers/staging/mt7621-pci/pci-mt7621.c is
>       > not triveal,
>       > It is not clear what type `port` and `tmp` should be.
>
>       pcie has a type.  I think it is possible to figure it out from
>       there.  YOu
>       can also see how port is used, for confirmation.
>
>       julia
>
> The code is:
>
> list_for_each_entry_safe(port, tmp, &pcie->ports, list) {
>                 u32 slot = port->slot;
>                 val = read_config(pcie, slot, 0x70c);
>                 dev_info(dev, "Port %d N_FTS = %x\n", (unsigned int)val,
> slot);
>         }
>
> where `pcie` is of type `struct mt7621_pcie*` and `pcie->ports` is `struct
> list_head`
> I guess `port` should be `struct mt7621_pcie_port` but this struct does not
> have a `slot` member.

Maybe there is code somewhere adding elements to the list?

As a last resort, you could write to the person who produced the patch,
and ask him what he had in mind.  It's possible that the code is just
copied from somewhere else, and doesn't make sense at all.

julia

>
> Dafna
>       >  
>       > Dafna
>       >
>       >       Make allyesconfig is often a good option.
>       >
>       >       julia
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups
>       > "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an
>       > email to outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/CAJ1myNRF%2B1S%3Dep
>       CMJxU
>       > a1YrdPK4p80CiPn2FDdqw5mnwTq%2BmQA%40mail.gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAJ1myNRTErSd_p5KdY6VvG9
> qu%2Be9R5QcAeJsfmO_aXkqL_SOxw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1653209307-1538595612=:2527--

