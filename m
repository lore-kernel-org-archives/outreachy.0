X-GM-THRID: 6951120130932736000
X-Received: by 2002:a7b:cb05:: with SMTP id u5mr6983608wmj.183.1618562816167;
        Fri, 16 Apr 2021 01:46:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c1c3:: with SMTP id a3ls4044487wmj.0.gmail; Fri, 16 Apr
 2021 01:46:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxDZlYjZcbUAGnh06FFdHSzBkAn/EUFl12lT+kSCSlnpLtqbrAD+vx3Q1xHloHyAGN8lDxy
X-Received: by 2002:a7b:c4d9:: with SMTP id g25mr7173367wmk.182.1618562814778;
        Fri, 16 Apr 2021 01:46:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618562814; cv=none;
        d=google.com; s=arc-20160816;
        b=oKjRspulUmk3GR5ueZ45uTpjHk9DlczX0IYjFA9vzfpiqliUL9wV4KHbxVJcQrl+Lp
         7egelT++Q+6FDYxABjlpY5zRgWnqFbETlPDliItq7l6tmognWWlGA+RVfPevaM881Uss
         uLFVRM2MH/M61yZvMfuQBJrKtRQSGKR4BHIiXfbxbz3scvZeJfi6APZoArzJRbTBqxUE
         fvkbEuh1tNv8g+P7ndJzjVRJk2WJNqsb+UYFAbxLa025rUzGTnt0VV53aRRBKehuepzc
         F/rNy8sDFUjjozaxRKt9T13Ac8QOfGfF0xiVM/UBcA76Pb3aLSM3SRyWlnnihCReL1iC
         mapQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=3ofRgEpnZis9Ry7mQgyQdOCLqWEbJ4B3SNfekMmt8N0=;
        b=WFzXcDm3pMUsoAe7hvURwE4i8KmNkoSVR5F7zc2sebmjzZUcYX3RCEBb4C6MPIGx4M
         oRM3kDZ9UNG7NxP14zEG2437zrIFbhVe7ubKcP/ThOEkqv2bzaJJmQzERP6dWEMK90Yn
         Tngmos1sGynyOEe8CKrBcShyr+tynaZb/xCvBdfiRVXKbWKXpstn1X0Ma7x6k76teZLz
         fwcfvmuigRkDYrqc8nqx9P1iR7+XBg1K47/BrsG9IZZyFpTtKF9n9cI0iUSCOzjFFHWl
         K9CSYg6Yg0TtjU1qVKq1SMZSeYHdu2JYT1VBXdpKytxtdIBq7fkPzZtZ6nAUkoCVDXc1
         flMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x16si285106wmi.1.2021.04.16.01.46.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 01:46:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AZL/wmquxbTNGJ9gVaa3z1RQC7skCEoMji2hD?=
 =?us-ascii?q?6mlwRA09T+Wxncqjhele8BfyhioYVn1Io6HjBICraxrnmaJdy48XILukQU3CsG?=
 =?us-ascii?q?ynMIlt4eLZsljdMgf58fNQ0rolTrhmBLTLfCFHpOvz/QXQKbYd6fad9qTAv43j?=
 =?us-ascii?q?5lNMaS0vVK169Qd+DW+gYzVLbS1LH4AwGpbZxucvnUvCRV0tYs62BmYIUoH4zr?=
 =?us-ascii?q?WhqLvdfRUECxQ7gTPgsRqU6aX3GxXd/hASXyIn+9Yf2FXFiADw6+Gftei6wHbn?=
 =?us-ascii?q?uVP70pI+orbc4+oGIPbJq8AObh3wlw6jZe1aKtm/lQFwhNvq1XEHv53npQw6M8?=
 =?us-ascii?q?F69nXLF1vFxifF6k3c9HIH0TvN43m+rhLY0LfEbSN/D9BewYFUdhac7EY/ptRx?=
 =?us-ascii?q?zb9GxAuixuBqJAKFmj/86djOXwxrkUTxoWNKq590s0Bi?=
X-IronPort-AV: E=Sophos;i="5.82,226,1613430000"; 
   d="scan'208";a="503542453"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Apr 2021 10:46:54 +0200
Date: Fri, 16 Apr 2021 10:46:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sakari Ailus <sakari.ailus@linux.intel.com>
cc: Dan Carpenter <dan.carpenter@oracle.com>, 
    Matthew Wilcox <willy@infradead.org>, 
    Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
In-Reply-To: <20210416083728.GL3@paasikivi.fi.intel.com>
Message-ID: <alpine.DEB.2.22.394.2104161045140.8503@hadrien>
References: <20210415170819.GA17534@focaruja> <20210415171409.GC2531743@casper.infradead.org> <20210415194955.GI3@paasikivi.fi.intel.com> <20210415195704.GE2531743@casper.infradead.org> <20210415195941.GF2531743@casper.infradead.org> <20210415212158.GK3@paasikivi.fi.intel.com>
 <20210416054941.GF6021@kadam> <20210416083728.GL3@paasikivi.fi.intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> > If you're running into the 80 character limit, then it's fine to use
> > two tabs.  I think we have been rejecting patches that push align the
> > parameters but push past the 80 character limit.  Using one tab is
> > confusing because it makes the decalarations line up with the code.
>
> Interesting. Do you have an example of this? I've thought checkpatch.pl
> gave a warning if the line ended with an opening parenthesis no matter
> what.

Checkpatch is a perl script that searches for patterns that often indicate
code that is hard to understand.  It is not a precise definition of what
is allowed in the Linux kernel.  Humans have to amke compromises.

julia

