X-GM-THRID: 6745294989426688000
X-Received: by 2002:a5d:45c7:: with SMTP id b7mr626461wrs.356.1570564611364;
        Tue, 08 Oct 2019 12:56:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9dc8:: with SMTP id g191ls9664wme.2.gmail; Tue, 08 Oct
 2019 12:56:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxI9wmlX0fzN3mnkW7LAcdkG8QgPx+cYddN9c1/0T/Qj30DEiqU/o1U+yTTaeENRZ+0bQ4e
X-Received: by 2002:a05:600c:218e:: with SMTP id e14mr5217509wme.60.1570564609909;
        Tue, 08 Oct 2019 12:56:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570564609; cv=none;
        d=google.com; s=arc-20160816;
        b=R8OsY6pSArLeVrA2qvQS8G3Nqbw5gfOrvTn9FDfMyUulOfsNUeZLlkbUFB5l713GdN
         qazkIkJfjoFvWyUu7+00Ay3nMbEjCuJlki+GekV1Aqmx2NxC9LwitapmxKzMq3N6/q4Y
         9oWZ6QYe/V27sacARJyC+4Scto2acFcNXOWCgObE9rdqdgLPMGN7pchI46zs8bVYkyYV
         KWnyFSNTAHADQM9l+zAPHsC8PSGIZsG98RugB7TO5RQsE7AS5zSut3sl7uEiPNHQRJZ7
         6ui/+jJm+WI4iWXKFQPiKG/n9rjSGflYw1KnS65ATe/Lmja0/CymOwpAOld8FP0/57Yw
         ZLvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BWulhS2vv0cmYdiXoL0Awmn3OjvSXFmcf/gWVIgyJB8=;
        b=swvybw3aGZQ96GrO2YIncsKOJSopVvQVJ2Z3lk2qNTbPSQIIwrfYHpVciORW0aXN4Q
         bjyccWss1IOSO9YLHOmVHHJsgrni6CHvAMMgfW6gYuewNjO2BWP9r6rl20cyr6WChWmv
         3/nJIDyxvpFUEt1f5WjX+lOKe8s2jAvHHdJwskKds9+dWszqeterLvxaUhADgIsNhgk2
         k970BCr8raz0cpU+Ha388HFt3C+dFqeFOjWamPflXmJNFzkagyqVtYPLlD2X8nMyeZ0M
         drjq4bIhzpTKgcToZbGbKHiCS1UGRpEjfe1pUnH6PZLvamihJZsQEKcFL0fVxU+1idZo
         4OWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZVX6bv8P;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id u15si199080wmc.1.2019.10.08.12.56.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 12:56:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZVX6bv8P;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id m13so45773ljj.11
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Oct 2019 12:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BWulhS2vv0cmYdiXoL0Awmn3OjvSXFmcf/gWVIgyJB8=;
        b=ZVX6bv8PYCo1dLA2r5R9wgs3ivg/LzvVSRM9YqbAP6PmbmpFFkWURYwuwAGkv4VO4c
         s+hkxTPcRQyGJjwkoAbHb1z0ONbqKgq6Cs4TgH542w+xBFPKPKEIHo5P2wj6QeSwpAtm
         YST1sdSLqD0zU9Ls1tZ5K1UW0rGHwYUWl/ZX5qrPpnuWaDU1jqYCQSH16yUVqC9BqkPx
         nBjr13IsGZKYwx+0FXZkJnAVvTQ1Tak6835t7BSaiq7jfT0+CYdbq0twsqXBs1G4DFLe
         pbcaT9mPH+YrcWCrgqh31NUlX1UMSVN3cYs8B+v/p9lze8KGEP0JQqIbTAxoBJ3wJs92
         nG9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BWulhS2vv0cmYdiXoL0Awmn3OjvSXFmcf/gWVIgyJB8=;
        b=B2lAcb7t4ZNtL4vaLLjood3mOP1EcFZXYu578hcV+zW9UbYV4gh5MWfc6qGRtIqiqi
         ZoW3jULceT/dDb4UMyxkbb3oazSD2ZqivAqWMQPoMjBGg+F586q/nnWDjPrP1fodWbd9
         DcGTMdo77XQpYx3/zF7uyVMYlr5i0iwgxyshenW0zO69XhbdLoowA4AxW5+ZPQVd+aSJ
         q/ymlKtUG4xRVrNgNO/DnFCL/zedGDwVFAJkxMVq353KUdCKhtaV+4QUpcoAnYySkSmK
         jt4poEmDCOsvJUWIw33DwHz3QBVYBUEISd3u5v4zKed6RHUFl1IF18btsDa8C1ARhvbO
         13Zw==
X-Gm-Message-State: APjAAAU5urWwOcuhwpE6lMTwryZQze/DmZ+H22NFZxDlLRH4NsGOVXFV
	BOpXHSX0WdCZg5traU80dNSQtJ/UGy2srzMq2kUXMmJ/
X-Received: by 2002:a2e:a178:: with SMTP id u24mr23034729ljl.149.1570564609176;
 Tue, 08 Oct 2019 12:56:49 -0700 (PDT)
MIME-Version: 1.0
References: <1570511353-64646-1-git-send-email-nachukannan@gmail.com> <alpine.DEB.2.21.1910080750290.2638@hadrien>
In-Reply-To: <alpine.DEB.2.21.1910080750290.2638@hadrien>
From: Nachammai Karuppiah <nachukannan@gmail.com>
Date: Tue, 8 Oct 2019 15:56:37 -0400
Message-ID: <CAMOCsduiDgitnvi45oWj1jPns2LGE3XYHaLrUN-Z2dzcAKt85Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: os_dep: Remove
 typecast in kfree
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 8, 2019 at 1:53 AM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Mon, 7 Oct 2019, Nachammai Karuppiah wrote:
>
> > Remove typecast in the call to kfree as it is not needed.
>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>
>
> > Issue found using the below coccinelle script,
> >
> > @@
> > type t1;
> > expression e;
> > @@
> >
> > -kfree((t1 *)e);
> > +kfree(e);
>
> One might consider that a slight improvement would be to declare
> expression * e; rather than expression e;, ie to ensure that e is a
> pointer.  But it's a bit of a tradeoff, because if you specify type
> information, then Coccinelle has to find the type.  If it can't find the
> type, some changes will be overlooked.  Still it could be good to try both
> approaches.  If both approaches give the same results, you can be more
> confident that everything is ok.
>

Thanks for the suggestion. I used expression *e for other sub
directories in rtl8723bs and it covered all cases once I used the
right options (-I and --recursive-includes).
Both scripts gave the same result.

> On the other hand, it would be pretty odd for an argument of kmalloc not
> to be of pointer type.
>

Yeah, I assumed and expected the script to only remove the typecast
but not to check if the parameter itself was a pointer.
Thanks for your insights.

> julia
>
> > Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 10 +++++-----
> >  drivers/staging/rtl8723bs/os_dep/os_intfs.c       |  2 +-
> >  2 files changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> > index 67d56f3..8555f52 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> > @@ -165,7 +165,7 @@ static void rtw_spt_band_free(struct ieee80211_supported_band *spt_band)
> >                       + sizeof(struct ieee80211_channel)*RTW_2G_CHANNELS_NUM
> >                       + sizeof(struct ieee80211_rate)*RTW_G_RATES_NUM;
> >       }
> > -     kfree((u8 *)spt_band);
> > +     kfree(spt_band);
> >  }
> >
> >  static const struct ieee80211_txrx_stypes
> > @@ -1156,7 +1156,7 @@ static int cfg80211_rtw_add_key(struct wiphy *wiphy, struct net_device *ndev,
> >       }
> >
> >  addkey_end:
> > -     kfree((u8 *)param);
> > +     kfree(param);
> >
> >       return ret;
> >
> > @@ -2193,7 +2193,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
> >                       ret = -EOPNOTSUPP ;
> >               }
> >
> > -             kfree((u8 *)pwep);
> > +             kfree(pwep);
> >
> >               if (ret < 0)
> >                       goto exit;
> > @@ -2646,7 +2646,7 @@ static int rtw_cfg80211_add_monitor_if (struct adapter *padapter, char *name, st
> >
> >  out:
> >       if (ret && mon_wdev) {
> > -             kfree((u8 *)mon_wdev);
> > +             kfree(mon_wdev);
> >               mon_wdev = NULL;
> >       }
> >
> > @@ -3502,7 +3502,7 @@ void rtw_wdev_free(struct wireless_dev *wdev)
> >
> >       wiphy_free(wdev->wiphy);
> >
> > -     kfree((u8 *)wdev);
> > +     kfree(wdev);
> >  }
> >
> >  void rtw_wdev_unregister(struct wireless_dev *wdev)
> > diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> > index ec3a754..5044f73 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> > @@ -1142,7 +1142,7 @@ void rtw_ndev_destructor(struct net_device *ndev)
> >       DBG_871X(FUNC_NDEV_FMT "\n", FUNC_NDEV_ARG(ndev));
> >
> >       if (ndev->ieee80211_ptr)
> > -             kfree((u8 *)ndev->ieee80211_ptr);
> > +             kfree(ndev->ieee80211_ptr);
> >  }
> >
> >  void rtw_dev_unload(struct adapter *padapter)
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1570511353-64646-1-git-send-email-nachukannan%40gmail.com.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910080750290.2638%40hadrien.

