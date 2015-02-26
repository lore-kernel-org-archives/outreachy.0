X-GM-THRID: 2590517493760
X-Received: by 10.236.20.234 with SMTP id p70mr10064537yhp.46.1424989585767;
        Thu, 26 Feb 2015 14:26:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.208 with SMTP id i199ls316029ioi.47.gmail; Thu, 26 Feb
 2015 14:26:25 -0800 (PST)
X-Received: by 10.42.62.19 with SMTP id w19mr10599472ich.30.1424989585542;
        Thu, 26 Feb 2015 14:26:25 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si283407pad.1.2015.02.26.14.26.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 14:26:25 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 240F8B49;
	Thu, 26 Feb 2015 22:26:25 +0000 (UTC)
Date: Thu, 26 Feb 2015 14:26:24 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija =?utf-8?Q?Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8192u: Replace
 printk() with pr_debug()
Message-ID: <20150226222624.GA9490@kroah.com>
References: <1424721379-8173-1-git-send-email-ksenija.stanojevic@gmail.com>
 <20150226214543.GA17859@kroah.com>
 <CAL7P5jLEtranaPTzFej-b61B0FsW8=08cg3E5Cdrto0NvrqjkA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL7P5jLEtranaPTzFej-b61B0FsW8=08cg3E5Cdrto0NvrqjkA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 10:55:13PM +0100, Ksenija Stanojević wrote:
> On Thu, Feb 26, 2015 at 10:45 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Mon, Feb 23, 2015 at 08:56:19PM +0100, Ksenija Stanojevic wrote:
> >> For dynamic debugging pr_debug() macro is preferred over printk(), which
> >> is the raw way to print something. Issue found by checkpatch.pl.
> >>
> >> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> >> ---
> >> v2: include only changes made to this file.
> >>
> >>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> >> index 8c1bf1f..7fab680 100644
> >> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> >> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> >> @@ -49,14 +49,14 @@ static void *prism2_wep_init(int keyidx)
> >>
> >>       priv->tx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
> >>       if (IS_ERR(priv->tx_tfm)) {
> >> -             printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
> >> +             pr_debug("ieee80211_crypt_wep: could not allocate "
> >>                      "crypto API arc4\n");
> >>               priv->tx_tfm = NULL;
> >>               goto fail;
> >>       }
> >>       priv->rx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
> >>       if (IS_ERR(priv->rx_tfm)) {
> >> -             printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
> >> +             pr_debug("ieee80211_crypt_wep: could not allocate "
> >>                      "crypto API arc4\n");
> >
> > Please use net_dbg() instead
> >
> I already tried netdev_dbg, but there's no pointer to net stucture in
> function argument list.

Ok, then please resend the patch, and add that information to the
changelog section, so that I and everyone else knows this.

thanks,

greg k-h

