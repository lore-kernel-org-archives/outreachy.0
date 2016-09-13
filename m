X-GM-THRID: 6329769082515095552
X-Received: by 10.194.46.233 with SMTP id y9mr42264wjm.3.1473764399183;
        Tue, 13 Sep 2016 03:59:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.149.80 with SMTP id x77ls239997wmd.22.gmail; Tue, 13 Sep
 2016 03:59:58 -0700 (PDT)
X-Received: by 10.194.96.237 with SMTP id dv13mr44754wjb.6.1473764398578;
        Tue, 13 Sep 2016 03:59:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y7si1480628wmd.0.2016.09.13.03.59.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 03:59:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,328,1470693600"; 
   d="scan'208";a="192966656"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 12:59:58 +0200
Date: Tue, 13 Sep 2016 12:59:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Fix Checkpatch Check
In-Reply-To: <20160913105625.GA10324@life-desktop>
Message-ID: <alpine.DEB.2.10.1609131259260.3355@hadrien>
References: <20160913105625.GA10324@life-desktop>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 13 Sep 2016, Anchal Jain wrote:

> /tmp/0001-staging-media-lirc-lirc_bt829-Remove-explicit-NULL-c.patch
> /tmp/0002-staging-media-lirc-lirc_imon-Remove-multiple-blank-l.patch
> /tmp/0003-staging-media-lirc-lirc_imon-Remove-unnecessary-blan.patch
> /tmp/0004-staging-media-lirc-lirc_imon-Remove-a-blank-line-bef.patch
> /tmp/0005-staging-media-lirc-lirc_imon-Add-space-around-the-op.patch
> /tmp/0006-staging-media-lirc-lirc_imon-Fix-alignment-with-the-.patch

What is this?  If this message is a cover letter, it should have the
sequence number 0/6

julia


>
>
> Anchal Jain (6):
>   staging: media: lirc: lirc_bt829: Remove explicit NULL comparison
>   staging: media: lirc: lirc_imon: Remove multiple blank lines
>   staging: media: lirc: lirc_imon: Remove unnecessary blank line
>   staging: media: lirc: lirc_imon: Remove a blank line before a close
>     parenthesis     '}'
>   staging: media: lirc: lirc_imon: Add space around the operators
>   staging: media: lirc: lirc_imon: Fix alignment with the open
>     parenthesis
>
>  drivers/staging/media/lirc/lirc_bt829.c |  2 +-
>  drivers/staging/media/lirc/lirc_imon.c  | 22 ++++++++++------------
>  2 files changed, 11 insertions(+), 13 deletions(-)
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160913105625.GA10324%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.
>

