X-GM-THRID: 6336543746979528704
X-Received: by 10.157.22.183 with SMTP id c52mr5695232ote.149.1475491789632;
        Mon, 03 Oct 2016 03:49:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.72 with SMTP id f69ls2271239ita.11.canary; Mon, 03 Oct
 2016 03:49:45 -0700 (PDT)
X-Received: by 10.66.126.172 with SMTP id mz12mr5579894pab.29.1475491785287;
        Mon, 03 Oct 2016 03:49:45 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si7057291par.0.2016.10.03.03.49.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 03:49:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so8675694pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 03:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=a26xpWL/gZU2iaHlRNgvtxXxMB1TmqEVGlfuD0huZds=;
        b=irmRHEfcI+65S4UmaWqNA/pYAQdyBYodLDQZjvc7nfIsHEhsKRrGSl7ufhv1fUf0w5
         KIZLv0oIkKL4ilKrTQX/osXv4+ehpamqhfCnuofOZ4VWlrf9Elw4qm/krfhEnfq078ej
         q6K7Dczd9IBTjx9lx8FYN0DLX+dlNCpT0qBM9q+N7JosvJ2BUhWJ40krpTtxu/cQEYOW
         eLxlmplGHRjdQtMmnjPjFRGhFGF9LA6mNLQsImvXQMxP8gnWbOGE+BlW0IKkDn/cpDK2
         bKY3hHe/oIs5wLaRZZjxgirzAQ1tbIE+VrDSehmvmCe6gPDCwTcy/9Co36qrnEsHYMwn
         wTEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=a26xpWL/gZU2iaHlRNgvtxXxMB1TmqEVGlfuD0huZds=;
        b=H/Wfqr6qxt+dRH59YRH6z2gocUIAKjLJktfxKuAB4N8C3zQLe+d5eVWEE/J4xVf5TQ
         qEFwrLRhATjidG6HfQ0ZJTQIPfeZ7GK4kwl39cjW7XJAO6bUhj+KJYijmQfkZte9ImKv
         A+E99uBqb3BFibsKs+Yh3GySCU4C9BbwIR66FqhrxWBQjlPTRXb9sM8j7n1HLSKprUqv
         1tScmqoW2UZOWLv1bN2eh7yZhFDrjzzIoydOm8YxzGDKxuP5iYzQUziISNU2RgFJrgWk
         mTwSCHajPB66ih9jQfXsPwbRgXls50z285JXSxJlHKLVMxZ8EjJz9OL62ZB6QBB/nZ/P
         PcMQ==
X-Gm-Message-State: AA6/9RkaHLtEPrDL7i9YRPqsw7LESr6LfshMBRWddDnFjVuAlXAlZFN9qGOYGLr3qZfniw==
X-Received: by 10.98.192.14 with SMTP id x14mr14651302pff.30.1475491785145;
        Mon, 03 Oct 2016 03:49:45 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w9sm46351971pfg.34.2016.10.03.03.49.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 03:49:44 -0700 (PDT)
Date: Mon, 3 Oct 2016 16:19:39 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [Outreachy Kernel] [PATCH v2] staging: lustre: Constify
 kernel_param_ops structures
Message-ID: <20161003104939.GA19013@toblerone>
References: <20161002182755.GA32407@toblerone>
 <20161003070233.GB3597@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161003070233.GB3597@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 03, 2016 at 09:02:33AM +0200, Greg Kroah-Hartman wrote:
> On Sun, Oct 02, 2016 at 11:57:55PM +0530, Rehas Sachdeva wrote:
> > Check for structs which are not modified and hence can be declared as const.
> > Done using Coccinelle:
> 
> <snip>
> 
> Why did you send this same patch twice?
> 
I'm sorry. I forgot to include the changelog in v2.

Rehas

> confused,
> 
> greg k-h

