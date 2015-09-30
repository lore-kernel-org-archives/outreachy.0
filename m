X-GM-THRID: 6200058021520867328
X-Received: by 10.152.29.132 with SMTP id k4mr222505lah.8.1443591564670;
        Tue, 29 Sep 2015 22:39:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.184.133 with SMTP id eu5ls80895wic.53.gmail; Tue, 29 Sep
 2015 22:39:24 -0700 (PDT)
X-Received: by 10.180.12.170 with SMTP id z10mr323520wib.1.1443591564273;
        Tue, 29 Sep 2015 22:39:24 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o5si167639wib.0.2015.09.29.22.39.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 22:39:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,611,1437429600"; 
   d="scan'208";a="149060370"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Sep 2015 07:39:23 +0200
Date: Wed, 30 Sep 2015 07:39:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging:comedi: Fixed multiple
 file comment style
In-Reply-To: <1443563418-42983-1-git-send-email-cristina.moraru09@gmail.com>
Message-ID: <alpine.DEB.2.02.1509300738140.1984@localhost6.localdomain6>
References: <1443563418-42983-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 29 Sep 2015, Cristina Moraru wrote:

> Fixed 'Block comments use * on subsequent lines' and 'Block comments use

Fixed -> Fix.  Use the imperative.

> + *    include/linux/comedidev.h
> + *   header file for kernel-only structures, variables, and constants

Normally there is only one space after the *.  Take a look at some other
non-staging drivers.

julia

