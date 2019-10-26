X-GM-THRID: 6751781491192102912
X-Received: by 2002:a67:f744:: with SMTP id w4mr4923691vso.117.1572103759895;
        Sat, 26 Oct 2019 08:29:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:2151:: with SMTP id t17ls658321ual.3.gmail; Sat, 26 Oct
 2019 08:29:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzHrDQ6hFJlg9jImMfgQaKfoiUU/aqHo49t+i3zWKKHtqwa1nZpls91TW7/aaux8icsI7fN
X-Received: by 2002:ab0:1582:: with SMTP id i2mr4507287uae.140.1572103758522;
        Sat, 26 Oct 2019 08:29:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572103758; cv=none;
        d=google.com; s=arc-20160816;
        b=Gt9cjFuzZZmXBGNlTaMM2hyr6wUOJmWFXArhKBitlbO1fWj7hHadoqYphDX+qwdb9u
         U/qqvxGzetng/cLM46DDx82Y9UsNGrzfEO+eIhS+HEtbL7cIrUPVDeay7KMu29OHnUrh
         WcYCcgzuDJWpCIBhElxEPn4C24YzvQMl+NvpbjYMJ+x1XdwyIpacsMAc3SAQyRWcZKw1
         uGmNFQ7arW/QCHoQ/qnyaz0hfCkrY/BQphqv1x4nh5faSQzwZ/Mqb86R5MIo3kOlcuYJ
         +wlvZexF9VqFxOoStH+IgNMfY6jjfU/O6OxiIKHYUMxd+ailO6bouJk0iVUg0zzW1mIv
         uKTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=zliZTSefGbmv3bqKdRDwRD6fcCIqoD8sjTU+knSR9TQ=;
        b=HXRbTPSvfnbSdyoq6U4yvwFP/sgtYaJo5e8y1mRKBqQqxUvr+sdc0XawVnWK9oQ/Ul
         QDvs/8KIbU6BbGcE2qUJ1Gw2ak35x7meP+4kVMx5ze6FS8R3ZiwLU5aDMezRbWt53PZI
         Lt8oKOTtDcpo7PlD2gWfGqh/ci94HNveM00ZcUVljZBevyx6T+U4r2nKgL954c/JgAnL
         KlD9617rbpDo+7ag9SQVE3f/r5faZVVJ3zWW+8TF7O1VqHMyGYD9XHhb4NyX77m29yXC
         wJvaxLrUwuV5tv8xP0rJYZl3K6RkfNG+pee2XUOr0uOkVuTkccjKuZ9NJIrc9TAymV19
         SzPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JlFMwqQ5;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com. [2607:f8b0:4864:20::836])
        by gmr-mx.google.com with ESMTPS id p78si367493vkf.0.2019.10.26.08.29.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 08:29:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) client-ip=2607:f8b0:4864:20::836;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JlFMwqQ5;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x836.google.com with SMTP id d17so8032503qto.3
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 08:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=zliZTSefGbmv3bqKdRDwRD6fcCIqoD8sjTU+knSR9TQ=;
        b=JlFMwqQ5jC3Fe0vYo2r8ldfxzRSpiuwlIrWB5QsWesJlNzs+kqGNJ59+/7i96OBun8
         nxMGLyagAIJkZO1dIUcptsiyH+yCrQa7O8R/QYwvI73UfNP3H2cQLmyArkPsrm0jVpJh
         FH/Xoqh3M1aV2xINn6PQX1rDVlfHlkgehsCzJAs/0e4+GP1hFthEPJEAKnxNDbCXIWcg
         xkCOJ2ULW42z2qzVuqujWJHMB4+ypxmm1RBceodstsPd8wDdX3BeeV8+cCHUKlQF7K1R
         Jt64l4IXwziFFDYuGJDXJP8u2WJnPZpYwscDVkk4xc3MEIEB5XnzwQ0ZJGINMxABD7AO
         9XMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=zliZTSefGbmv3bqKdRDwRD6fcCIqoD8sjTU+knSR9TQ=;
        b=eqi84hTYH/Z6V8HSaiTBLk/AHCUkPCiOdJNurGKuQolF2iNi6WURgYrLKs0l9YQSf2
         0ROtV1lyddRlz5t0ajOZQyiJKJbj/4nemaePsR/WI1m52LXSmm+vNd5ZlUAKINmTEs9A
         qk0L5tGia3pc/8xCdsoyYfix8Jupa8zcgJa3n3BXnU5cFc4KjB319wuRY+8puT4eU3sP
         l37UiZ5GutUGD9ZMdZMjgTkwoQ1bxnxX7abtsg3FXZ6UlWCkrM7soD2HcdUzZgrZaoTn
         TwKPDCd71vZH1b+1NtcqpT7vfNNV8Yo+GuOKmw8hyCUzQoJAXsCSHuvbZaU7zdbhobvK
         pXOA==
X-Gm-Message-State: APjAAAVvIaGCNUs5CM6zXQSHJtUPSvh3OK3w06RcDIDHDhTLCLQviMuS
	TMB5c2ImcRsZgRUGoHUNsmnDW81Lfo7IWA==
X-Received: by 2002:aed:3222:: with SMTP id y31mr9060191qtd.369.1572103757978;
        Sat, 26 Oct 2019 08:29:17 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id n65sm3275455qkb.19.2019.10.26.08.29.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 08:29:17 -0700 (PDT)
Date: Sat, 26 Oct 2019 12:29:13 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Using coccinelle in a specific file
Message-ID: <20191026152913.GA17539@cristiane-Inspiron-5420>
References: <357e73d8-a1e8-4924-816d-bc93a1b20054@googlegroups.com>
 <alpine.DEB.2.21.1910251847290.3307@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.21.1910251847290.3307@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 25, 2019 at 06:49:14PM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 25 Oct 2019, Cristiane Naves wrote:
> 
> > Is there a way to specify a file to use the coccicheck? I'm trying to use�
> > make coccicheck M=drivers/staging/rtl8712/ MODE=patch, but I'm getting the
> > error: coccicheck failed
> > Makefile:1707: recipe for target 'coccicheck' failed
> > make: *** [coccicheck] Error 2
> 
> Maybe adding V=1 will give more information.
> 
> julia
>
I am receiving the following information:

Running (4 in parallel): /usr/bin/spatch -D patch --very-quiet
--cocci-file scripts/coccinelle/misc/semicolon.cocci --no-includes
--include-headers --patch . --dir drivers/staging/rtl8712 -I
./arch/x86/include -I ./arch/x86/include/generated -I ./include -I
./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I
./include/uapi -I ./include/generated/uapi --include
./include/linux/kconfig.h --jobs 4 --chunksize 1
coccicheck failed
Makefile:1707: recipe for target 'coccicheck' failed
make: *** [coccicheck] Error 2

And I also used sudo apt-get build-dep coccinelle but it's not
working yet.


In the github page in install.txt are asked to run the command
./autogen and ./configure, in which directory do I need to execute these
commands? In the git/kernels/staging directory I'm getting bash:
./configure: No such file or directory
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/357e73d8-a1e8-4924-816d-
> > bc93a1b20054%40googlegroups.com.
> >
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910251847290.3307%40hadrien.


