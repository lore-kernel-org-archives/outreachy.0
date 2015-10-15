X-GM-THRID: 6205554058197991424
X-Received: by 10.180.219.66 with SMTP id pm2mr895831wic.1.1444925306844;
        Thu, 15 Oct 2015 09:08:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.130 with SMTP id jg2ls401947wid.8.gmail; Thu, 15 Oct
 2015 09:08:26 -0700 (PDT)
X-Received: by 10.180.106.197 with SMTP id gw5mr2476645wib.7.1444925306266;
        Thu, 15 Oct 2015 09:08:26 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si1091730wif.2.2015.10.15.09.08.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 09:08:26 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,686,1437429600"; 
   d="scan'208";a="182988516"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Oct 2015 18:08:11 +0200
Date: Thu, 15 Oct 2015 18:08:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
cc: Shivani Bhardwaj <shivanib134@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211_rx:
 Remove unnecessary code
In-Reply-To: <20151015070138.GD3134@sudip-pc>
Message-ID: <alpine.DEB.2.10.1510151806300.2350@hadrien>
References: <20151014171850.GA19220@ubuntu> <20151015065035.GC3134@sudip-pc> <CAKHNQQHwsnzcxqvkTS-TVwZXOp5OLOADndP0V6wLJJnFTaY9EQ@mail.gmail.com> <20151015070138.GD3134@sudip-pc>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Oct 2015, Sudip Mukherjee wrote:

> On Thu, Oct 15, 2015 at 12:22:35PM +0530, Shivani Bhardwaj wrote:
> > On Thu, Oct 15, 2015 at 12:20 PM, Sudip Mukherjee
> > <sudipm.mukherjee@gmail.com> wrote:
> > > On Wed, Oct 14, 2015 at 10:48:50PM +0530, Shivani Bhardwaj wrote:
> > >> The variable frame_authorized is declared and mentioned in the code but
> > >> is not used anywhere so, it should be removed. Also, two case statements
> > >> are merged by removing an extra break.
> > > <snip>
> > >> @@ -1106,10 +1105,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
> > >>               switch (hostap_handle_sta_rx(ieee, dev, skb, rx_stats,
> > >>                                            wds != NULL)) {
> > >>               case AP_RX_CONTINUE_NOT_AUTHORIZED:
> > >> -                     frame_authorized = 0;
> > >> -                     break;
> > >>               case AP_RX_CONTINUE:
> > >> -                     frame_authorized = 1;
> > >>                       break;
> > >
> > > Just a doubt, it now becomes:
> > >         case AP_RX_CONTINUE_NOT_AUTHORIZED:
> > >         case AP_RX_CONTINUE:
> > >                 break;
> > >
> > > If these two cases are not doing anything then what is the use of having
> > > them here in the switch-case?
> > >
> > > regards
> > > sudip
> >
> > Because we don't have a default case here and the variable in switch
> > might still get these values based on some other code.
>
> I think default case is to handle all cases which are not given by case
> statement. What will happen if variable gets these values but these
> cases are not mentioned? switch-case will see that these cases are not
> mentioned and will exit the switch-case. In the situation where these
> cases are mentioned, switch-case will see these cases exist, will come
> to these cases and breaks out of switch-case.
> Am I understanding anything wrong here?

If there is no default and a case is not mentioned, then nothing should
happen on the switch.  I guess one could test this easily, if there are
any doubts.  Maybe having cases that do nothing protects against adding a
default that does something?

julia

