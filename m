X-GM-THRID: 7018482002461458432
X-Received: by 2002:a05:6512:38a8:: with SMTP id o8mr978098lft.102.1634155167452;
        Wed, 13 Oct 2021 12:59:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3499:: with SMTP id v25ls1656899lfr.0.gmail; Wed,
 13 Oct 2021 12:59:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwuzDGBl437dktKrcbZQHi5ev5L34trpM8owl+rUWSd72I53ulZzjgJw/HWVuiWt3wLRLFf
X-Received: by 2002:ac2:51cd:: with SMTP id u13mr956505lfm.200.1634155165736;
        Wed, 13 Oct 2021 12:59:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634155165; cv=none;
        d=google.com; s=arc-20160816;
        b=mRDwZnlpd2QYKN104UcSev/iRlHC8JUoiK8u4AcixpU1KLckN6KMysEMU5GpR3eB3g
         jSEj6aHZhttlkKxOsPDHQFO85VxH00l1AF3JM9qUDxcdJOUcs73u1QTru7ukDAQ1um1S
         /mRHInk5NIeAfsaWUpDNTJcDtWRnsYyYIIkETTF9ZgUHNvJ4co3VovdRgYyVLM61z/d2
         OKgis4J3bG7ERWZurhrAr9D4vTjeQUfYR0KOU7u1oOgT4P0Wk5VeOGD+/cY/fVvE/iPJ
         e7nqVs/8maYCb1EqFW1aLCXxfKIVuscl82nkVZFZL+c3bJy3rDtd711OfIp32twrwUV0
         e+yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=NBDSGTj2mY0M5XaQWFihw2OXmGWepJINQvJVKbg3Olw=;
        b=XLVBVT6pogK2tOaxWjJKKEOJEgi9vRkGCx23THCO3QIuyJitTTvxmes2ibuF9c9HZw
         YgCjESwROFB/pOExusq5ZfVfnSd4Z/eU/miJpdghckdGr/NNyfeC7p3yuVQNCASB768y
         XZs3ygM2V6yS3b7z+B4Rn46YrJCVqZtS0Y1/97d3+8snCf4h0MdY8dU+aLro5KAjR5Kz
         ysVan9j3ZjBCWd3XZ3NfCqDPxyt5CJcYhgkelRV51+W/u0mGNoZY4UA0DMlTezNV5qGF
         9GAmlp+t+L8uElW0n2lDSdh2KzC+L6KTX2pI7HLu1F9iqFK98bvSUY9X+rmVX7kcC2QB
         Pkug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=TEUC8bXs;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id e14si28417lfs.11.2021.10.13.12.59.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 12:59:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=TEUC8bXs;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=NBDSGTj2mY0M5XaQWFihw2OXmGWepJINQvJVKbg3Olw=; b=TEUC8bXs9T8PKY/hBqIFnyQzWJ
	8b7WJC8qn+IKOF06LWuC713BaH7dBRRIZUmeMCWMyOdHufJn8Gm/Br0RN1LKaDOrr3Nfr6mDPWEDm
	BbWkmSfvKzKlIFydiBjiVgdh4J3WpJyhi8TzKvDjIj/k2Mf45T1hLny+vrzPGgKcG10BJjp7xl9gF
	c/1I73ELdR/eE8YzgC1qMhFZWH3NKOuXq2X7RSn7NOuZjBCH7rBD7Ln4FFw8nWXOu9TxGakyKRS+a
	gf6Pt3nTGvf6YLP/QkSAl4fwo77WYftceQEgBLEZq8uDDRC3scgczWVFx35Le4LlnhAMCcykT4qLp
	D/A/XZFw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1makNp-007lDJ-Tt; Wed, 13 Oct 2021 19:58:05 +0000
Date: Wed, 13 Oct 2021 20:57:49 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Karolina Drobnik <karolinadrobnik@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] =?utf-8?B?Q2Fu4oCZ?= =?utf-8?Q?t?= install
 kernel when CONFIG_SYSTEM_TRUSTED_KEYS is set
Message-ID: <YWc6PeGJUKnp4Y1O@casper.infradead.org>
References: <d89839a7-c1c6-4768-9f5c-c9001b1239a2n@googlegroups.com>
 <alpine.DEB.2.22.394.2110131136370.3465@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.22.394.2110131136370.3465@hadrien>

On Wed, Oct 13, 2021 at 11:37:51AM +0200, Julia Lawall wrote:
> > After a bit of a research, I found out that the solution is to comment out
> > the `CONFIG_SYSTEM_TRUSTED_KEYS` flag. Mine was set to
> > "debian/certs/debian-uefi-certs.pem", a file that’s clearly absent from the
> > kernel tree.
> >
> > I’m not quite sure if this is the right way of going about it. Is it fine to
> > leave this one out when I'm working on a kernel or not?
> >
> > Bonus question: What happens if TRUSTED_KEYS is commented out? Will the
> > *.pem file be generated automatically or does it turn the module signing
> > off?
> 
> I often receive complaints about this file, and I have just replaced
> "debian/certs/debian-uefi-certs.pem" by "", rather than removing the
> configuration option.  No other changes to the configuration inherited
> from my debian installation.

I think if you have a Machine Owner Key set up, this will cause
problems.  My config has:

#
# Certificates for signature checking
#
CONFIG_MODULE_SIG_KEY="../MOK.pem"
CONFIG_MODULE_SIG_KEY_TYPE_RSA=y
# CONFIG_MODULE_SIG_KEY_TYPE_ECDSA is not set
CONFIG_SYSTEM_TRUSTED_KEYRING=y
CONFIG_SYSTEM_TRUSTED_KEYS=""
# CONFIG_SYSTEM_EXTRA_CERTIFICATE is not set
CONFIG_SECONDARY_TRUSTED_KEYRING=y
CONFIG_SYSTEM_BLACKLIST_KEYRING=y
CONFIG_SYSTEM_BLACKLIST_HASH_LIST=""
# CONFIG_SYSTEM_REVOCATION_LIST is not set
# end of Certificates for signature checking

and then I also have a small patch to sign the kernel automatically
with my MOK (rather than manually going through the instructions on
the Debian wiki every time):

commit ca7cc4e6f41d
Author: Matthew Wilcox (Oracle) <willy@infradead.org>
Date:   Fri Apr 30 08:54:45 2021 -0400

    builddeb: Support signing kernels with a Machine Owner Key
    
    If the config file specifies a signing key, use it to sign
    the kernel so that machines with SecureBoot enabled can boot.
    See https://wiki.debian.org/SecureBoot
    
    Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

diff --git a/scripts/package/builddeb b/scripts/package/builddeb
index 91a502bb97e8..4fa6ff2b5cac 100755
--- a/scripts/package/builddeb
+++ b/scripts/package/builddeb
@@ -147,7 +147,15 @@ else
 	cp System.map "$tmpdir/boot/System.map-$version"
 	cp $KCONFIG_CONFIG "$tmpdir/boot/config-$version"
 fi
-cp "$($MAKE -s -f $srctree/Makefile image_name)" "$tmpdir/$installed_image_path"
+
+vmlinux=$($MAKE -s -f $srctree/Makefile image_name)
+if is_enabled CONFIG_MODULE_SIG; then
+	cert=$srctree/$(grep ^CONFIG_MODULE_SIG_KEY= include/config/auto.conf | cut -d\" -f2)
+	key=${cert%pem}priv
+	sbsign --key $key --cert $cert "$vmlinux" --output "$tmpdir/$installed_image_path"
+else
+	cp "$vmlinux" "$tmpdir/$installed_image_path"
+fi
 
 if is_enabled CONFIG_OF_EARLY_FLATTREE; then
 	# Only some architectures with OF support have this target


