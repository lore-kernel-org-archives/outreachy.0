X-GM-THRID: 6392198468546330624
X-Received: by 10.223.164.138 with SMTP id g10mr153267wrb.6.1488301582735;
        Tue, 28 Feb 2017 09:06:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.83 with SMTP id h80ls36120lfi.13.gmail; Tue, 28 Feb 2017
 09:06:21 -0800 (PST)
X-Received: by 10.46.82.157 with SMTP id n29mr444313lje.29.1488301581666;
        Tue, 28 Feb 2017 09:06:21 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id v70si267326wmf.0.2017.02.28.09.06.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 09:06:21 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id u63so3384687wmu.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 09:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pMAIjsOjoRIbEShWDAH4TccwBWi3GAF3pCUitZzhuBk=;
        b=BV6KHkKuhAqR5oCjRyIu7wfmbe2yz1dg43rmFKLkbHixWUmSX7f8eAISqxV7/j1HV5
         vYtejQH75+Am8FoHs2uxl3EVyZLeeEAeZwsAL9PSzZJsNnWVh0lWANZDIWLWMa2/POIK
         3MHyx7/sSiLibXCqX4HZMNDiKEVn5T+Uz7FrCER/V7/Kf+Tu4QVRcaRxstcF1ELPpEj2
         OxNOmCj/n2Fr8UOmPyij/UGSEO7iggwYDty3GZIn8Wf7GoWWokJ2CFZBAlXlPCszHDRS
         svee2ec4J0U/zLIIjEFJeO5wYtGYFZazVmgA9sd/ws9wgtkbCY0bLz/yZt4ba4cWhKDz
         Ahlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pMAIjsOjoRIbEShWDAH4TccwBWi3GAF3pCUitZzhuBk=;
        b=GLQvQq3k5CnpoVgAsLtkzjU17pC0s0FGLPEP3pn8vAsSrL+7jQFzOpC5g2vV8EHNU9
         d4pFL2k/t7IXt6gQMz2+IOCBKtjZ5EhD6sxIxHh5L7Zcz/2EfQsrPRh8/G2/Wz8Fq0d6
         wHsxxO2HF6+Fu7GRNeTAsMg417MHBRH0ApKN3Q49P1VUdzhQLcnkJY4XFAhixYKyeT1+
         7K3tIEkIk/OkAwg7qwaoJtZUMlVrC71QDfkT2zkvNE829YtDD0dhIpVaftvT4i0YIf34
         NxISqg75tJUX1DmxZ2+J5FGdNc19yJIiaSgi/XusNhUwJMcGt77zi3yP9tGc+Sa6X7wK
         lO6Q==
X-Gm-Message-State: AMke39nxNbdx4H2VpBoFnL/PvTJqU+Xs0gIv0NjLnqOeT0tEj2mJ09pqdrxPPaH+s+PzqA==
X-Received: by 10.28.47.15 with SMTP id v15mr3368098wmv.116.1488301581374;
        Tue, 28 Feb 2017 09:06:21 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id e14sm19349563wmd.14.2017.02.28.09.06.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 09:06:20 -0800 (PST)
Date: Tue, 28 Feb 2017 19:06:19 +0200
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Deleted TODO file which
 contained redundant information
Message-ID: <20170228170618.GA1177@nati-X550JK>
References: <1488299669-22372-1-git-send-email-narcisaanamaria12@gmail.com>
 <20170228164926.GA15033@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170228164926.GA15033@d830.WORKGROUP>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Feb 28, 2017 at 08:49:26AM -0800, Alison Schofield wrote:
> On Tue, Feb 28, 2017 at 06:34:29PM +0200, Narcisa Ana Maria Vasile wrote:
> > The TODO file contained redundant information which can be obtained
> > using ./scripts/get_maintainer.pl.
> 
> Hi Narcisa,
> I think we want to leave the TODO file even though it is fairly sparse
> at this time.  It's content will grow & shrink with actual todo items,
> and of course, it's nice to have the git log for reference.
> alisons
>
  Hi, 
  Ok, thanks for letting me know
  Narcisa
> > 
> > Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> > ---
> >  drivers/staging/iio/TODO | 8 --------
> >  1 file changed, 8 deletions(-)
> >  delete mode 100644 drivers/staging/iio/TODO
> > 
> > diff --git a/drivers/staging/iio/TODO b/drivers/staging/iio/TODO
> > deleted file mode 100644
> > index 4922402..0000000
> > --- a/drivers/staging/iio/TODO
> > +++ /dev/null
> > @@ -1,8 +0,0 @@
> > -2016 10/09
> > -
> > -ADI Drivers:
> > -CC the device-drivers-devel@blackfin.uclinux.org mailing list when
> > -e-mailing the normal IIO list (see below).
> > -
> > -Contact: Jonathan Cameron <jic23@kernel.org>.
> > -Mailing list: linux-iio@vger.kernel.org
> > -- 
> > 1.9.1
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488299669-22372-1-git-send-email-narcisaanamaria12%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.

