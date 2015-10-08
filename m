X-GM-THRID: 6203187246248493056
X-Received: by 10.13.215.73 with SMTP id z70mr4817997ywd.23.1444294330566;
        Thu, 08 Oct 2015 01:52:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.14 with SMTP id 14ls507431iod.21.gmail; Thu, 08 Oct 2015
 01:52:10 -0700 (PDT)
X-Received: by 10.107.7.87 with SMTP id 84mr5574877ioh.9.1444294330352;
        Thu, 08 Oct 2015 01:52:10 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y11si708281ywd.7.2015.10.08.01.52.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 01:52:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [64.88.227.134])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6502A2078;
	Thu,  8 Oct 2015 08:52:07 +0000 (UTC)
Date: Thu, 8 Oct 2015 09:49:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Where is IBMEBUS in makeconfig?
Message-ID: <20151008084959.GB4642@kroah.com>
References: <20151008081436.GA31765@Ubuntu-D830>
 <20151008082632.GA12448@sudip-pc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151008082632.GA12448@sudip-pc>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 08, 2015 at 01:56:32PM +0530, Sudip Mukherjee wrote:
> On Thu, Oct 08, 2015 at 01:14:36AM -0700, Alison Schofield wrote:
> > Need to load this module but cannot find IBMEBUS dependency in
> > makeconfig.  Appreciate the help!
> > 
> > 	config INFINIBAND_EHCA
> > 		tristate "eHCA support"
> > 		depends on IBMEBUS
> 
> Looks like IBMEBUS is not there in staging tree, I checked linux-next
> also and its not there even. That means this module cannot be built.
> 
> Maybe Greg knows what to do now... remove ehca folder as it has out of
> tree dependency?

$ git grep -w IBMEBUS
arch/powerpc/platforms/Kconfig:config IBMEBUS
drivers/net/ethernet/ibm/Kconfig:       depends on PPC_PSERIES || PPC_DCR || (IBMEBUS && SPARSEMEM)
drivers/net/ethernet/ibm/Kconfig:       depends on IBMEBUS && SPARSEMEM
drivers/staging/rdma/ehca/Kconfig:      depends on IBMEBUS

Nothing "odd" about this, why the confusion?

greg k-h

