X-GM-THRID: 6260100746941825024
X-Received: by 10.129.39.146 with SMTP id n140mr2096633ywn.22.1457546915452;
        Wed, 09 Mar 2016 10:08:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.180 with SMTP id f49ls1314542qgf.91.gmail; Wed, 09 Mar
 2016 10:08:34 -0800 (PST)
X-Received: by 10.13.232.201 with SMTP id r192mr4481284ywe.52.1457546914848;
        Wed, 09 Mar 2016 10:08:34 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-ob0-x231.google.com (mail-ob0-x231.google.com. [2607:f8b0:4003:c01::231])
        by gmr-mx.google.com with ESMTPS id p10si1950508igg.1.2016.03.09.10.08.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 10:08:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::231 as permitted sender) client-ip=2607:f8b0:4003:c01::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x231.google.com with SMTP id m7so55033407obh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Mar 2016 10:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=TnNWfEpB/Er3mExmKupmIdOiqVDOwleRtpXbJpDh6ho=;
        b=RTifgt5Prr5MBa7rQM/1+hBn//lK2DO3ZbRsO2ZAG2zYTdurbny7LEdlAW3x9taDWx
         9k1zao3n6ZYES6fgIWlWXkcZU/mDJzHDgjVurtZAmwV3A23sXPeY3i4uVlrsgV/Jw3vu
         G8UpXS2ma5BJMYAfoNPDtjD/fqbY9rHOFK9FpRnzss7jyFycLFOGIpWsVEhMD6m/otmT
         3xuMSj2Pyx22TEsFqA0cdZ79u4kjp4e+Og24E1MLy93bivZtvLsj33PWTT/DFZs+jB7M
         BbYd+F6vL8JsTSCq9WZaQVe4qjW98HWRvQ6VcTeHuKsSSA1ponKnlIHWBOE5cZF16VM+
         9ukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=TnNWfEpB/Er3mExmKupmIdOiqVDOwleRtpXbJpDh6ho=;
        b=eNInkJ3l3GoE4VuZHWoe4BqpGsfM4tIxq0qnlt2GH0XRQUPIvvsv7LRly57boHYimf
         ZD+BCJgpFVJLTG5b5DFekIrd2ECk0VIU1gTAa1z6Urj91wXNo7x6KCEM9/GIPDq3XvuX
         c2vpTHMMNhjwTVsESrxtvZz3SXXP5Ir/FBIBTHNb2FhoKvHNJ9KxytDkdWiRPYpt96ND
         FJ59NxNRKxu+WJfD151jWXQMnM8IUS4XuuX3M5Sm9W2u2g5ENUZUF0658dmNkkpk0WD8
         iXkKy/XO0iLky99vKk3WBjvbGCyQda5+wfMXupHDsNWjyiKVfhJWLEdPjiz+hZyg2WYP
         61RA==
X-Gm-Message-State: AD7BkJJ1Q79ULTpwBNOzZxLkpriQlbKQGE/rhbxCGwHVfnj05boiBgTP7/KAhU2uPJY1z0jPxn8f66B7ljtwEQ==
MIME-Version: 1.0
X-Received: by 10.182.196.37 with SMTP id ij5mr21886314obc.24.1457546914587;
 Wed, 09 Mar 2016 10:08:34 -0800 (PST)
Received: by 10.157.7.137 with HTTP; Wed, 9 Mar 2016 10:08:34 -0800 (PST)
In-Reply-To: <20160309172840.GA10642@salvia>
References: <1457539133-6410-1-git-send-email-bhumirks@gmail.com>
	<20160309165258.GA1040@salvia>
	<CAOH+1jFQ=yk2oNmAPuT80CmSaq6-5p9b01WQJrn=x66_c7OggA@mail.gmail.com>
	<20160309172840.GA10642@salvia>
Date: Wed, 9 Mar 2016 23:38:34 +0530
Message-ID: <CAOH+1jE9axK_Mu_rJJ4qQe4BDENOGd2Cm_z4zPm7goHB61tRoQ@mail.gmail.com>
Subject: Re: [PATCH] extensions: libxt_CONNMARK.c: Add translation to nft
From: Bhumika Goyal <bhumirks@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: outreachy-kernel@googlegroups.com, 
	Shivani Bhardwaj <shivanib134@gmail.com>, netfilter@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 9, 2016 at 10:58 PM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> On Wed, Mar 09, 2016 at 10:42:13PM +0530, Bhumika Goyal wrote:
>> On Wed, Mar 9, 2016 at 10:22 PM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
>> > On Wed, Mar 09, 2016 at 09:28:53PM +0530, Bhumika Goyal wrote:
>> >> Add translation for target CONNMARK to nftables.
>> >>
>> >> Examples:
>> >>
>> >> $ sudo iptables-translate -t mangle -A PREROUTING -p tcp  --dport 80 -j CONNMARK --save-mark
>> >> nft add rule ip mangle PREROUTING tcp dport 80 counter mark save nfmask 0xffffffff ctmask 0xffffffff
>> >>
>> >> $ sudo iptables-translate -t mangle -A PREROUTING -p tcp --dport 80 -j CONNMARK --restore-mark --mask 12
>> >> nft add rule ip mangle PREROUTING tcp dport 80 counter mark restore nfmask 0xc ctmask 0xc
>> >>
>> >> $ sudo iptables-translate -t mangle -A PREROUTING -p tcp --dport 22 -j CONNMARK --set-mark 2
>> >> nft add rule ip mangle PREROUTING tcp dport 22 counter mark set 0x2/0xffffffff
>> >>
>> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> >> ---
>> >>  extensions/libxt_CONNMARK.c | 28 ++++++++++++++++++++++++++++
>> >>  1 file changed, 28 insertions(+)
>> >>
>> >> diff --git a/extensions/libxt_CONNMARK.c b/extensions/libxt_CONNMARK.c
>> >> index 42cf207..e2dbf8d 100644
>> >> --- a/extensions/libxt_CONNMARK.c
>> >> +++ b/extensions/libxt_CONNMARK.c
>> >> @@ -347,6 +347,32 @@ connmark_tg_save(const void *ip, const struct xt_entry_target *target)
>> >>       }
>> >>  }
>> >>
>> >> +static int
>> >> +connmark_tg_xlate(const struct xt_entry_target *target,
>> >> +               struct xt_xlate *xl, int numeric)
>> >> +{
>> >> +     const struct xt_connmark_tginfo1 *info = (const void *)target->data;
>> >> +
>> >> +     switch (info->mode) {
>> >> +     case XT_CONNMARK_SET:
>> >> +             xt_xlate_add(xl, "mark set 0x%x/0x%x", info->ctmark, info->ctmask);
>> >> +             break;
>> >> +     case XT_CONNMARK_SAVE:
>> >> +             xt_xlate_add(xl,"mark save nfmask 0x%x ctmask 0x%x",
>> >> +                          info->nfmask, info->ctmask);
>> >> +             break;
>> >> +     case XT_CONNMARK_RESTORE:
>> >> +             xt_xlate_add(xl,"mark restore nfmask 0x%x ctmask 0x%x",
>> >> +                          info->nfmask, info->ctmask);
>> >
>> > This translation is not correct.
>> >
>>
>> Thanks for the feedback. Could you please tell me the mistake as I am
>> not able to figure out my mistake?
>
> You have to test your translations, to make sure they work fine with
> nft:
>
> # nft add rule filter PREROUTING nft add rule ip mangle PREROUTING tcp dport 80 counter mark restore nfmask 0xc ctmask 0xc
> <cmdline>:1:32-34: Error: syntax error, unexpected add
> add rule filter PREROUTING nft add rule ip mangle PREROUTING tcp dport
> 80 counter mark restore nfmask 0xc ctmask 0xc
>                                ^^^
>
> This syntax is not correct. Please, have a look at the wiki and
> investigate how to translate this. Thanks.

Ok. I will read more on the wiki and then try to correct it.

Thanks,
Bhumika

