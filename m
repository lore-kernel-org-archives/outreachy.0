X-GM-THRID: 6392997475785900032
X-Received: by 10.46.7.10 with SMTP id 10mr384335ljh.1.1488491763440;
        Thu, 02 Mar 2017 13:56:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.92 with SMTP id 28ls815143ljw.54.gmail; Thu, 02 Mar 2017
 13:56:02 -0800 (PST)
X-Received: by 10.25.56.6 with SMTP id f6mr2152085lfa.4.1488491762844;
        Thu, 02 Mar 2017 13:56:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si24334wmn.2.2017.03.02.13.56.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 13:56:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,233,1484002800"; 
   d="scan'208";a="215374171"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 22:56:01 +0100
Date: Thu, 2 Mar 2017 22:56:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, oleg.drokin@intel.com, marvin24@gmx.de, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: rtl8712: Remove unnecessary
 cast on void pointer
In-Reply-To: <1488489544-25941-5-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703022254450.2175@hadrien>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com> <1488489544-25941-5-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> @@ -635,7 +635,7 @@ void r8712_reordering_ctrl_timeout_handler(void *pcontext)
>  {
>  	unsigned long irql;
>  	struct recv_reorder_ctrl *preorder_ctrl =
> -				 (struct recv_reorder_ctrl *)pcontext;
> +				 pcontext;

Coccinelle doesn't always generate code in the best way.  pcontext can be
moved up to the previous line in this case.

julia

