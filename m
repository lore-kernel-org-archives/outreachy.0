X-GM-THRID: 6750231340791103488
X-Received: by 2002:a17:906:3488:: with SMTP id g8mr22076587ejb.162.1571668930370;
        Mon, 21 Oct 2019 07:42:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:daca:: with SMTP id x10ls3430282eds.13.gmail; Mon, 21
 Oct 2019 07:42:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwujY+LNYaprQUpHMR/tPXos7WDdByyD8mpPrjT2KpoHOydoSAFTCjus0eyDwjH2WZJ0i5S
X-Received: by 2002:a05:6402:28f:: with SMTP id l15mr25845919edv.90.1571668929274;
        Mon, 21 Oct 2019 07:42:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571668929; cv=none;
        d=google.com; s=arc-20160816;
        b=eQIVevKiZUt6Zvhhm0A2fB014ZEHBf3CRYzfQQcY9p6IxKzgVko5bfIKpRxlPggAF8
         3HspL6D1aaJwPgakAuSDeCwtDN4PzDCITFeWDl9aulVzdc/QTDr8A+YWDdBaAapM8GMh
         z2I1n/J1cOR6vhfA9vs11Xuf753snPWALYlGENLglYVqpptqk1bUfNhmT1CbFgztX2k7
         cRWBOquXsEFZmMst/idUMeW3Rd9kuozwWQfcPsMdPyRH3Co825n3P2uj2vTMjLnbHzWd
         KX6E+Sp66FUJLzlsOb2x7f5ZrhLLNDnrBWpkXYASzsk3RM7fAGOenpdmzG/qEzfHW4nd
         vHpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=2aZDOgZc7OOEk6QiAJuBiixGYoO8sC/cQpipyn92D3U=;
        b=vhvc7XZcaknvEQpQyUo3EYJbxXUamLtazoTAta5XMd2cmrjh1bUs3P2klEnlgKl90l
         o8depdDjEJb4d49O8/Ust/CzAgO2yhFbFiJ3o6G1Y3phdbO0j548XFSrl+rgzulL9pEk
         ViYu+3C5fF+5K5WU7cJgsnSNlObboVv5sh4P+to+vN+c1EIbKjO8AAKf1Hm7vMIbRUnQ
         Snmr/C5/YxCNgVUUWsRrk/Nhuo7Quht2NrsUd9HGzx0g8Sq5rDk8v9sHG5tfAIkqaLCy
         aFTIEsr1ZFtn0dqF8eRZv3FYnSn6lkZdEiZWkyunPueXaU1A5yUbCQ9+vBc6VwnOcugR
         Ec9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LNrG3J9J;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a15si879700ejj.0.2019.10.21.07.42.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2019 07:42:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LNrG3J9J;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id r1so4508322wrs.9
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Oct 2019 07:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=2aZDOgZc7OOEk6QiAJuBiixGYoO8sC/cQpipyn92D3U=;
        b=LNrG3J9JycpjZ4JkV7ngL36wAQ04Ryc5TPoQbMDeJkTJNaLqIHDbDTK5v1aztvLq5y
         1d4LHf7egq2ct9tgPlaoc/6D5v1dKNR7QCRZfMn3hLzurQ5l8pPNsMbQ7jMcR5M/TjuF
         qLcBAogUATh9wkHQ65CRLSYSsMbT3f+BjQyehGA2bGalJoqvNwbsf0P3mMesCao5I+fc
         1DPN+5uzPqw0E4LLB7SG2QZmSb7WNKAbtnZzbq4ttR/i/ozL9eXn25Hrw8yFQjW8pr6A
         Ab7F2+I5GwAh9rB0JoO6ZURhP2KYC8dFw0z5NySQlvWBEyIgBvH0N9gRW87lgSR470rr
         XMAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=2aZDOgZc7OOEk6QiAJuBiixGYoO8sC/cQpipyn92D3U=;
        b=bTj9xeUN/WA1CYmXcW8nuMnNvVEkliBnmPevgQET/ygdwpRU3YxxoPK4T/sAaYlZ+8
         oGghD6Zjnzyv/SrlqHq7Y/tnBHxcCddF7oPbpj8uNPcjwMRVIA9xxzrnGYvj10WZKka+
         kIeHtrqEVlHfTUI+o1FBbyBeufRzVRoue2CWiodRnyMjAHqeGHR+Lmqag0gaIhS5CwL0
         Px7IkrPV28M4xDtzVbC/R39dU5PrMem7HHHZMKro2zNpIgItmnc6G91WgOp8AbGe+Pj2
         1AC/HHKCnROby3Epb9Gk88L9K8MhmuGcuJxjTIXvFZvDRbGJZfofALeZp1s4+3psDpxC
         U/6A==
X-Gm-Message-State: APjAAAXwzJYajwm/9JwGiwB6x4xN0JWvdFaUBB9/yBXavOY4bQOzoriS
	Md0h1+R/XMGOTiH8N05IfQ==
X-Received: by 2002:a5d:53cb:: with SMTP id a11mr12962484wrw.22.1571668928774;
        Mon, 21 Oct 2019 07:42:08 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjabhubz.org (host-92-23-80-57.as13285.net. [92.23.80.57])
        by smtp.gmail.com with ESMTPSA id q22sm13200860wmj.5.2019.10.21.07.42.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2019 07:42:08 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Mon, 21 Oct 2019 15:41:52 +0100 (BST)
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
cc: "driverdev-devel@linuxdriverproject.org" <driverdev-devel@linuxdriverproject.org>, 
    Jules Irenge <jbi.octave@gmail.com>, 
    "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
    "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, 
    "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>, 
    "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: wfx: remove unnecessary void pointer
In-Reply-To: <1631480.SfG2rUoJ8t@pc-42>
Message-ID: <alpine.LFD.2.21.1910211537300.13286@ninjahub.org>
References: <20191021122449.19343-1-jbi.octave@gmail.com> <1631480.SfG2rUoJ8t@pc-42>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1395867706-1426243369-1571668927=:13286"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1395867706-1426243369-1571668927=:13286
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT



On Mon, 21 Oct 2019, Jerome Pouiller wrote:

> On Monday 21 October 2019 14:24:49 CEST Jules Irenge wrote:
> > Remove unnecessary void pointers.
> > Issue detected and solved by coccinelle tool.
> > semantic use
> > @@expression e ;@@
> > -(void*)(e)
> > +e
> > 
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/staging/wfx/bh.c       | 2 +-
> >  drivers/staging/wfx/bus_sdio.c | 2 +-
> >  drivers/staging/wfx/bus_spi.c  | 2 +-
> >  drivers/staging/wfx/sta.c      | 2 +-
> >  4 files changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> > index 955ed3a1dd73..d7ad9227c9c4 100644
> > --- a/drivers/staging/wfx/bh.c
> > +++ b/drivers/staging/wfx/bh.c
> > @@ -76,7 +76,7 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
> >         hif = (struct hif_msg *)skb->data;
> >         WARN(hif->encrypted & 0x1, "unsupported encryption type");
> >         if (hif->encrypted == 0x2) {
> > -               if (wfx_sl_decode(wdev, (void *)hif)) {
> > +               if (wfx_sl_decode(wdev, hif)) {
> >                         dev_kfree_skb(skb);
> >                         // If frame was a confirmation, expect trouble in next
> >                         // exchange. However, it is harmless to fail to decode
> > diff --git a/drivers/staging/wfx/bus_sdio.c b/drivers/staging/wfx/bus_sdio.c
> > index 375e07d6d9ae..237a19b5fd16 100644
> > --- a/drivers/staging/wfx/bus_sdio.c
> > +++ b/drivers/staging/wfx/bus_sdio.c
> > @@ -66,7 +66,7 @@ static int wfx_sdio_copy_to_io(void *priv, unsigned int reg_id,
> >         if (reg_id == WFX_REG_IN_OUT_QUEUE)
> >                 sdio_addr |= bus->buf_id_tx << 7;
> >         // FIXME: discards 'const' qualifier for src
> > -       ret = sdio_memcpy_toio(bus->func, sdio_addr, (void *)src, count);
> > +       ret = sdio_memcpy_toio(bus->func, sdio_addr, src, count);
> >         if (!ret && reg_id == WFX_REG_IN_OUT_QUEUE)
> >                 bus->buf_id_tx = (bus->buf_id_tx + 1) % 32;
> > 
> > diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
> > index ab0cda1e124f..bd74801e7461 100644
> > --- a/drivers/staging/wfx/bus_spi.c
> > +++ b/drivers/staging/wfx/bus_spi.c
> > @@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int addr,
> >         struct wfx_spi_priv *bus = priv;
> >         u16 regaddr = (addr << 12) | (count / 2);
> >         // FIXME: use a bounce buffer
> > -       u16 *src16 = (void *)src;
> > +       u16 *src16 = src;
> >         int ret, i;
> >         struct spi_message      m;
> >         struct spi_transfer     t_addr = {
> > diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> > index 688586e823c0..842158b7e805 100644
> > --- a/drivers/staging/wfx/sta.c
> > +++ b/drivers/staging/wfx/sta.c
> > @@ -896,7 +896,7 @@ static int wfx_upload_beacon(struct wfx_vif *wvif)
> >         /* TODO: Distill probe resp; remove TIM and any other beacon-specific
> >          * IEs
> >          */
> > -       mgmt = (void *)skb->data;
> > +       mgmt = skb->data;
> >         mgmt->frame_control =
> >                 cpu_to_le16(IEEE80211_FTYPE_MGMT | IEEE80211_STYPE_PROBE_RESP);
> > 
> Hello Jules,
> 
> Thank you for your work.
> 
> Did you check that the code continue to compile without warnings after
> applying this patch?
> 
> -- 
> J�r�me Pouiller
> 
> 

No,

I just checked now and it does not compile complaining of missing 
pointer argument on wsl wfx_sl_encode function.

Thanks for the feedback. 

Jules
--1395867706-1426243369-1571668927=:13286--

