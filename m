X-GM-THRID: 6806789560169660416
X-Received: by 2002:a05:6602:2f81:: with SMTP id u1mr6585366iow.74.1584919096407;
        Sun, 22 Mar 2020 16:18:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:1557:: with SMTP id v84ls2874076ilk.11.gmail; Sun, 22
 Mar 2020 16:18:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsWk5cLbMAt7iP6J5O04ZgGnzXkExAXjwxFGYf1tCBgOwQvJF3HYDjO1o8/tnLS+80SBEfn
X-Received: by 2002:a92:3d84:: with SMTP id k4mr19374945ilf.47.1584919095188;
        Sun, 22 Mar 2020 16:18:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584919095; cv=none;
        d=google.com; s=arc-20160816;
        b=pBjkQOn6uLZBweFBA/Kw1CHWSLhX5ZtYhqVOTbhNooOaI2rGSG4KquXsYymTeYpAlk
         /anWIjy9ICs8bhvFkr044RL4H3O6ppMW+xC5909T+C2rxvo58HZY5TGzfvpykJxRmkH2
         2o22YLUEXe/rmptX5MRKHjw8SKetaNyWwFAFv19tR/cncRxpMhyh5MPoj0zY73hxSmFh
         1N/8d6SyroVnMK3jQSpY7U7Zg780cb6jjAk+rhNBE4moeEwNJdeMLXIwBPlVbAv4EjZM
         A+D68txtaYCFmDaGoK0MDYH2rtouSQCqOWplN+thIloRfiRU7ko3+ELsn+HDvM/TBi7R
         vrqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=sAqNs7cLCNrJManKOoO5nJSc+vgXtk4yt3qmrV/VGSA=;
        b=Qw4RynWUryTojlc18jZsXvF52Z6FP5tPKze4oOFWBIl0r2CEXm8xwNQJN8cCOJFa5x
         FRstb2B/C1TyZYRlg4skEaljXLoaqBcfSmE4kvmscxMmVuDh7eW7wJzEekj+I5ALcUvb
         BSWYgIylbBshhB3a4DcN3vrJ28jE09KY/rfxE+MtZhoVOdyqwldDgRxIoDtGvcx4AUFF
         YFFVt+0fmucjRKLo3w+R2mYgQdvvgRYdluU8KoLG4et+iDpenF17cKTpHMGM6e+JKaBL
         A+H+KwXFEgb51W6pPY3NfHEpLjeIvzkqShkVeP2E/G5ocnRD5pbY5ieZujm8CbGAaDc6
         lGHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HIp+rh9W;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id k88si825303ilg.1.2020.03.22.16.18.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 16:18:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HIp+rh9W;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id a23so5099175plm.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 16:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sAqNs7cLCNrJManKOoO5nJSc+vgXtk4yt3qmrV/VGSA=;
        b=HIp+rh9WJhP9XJ05dPnVLE6lGZZVOrktfOxFWCcQc6e+ITUiDnTHi7eVBHR+gqTpz1
         9E3jTzzgeo75fyj4YLXAKf43uYVdNqGlHsRWqpJqRGfJjb40PH/6cTyUF1nW7q9dF7Lh
         mVN1aweTD8A8eZagP0n40qUi52I+bbuwsKLRGB4QuwuqJfu4A+NVxrIEp779rGyrp9b8
         PHpzicfdVQHDOMxdmM/HPNdMb6K17ElTO2yxT1XFbYh1OMpDgaHtPnMpWthE4gQ2Jvct
         4j85JZzluxPclQWmXmX0txu07361+pzqsbxmdf1w+Gt2KhoOYFOd4fOWiau20nAZxlaK
         vEcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sAqNs7cLCNrJManKOoO5nJSc+vgXtk4yt3qmrV/VGSA=;
        b=n7nSq6xlQofzCaPfK9+Si4GNg2mKG1k7h3KM8w8CQKZ1PYhrALD+bskPZ4oG9TM66N
         sibcStPEDAoq9T+shTGaEzfA4ser2c6k0IRk5f5/4Ow2lcCBjgBGdikzJ5QLSUa6l6BU
         LLHRIrLSjYhZUiT4vjThaxrEpTQZSV95FQQiIGBmrlDkjcLUyNQaJBE6HU8YiZj23ofx
         AFXZmbkQEkIjabNR6uf+RRb+BUilheCQE1pogzdZn69+faHblznIKObMn4GoiN3WLWGo
         bvzzR3ORD0dIJF9j2+WoXcpY+VC0SshO5vLx/4oJivmJsUZPb+L+XPBx2HObPz/L0Ibr
         wvng==
X-Gm-Message-State: ANhLgQ0OUWUNonnB0bFgvS0dJpnpkQT3GC8T5+QD8VxgKZnu7xKPWMHP
	hsVrF5de86ahLPJQHrqLIxnfMy1hHQw=
X-Received: by 2002:a17:902:694c:: with SMTP id k12mr18968806plt.173.1584919094450;
        Sun, 22 Mar 2020 16:18:14 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from Shreeya-Patel ([113.193.34.113])
        by smtp.googlemail.com with ESMTPSA id z12sm12403521pfj.144.2020.03.22.16.18.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 16:18:13 -0700 (PDT)
Message-ID: <f2b4f7f38a8a490ffc917f7199099ac95656c8c2.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 01/11] Staging: rtl8188eu: hal_com:
 Add space around operators
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>
Cc: Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Mon, 23 Mar 2020 04:48:08 +0530
In-Reply-To: <e40d49aaa96a61019804255c2990d229b2eef7dc.camel@perches.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>
	 <19950c71482b3be0dd9518398af85e964f3b66b1.1584826154.git.shreeya.patel23498@gmail.com>
	 <20200322112744.GC75383@kroah.com>
	 <e40d49aaa96a61019804255c2990d229b2eef7dc.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-03-22 at 08:09 -0700, Joe Perches wrote:
> On Sun, 2020-03-22 at 12:27 +0100, Greg KH wrote:

Hi Greg and Joe,

> > On Sun, Mar 22, 2020 at 03:51:13AM +0530, Shreeya Patel wrote:
> > > Add space around operators for improving the code
> > > readability.
> > > Reported by checkpatch.pl
> > > 
> > > git diff -w shows no difference.
> > > diff of the .o files before and after the changes shows no
> > > difference.
> > 
> > There is no need to have these two lines on every changelog comment
> > in
> > this series :(
> 
Yes I get that.

> In my opinion, there's no need for a series here.
> 
> Whitespace only changes _should_ be done all at once.
> 
> Whitespace changes _could_ have changed string constants.
> 
> So noting that the patch in only whitespace and that
> there isn't a difference in object files is useful as
> it shows any change has been compiled and tested.
> 

Joe, I feel the same thing, there is no need of a patch series
for it but I was given a suggestion that it becomes difficult for the
reviewers to review the patch so it is good to send a patchset instead.

But as you said, we are testing that there is no change in the object
file so we can go ahead with a single patch for all the whitespace
changes.

If you feel this is right then can I go ahead and send a single patch
for it? ( need your or Greg's confirmation before I do it )

Thanks

> 


