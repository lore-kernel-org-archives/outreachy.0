X-GM-THRID: 6397271096211537920
X-Received: by 10.25.56.6 with SMTP id f6mr5302092lfa.4.1489482166437;
        Tue, 14 Mar 2017 02:02:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.201 with SMTP id q192ls359477lfe.35.gmail; Tue, 14 Mar
 2017 02:02:45 -0700 (PDT)
X-Received: by 10.46.92.131 with SMTP id q125mr5830094ljb.15.1489482165697;
        Tue, 14 Mar 2017 02:02:45 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si983945wmg.0.2017.03.14.02.02.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 02:02:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,162,1486422000"; 
   d="scan'208";a="264458506"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2017 10:02:45 +0100
Date: Tue, 14 Mar 2017 10:02:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: linux-doc@vger.kernel.org, corbet@lwn.net, 
    outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Documentation: x86: Fix typos
In-Reply-To: <20170314083902.4491-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703141001590.3638@hadrien>
References: <20170314083902.4491-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 14 Mar 2017, Tamara Diaconita wrote:

> Fix typos in x86 directory.
> Make documentation clear and grammatically correct.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  Documentation/x86/boot.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/x86/boot.txt b/Documentation/x86/boot.txt
> index 5e9b826..694979a 100644
> --- a/Documentation/x86/boot.txt
> +++ b/Documentation/x86/boot.txt
> @@ -336,7 +336,7 @@ Type:		read
>  Offset/size:	0x20e/2
>  Protocol:	2.00+
>
> -  If set to a nonzero value, contains a pointer to a NUL-terminated
> +  If set to a nonzero value, contains a pointer to a NULL-terminated
>    human-readable kernel version number string, less 0x200.  This can
>    be used to display the kernel version to the user.  This value
>    should be less than (0x200*setup_sects).
> @@ -1105,7 +1105,7 @@ address of the struct boot_params.
>
>  **** EFI HANDOVER PROTOCOL
>
> -This protocol allows boot loaders to defer initialisation to the EFI
> +This protocol allows boot loaders to defer initialization to the EFI

This is an American vs British English issue.  I don't know if the Linux
kernel prefers one or the other.

julia

>  boot stub. The boot loader is required to load the kernel/initrd(s)
>  from the boot media and jump to the EFI handover protocol entry point
>  which is hdr->handover_offset bytes from the beginning of
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170314083902.4491-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

