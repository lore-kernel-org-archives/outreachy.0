X-GM-THRID: 6398158236087746560
X-Received: by 10.25.0.141 with SMTP id 135mr1471059lfa.5.1489690135165;
        Thu, 16 Mar 2017 11:48:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.227.79 with SMTP id c15ls258180lfk.49.gmail; Thu, 16 Mar
 2017 11:48:54 -0700 (PDT)
X-Received: by 10.46.92.131 with SMTP id q125mr1630887ljb.15.1489690134486;
        Thu, 16 Mar 2017 11:48:54 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si371856wmg.3.2017.03.16.11.48.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 11:48:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,173,1486422000"; 
   d="scan'208";a="264905929"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2017 19:48:52 +0100
Date: Thu, 16 Mar 2017 19:48:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Replace printk() with pr_*() and
 define pr_fmt()
In-Reply-To: <cover.1489686964.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703161948310.3497@hadrien>
References: <cover.1489686964.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Remember to put the subsystem name in the cover letter as well.

julia

On Thu, 16 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Convert the printk() calls to corresponding pr_*() calls
> and define pr_fmt() to easily introduce the name of the module.
>
> Narcisa Ana Maria Vasile (2):
>   staging: lustre: libcfs: Replace printk() with pr_*()
>   staging: lustre: libcfs: Define pr_fmt() to include relevant name
>
>  drivers/staging/lustre/lnet/libcfs/tracefile.c | 59 ++++++++++++--------------
>  1 file changed, 27 insertions(+), 32 deletions(-)
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1489686964.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

