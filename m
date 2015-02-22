X-GM-THRID: 2331486715904
X-Received: by 10.112.199.69 with SMTP id ji5mr584440lbc.0.1424587315121;
        Sat, 21 Feb 2015 22:41:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.84 with SMTP id be20ls219984lab.89.gmail; Sat, 21 Feb
 2015 22:41:54 -0800 (PST)
X-Received: by 10.112.146.65 with SMTP id ta1mr582088lbb.19.1424587314673;
        Sat, 21 Feb 2015 22:41:54 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si429034wib.2.2015.02.21.22.41.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 22:41:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,623,1418079600"; 
   d="scan'208";a="122848536"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2015 07:41:42 +0100
Date: Sun, 22 Feb 2015 07:41:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/1] scripts: checkpatch.pl: add 2
 new checks on memset calls
In-Reply-To: <052f177392bde0338901921fcbb0ef70f1d85882.1424580894.git.mahfouz.saif.elyazal@gmail.com>
Message-ID: <alpine.DEB.2.02.1502220741060.2047@localhost6.localdomain6>
References: <cover.1424580894.git.mahfouz.saif.elyazal@gmail.com> <052f177392bde0338901921fcbb0ef70f1d85882.1424580894.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Feb 2015, Aya Mahfouz wrote:

> This patch adds 2 new checks on memset calls in the file
> checkpatch.pl as follows:
> 
> replace memset by eth_zero_addr if the second argument is
> an address of zeros (0x00). eth_zero_addr is a wrapper function
> for memset that takes an address array to set as zero. The size
> address has to be ETH_ALEN.
> 
> replace memset by eth_broadcast_addr if the second argument is
> the broadcast address (0xff). eth_broadcast_addr is a wrapper
> function for memset that sets the passed array the broadcast
> address. The size of the address has to be ETH_ALEN.

It's a nice idea, but Greg doesn't accept patches on checkpatch.

julia

> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  scripts/checkpatch.pl | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index d124359..9619882 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -4918,6 +4918,25 @@ sub process {
>  			}
>  		}
>  
> +# Check for memset(foo, 0x00|0xff, ETH_ALEN) that could be eth_zero_addr(foo)|eth_broadcast_addr(foo)
> +		if ($^V && $^V ge 5.10.0 &&
> +		    $line =~ /^\+(?:.*?)\bmemset\s*\(\s*$FuncArg\s*,\s*$FuncArg\s*\,\s*ETH_ALEN\s*\)/s) {
> +			my $num = $7;
> +			if ($num =~ "0x00" && WARN("PREFER_ETH_ZERO_ADDR",
> +				 "Prefer eth_zero_addr() over memset() if the second address is 0x00\n" . $herecurr) &&
> +			    $fix) {
> +
> +				$fixed[$fixlinenr] =~ s/\bmemset\s*\(\s*$FuncArg\s*,\s*$FuncArg\s*\,\s*ETH_ALEN\s*\)/eth_zero_addr($2)/;
> +			}
> +			elsif ($num =~ "0xff" && WARN("PREFER_ETH_BROADCAST_ADDR",
> +				 "Prefer eth_broadcast_addr() over memset() if the second address is 0xff\n" . $herecurr) &&
> +			    $fix) {
> +
> +				$fixed[$fixlinenr] =~ s/\bmemset\s*\(\s*$FuncArg\s*,\s*$FuncArg\s*\,\s*ETH_ALEN\s*\)/eth_broadcast_addr($2)/;
> +			}
> +		}
> +
> +
>  # typecasts on min/max could be min_t/max_t
>  		if ($^V && $^V ge 5.10.0 &&
>  		    defined $stat &&
> -- 
> 1.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/052f177392bde0338901921fcbb0ef70f1d85882.1424580894.git.mahfouz.saif.elyazal%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

