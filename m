X-GM-THRID: 6257874125297025024
X-Received: by 10.112.26.74 with SMTP id j10mr504751lbg.18.1457166484571;
        Sat, 05 Mar 2016 00:28:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.147.12 with SMTP id v12ls298792wmd.32.gmail; Sat, 05 Mar
 2016 00:28:04 -0800 (PST)
X-Received: by 10.194.119.66 with SMTP id ks2mr1635198wjb.6.1457166484155;
        Sat, 05 Mar 2016 00:28:04 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v68si77282wmd.1.2016.03.05.00.28.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 00:28:04 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,540,1449529200"; 
   d="scan'208";a="206009512"
Received: from 155.212.120.153.west.global.crust-r.net (HELO hadrien.local) ([153.120.212.155])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Mar 2016 09:27:56 +0100
Date: Sat, 5 Mar 2016 09:27:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eva Rachel Retuya <eraretuya@gmail.com>
cc: "pooja.shamili" <poojashamili@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: mt29f_spinand: Replacing
 pr_info with dev_info after the call to devm_kzalloc
In-Reply-To: <20160305080019.GA28126@Socrates-Mint>
Message-ID: <alpine.DEB.2.10.1603050926530.2822@hadrien>
References: <20160303170735.GA3773@localhost> <20160305080019.GA28126@Socrates-Mint>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 5 Mar 2016, Eva Rachel Retuya wrote:

> On Thu, Mar 03, 2016 at 10:37:35PM +0530, pooja.shamili wrote:
> > The function devm_kzalloc has a first argument of type struct device *.
> > This is the type of argument required by printing functions such as
> > dev_info, dev_err, etc. Thus, functions like pr_info should not normally
> > be used after a call to devm_kzalloc. Thus, all pr_info occurances are
> > replaced with dev_info function calls.
> >
> > This was done using Coccinelle, the patch being:
> > @@
> > expression E1,E2;
> > expression list args;
> > @@
> >
> > E1 = devm_kzalloc(E2, ...);
> > <...
> > - pr_info(
> > + dev_info(E2,
> > args);
> > ...>
> >
> > Signed-off-by: pooja.shamili <poojashamili@gmail.com>
> > ---
> >  drivers/staging/mt29f_spinand/mt29f_spinand.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> > index 75fe61c..791e36f 100644
> > --- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
> > +++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> > @@ -893,7 +893,8 @@ static int spinand_probe(struct spi_device *spi_nand)
> >  #else
> >  	chip->ecc.mode	= NAND_ECC_SOFT;
> >  	if (spinand_disable_ecc(spi_nand) < 0)
> > -		pr_info("%s: disable ecc failed!\n", __func__);
> > +		dev_info(&spi_nand->dev, "%s: disable ecc failed!\n",
> > +			 __func__);
> >  #endif
> >
> >  	nand_set_flash_node(chip, spi_nand->dev.of_node);
> > --
> > 2.1.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160303170735.GA3773%40localhost.
> > For more options, visit https://groups.google.com/d/optout.
>
> Hello Pooja,
>
> I'm also working on the semantic patch you presented here but I'm aiming
> for the "extended" one. I'm using this driver to test my patch -- other
> than what you have changed, I suggest you also convert the other pr_
> calls on this driver even if it's by hand and add that to your commit
> message. I think there are only 2 left, for consistency purposes.

If you do something partly by hand and partly with Coccinelle, please
carefully indicate everything that you do by hand so that the reviewer
will know to look for more than what is described by the semantic patch.

julia


>
> Eva
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160305080019.GA28126%40Socrates-Mint.
> For more options, visit https://groups.google.com/d/optout.
>

