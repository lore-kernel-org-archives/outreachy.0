X-GM-THRID: 6204202017564393472
X-Received: by 10.66.249.100 with SMTP id yt4mr23238413pac.42.1444644388899;
        Mon, 12 Oct 2015 03:06:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.144 with SMTP id h16ls2830963qgd.88.gmail; Mon, 12 Oct
 2015 03:06:28 -0700 (PDT)
X-Received: by 10.129.46.204 with SMTP id u195mr22939724ywu.47.1444644388489;
        Mon, 12 Oct 2015 03:06:28 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id wl2si1324622pab.1.2015.10.12.03.06.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 03:06:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id ve7so92449258pab.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 03:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=TYzs1vrFlnuyIQT4uJQkaZwWz4nFoigMg59AqEGkqKs=;
        b=FU5Ugrk7SAlkEJn8L/6G1E8yKoGK0A3/cTR/lGJ2Mff+SDOwDu4FXNNYg0/gEN/U+Y
         i+9yeIT51jfHQ5HNGdApE0yyo8CJmGWpc1/DxEbVY8ewUH7x/u8t0gIavMR/U+78luC+
         j6ZkacWbiiIywB/agMYHNHizP/Dm1QhNGexaEFn8b5FQK4VJpN5xnxHci9ctoaUlqLfa
         YAGqoUdE8szocZxe32kU+kaYoRWjguMSzLhju2DKb9jo2603pJc9xWwfjXsfsWVPggi5
         8h4KWOzLFYVqgN2bnZlZDGdNAVYV0v1BuG5itUL5V2LhifCbbm2xeXOZo0mEuzVHvBBY
         7Hvg==
X-Received: by 10.68.232.162 with SMTP id tp2mr34196142pbc.162.1444644388331;
        Mon, 12 Oct 2015 03:06:28 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id bh4sm17354333pbb.62.2015.10.12.03.06.26
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 12 Oct 2015 03:06:27 -0700 (PDT)
Date: Mon, 12 Oct 2015 15:36:23 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] sending patch revisions w mutt ???
Message-ID: <20151012100623.GD13596@sudip-pc>
References: <20151011015226.GA3134@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151011015226.GA3134@Ubuntu-D830>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sat, Oct 10, 2015 at 06:52:27PM -0700, Alison Schofield wrote:
> Looking for help threading my patch revisions in mutt.
> 
> I use the mutt -H option to send the original and now I want to send v2 threaded.  
> 
> I can open mutt, goto thread, select reply, and then read (:r) in the patch
> file with vim.  This also means I edit the Subject line manually. None of this is very elegant. 
> 
> Is there a better way?

For sending patch I always use git send-email. mutt is only for replying
to mails.
for sending v2 threaded you can use --in-reply-to option of git
send-email.

regards
sudip

