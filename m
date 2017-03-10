X-GM-THRID: 6395922242043117568
X-Received: by 10.46.7.10 with SMTP id 10mr3373234ljh.1.1489166826360;
        Fri, 10 Mar 2017 09:27:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.66 with SMTP id s63ls1054705lja.0.gmail; Fri, 10 Mar
 2017 09:27:05 -0800 (PST)
X-Received: by 10.25.169.14 with SMTP id s14mr2754196lfe.3.1489166825700;
        Fri, 10 Mar 2017 09:27:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p144si4709wme.2.2017.03.10.09.27.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 09:27:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,141,1486422000"; 
   d="scan'208";a="216335503"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 18:27:04 +0100
Date: Fri, 10 Mar 2017 18:26:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Doubt regarding use of a function
In-Reply-To: <CAKG5xWiq5T9fgTpnb2vtCwFv4HrBnyBBtYGTpp1_zUS5k-Gq_g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703101826170.3356@hadrien>
References: <CAKG5xWiq5T9fgTpnb2vtCwFv4HrBnyBBtYGTpp1_zUS5k-Gq_g@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, sayli karnik wrote:

> ieee80211 has the following function which to me does nothing-
> void ieee80211_tkip_null(void)
> {
>      printk("============>%s()\n", __func__);
>      return;
> }
>
> Before its function call there is this comment-
> /* These function were added to load crypte module autoly */
>          ieee80211_tkip_null();
>
> Is this function needed in the driver? If not, can I send in a patch
> removing it?

Are there any maintainers associated with the file?  They would know
better.  I can't see that the function is doing anything useful.

julia

