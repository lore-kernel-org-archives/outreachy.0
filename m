X-GM-THRID: 6254203377087938560
X-Received: by 10.25.210.201 with SMTP id j192mr1162627lfg.6.1456682218983;
        Sun, 28 Feb 2016 09:56:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.165.203 with SMTP id o194ls407178lfe.39.gmail; Sun, 28 Feb
 2016 09:56:58 -0800 (PST)
X-Received: by 10.112.205.164 with SMTP id lh4mr1120173lbc.6.1456682218409;
        Sun, 28 Feb 2016 09:56:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c140si190762wmh.1.2016.02.28.09.56.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:56:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,516,1449529200"; 
   d="scan'208";a="166246521"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 18:56:57 +0100
Date: Sun, 28 Feb 2016 18:56:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] reordering remove actions in iio drivers
In-Reply-To: <1456681879-2605-1-git-send-email-amsfield22@gmail.com>
Message-ID: <alpine.DEB.2.02.1602281856040.2147@localhost6.localdomain6>
References: <20160222194313.GA9769@amitoj-Inspiron-3542> <1456681879-2605-1-git-send-email-amsfield22@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 28 Feb 2016, Alison Schofield wrote:

> Hi Amitoj,
> 
> I just worked on a similar patch, and yours caught my attention.
> It's not clear that it is OK to reorder the .remove actions.
> Although it may seem counterintuitive to do anything *after*
> you've unregistered your device, it is indeed done purposely
> and safely in many iio drivers.  It usually needs to stay that way.
> 
> Check out more discussions of this on linux-iio.
> 
> And, consider the source...I'm just trying to figure this stuff
> out too!

Which patch of Amitoj's are you referring to (or which file), and if 
possible do you have a more specific link for the discussion on linux-iio?

thanks,
julia

