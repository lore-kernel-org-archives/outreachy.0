X-GM-THRID: 6950618792247427072
X-Received: by 2002:adf:9567:: with SMTP id 94mr22060604wrs.401.1618320274307;
        Tue, 13 Apr 2021 06:24:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:285:: with SMTP id 5ls1379872wmk.3.gmail; Tue, 13
 Apr 2021 06:24:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw+JUfXsr7n1hLRMGR9ZJWfNPq2F0piCyjh3JRKzA/2abkn66V35m/WWv5m6CnNfLv18W7J
X-Received: by 2002:a1c:1bd0:: with SMTP id b199mr4043075wmb.127.1618320272851;
        Tue, 13 Apr 2021 06:24:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618320272; cv=none;
        d=google.com; s=arc-20160816;
        b=w8q7Q/Pwt0YsemYpdKnw27eaP6Sbn1FfLSIv3lWcjqwtzleSuAF4mPy/65F2G73eM9
         1+R7Al0ZKqCd4BNCNbB/Tb8JkyMeVDLNw66grV3aW7F5NpaXiNPv/j2CTz/e19iZA2Cb
         BJ5Des4i/gjg2k1VYDCCre5G7aMWENXbujLuv4h/tt17OzSG5O2y4u4YS3Cmr2jRrh8F
         1gMRfWzBuTU9CJLzQmQPBptfVCTgWcI/zRh1Xhqsm/ZYIaY6rBj5+o8XSDDpSqggMp4f
         GZ9p7jOJS0cbTfn1kxmEfHkBEr8c1DdJcR8rej4pq5GS+gDLK/GvFIAQAa1vDISSzk3l
         /5ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fpmataO6y6J5iqfwR2qd4Wivtgq/Ar9WsoWwLjvHy0c=;
        b=KtueMbeDneo40y6/TPJ1YcCxoCqaV23gZU8SJ7Z1zkqX4OKOrFf+lQod/gzljymhI5
         J8PFRJs5Gu3uNR5+mzagvUPGHRJN3gP6uFPbRyeA9JWdsHg6b/kq2t1GuW+tv2tr8j1i
         A398z42SGYdczAEHWrIS65SxAWthn0Kl09qSN1JzUqGYQd6KS5juz1XqglHsw1WegZPd
         ij/9FECJNMjM0o1MVYdgMmG2O2aY3UQ5uUl/auKZodTxZq5iAUcdN2fcwPlO0x9qTmvR
         uRTMOjgBfzclXuTKpUbITmXFngpYmOfSfDVXcZGGvefLS8Y5ivkGCBLzCpZA0XOdEZuW
         O5aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mNKYVtFG;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id n35si163999wmp.0.2021.04.13.06.24.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 06:24:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mNKYVtFG;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62b.google.com with SMTP id x12so5106760ejc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 06:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fpmataO6y6J5iqfwR2qd4Wivtgq/Ar9WsoWwLjvHy0c=;
        b=mNKYVtFGVLLXwE9Omr3M9RfH65jYaxtIcovHMYS75vwg5DtsqE0ANHMMNMXuU9D1C6
         5vFZr4vbdzaN5euprooz/ytbGt6b1w+IQLv4QycvwO+NvZO0Wg5uenGd30qOJTGbBwFT
         Tnk7f71jgBqHDvFhsybf966K1L4fJooXpcfv4jLTAzLK9jWoExePErAj7cSGeU/xZDkT
         e5ZfZGcV7iax+F4kZYVqh+8CdbaYWxHiDH4WYmOWfnOFSrr5ByOyRN/W0pgNNjRsSFDQ
         vCuVKlngJfe4cHt39zvRY51J1d50fIHYc+sQVmwrc6RS4koH6YBJHroh12jnX7o33A7Y
         eYdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fpmataO6y6J5iqfwR2qd4Wivtgq/Ar9WsoWwLjvHy0c=;
        b=S1M8+c2r3V89d9S628eVbE/sA+bWIVaBAh+YJLSHn+LRM9KX8RYrKHpecGFCruy6X+
         lFRetkqTscmY5QfEBWQEBXk55+I91ROyZTyzMT3d4v2o9oJXIIMg+/cv5gQ3xD/PRch0
         tdX1YIhnzkStvhrzoVmwer8nSNOodRcZyE7XUdidNn6gDGi/k9FrDDPTiJ1PVPgoPe04
         UWl49nNQF+2v9wnrTAoIlRONomsKFifezMX/hgJrmQ/6VqcJLy6Oja1oHExvpE8B8l3v
         dHb6+DOnPTnrSMnV0IatYPdDqQMmelk/a3skpj/0nEcLWVWNj5jmJHp+7v2qNKifhKtf
         LZdw==
X-Gm-Message-State: AOAM530SsUYWGvvAZnux/JdUZkdXS2iqC64QomNN62QVU5OtWwrXuG4x
	R6mQ8N+8pb06O/9mr9+N1/E=
X-Received: by 2002:a17:906:3385:: with SMTP id v5mr32201707eja.539.1618320272670;
        Tue, 13 Apr 2021 06:24:32 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id y21sm9195860edv.31.2021.04.13.06.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 06:24:32 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Replaced strncpy() with strscpy()
Date: Tue, 13 Apr 2021 15:24:31 +0200
Message-ID: <5414987.Cp2PYjnBm2@linux.local>
In-Reply-To: <YHWZoY6B8sOiflwy@kroah.com>
References: <20210413123041.24260-1-fmdefrancesco@gmail.com> <4666289.4L6Ep8XSK1@linux.local> <YHWZoY6B8sOiflwy@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Tuesday, April 13, 2021 3:16:17 PM CEST Greg Kroah-Hartman wrote:
> On Tue, Apr 13, 2021 at 03:12:02PM +0200, Fabio M. De Francesco wrote:
> > On Tuesday, April 13, 2021 2:59:29 PM CEST Greg Kroah-Hartman wrote:
> > > On Tue, Apr 13, 2021 at 02:30:41PM +0200, Fabio M. De Francesco=20
wrote:
> > > > Replaced strncpy() with strscpy() because of compilation time
> > > > warnings
> > > > about possible truncation of output [-Wstringop-truncation].
> > >=20
> > > build warnings?  What build warnings?
> >=20
> > drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c:1388:5: warning:
> > =E2=80=98strncpy=E2=80=99 output may be truncated copying 32 bytes from=
 a string of
> > length 32 [-Wstringop-truncation]
> >=20
> >  1388 |     strncpy(tmp_ssid, ieee->current_network.ssid,
> >=20
> > IW_ESSID_MAX_SIZE);
>=20
> That's implying that there is a real bug here, not that just replacing
> it with a different call is going to solve this, right?
>=20
> And how do you see that, I can't see that in my builds.
>
I see that with flag W=3D1 like in=20
make -j8 drivers/staging/rtl8192u/ W=3D1

However I also think it's not a real issue in this context.
Just that strscpy() is preferred and get rid of warnings.
You only can judge if a patch is worth.
I just thought that gcc is (mostly) right in pointing out warnings like=20
that.

Thanks,

=46abio
>=20
> > > > Furthermore, according to the Linux official documentation,
> > > > strscpy()
> > > > is
> > > > preferred to strncpy.
> > > >=20
> > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > ---
> > > >=20
> > > >  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >=20
> > > > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> > > > b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c index
> > > > 25ea8e1b6b65..aa58eedf5e86 100644
> > > > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> > > > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> > > > @@ -1385,12 +1385,12 @@ inline void
> > > > ieee80211_softmac_new_net(struct
> > > > ieee80211_device *ieee, struct ieee>
> > > >=20
> > > >  			 * essid provided by the user.
> > > >  			 */
> > > >  		=09
> > > >  			if (!ssidbroad) {
> > > >=20
> > > > -				strncpy(tmp_ssid, ieee-
> > >
> > >current_network.ssid, IW_ESSID_MAX_SIZE);
> > >
> > > > +				strscpy(tmp_ssid, ieee-
> > >
> > >current_network.ssid, IW_ESSID_MAX_SIZE);
> > >
> > > Are you sure you can just replace this like this?
> >=20
> > I surely was... but now I'm not anymore, since your review :)
> >=20
> > Maybe you mean I have to check possible return of -E2BIG?
> > Did you mean something else?
> > May you please elaborate further?
>=20
> If it was as simple as search/replace, we would have already done that
> on the whole codebase at once.  It's not that simple :)
>=20
> thanks,
>=20
> greg k-h





