X-GM-THRID: 6376626533381963776
X-Received: by 10.129.41.206 with SMTP id p197mr13109525ywp.28.1484676064224;
        Tue, 17 Jan 2017 10:01:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.120.195 with SMTP id p186ls3871964itc.0.canary-gmail; Tue,
 17 Jan 2017 10:01:03 -0800 (PST)
X-Received: by 10.99.54.135 with SMTP id d129mr14564293pga.14.1484676063509;
        Tue, 17 Jan 2017 10:01:03 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id f187si1569285ywc.0.2017.01.17.10.01.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Jan 2017 10:01:03 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id l75so12415975ywb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Jan 2017 10:01:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=5HtQLWmR0GFL5DgAcBnijf2CUCYMmMdeZswqd4HAy0E=;
        b=BXyHY4p/bZbrVSvCd01ZGg90GPNpoAavFl3vvqJ7Erm9mUKgpAWDj6fp/ZJaO8+tDO
         +0FWo6X1wWTesCzroCXlvh5kcq3DlfNmH9ge1UD2MtUBCOooOCwk2yX868u81G92toIH
         rkgIf/A+GsIDVtdi0SpAZxp5SECfr0dz5+DOskF1rc+Yqu30cUY8kcIjdusa4SmSBBjF
         UNE//srKXfBjG6clg+WZPQrRkNUWxUpLTL8d+6NjkKSS1A66yIEGnwClm7bbo3w0qlMx
         Z9jQlI3nk+YR5eKugBp8q0VP6/JgXIqLJXbGxEyKYrHYAGgrWw2+/Zzynr+9HZ8CIvLY
         1M0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=5HtQLWmR0GFL5DgAcBnijf2CUCYMmMdeZswqd4HAy0E=;
        b=F+3LbVWooFqvshJ+s2OT987V0DbS8dzBMVQ2zGwVZoVXNph2MmDIkE2A8TRWLNpg8b
         mCoaT4+pHBFV7+nzHNxsTP0TtOBBqFGdtofldOhx4ysuEkMDRXPqGhVAtxkxch63oEHW
         aOs4C1VCwxW+1cucomlUoeuyAR9RVRi6OqNZg1ZWAA5d2/QD0oFYPFvWeJwl4OkIRfbx
         1zxfnT1pzs+SJRCmHlm6kEDcsJ2I6WIMMFvZqZmIMFzJabrFjUbNZSkk2VnvtKDN61/B
         wlyq9D8PaLgLZw/thJe2fav4blgEkrLv0qDP4A1vhFTw1UO2Y5NccTluEc21FFiHeKu6
         k3GQ==
X-Gm-Message-State: AIkVDXI/TpEouYmD9lgsYEeo8q//21DdFd73LaT3bybn9CvGDv29x0gBd+nU9RfsfNxKaMaRUX2MMjKc4iVT5Q==
X-Received: by 10.55.158.129 with SMTP id h123mr36235579qke.53.1484676063169;
 Tue, 17 Jan 2017 10:01:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.161.37 with HTTP; Tue, 17 Jan 2017 10:01:02 -0800 (PST)
In-Reply-To: <CALrZqyM9KbYybhb050EZWVb6Kxx6MNJzsUHB5M_xX1=4TnQbxA@mail.gmail.com>
References: <20170117172858.GA32083@singhal-Inspiron-5558> <CAK-LDbJMB_3te=gOc_k6geaNq+2wgJ915xEi5g18DLVHVYaQbg@mail.gmail.com>
 <CALrZqyM9KbYybhb050EZWVb6Kxx6MNJzsUHB5M_xX1=4TnQbxA@mail.gmail.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Tue, 17 Jan 2017 23:31:02 +0530
Message-ID: <CAK-LDbLWRz39qVSAw6ka+=Hjfh4pmcru6hJya6JKccyQKTZNww@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: Fix "space required
 after that ','" errors
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Jan 17, 2017 at 11:24 PM, SIMRAN SINGHAL
<singhalsimran0@gmail.com> wrote:
> Hi Vaishali,
>
>
> Thanks for your guidance!
>
> can you please mail me the actual mailing lists.

Sorry for not being clear in the last mail. I meant maintainers and
subsystem-specific mailing lists. You can get this information by
running scripts/get_maintainer.pl on a patch. Check this[1] section
of a first patch tutorial.

[1] https://kernelnewbies.org/FirstKernelPatch#head-dc6a8aa0be0d0e8ed9dc03726d0b5a1fb0f65e1f

> Thanks,
> Simran Singhal
>
>
> On Tue, Jan 17, 2017 at 11:14 PM, Vaishali Thakkar <vthakkar1994@gmail.com>
> wrote:
>>
>> On Tue, Jan 17, 2017 at 10:58 PM, simran singhal
>> <singhalsimran0@gmail.com> wrote:
>> > Fix checkpatch.pl "space required after that ','" errors
>>
>> Hi Simran,
>>
>> Application period of Outreachy's next round will open on February 16.
>> Till then this mailing list will be inactive. So, please send patches
>> after
>> that.
>>
>> Thanks!
>>
>> P.S. Meanwhile, you can send patches in actual mailing lists if you want.
>> :)
>>
>> > Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> >
>> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> > b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> > index d7d85b3..6380b41 100644
>> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> > @@ -3177,7 +3177,7 @@ int ieee80211_wpa_supplicant_ioctl(struct
>> > ieee80211_device *ieee, struct iw_poin
>> >                 break;
>> >
>> >         default:
>> > -               printk("Unknown WPA supplicant request:
>> > %d\n",param->cmd);
>> > +               printk("Unknown WPA supplicant request: %d\n",
>> > param->cmd);
>> >                 ret = -EOPNOTSUPP;
>> >                 break;
>> >         }
>> > ---
>> >  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> > b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> > index d7d85b3..6380b41 100644
>> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> > @@ -3177,7 +3177,7 @@ int ieee80211_wpa_supplicant_ioctl(struct
>> > ieee80211_device *ieee, struct iw_poin
>> >                 break;
>> >
>> >         default:
>> > -               printk("Unknown WPA supplicant request:
>> > %d\n",param->cmd);
>> > +               printk("Unknown WPA supplicant request: %d\n",
>> > param->cmd);
>> >                 ret = -EOPNOTSUPP;
>> >                 break;
>> >         }
>> > --
>> > 2.7.4
>> >
>> > --
>> > You received this message because you are subscribed to the Google
>> > Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send
>> > an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit
>> > https://groups.google.com/d/msgid/outreachy-kernel/20170117172858.GA32083%40singhal-Inspiron-5558.
>> > For more options, visit https://groups.google.com/d/optout.
>>
>>
>>
>> --
>> Vaishali
>> http://vaishalithakkar.in/
>
>



-- 
Vaishali
http://vaishalithakkar.in/

