X-GM-THRID: 1427250348032
X-Received: by 10.152.6.232 with SMTP id e8mr1516872laa.2.1424461308224;
        Fri, 20 Feb 2015 11:41:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.140 with SMTP id jo12ls324828lab.19.gmail; Fri, 20 Feb
 2015 11:41:47 -0800 (PST)
X-Received: by 10.152.45.7 with SMTP id i7mr1506383lam.9.1424461307834;
        Fri, 20 Feb 2015 11:41:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si176984wif.0.2015.02.20.11.41.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 11:41:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,616,1418079600"; 
   d="scan'208";a="122735538"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 20:41:47 +0100
Date: Fri, 20 Feb 2015 20:41:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: aybuke ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lustre: fid: Remove
 unnecessary else after return
In-Reply-To: <1424456838-6096-1-git-send-email-aybuke.147@gmail.com>
Message-ID: <alpine.DEB.2.02.1502202040070.2054@localhost6.localdomain6>
References: <1424456838-6096-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

In the subject, Staging: lustre: should be good enough.  The goal is to 
orient the reader.  You can see what others have done for this file with
git log --oneline {filename}

julia

