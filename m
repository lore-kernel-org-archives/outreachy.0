X-GM-THRID: 6374319834458488832
X-Received: by 10.25.18.35 with SMTP id h35mr975658lfi.11.1484167857159;
        Wed, 11 Jan 2017 12:50:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.2 with SMTP id z2ls302715lja.49.gmail; Wed, 11 Jan 2017
 12:50:56 -0800 (PST)
X-Received: by 10.46.70.9 with SMTP id t9mr894050lja.8.1484167856430;
        Wed, 11 Jan 2017 12:50:56 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d207si1404016wmd.1.2017.01.11.12.50.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Jan 2017 12:50:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.33,346,1477954800"; 
   d="scan'208";a="254917480"
Received: from wlan.dagstuhl.de (HELO [192.168.12.123]) ([192.76.146.51])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Jan 2017 21:50:55 +0100
Date: Wed, 11 Jan 2017 21:50:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] COMMAND NOT WORKING
In-Reply-To: <c81ecc02-03b8-4a0a-ad9b-6de06226e5de@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1701112150270.2158@hadrien>
References: <c81ecc02-03b8-4a0a-ad9b-6de06226e5de@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 11 Jan 2017, Arushi Singhal wrote:

> I have tried the command :
> git clone -b staging-testing
> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> But this is showing the output:
> Cloning into 'staging'...
> fatal: unable to connect to git.kernel.org:
> git.kernel.org[0: 198.145.20.140]: errno=Connection refused
> git.kernel.org[1: 199.204.44.194]: errno=Connection refused
> git.kernel.org[2: 149.20.4.72]: errno=Connection refused
> git.kernel.org[3: 2001:4f8:1:10:0:1991:8:25]: errno=Network is unreachable
> git.kernel.org[4: 2620:3:c000:a:0:1991:8:25]: errno=Network is unreachable
>
> Can anyone help me out?

It is also available from googlesource,  You could try:

git clone
https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging

julia

