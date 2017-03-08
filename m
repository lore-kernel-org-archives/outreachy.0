X-GM-THRID: 6394973559619321856
X-Received: by 10.46.20.16 with SMTP id u16mr55325ljd.23.1488983699832;
        Wed, 08 Mar 2017 06:34:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.220 with SMTP id 89ls52210lfw.5.gmail; Wed, 08 Mar 2017
 06:34:58 -0800 (PST)
X-Received: by 10.46.1.12 with SMTP id 12mr1255439ljb.30.1488983698572;
        Wed, 08 Mar 2017 06:34:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p144si368738wme.2.2017.03.08.06.34.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:34:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,264,1486422000"; 
   d="scan'208";a="263700906"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2017 15:34:58 +0100
Date: Wed, 8 Mar 2017 15:34:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tahia Khan <tahia.khan@gmail.com>
cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com, 
    ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: removes redundant
 'continue' in while loop conditional blocks
In-Reply-To: <20170308142809.GA24891@coolbox>
Message-ID: <alpine.DEB.2.20.1703081534070.3004@hadrien>
References: <20170308040328.GA24535@coolbox> <alpine.DEB.2.20.1703081014500.3156@hadrien> <20170308142809.GA24891@coolbox>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> I found this using Coccinelle - which I should have noted
> in my commit message! Would you suggest revising the commit
> message?

You can say "Found using Coccinelle".  Or if you like you can show the
rule that you used.

julia

