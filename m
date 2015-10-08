X-GM-THRID: 6203187246248493056
X-Received: by 10.129.116.133 with SMTP id p127mr4773190ywc.50.1444295108388;
        Thu, 08 Oct 2015 02:05:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.111.137 with SMTP id ii9ls319100obb.7.gmail; Thu, 08 Oct
 2015 02:05:06 -0700 (PDT)
X-Received: by 10.182.246.98 with SMTP id xv2mr5221853obc.3.1444295106801;
        Thu, 08 Oct 2015 02:05:06 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id wl2si5294602pab.1.2015.10.08.02.05.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 02:05:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hy16so49183243pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 02:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9SQPYWYJxFAzGyJj/+HQpSOGuzEd/4tP1tA2RjRJ4so=;
        b=fQvSrmPw/Dp773VWYtM+u4mHroB29ZQ4UfNg4PUVP5YWwK8lr8Sl9NQkW6eLXJiPbp
         zO7kbi4pkokYLlSVqaHGYfHU9z8u8oFnpdKvamnDq+xWFPwzPDDvkjj7arDhMChL0eNv
         O0hKdZjwzAbljSFZH96mv+3RIO87BI03OQ/JK/ja1NT4BMZVDTnluoeRzTSpnnGFZKfT
         /iGlnGxnc1Z9p7xmhML7+QxqYm2z5DnTqrtOSKo6c2qhsJ2ZNbZwEfOqzOPz09fcCZnX
         iOuxSKSFxR0qd4snbj2uuEuSCJOBJnDdYuMdX5IV9HBlph4f8SrhNpQ9FSR5azQBJNKX
         Cj3Q==
X-Received: by 10.66.66.166 with SMTP id g6mr2298676pat.152.1444295106580;
        Thu, 08 Oct 2015 02:05:06 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id xm4sm44318934pab.27.2015.10.08.02.05.04
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 02:05:06 -0700 (PDT)
Date: Thu, 8 Oct 2015 14:34:52 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Greg KH <greg@kroah.com>
Cc: Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Where is IBMEBUS in makeconfig?
Message-ID: <20151008090450.GA16866@sudip-pc>
References: <20151008081436.GA31765@Ubuntu-D830>
 <20151008082632.GA12448@sudip-pc>
 <20151008084651.GB4244@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151008084651.GB4244@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 08, 2015 at 09:46:51AM +0100, Greg KH wrote:
> On Thu, Oct 08, 2015 at 01:56:32PM +0530, Sudip Mukherjee wrote:
> > On Thu, Oct 08, 2015 at 01:14:36AM -0700, Alison Schofield wrote:
> > > Need to load this module but cannot find IBMEBUS dependency in
> > > makeconfig.  Appreciate the help!
> > > 
> > > 	config INFINIBAND_EHCA
> > > 		tristate "eHCA support"
> > > 		depends on IBMEBUS
> > 
> > Looks like IBMEBUS is not there in staging tree, I checked linux-next
> > also and its not there even. That means this module cannot be built.
> > 
> > Maybe Greg knows what to do now... remove ehca folder as it has out of
> > tree dependency?
> 
> $ git grep -w IBMEBUS
> arch/powerpc/platforms/Kconfig:config IBMEBUS
> drivers/net/ethernet/ibm/Kconfig:       depends on PPC_PSERIES || PPC_DCR || (IBMEBUS && SPARSEMEM)
> drivers/net/ethernet/ibm/Kconfig:       depends on IBMEBUS && SPARSEMEM
> drivers/staging/rdma/ehca/Kconfig:      depends on IBMEBUS
> 
> Nothing "odd" about this, why the confusion?

Uhhhh .. sorry.. i just did git grep IBMEBUS drivers/ and could not find
it. Never thought of checking in the whole tree or atleast the arch
files.
Sory for the confusion.

regards
sudip

