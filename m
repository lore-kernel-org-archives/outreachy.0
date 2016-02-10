X-GM-THRID: 6249548608199196672
X-Received: by 10.28.129.210 with SMTP id c201mr1048604wmd.1.1455086424997;
        Tue, 09 Feb 2016 22:40:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.211 with SMTP id m202ls776914wma.1.canary; Tue, 09 Feb
 2016 22:40:24 -0800 (PST)
X-Received: by 10.28.129.210 with SMTP id c201mr1048601wmd.1.1455086424631;
        Tue, 09 Feb 2016 22:40:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c143si54054wmd.1.2016.02.09.22.40.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 22:40:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202403782"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 07:40:24 +0100
Date: Wed, 10 Feb 2016 07:40:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: outreachy-kernel@googlegroups.com
Subject: compiling your changes
Message-ID: <alpine.DEB.2.02.1602100734200.2050@localhost6.localdomain6>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Hello all,

There were a couple of remoarks about code that doesn't compile.  To help 
avoid this, always be sure that you have a .o file for every .c file that 
you have changed, and that the .o file is more recent than the .c file.  
Sometimes you can think that you have compiled the kernel, but you have 
not actually compiled the code that you modified, due to configuration 
issues.  If you have made changes that should only have a very local 
effect, such as adding whitespace, it should be safe to just compile the 
file you are working on, with make path/file.o.  If you are doing 
something with a more global effect, such as adding or removing const, 
adding or removing static, etc, then it is probably safe to just compile 
your specific driver, with make path/driver/.  In the latter case, you 
make need to check the configuration options to be sure that your specific 
file will be compiled.

Get in the habit of compiling for every change you make, no matter how 
simple it seems.  It's always possible to accidentally type a strange 
character and end up with something different than what you intended.

julia

