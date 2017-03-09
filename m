X-GM-THRID: 6395576564216496128
X-Received: by 10.25.202.67 with SMTP id h3mr2284644lfj.30.1489095386826;
        Thu, 09 Mar 2017 13:36:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.10 with SMTP id 10ls815623ljt.24.gmail; Thu, 09 Mar 2017
 13:36:26 -0800 (PST)
X-Received: by 10.25.193.213 with SMTP id r204mr2264529lff.24.1489095386282;
        Thu, 09 Mar 2017 13:36:26 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si12684wmg.3.2017.03.09.13.36.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 13:36:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,137,1486422000"; 
   d="scan'208";a="216218250"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 22:36:24 +0100
Date: Thu, 9 Mar 2017 22:36:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    speakup@linux-speakup.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 5/6] staging: speakup: Alignment should
 match open parenthesis
In-Reply-To: <20170309190320.25681-6-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1703092232520.2306@hadrien>
References: <20170309190320.25681-1-arushisinghal19971997@gmail.com> <20170309190320.25681-6-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Arushi Singhal wrote:

> Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  		if (synth_request_region(speakup_info.port_tts - 1,
> -					SYNTH_IO_EXTENT)) {
> +		    SYNTH_IO_EXTENT)) {
>  			pr_warn("sorry, port already reserved\n");
>  			return -EBUSY;
>  		}
> @@ -270,7 +270,7 @@ static int synth_probe(struct spk_synth *synth)
>  	} else {
>  		for (i = 0; synth_portlist[i]; i++) {
>  			if (synth_request_region(synth_portlist[i],
> -						SYNTH_IO_EXTENT)) {
> +			    SYNTH_IO_EXTENT)) {

These are not correct.  SYNTH_IO_EXTENT should be lines up with the right
side of the ( of the argument list of which it is an element.  So the
original code is either correct or close to correct.

julia

