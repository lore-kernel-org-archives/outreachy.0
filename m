X-GM-THRID: 8319960875008
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e1b4f33b9b6187dc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.97.37 with SMTP id dx5mr691682lbb.15.1426524566429;
        Mon, 16 Mar 2015 09:49:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.205.4 with SMTP id lc4ls638189lac.104.gmail; Mon, 16 Mar
 2015 09:49:26 -0700 (PDT)
X-Received: by 10.152.164.171 with SMTP id yr11mr6443698lab.4.1426524565984;
        Mon, 16 Mar 2015 09:49:25 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c8si511468wiw.1.2015.03.16.09.49.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 09:49:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,410,1422918000"; 
   d="scan'208";a="103568883"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Mar 2015 17:49:25 +0100
Date: Mon, 16 Mar 2015 17:49:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: speakup: Add helper macro
 for spk_synth boilerplate
In-Reply-To: <20150316142901.GA18101@vaishali-Ideapad-Z570>
Message-ID: <alpine.DEB.2.10.1503161748520.2704@hadrien>
References: <20150316142901.GA18101@vaishali-Ideapad-Z570>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> +#define module_spk_synth(__spk_synth) \
> +	module_driver(__spk_synth, synth_add, \
> +			synth_remove)

Why the newline before synth_remove?

julia

