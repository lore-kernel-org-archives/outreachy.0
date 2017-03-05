X-GM-THRID: 6392835608825298944
X-Received: by 10.99.185.77 with SMTP id v13mr3893906pgo.160.1488672397956;
        Sat, 04 Mar 2017 16:06:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls11650229otx.21.gmail; Sat, 04 Mar
 2017 16:06:37 -0800 (PST)
X-Received: by 10.200.48.53 with SMTP id f50mr3192547qte.74.1488672397562;
        Sat, 04 Mar 2017 16:06:37 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c123si709274pfa.4.2017.03.04.16.06.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 16:06:37 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x66so13549160pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 16:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=QM6fsIM+kfCl0zCACpUAdNK7z4h0vGckYXgUgqxMVow=;
        b=lkSKBAon8QUa5KnVgQJ36utfmRKv504d+juscLKa9jzZmg5UlNr4DRcz29Q2XZnzBt
         6uGKg0ng1xw1mHtt5kAVtx+Is2blOGIPn8XCB3Dubi5iieLUzuetquAoNH7NP6Lawk2m
         TeMXF7DI6MxVA/rRObglTEhqq9Ip0dAX9vw/KXoAPCZ+cVTapCrdaeaTO9UIwVb0hXdD
         5PFjvAqsdAjCgOlmKf2aNaIq+gxAkGao23HyvZQJeTh3KoDGqZBFnUw7RxqaelzAi6Ag
         mhPt3kbvrd32IUQYv75hVIHhxYkscb6bhfeIhJxGRMq4N9qIr5gRaW6xaev+Z1Ck+7Xz
         6h8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=QM6fsIM+kfCl0zCACpUAdNK7z4h0vGckYXgUgqxMVow=;
        b=rL/O+Ni4rQfNwYTJHTPQdaJ0Syc2K7rxS3OgWXNQqvUeV7LoR7mOZErCcwhF8XPaOJ
         5Hndf1lELc+cyxusxo+HnZY+eUPCVioCPTjs6sB0UfTjXQqg4sK12fPPCcPN1t2sspuu
         HYLsYxQiMFcd7HInpAykFGxVFPh8AgWxCOZwxe+DFCzzd0H6clqHEiTBx4vwA/Y22IRi
         DJvdBCxV7KzLkcoBR1uYCov7TiBQ31+NfCGqJVuNJdbJx5hl0uDSNgR5lI/dLc6vv+fU
         4CAvE0KAAxAcU/c7ieDO1B+GwFgBA7fIjjoonJvGmADJ47sps9BG5mDUyxETApM//HxN
         ONUQ==
X-Gm-Message-State: AMke39m0fIBuyb0Qg8yhvgdUwKDSH2BkOq9EidbztHQie2asReeNe0oCpWH4hYtk9YU8OQ==
X-Received: by 10.84.215.23 with SMTP id k23mr15081384pli.58.1488672397291;
        Sat, 04 Mar 2017 16:06:37 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id 10sm31052557pfs.113.2017.03.04.16.06.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 16:06:36 -0800 (PST)
Date: Sat, 4 Mar 2017 16:06:34 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: singhalsimran0@gmail.com,
	Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, sergio.paracuellos@gmail.com,
	juliana.orod@gmail.com, thomas.petazzoni@free-electrons.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2 4/6] staging: fbtft: Fix sparse
 warnings of incorrect type in assignment
Message-ID: <20170305000632.GA5628@d830.WORKGROUP>
References: <20170302130459.GA31856@singhal-Inspiron-5558>
 <fe8d6a85-3d4e-8019-937b-22389b942da3@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fe8d6a85-3d4e-8019-937b-22389b942da3@tronnes.org>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 02, 2017 at 02:26:37PM +0100, Noralf Tr�nnes wrote:
> 
> Den 02.03.2017 14.04, skrev simran singhal:
> >This patch fixes the following sparse warnings:
> >
> >drivers/staging/fbtft/fbtft-bus.c:166:36: warning: incorrect type in assignment (different base types)
> >drivers/staging/fbtft/fbtft-bus.c:166:36:    expected unsigned short [unsigned] [short] [usertype] <noident>
> >drivers/staging/fbtft/fbtft-bus.c:166:36:    got restricted __be16 [usertype] <noident>
> >
> >drivers/staging/fbtft/fbtft-io.c:74:29: warning: incorrect type in assignment (different base types)
> >drivers/staging/fbtft/fbtft-io.c:74:29:    expected unsigned long long [unsigned] [long] [long long] [usertype] <noident>
> >drivers/staging/fbtft/fbtft-io.c:74:29:    got restricted __be64 [usertype] <noident>
> >
> >Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> >---
> >  v2:
> >    -changed commit message
> >
> >  drivers/staging/fbtft/fbtft-bus.c | 2 +-
> >  drivers/staging/fbtft/fbtft-io.c  | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> >diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtft-bus.c
> >index ec45043..df2223e 100644
> >--- a/drivers/staging/fbtft/fbtft-bus.c
> >+++ b/drivers/staging/fbtft/fbtft-bus.c
> >@@ -163,7 +163,7 @@ int fbtft_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
> >  						to_copy, remain - to_copy);
> >  		for (i = 0; i < to_copy; i++)
> >-			txbuf16[i] = cpu_to_be16(vmem16[i]);
> >+			txbuf16[i] = vmem16[i];
> 
> This change breaks functionality on little endian machines like
> the Raspberry Pi.
> 
> 
> Noralf.
> 

Hi Simran,

It's probably good to get back to this one while we have Noralf's
attention.

While the change above - in fbtft-bus.c is a problem, the change
below in fbtft-io.c looks ok.  So, compare what you did.  You can't
*not* do the endian conversion.

This is a cleanup change, a cosmetic change.  There is no underlying
bug, so you just need to get the typing correct w/out affecting
behavior.

BTW: I think it's OK to pull this one out and send a v3 of this alone.
That would mean abandoning the patchset and doing them one at a time.
They are all in different drivers anyway.

alisons



> >  		vmem16 = vmem16 + to_copy;
> >  		ret = par->fbtftops.write(par, par->txbuf.buf,
> >diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/fbtft-io.c
> >index d868405..ffb9a3b 100644
> >--- a/drivers/staging/fbtft/fbtft-io.c
> >+++ b/drivers/staging/fbtft/fbtft-io.c
> >@@ -71,7 +71,7 @@ int fbtft_write_spi_emulate_9(struct fbtft_par *par, void *buf, size_t len)
> >  			src++;
> >  		}
> >  		tmp |= ((*src & 0x0100) ? 1 : 0);
> >-		*(u64 *)dst = cpu_to_be64(tmp);
> >+		*(__be64 *)dst = cpu_to_be64(tmp);
> >  		dst += 8;
> >  		*dst++ = (u8)(*src++ & 0x00FF);
> >  		added++;
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/fe8d6a85-3d4e-8019-937b-22389b942da3%40tronnes.org.
> For more options, visit https://groups.google.com/d/optout.

