X-GM-THRID: 6250414458663862272
X-Received: by 10.25.163.210 with SMTP id m201mr340769lfe.8.1455291742256;
        Fri, 12 Feb 2016 07:42:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.157.75 with SMTP id g72ls356035lfe.95.gmail; Fri, 12 Feb
 2016 07:42:21 -0800 (PST)
X-Received: by 10.112.132.74 with SMTP id os10mr348173lbb.22.1455291741557;
        Fri, 12 Feb 2016 07:42:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si275752wmd.1.2016.02.12.07.42.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 07:42:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,436,1449529200"; 
   d="scan'208";a="202859390"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 16:42:21 +0100
Date: Fri, 12 Feb 2016 16:42:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: rtl8192u: ieee80211:
 ieee80211_softmac: Replace MSECS with msecs_to_jiffies
In-Reply-To: <CA+5yK5FH9egAHStv4Qc+M=4kPt1gTitYjcrhKUE72fn_cnyjwg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602121642080.2510@hadrien>
References: <20160212144017.GA1301@amitoj-Inspiron-3542> <alpine.DEB.2.10.1602121558450.2510@hadrien> <CA+5yK5FH9egAHStv4Qc+M=4kPt1gTitYjcrhKUE72fn_cnyjwg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 12 Feb 2016, Amitoj Kaur Chawla wrote:

> On Fri, Feb 12, 2016 at 8:29 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> @@ -380,7 +380,8 @@ static void ieee80211_send_beacon(struct ieee80211_device *ieee)
> >>       if (ieee->beacon_txing && ieee->ieee_up) {
> >>  //           if(!timer_pending(&ieee->beacon_timer))
> >>  //                   add_timer(&ieee->beacon_timer);
> >
> > The above comment doesn't seem necessary.  It would be for a different
> > patch than this issue.
> >
> > julia
> >
> Yes, while working on this patchset I found a whole lot of coding
> style issues with the driver and a lot of code is commented out.
> I can send cleanup patches later for this.

OK.

julia

