X-GM-THRID: 6254196416995917824
X-Received: by 10.129.132.3 with SMTP id u3mr35345330ywf.5.1456258271845;
        Tue, 23 Feb 2016 12:11:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.181 with SMTP id d50ls1042297qgd.51.gmail; Tue, 23 Feb
 2016 12:11:11 -0800 (PST)
X-Received: by 10.140.19.161 with SMTP id 30mr5958159qgh.20.1456258271316;
        Tue, 23 Feb 2016 12:11:11 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x230.google.com (mail-qg0-x230.google.com. [2607:f8b0:400d:c04::230])
        by gmr-mx.google.com with ESMTPS id i133si1829528ywe.7.2016.02.23.12.11.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 12:11:11 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) client-ip=2607:f8b0:400d:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x230.google.com with SMTP id y89so145510306qge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 12:11:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=0rc2KCtu5Mo4yUmuljDuwszWsTFYQ9CrxTWd/o8gwRU=;
        b=dDoAOyb0MhIaPspYpuVmOBvlouSg7DmopTY2p6JY5Zr7PZ5L1x0Wgfv+n0fh8kzCtC
         W1GrdCZhYpkYK8mISJWkCdKPKz0PQ04lrFL/SL02WzbOCCl25i9nl71tbNEPAzNa1U09
         5wtmsbtrvAgSLowl/skBHTMpljIGPYQt617H49sAblzMtbxb+xJrkLJQy91EYeBxBrwj
         U+rX13AmpsLeYp9c3fa/4VY2HysTrecPNGhQGKdO47qaom9TgIr9kzmyt8qIlcQd8Zr3
         f5PK9p6JyMAZzpcK7TRtiJG8q1MP7W7xFw90lhcg+wo+23Epmv4zxscRh3FpSkmKqBh2
         pJiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=0rc2KCtu5Mo4yUmuljDuwszWsTFYQ9CrxTWd/o8gwRU=;
        b=AikxEMVG72aTgWfXMUsm6OKhwnKcsIoCH20MaG86JBgSSOw7UmLq2snSfFrsP6SwFi
         wICRY/ClGHKNEqItPRDxjPus1VZKu9coYK0JYnzetbtDlGEtGICLZD6ZZIeNNGkgsbca
         GAV6W6yRIH1FeUwyOyoRN9HMCNWeUWrGJesW8D8rJ+AH9QvZbZATo+mcp12A7B2bX/V+
         JiO2YEx73ZtHCQLlSxhohvLkFTS0HJcEwEsS5ykcMiHuU8/PzVR5DWFJUKuxbYqDISIn
         HXra6XRhXbqOBoC0SIf2m9rXa5MKqQGfbtQQ1uPvZqcsaInJakuZLTedfFEr0gjlQGrc
         NNuw==
X-Gm-Message-State: AG10YOQVaDdK0rPONDXwn+N0t8eJzeHZGZjFl19vtMpyBbz3wIalzzisQK4T0qeoywnewJsIZqKFAT/n125TAA==
MIME-Version: 1.0
X-Received: by 10.140.233.85 with SMTP id e82mr44226956qhc.86.1456258271083;
 Tue, 23 Feb 2016 12:11:11 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 23 Feb 2016 12:11:11 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602232058480.2040@localhost6.localdomain6>
References: <20160222191612.GA31592@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602232034470.2040@localhost6.localdomain6>
	<CA+5yK5Gr21kxDR_5nwQ2wU2fKx-UjLJke2keCW-rMSwZ3WBM0Q@mail.gmail.com>
	<alpine.DEB.2.02.1602232058480.2040@localhost6.localdomain6>
Date: Wed, 24 Feb 2016 01:41:11 +0530
Message-ID: <CA+5yK5G69ebXFdPSMWtO65-FwqMBhiDLwmQBoJF9BiuR-Hf1mg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: drivers: Remove use
 of deprecated pci API
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 24, 2016 at 1:30 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> Not good enough.  locks nest.  You take them and then release them
> afterwards.  The lock is only relevant if the call is after the lock has
> been taken (thus also turning off interrupts) and before it is released.
>
> julia
I'm not very sure what you're asking me to look for but this is what
is happening:

function1()
{
 dma_alloc_coherent(..., GFP_ATOMIC);
}

function2()
{
...
function1()
...
function3()
}

function3()
{
spin_lock_irqsave()
... //no nesting in this function and does not call any other function in b/w
spin_unlock_irqrestore()
}

Does this answer it?

Amitoj

