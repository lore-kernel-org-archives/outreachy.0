X-GM-THRID: 6615237556487323648
X-Received: by 2002:a2e:21e3:: with SMTP id h96-v6mr1709833lji.43.1540273099666;
        Mon, 22 Oct 2018 22:38:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9cd2:: with SMTP id g18-v6ls179232ljj.37.gmail; Mon, 22
 Oct 2018 22:38:18 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62LCpEXEdEukZUGQhmvhkJeRMZAM4qaaoIXiFq2igUEIZy+YlwI+zzGsbj7uSd0Yp9TK8fu
X-Received: by 2002:a2e:1ce:: with SMTP id f75-v6mr1772094lji.11.1540273098662;
        Mon, 22 Oct 2018 22:38:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540273098; cv=none;
        d=google.com; s=arc-20160816;
        b=0DHoqR6WGdAKybbFCMDtmJNvGVgVapWQYflfCmBn2En9Q1MiS8SMOJvwBrKpJ5GvEu
         H8THScHyWawv3pCtC2wDDOjASMuwrgR7/8QNmunzNMa9QtlfQIZBy/9nzzLUSg9YjqFW
         w3/PAyYjfd705uuX38rES2bt3UG+BtX1nJPjdcfx5V6LnIa1e7CP/2IAyHgT87pbgIgF
         n7ljRUOSMmLBsISPPtvq80Z57umig7YYvdqn5XbIy+uZQEc2hfdOJ4CeEsSK1eanX2Km
         7IB8jHI1B/Gutb9kft1Yedb9l01WDHpStCmYCmCgjTS+PNsk75Dh0EVnZy7rIiKu6mtP
         9Frg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1y1zhfGZf1aYwbY6j6npRuREjMGJKtKGZZ0gfcY1AYk=;
        b=DsZuqJ/tHgmSVOeCjC34vxj4bAh2DC04NO5PSMlADADsDE4NYpTFRHKUmGc5LTagOF
         DEetJzLdkrFeTqPd9RDHvd7ATKv2uah0juoFKljHmP3mJJg1O5tzUUVrVdOR3cwL2Wcm
         3GGuyxlh5bucoJvViq4vdETiaofWrk1ZlSikysvo06K8JoxJGfYkW7wwlQkCePxT1qCz
         TSwagAO6JAMiG0IEPSGs9BZsmf7cGas66frGs0p0UgxefDoGtZhHht+U6LJytytw08sU
         SBkSa4esDTIH1olDCLl3+ompiWM3QgJmOwEHtEPDG67YfwF4yAFK9hIJ30v3d4WOxrR7
         p7DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h192-v6si5139lfg.1.2018.10.22.22.38.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 22:38:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,414,1534802400"; 
   d="scan'208";a="282999882"
Received: from 30.9-255-62.static.virginmediabusiness.co.uk (HELO [172.16.7.66]) ([62.255.9.30])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Oct 2018 07:38:17 +0200
Date: Tue, 23 Oct 2018 06:38:16 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Kimberly Brown <kimbrownkd@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging:rtl8192u: Fix misspellings
 in comments - Style
In-Reply-To: <20181023031711.GA6194@v>
Message-ID: <alpine.DEB.2.21.1810230636510.2343@hadrien>
References: <cover.1540229302.git.kimbrownkd@gmail.com> <552e36244c1487a002b7f130d8b5ee07cb8afff7.1540229302.git.kimbrownkd@gmail.com> <alpine.DEB.2.21.1810221852140.2333@hadrien> <20181023031711.GA6194@v>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 22 Oct 2018, Kimberly Brown wrote:

> On Mon, Oct 22, 2018 at 06:53:04PM +0100, Julia Lawall wrote:
> > In the subject line, normally the words at the beginning are separated by
> > spaces.  Do git log --oneline on the affected file and follow what seems
> > most popular.
>
> Thanks for the quick reply, Julia! I did check the git log for this
> driver, and the format that I used seemed to be the most popular. Over
> the last 4 months, one author has submitted dozens of patches for this
> driver with this format, so I matched it.
>
> If you think the normal subject line format with spaces is preferable,
> please let me know, and I'll change it.

OK, I see what you mean.  But since most of the other patches in the
kernel use spaces, it would probably be better to use spaces here too.

thanks,
julia

>
> Kimberly
>
> >
> > julia
> >
> > On Mon, 22 Oct 2018, Kimberly Brown wrote:
> >
> > > Fix two spelling mistakes in comments. 'informations' should be
> > > 'information', and 'imblance' should be 'imbalance'. Issues found by
> > > checkpatch.
> > >
> > > This is a coding style change which should have no impact on runtime
> > > code execution.
> > >
> > > Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
> > > ---
> > >  drivers/staging/rtl8192u/r819xU_cmdpkt.c | 2 +-
> > >  drivers/staging/rtl8192u/r819xU_phyreg.h | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> > > index 900f7866d381..e064f43fd8b6 100644
> > > --- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> > > +++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> > > @@ -243,7 +243,7 @@ static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
> > >  			cmdpkt_beacontimerinterrupt_819xusb(dev);
> > >  	}
> > >
> > > -	/* Other informations in interrupt status we need? */
> > > +	/* Other information in interrupt status we need? */
> > >
> > >  	DMESG("<---- cmpk_handle_interrupt_status()\n");
> > >  }
> > > diff --git a/drivers/staging/rtl8192u/r819xU_phyreg.h b/drivers/staging/rtl8192u/r819xU_phyreg.h
> > > index 65ee6088324c..dc9ddf100eab 100644
> > > --- a/drivers/staging/rtl8192u/r819xU_phyreg.h
> > > +++ b/drivers/staging/rtl8192u/r819xU_phyreg.h
> > > @@ -53,7 +53,7 @@
> > >  /* page c */
> > >  #define rOFDM0_TRxPathEnable		0xc04
> > >  #define rOFDM0_XARxAFE				0xc10  /* RxIQ DC offset, Rx digital filter, DC notch filter */
> > > -#define rOFDM0_XARxIQImbalance		0xc14  /* RxIQ imblance matrix */
> > > +#define rOFDM0_XARxIQImbalance		0xc14  /* RxIQ imbalance matrix */
> > >  #define rOFDM0_XBRxAFE				0xc18
> > >  #define rOFDM0_XBRxIQImbalance		0xc1c
> > >  #define rOFDM0_XCRxAFE				0xc20
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/552e36244c1487a002b7f130d8b5ee07cb8afff7.1540229302.git.kimbrownkd%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1810221852140.2333%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181023031711.GA6194%40v.
> For more options, visit https://groups.google.com/d/optout.
>

