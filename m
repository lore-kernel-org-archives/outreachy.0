X-GM-THRID: 6950618792247427072
X-Received: by 2002:a05:6512:3182:: with SMTP id i2mr17337026lfe.143.1618319525971;
        Tue, 13 Apr 2021 06:12:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls2896979lff.3.gmail; Tue, 13
 Apr 2021 06:12:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyjr60lgz8TAECaBDxZrnY7HYcwR2PRf4zfFEsbJxpzY1Fl9sHZUAtG9IPVd+IwnINc3eyb
X-Received: by 2002:ac2:5bc2:: with SMTP id u2mr21057727lfn.286.1618319524398;
        Tue, 13 Apr 2021 06:12:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618319524; cv=none;
        d=google.com; s=arc-20160816;
        b=VwPdjeauc7589Mm/2M6HQFIhP4Wg9exBnqVM8bI9fmxh1yNBY8Um9YQI1l3Y275kaF
         992xNvsiE6Y48zRqTMRT3TCre7jCW8ofMyZjPUTW9gHyhAHe3ADgs/8PZZc54iW+bQH2
         cdo2F/ItLtmxlZpjEi7lwbYmHq14d2bG43g6cYDeKKph/lkY9NNfaP0kV/N6TKF39J55
         9g9alrA/tYZiKeOP3ypLazLbFc2pKfFjW4T2LuEx9EHSuX3KW5VuaixWILHoXhc0z9jn
         64SIv47TB59PVqsjS09EcjcDsHPtSTtPB9xgX7qV8HHOb20PffufpS53wTip5UlMOhBB
         NRyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JgdFlcjKU9PU1av9/ApHGEGIWSg0KENF/Em1dnUWYKA=;
        b=EQfwhYFqUvPtQr+h3zKVFHftR12AiIz2kO+urFbHXWg0bfPUvkUsB7uJiX+1l0ogaL
         KLWQ35eGnVPbx7u9kaEQf2XZ/w/FNMMu3oNp1t2/QifADKpBOuzPYu6sKUFZ64PK6CAc
         EXMhnbxPArMv2KTKm0xym4jqJmzpklq7O0bQW3Hn6xRxmZHaPiNi7UAv3kFiy3K/1C8B
         IrlHDKO/K/0fzVaod4Iu2jasazP0i55XcKFao4jHQTkCCVfGkY90qP4uqTBtv8GKKc5O
         3LcqI/13o586/iXHw4xXTYJp6o9AZ0U6Es+dR4tj16+qsMXss2VbCeV7AQlQLRMcTaIL
         ecwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OJLF5Whr;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com. [2a00:1450:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id y11si798211lfg.8.2021.04.13.06.12.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 06:12:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OJLF5Whr;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52e.google.com with SMTP id e7so19288610edu.10
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 06:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JgdFlcjKU9PU1av9/ApHGEGIWSg0KENF/Em1dnUWYKA=;
        b=OJLF5WhrD/4VIOG76yBUebbn3H0fOwnYI0rMe8tkdMX28ZiUwh7j6/242zpXDxxbWi
         HNR378B3E0FEEBK320AujAfmXL+NxAQWBHfD+wYOl4y1hXQP2KQN6Vb4s1wsIEB6W0sC
         H3uQ/OvY9PuOEYVX6WnACc6RuO8pkgpWaJ4g/hFAMVIoazf5tzlrohf+jh660et0q0BH
         TaIpLxUHPJJoratG/3CzPBHSc7yqBLaCkcE+icUwbLg/Q/8C2OjbZ5cLq1L+fxk+Ha5m
         lfiJNZnK8LTQ+E1gCMmhEUobEZmeNW/sKZrxqs+jZ983J2SkimAbl+H040slCR0b2Miq
         eTbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JgdFlcjKU9PU1av9/ApHGEGIWSg0KENF/Em1dnUWYKA=;
        b=nNbMdq26TEDzNaVZmBcoQs/h6nroT4jH/hD37DcH93VOS4/JpRJngnyoIUVIQwQq3t
         iGzwlVlcGjH8kTzImHPNTDoVc16YuGvP9+sVnPT0PHcqzjmRc5/oPv1JO/w7Uoxrx7T1
         Vak0sLOP35YDJENCgQXWD4HLPLr+6YHKLFS7wdix+/v4Bpxm4fzXUX/GAubEPNXojRm6
         k4Mx5eg2Hqc55HYhN9D4XNQduyDlXFAXxbiZu+TaZ5ESr+XIMlhipKhNbWd5fspgfX//
         9Fx59HZ6bC7gAPPgR2zJSnWviHhbmxuaK6ndeBWDdgW4FGI2uJf6ivNVYCqXTk3m8FEr
         vy8A==
X-Gm-Message-State: AOAM531tTtq5Ffn4Dm0Zo78nr7J9KXvlE3QlBqYmxwL9JKPwLRloB8wz
	hEy8F0q0kbxhvV/wfcEfmhg=
X-Received: by 2002:a05:6402:30ae:: with SMTP id df14mr34370981edb.97.1618319524139;
        Tue, 13 Apr 2021 06:12:04 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id hs26sm3655477ejc.23.2021.04.13.06.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 06:12:03 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Replaced strncpy() with strscpy()
Date: Tue, 13 Apr 2021 15:12:02 +0200
Message-ID: <4666289.4L6Ep8XSK1@linux.local>
In-Reply-To: <YHWVsahY4nfo9xF/@kroah.com>
References: <20210413123041.24260-1-fmdefrancesco@gmail.com> <YHWVsahY4nfo9xF/@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Tuesday, April 13, 2021 2:59:29 PM CEST Greg Kroah-Hartman wrote:
> On Tue, Apr 13, 2021 at 02:30:41PM +0200, Fabio M. De Francesco wrote:
> > Replaced strncpy() with strscpy() because of compilation time warnings
> > about possible truncation of output [-Wstringop-truncation].
>=20
> build warnings?  What build warnings?
>
drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c:1388:5: warning:=20
=E2=80=98strncpy=E2=80=99 output may be truncated copying 32 bytes from a s=
tring of length=20
32 [-Wstringop-truncation]
 1388 |     strncpy(tmp_ssid, ieee->current_network.ssid,=20
IW_ESSID_MAX_SIZE);
>=20
> > Furthermore, according to the Linux official documentation, strscpy()
> > is
> > preferred to strncpy.
> >=20
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> >=20
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> > b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c index
> > 25ea8e1b6b65..aa58eedf5e86 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> > @@ -1385,12 +1385,12 @@ inline void ieee80211_softmac_new_net(struct
> > ieee80211_device *ieee, struct ieee>=20
> >  			 * essid provided by the user.
> >  			 */
> >  		=09
> >  			if (!ssidbroad) {
> >=20
> > -				strncpy(tmp_ssid, ieee-
>current_network.ssid, IW_ESSID_MAX_SIZE);
> > +				strscpy(tmp_ssid, ieee-
>current_network.ssid, IW_ESSID_MAX_SIZE);
>=20
> Are you sure you can just replace this like this?
>
I surely was... but now I'm not anymore, since your review :)

Maybe you mean I have to check possible return of -E2BIG?
Did you mean something else?
May you please elaborate further?

Thanks,

=46abio
>=20
> >  				tmp_ssid_len =3D ieee-
>current_network.ssid_len;
> >  		=09
> >  			}
> >  			memcpy(&ieee->current_network, net,=20
sizeof(struct
> >  			ieee80211_network));
> >=20
> > -			strncpy(ieee->current_network.ssid,=20
tmp_ssid, IW_ESSID_MAX_SIZE);
> > +			strscpy(ieee->current_network.ssid,=20
tmp_ssid, IW_ESSID_MAX_SIZE);
>=20
> Same here, are you sure?
>=20
> thanks,
>=20
> greg k-h





