X-GM-THRID: 6613551654020055040
X-Received: by 2002:ac8:3718:: with SMTP id o24-v6mr24147705qtb.51.1539839090709;
        Wed, 17 Oct 2018 22:04:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aee3:: with SMTP id n35-v6ls11405399qvd.11.gmail; Wed,
 17 Oct 2018 22:04:50 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62kQbqmnzTPqIc/X4FIVVcJK7ZbXasclFtcI+Qpxu+CJLLjz80Qou9W15okaOwmxTPAmlUv
X-Received: by 2002:a0c:9816:: with SMTP id c22mr7022286qvd.1.1539839090008;
        Wed, 17 Oct 2018 22:04:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539839089; cv=none;
        d=google.com; s=arc-20160816;
        b=oJk1BGAczwJcYGBYJEeFQBewYzZ+M56EZ/+U2VmQLViHCWnbcZ+mYuRh8TudppgOo5
         vjnAtgkMoyVKUDlL0OKYUd2s1DLsmnnUj2TkGlsbZYHv/U3InTD65iAeq9Ne0sGtREIV
         T5Fi39V1ZC0vbPFt+a5Is2MMCTVY2hHvC4H63j9vOf6kisCqq0Mpbmxhn24MjQHVwl+6
         ADnFVWm18d2xkk72tRvy3EwQxlOLjPN42ofqnCt0WusVN9Sf73/5RwwstzjolUZIF0ri
         ljMRYy1yrBYkWMNqPGyQ73Mot5BIfQTPNC6buaqIlVhHdFD7eeH8lvVA6BAPeJPNZB3E
         wUJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=EqLmRyaJS9Vq4QoxrxXyCg8EMcKWG57hxeiH8JpQIyU=;
        b=HIBNPTqD7aUEX3IK3PzJ7Xa1apH57q5hlwXklPm+RXHjrJvU21YJBA/ENUcnpQEnlK
         /TfbJxCZKnFHJVHf98oFPx1MyvfIclKkQst474aQYUoUhw4FZeqNYiASJA+5NZHQMN0i
         JR/y0yDQdLcX1o54IMZB5pC/CxRa6QIlG59ovMd+qcP41EqarNoEn8rRBF4m6lEwyN6H
         40vYjGHnf9fRdT+kTKFT8irtRG9gsBOPFhj2jeep7IVb5NvzSKY6iBfKveVDqcJEi3ZO
         Bl8OP3l3rDFIzta9IQhvdeOwJW/kZC8OTwdZg+4G+G4PQOFM0kTZgXF3T5XXtryLjPE6
         4uGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.109 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa11-08.prod.phx3.secureserver.net (p3plsmtpa11-08.prod.phx3.secureserver.net. [68.178.252.109])
        by gmr-mx.google.com with ESMTPS id q49-v6si948354qte.3.2018.10.17.22.04.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Oct 2018 22:04:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.109 as permitted sender) client-ip=68.178.252.109;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.109 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-wr1-f49.google.com ([209.85.221.49])
	by :SMTPAUTH: with ESMTPSA
	id D0UKg6IypFlPzD0ULg7zLS; Wed, 17 Oct 2018 22:04:49 -0700
Received: by mail-wr1-f49.google.com with SMTP id n11-v6so31976579wru.13
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Oct 2018 22:04:48 -0700 (PDT)
X-Gm-Message-State: ABuFfogP4dBo0hpAG2nauYXkFwBwMTu5K5KFq4WFntWeBDHSRGeiwx5M
	VL9SqSj21bBBFnNecNMEq65QM1je4q6bRsTM5Ys=
X-Received: by 2002:a05:6000:1105:: with SMTP id z5mr25807412wrw.136.1539839088059;
 Wed, 17 Oct 2018 22:04:48 -0700 (PDT)
MIME-Version: 1.0
References: <20181018043801.GA4248@k-vBox>
In-Reply-To: <20181018043801.GA4248@k-vBox>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Thu, 18 Oct 2018 10:34:36 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKuaTDJ+W-McOtgL9e6Kfbk6ZLgwr6TCRcaEJBu98+Bmg@mail.gmail.com>
Message-ID: <CAK-LDbKuaTDJ+W-McOtgL9e6Kfbk6ZLgwr6TCRcaEJBu98+Bmg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Replace long int
 with long
To: "M. Nakamura" <m.maya.nakamura@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfPKRlR86+afB1H4SqI2ZNVYoLQIAT7AV3IQ7750h+O4fD/6In5HLhWEAjF75fCxrvlAysBo7zpRpi3BCutQC5bVYzAXCjKVErC4TzDf/rtbqjpgCv03+
 +a3FgOENjoxPl6zaF9J+D0s8u3SD9dh4+fjoLlySYnFqv4sQStTmfPI+Cxo23tQToiWNm32t8MoIS0R0c8XaQJpxYWUJtDSAuCo=

On Thu, Oct 18, 2018 at 10:08 AM Maya Nakamura
<m.maya.nakamura@gmail.com> wrote:
>
> Replace long int with long as int is unnecessary. Issue found by
> checkpatch.pl.

It'll be good to explain why do you think 'long int' is unnecessary
here.

> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> ---
>  drivers/staging/wlan-ng/p80211conv.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
> index 91debcf20646..0ff5fda81b05 100644
> --- a/drivers/staging/wlan-ng/p80211conv.c
> +++ b/drivers/staging/wlan-ng/p80211conv.c
> @@ -430,7 +430,7 @@ int skb_p80211_to_ether(struct wlandevice *wlandev, u32 ethconv,
>                         /* A bogus length ethfrm has been sent. */
>                         /* Is someone trying an oflow attack? */
>                         netdev_err(netdev, "DIXII frame too large (%ld > %d)\n",
> -                                  (long int)(payload_length -
> +                                  (long)(payload_length -
>                                    sizeof(struct wlan_llc) -
>                                    sizeof(struct wlan_snap)), netdev->mtu);
>                         return 1;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181018043801.GA4248%40k-vBox.
> For more options, visit https://groups.google.com/d/optout.

