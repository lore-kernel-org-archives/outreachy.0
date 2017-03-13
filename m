X-GM-THRID: 6397085894366461952
X-Received: by 10.28.18.2 with SMTP id 2mr212387wms.7.1489440296086;
        Mon, 13 Mar 2017 14:24:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls1644400lja.32.gmail; Mon, 13 Mar 2017
 14:24:55 -0700 (PDT)
X-Received: by 10.46.20.74 with SMTP id 10mr4754178lju.0.1489440295432;
        Mon, 13 Mar 2017 14:24:55 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p144si721462wme.2.2017.03.13.14.24.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 14:24:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,161,1486422000"; 
   d="scan'208";a="264400003"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2017 22:24:53 +0100
Date: Mon, 13 Mar 2017 22:24:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    speakup@linux-speakup.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: speakup: fix "Alignment
 match open parenthesis"
In-Reply-To: <20170313204018.24601-3-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1703132224340.4053@hadrien>
References: <20170313204018.24601-1-arushisinghal19971997@gmail.com> <20170313204018.24601-3-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 14 Mar 2017, Arushi Singhal wrote:

> Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".

You don't have to send another revision just for this issue, but the
commit message would be better as "Align arguments with open parenthesis".
Something that explains what you did, rather than what warning message you
fixed.  In this case, the thing you did is pretty obvious from the warning
message, but that might not always be the case.  So it is better to get
used to writing commit messages that explain what you did and why, rather
than what error message you fixed.  If you force yourself to write a
commit message without using the word fix, you will probably come up with
a good solution.

julia

>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/kobjects.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 8a586323b728..ca85476e3ff7 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -93,7 +93,7 @@ static void report_char_chartab_status(int reset, int received, int used,
>  	} else if (received) {
>  		len = snprintf(buf, sizeof(buf),
>  			       " updated %d of %d %s\n",
> -				used, received, object_type[do_characters]);
> +			       used, received, object_type[do_characters]);
>  		if (rejected)
>  			snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
>  				 " with %d reject%s\n",
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170313204018.24601-3-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

