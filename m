X-GM-THRID: 6388489014907764736
X-Received: by 10.46.22.68 with SMTP id 4mr1733556ljw.14.1487518492320;
        Sun, 19 Feb 2017 07:34:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.213 with SMTP id 204ls414883ljf.43.gmail; Sun, 19 Feb
 2017 07:34:51 -0800 (PST)
X-Received: by 10.25.56.6 with SMTP id f6mr1901482lfa.4.1487518491123;
        Sun, 19 Feb 2017 07:34:51 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 14si562101wmn.2.2017.02.19.07.34.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 07:34:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,181,1484002800"; 
   d="scan'208";a="261172058"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2017 16:34:50 +0100
Date: Sun, 19 Feb 2017 16:34:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: ks7010: There should be
 no spaces at the start of a line
In-Reply-To: <df1dbfa6-0823-4899-b1b7-4358b18575be@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702191633190.2363@hadrien>
References: <20170218164002.GA7269@arushi-HP-Pavilion-Notebook> <20170218165714.GA24078@kroah.com> <df1dbfa6-0823-4899-b1b7-4358b18575be@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1443183817-1487518490=:2363"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1443183817-1487518490=:2363
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 19 Feb 2017, Arushi Singhal wrote:

>
> Hi Greg
> I think we cannot indent the text otherwise, the print statement will be
> different as it should be

There are newlines in the printed string.  I suspect that there is no need
to print them all at once.

Actually, your change removed spaces inside a string, so it did change the
form of the poutput.

Also, remember not to top post :)

julia

> Thanks
>
> On Saturday, February 18, 2017 at 10:27:19 PM UTC+5:30, gregkh wrote:
>       On Sat, Feb 18, 2017 at 10:10:02PM +0530, Arushi Singhal wrote:
>       > The following patch the checkpatch.pl warning:
>       > drivers/staging/ks7010/ks_hostif.c warning: please, no spaces
>       at the
>       > start of a line
>       >
>       > Signed-off-by: Arushi Singhal <arushising...@gmail.com>
>       > ---
>       >  drivers/staging/ks7010/ks_hostif.c | 4 ++--
>       >  1 file changed, 2 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/ks7010/ks_hostif.c
>       b/drivers/staging/ks7010/ks_hostif.c
>       > index 819e08b5fa91..3b2e28749b63 100644
>       > --- a/drivers/staging/ks7010/ks_hostif.c
>       > +++ b/drivers/staging/ks7010/ks_hostif.c
>       > @@ -191,8 +191,8 @@ int get_current_ap(struct ks_wlan_private
>       *priv, struct link_ap_info_t *ap_info)
>       >          }
>       >          DPRINTK(4, "\n    Link AP\n");
>       >          DPRINTK(4, "    bssid=%02X:%02X:%02X:%02X:%02X:%02X\n
>       \
>       > -   essid=%s\n  
>        rate_set=%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n  
>        channel=%d\n \
>       > -   rssi=%d\n    sq=%d\n    capability=%04X\n", ap->bssid[0],
>       ap->bssid[1], ap->bssid[2], ap->bssid[3], ap->bssid[4],
>       ap->bssid[5], &(ap->ssid.body[0]), ap->rate_set.body[0],
>       ap->rate_set.body[1], ap->rate_set.body[2],
>       ap->rate_set.body[3], ap->rate_set.body[4],
>       ap->rate_set.body[5], ap->rate_set.body[6],
>       ap->rate_set.body[7], ap->channel, ap->rssi, ap->sq,
>       ap->capability);
>       > +essid=%s\n  
>        rate_set=%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n  
>        channel=%d\n \
>       > +rssi=%d\n    sq=%d\n    capability=%04X\n", ap->bssid[0],
>       ap->bssid[1], ap->bssid[2], ap->bssid[3], ap->bssid[4],
>       ap->bssid[5], &(ap->ssid.body[0]), ap->rate_set.body[0],
>       ap->rate_set.body[1], ap->rate_set.body[2],
>       ap->rate_set.body[3], ap->rate_set.body[4],
>       ap->rate_set.body[5], ap->rate_set.body[6],
>       ap->rate_set.body[7], ap->channel, ap->rssi, ap->sq,
>       ap->capability);
>
>       So don't just remove the spaces, fix it correctly with the
>       proper
>       indentation please.
>
>       thanks,
>
>       greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/df1dbfa6-0823-4899-b1b7-
> 4358b18575be%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1443183817-1487518490=:2363--

