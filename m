X-GM-THRID: 6529360493201588224
X-Received: by 10.28.87.78 with SMTP id l75mr1619565wmb.9.1520356112524;
        Tue, 06 Mar 2018 09:08:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.181.149 with SMTP id c21ls1840353wre.1.gmail; Tue, 06 Mar
 2018 09:08:31 -0800 (PST)
X-Google-Smtp-Source: AG47ELuem67aEV7SYUeKFU0sXu58eCaaz9RML/kzx4Qi8ORaxVIG9i4j1qcGSYQjw/qZfEXmNAxt
X-Received: by 10.223.153.179 with SMTP id y48mr1783923wrb.13.1520356111076;
        Tue, 06 Mar 2018 09:08:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520356111; cv=none;
        d=google.com; s=arc-20160816;
        b=li7bWFQCMjwJ5c2s7n3juuFXB39pahUr9umJbgcaQhz+zINZbAU5I8ys9MfDJmo5Yq
         EeZqR6yKu20UDjhvMQOfMWkJvXfEyavdUHnyjhbgqEOt+nlbGyOiLUvjjz4+J4Bcfgr3
         /6aHZdYX9/sd10cNGoQr8+XTLoAnKidXn3sNJ6xAk1wGVPaYWhFoO7jxsON6D5fUM3JE
         AkhXcGpBj6lDfNIL+4hslilf2gc+KI4hOIemfepKau8Y+CpjhBJagsHmF0E3VyN/w2QI
         EST/emDvfPDE60k77PAHLocCCFuvJxl3YwDhzVEXUF4eynoKNTIgms33aptdjG0cTSKE
         Q7sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=0jJXF59apqhJj2LijYtSmi1YJ4OKPkrHnpMoPqDLGkA=;
        b=EG+ywpyUgEbzqwQtFgVWTrS2fZOKYHTBeXsudUOxac5Wpf4Zc3i7JqxnCIGfnl9hOP
         UdHyK0FopzAqoY0QM729DY88Qqu1BzLO36Gm4Lr55SZAjp+3heSV1tLqob3JLqe8kJeO
         EpCW5XhnHq9BezGMYa2XJydYNLc55Gbvq56WSv9QUtrgT8oUejohcTT21EBvcdOemQ14
         E2sxcV+23GASK44Vu9y9NI7ra1Yelz9+aLk+W677qt2zOy+uW2seXMXdC9Dqs8ja3FQW
         IyMcMZzusMFHyTBrtVaaiC2G8lbuSSKQlp/JMO17K4LLTQO3e10FBrB9p77ETqsBqBjM
         fh9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l1si397284wmc.0.2018.03.06.09.08.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Mar 2018 09:08:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,432,1515452400"; 
   d="scan'208";a="316711317"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2018 18:08:28 +0100
Date: Tue, 6 Mar 2018 18:08:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    driverdevel <devel@driverdev.osuosl.org>, 
    LKML <linux-kernel@vger.kernel.org>, Larry.Finger@lwfinger.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Replace printk()
 with appropriate net_*macro_ratelimited()
In-Reply-To: <CA+XqjF8PSF0rP+bOAuUSM8xadHPzDjhZcKE=TauJgUyMdeNgsg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803061807190.4853@hadrien>
References: <20180305073256.GA4347@seema-Inspiron-15-3567> <alpine.DEB.2.20.1803050835230.2306@hadrien> <CA+XqjF8PSF0rP+bOAuUSM8xadHPzDjhZcKE=TauJgUyMdeNgsg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-87143636-1520356108=:4853"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-87143636-1520356108=:4853
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Tue, 6 Mar 2018, Arushi Singhal wrote:

>
>
> On Mon, Mar 5, 2018 at 1:07 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Mon, 5 Mar 2018, Arushi Singhal wrote:
>
>       > Replace printk having a log level with the appropriate
>       > net_*macro_ratelimited.
>       > It's better to use actual device name as a prefix in error
>       messages.
>
>       I asked several questions about the above two lines, which as
>       far as I can
>       see haven't been answered. Please excuse me if I missed the
>       answers, but I
>       would still like to know what they are.
>
>
> Hi Julia
> Sorry, I missed your above two question on my last patch and only saw the
> suggestions :(.
>
> -Why did I choose this function?
>
> Here we are using printk() which is the raw way to print something and it is
> always preferred to use dev_*macro() and netdev_*macro() because of the
> benefits they provide like dynamic debugging interface.
>
> And as we are using network subsystem so, netdev_*macro() or
> net_*ratelimited() can be used to standardized the output within the network
> subsystem.
>
> �
>
>       Namely, why did you choose to change to rate limited output, and
>       what does
>       the "device name as a prefix" comment mean?
>
> �
> Yes your point is correct, as before function used is printk(), so changing
> it to ratelimit is not a good idea. So here I should have preferred changing
> it to netdev_*macro().
>
> As every kernel subsystem has its own printk format like net_* for network s
> ubsystem. And it is preferred to use them to standardize the format of the o
> utput within the subsystem.

Sure, but I don't think the ratelimited function does that.  At least, it
doesn't seem to take any arguments that will help it with that.

julia

> Best
> Arushi
>
>       julia
>
>       > Indentation is also changed, to fix the� checkpatch issue if
>       line is not
>       > exceding 80 characters.
>       >
>       > Signed-off-by: Arushi Singhal
>       <arushisinghal19971997@gmail.com>
>       > ---
>       > changes in v2
>       > *change the subject line, in v1 driver name was wrong.
>       >
>       >� .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c� � � | 22
>       +++++++++++-----------
>       >� 1 file changed, 11 insertions(+), 11 deletions(-)
>       >
>       > diff --git
>       a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
>       b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
>       > index e6648f7..200fe5f 100644
>       > ---
>       a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
>       > +++
>       b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
>       > @@ -73,7 +73,7 @@ static void *ieee80211_ccmp_init(int
>       key_idx)
>       >
>       >� � � �priv->tfm = (void *)crypto_alloc_cipher("aes", 0,
>       CRYPTO_ALG_ASYNC);
>       >� � � �if (IS_ERR(priv->tfm)) {
>       > -� � � � � � �printk(KERN_DEBUG "ieee80211_crypt_ccmp: could
>       not allocate crypto API aes\n");
>       > +� � � � � � �net_dbg_ratelimited("ieee80211_crypt_ccmp: could
>       not allocate crypto API aes\n");
>       >� � � � � � � �priv->tfm = NULL;
>       >� � � � � � � �goto fail;
>       >� � � �}
>       > @@ -276,22 +276,22 @@ static int ieee80211_ccmp_decrypt(struct
>       sk_buff *skb, int hdr_len, void *priv)
>       >� � � �keyidx = pos[3];
>       >� � � �if (!(keyidx & (1 << 5))) {
>       >� � � � � � � �if (net_ratelimit()) {
>       > -� � � � � � � � � � �printk(KERN_DEBUG "CCMP: received packet
>       without ExtIV flag from %pM\n",
>       > -� � � � � � � � � � � � � � �hdr->addr2);
>       > +� � � � � � � � � � �net_dbg_ratelimited("CCMP: received
>       packet without ExtIV flag from %pM\n",
>       > +� � � � � � � � � � � � � � � � � � � � �hdr->addr2);
>       >� � � � � � � �}
>       >� � � � � � � �key->dot11RSNAStatsCCMPFormatErrors++;
>       >� � � � � � � �return -2;
>       >� � � �}
>       >� � � �keyidx >>= 6;
>       >� � � �if (key->key_idx != keyidx) {
>       > -� � � � � � �printk(KERN_DEBUG "CCMP: RX tkey->key_idx=%d
>       frame keyidx=%d priv=%p\n",
>       > -� � � � � � � � � � �key->key_idx, keyidx, priv);
>       > +� � � � � � �net_dbg_ratelimited("CCMP: RX tkey->key_idx=%d
>       frame keyidx=%d priv=%p\n",
>       > +� � � � � � � � � � � � � � � � �key->key_idx, keyidx, priv);
>       >� � � � � � � �return -6;
>       >� � � �}
>       >� � � �if (!key->key_set) {
>       >� � � � � � � �if (net_ratelimit()) {
>       > -� � � � � � � � � � �printk(KERN_DEBUG "CCMP: received packet
>       from %pM with keyid=%d that does not have a configured key\n",
>       > -� � � � � � � � � � � � � � �hdr->addr2, keyidx);
>       > +� � � � � � � � � � �net_dbg_ratelimited("CCMP: received
>       packet from %pM with keyid=%d that does not have a configured
>       key\n",
>       > +� � � � � � � � � � � � � � � � � � � � �hdr->addr2, keyidx);
>       >� � � � � � � �}
>       >� � � � � � � �return -3;
>       >� � � �}
>       > @@ -306,8 +306,8 @@ static int ieee80211_ccmp_decrypt(struct
>       sk_buff *skb, int hdr_len, void *priv)
>       >
>       >� � � �if (memcmp(pn, key->rx_pn, CCMP_PN_LEN) <= 0) {
>       >� � � � � � � �if (net_ratelimit()) {
>       > -� � � � � � � � � � �printk(KERN_DEBUG "CCMP: replay
>       detected: STA=%pM previous PN %pm received PN %pm\n",
>       > -� � � � � � � � � � � � � � hdr->addr2, key->rx_pn, pn);
>       > +� � � � � � � � � � �net_dbg_ratelimited("CCMP: replay
>       detected: STA=%pM previous PN %pm received PN %pm\n",
>       > +� � � � � � � � � � � � � � � � � � � � �hdr->addr2,
>       key->rx_pn, pn);
>       >� � � � � � � �}
>       >� � � � � � � �key->dot11RSNAStatsCCMPReplays++;
>       >� � � � � � � �return -4;
>       > @@ -341,8 +341,8 @@ static int ieee80211_ccmp_decrypt(struct
>       sk_buff *skb, int hdr_len, void *priv)
>       >
>       >� � � � � � � �if (memcmp(mic, a, CCMP_MIC_LEN) != 0) {
>       >� � � � � � � � � � � �if (net_ratelimit()) {
>       > -� � � � � � � � � � � � � � �printk(KERN_DEBUG "CCMP: decrypt
>       failed: STA=%pM\n",
>       > -� � � � � � � � � � � � � � � � � � �hdr->addr2);
>       > +� � � � � � � � � � � � � � �net_dbg_ratelimited("CCMP:
>       decrypt failed: STA=%pM\n",
>       > +� � � � � � � � � � � � � � � � � � � � � � � � �hdr->addr2);
>       >� � � � � � � � � � � �}
>       >� � � � � � � � � � � �key->dot11RSNAStatsCCMPDecryptErrors++;
>       >� � � � � � � � � � � �return -5;
>       > --
>       > 2.7.4
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20180305073256.GA4347%40
> seema-Inspiron-15-3567.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CA%2BXqjF8PSF0rP%2BbOAuU
> SM8xadHPzDjhZcKE%3DTauJgUyMdeNgsg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-87143636-1520356108=:4853--

